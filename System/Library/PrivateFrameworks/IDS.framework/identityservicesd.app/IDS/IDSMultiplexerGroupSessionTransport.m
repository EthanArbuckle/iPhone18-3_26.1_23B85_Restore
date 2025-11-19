@interface IDSMultiplexerGroupSessionTransport
- (BOOL)_tryConsumeQUICShortHeaderPacketBuffer:(id *)a3;
- (BOOL)addListenerConnection:(id)a3;
- (BOOL)tryConsumePacketBuffer:(id *)a3;
- (IDSMultiplexerGroupSessionTransport)initWithIdentifier:(id)a3;
- (id)routeClientConnections:(id)a3;
- (void)cancelClientConnection:(id)a3;
- (void)invalidate;
- (void)purgeQUICConnectionsForParticipants:(id)a3;
- (void)resetConnectionForPacketBuffer:(id *)a3;
- (void)setPacketBufferReadHandler:(id)a3;
@end

@implementation IDSMultiplexerGroupSessionTransport

- (IDSMultiplexerGroupSessionTransport)initWithIdentifier:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = IDSMultiplexerGroupSessionTransport;
  v6 = [(IDSMultiplexerGroupSessionTransport *)&v19 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    v8 = +[NSMutableArray array];
    portSignatures = v7->_portSignatures;
    v7->_portSignatures = v8;

    v10 = +[NSMutableArray array];
    participantIDs = v7->_participantIDs;
    v7->_participantIDs = v10;

    v12 = +[NSMutableArray array];
    routedConnections = v7->_routedConnections;
    v7->_routedConnections = v12;

    v14 = +[NSMutableArray array];
    listeners = v7->_listeners;
    v7->_listeners = v14;

    objc_storeStrong(&v7->_identifier, a3);
    v16 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:1282 capacity:20];
    fanoutEncryptionMKIToReceivingStateMap = v7->_fanoutEncryptionMKIToReceivingStateMap;
    v7->_fanoutEncryptionMKIToReceivingStateMap = v16;
  }

  return v7;
}

- (void)cancelClientConnection:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (atomic_load_explicit(&self->_invalidated, memory_order_acquire))
  {
    v6 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Mutliplexer Transport cancelClientConnection: failed because transport is invalidated", buf, 2u);
    }

    goto LABEL_24;
  }

  if ([v4 isTCP])
  {
    v7 = [v5 remoteTCPSYN];

    if (v7)
    {
      v8 = _IDSLinkPacketBufferCreate();
      *(v8 + 536) |= 1u;
      *(v8 + 488) = [v5 context];
      v9 = *v8;
      **v8 = 2009124602;
      v10 = [v5 portsSignature];
      v11 = HIBYTE(v10);
      v12 = HIWORD(v10);
      v13 = [v5 portsSignature];
      v9[4] = v11;
      v9[5] = v12;
      v9[6] = HIBYTE(v13);
      v9[7] = v13;
      v14 = [v5 remoteTCPSYN];
      v15 = [v14 unsignedLongValue];

      v9[8] = HIBYTE(v15);
      v9[9] = BYTE2(v15);
      v9[10] = BYTE1(v15);
      v9[11] = v15;
      *(v8 + 16) = &v9[-*v8 + 12];
      *(v8 + 536) |= 0x4000u;
      kdebug_trace();
      LOBYTE(v15) = (*(self->_readHandler + 2))();
      v16 = +[IDSFoundationLog Multiplexer];
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v15)
      {
        if (v17)
        {
          v18 = sub_10050F958(*v8, *(v8 + 16));
          *buf = 138412546;
          *&buf[4] = v5;
          *&buf[12] = 2080;
          *&buf[14] = v18;
          v19 = "Mutliplexer Transport cancelClientConnection: sent control packet for connection %@\n%s";
LABEL_12:
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
        }
      }

      else if (v17)
      {
        v20 = sub_10050F958(*v8, *(v8 + 16));
        *buf = 138412546;
        *&buf[4] = v5;
        *&buf[12] = 2080;
        *&buf[14] = v20;
        v19 = "Mutliplexer Transport cancelClientConnection: failed to send control packet for connection %@\n%s";
        goto LABEL_12;
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v46 = -1;
  routedConnections = self->_routedConnections;
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10040B350;
  v36[3] = &unk_100BDB4C8;
  v22 = v5;
  v37 = v22;
  v38 = buf;
  [(NSMutableArray *)routedConnections enumerateObjectsUsingBlock:v36];
  if (*(*&buf[8] + 24) == -1)
  {
    v26 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = self->_routedConnections;
      *v39 = 138412546;
      v40 = v22;
      v41 = 2112;
      v42 = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Mutliplexer Transport cancelClientConnection: did not find connection %@ in _routedConnections %@", v39, 0x16u);
    }
  }

  else
  {
    v23 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(*&buf[8] + 24);
      v25 = self->_routedConnections;
      *v39 = 134218498;
      v40 = v24;
      v41 = 2112;
      v42 = v22;
      v43 = 2112;
      v44 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Mutliplexer Transport cancelClientConnection: removing (at index %lu) connection %@ from _routedConnections %@", v39, 0x20u);
    }

    [(NSMutableArray *)self->_portSignatures removeObjectAtIndex:*(*&buf[8] + 24)];
    [(NSMutableArray *)self->_participantIDs removeObjectAtIndex:*(*&buf[8] + 24)];
    [(NSMutableArray *)self->_routedConnections removeObjectAtIndex:*(*&buf[8] + 24)];
  }

  *(*&buf[8] + 24) = -1;
  listeners = self->_listeners;
  v30 = _NSConcreteStackBlock;
  v31 = 3221225472;
  v32 = sub_10040B378;
  v33 = &unk_100BDB4C8;
  v29 = v22;
  v34 = v29;
  v35 = buf;
  [(NSMutableArray *)listeners enumerateObjectsUsingBlock:&v30];
  if (*(*&buf[8] + 24) != -1)
  {
    [(NSMutableArray *)self->_listeners removeObjectAtIndex:v30, v31, v32, v33];
  }

  [(NSMutableArray *)v29 invalidate:v30];

  _Block_object_dispose(buf, 8);
  os_unfair_lock_unlock(&self->_lock);
LABEL_24:
}

- (id)routeClientConnections:(id)a3
{
  v4 = a3;
  explicit = atomic_load_explicit(&self->_invalidated, memory_order_acquire);
  v6 = &IDSRegistrationControlErrorDomain_ptr;
  v7 = +[IDSFoundationLog Multiplexer];
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if ((explicit & 1) == 0)
  {
    if (v8)
    {
      *buf = 138412290;
      *v59 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "GroupSessionTransport routing %@", buf, 0xCu);
    }

    v56 = 0u;
    v57 = 0u;
    v55 = 0u;
    v54 = 0u;
    v45 = v4;
    obj = v4;
    v48 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (!v48)
    {
LABEL_38:

      v9 = obj;
      v4 = v45;
      goto LABEL_39;
    }

    v47 = *v55;
LABEL_9:
    v10 = 0;
    while (1)
    {
      if (*v55 != v47)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v54 + 1) + 8 * v10);
      v12 = [v11 multiplexerParams];
      v13 = [v12 participantID];

      if (!v13)
      {
        v24 = v6;
        os_unfair_lock_lock(&self->_lock);
        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v25 = self->_listeners;
        v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v50 objects:v60 count:16];
        if (v26)
        {
          v27 = v26;
          v28 = *v51;
          do
          {
            for (i = 0; i != v27; i = i + 1)
            {
              if (*v51 != v28)
              {
                objc_enumerationMutation(v25);
              }

              v30 = *(*(&v50 + 1) + 8 * i);
              v31 = [v30 localPort];
              if (v31 == [v11 localPort])
              {
                [v11 setContext:{objc_msgSend(v30, "context")}];
              }
            }

            v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v50 objects:v60 count:16];
          }

          while (v27);
        }

        os_unfair_lock_unlock(&self->_lock);
        v6 = v24;
        goto LABEL_32;
      }

      v14 = [v11 multiplexerParams];
      v15 = [v14 salt];

      if (!v15)
      {
        break;
      }

      participantIDToAliasConverter = self->_participantIDToAliasConverter;
      v17 = [v11 multiplexerParams];
      v18 = [v17 participantID];
      v19 = [v11 multiplexerParams];
      v20 = [v19 salt];
      v21 = [(IDSMultiplexerTransportParticipantIDConverter *)participantIDToAliasConverter participantIDForAlias:v18 salt:v20];

      v22 = +[IMLockdownManager sharedInstance];
      LODWORD(v17) = [v22 isInternalInstall];

      if (v17 && IMGetDomainBoolForKeyWithDefaultValue())
      {
        v23 = [v6[240] Multiplexer];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Internal: failParticipantIDTranslation triggers participant ID being set to 0 for aliases", buf, 2u);
        }
      }

      else if (v21)
      {
        [v11 setContext:v21];
LABEL_32:
        v33 = [v11 context];
        v34 = [v6[240] Multiplexer];
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          v35 = [v11 portsSignature];
          v36 = [v11 context];
          *buf = 67109376;
          *v59 = v35;
          *&v59[4] = 2048;
          *&v59[6] = v36;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "[IDSSessionMultiplexer routeClientConnections] portsSignature:%08X participantID:%llu", buf, 0x12u);
        }

        os_unfair_lock_lock(&self->_lock);
        portSignatures = self->_portSignatures;
        v38 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v11 portsSignature]);
        [(NSMutableArray *)portSignatures addObject:v38];

        participantIDs = self->_participantIDs;
        v40 = [NSNumber numberWithUnsignedLongLong:v33];
        [(NSMutableArray *)participantIDs addObject:v40];

        [(NSMutableArray *)self->_routedConnections addObject:v11];
        os_unfair_lock_unlock(&self->_lock);
        v49[0] = _NSConcreteStackBlock;
        v49[1] = 3221225472;
        v49[2] = sub_10040B9A0;
        v49[3] = &unk_100BDB518;
        v49[4] = self;
        v49[5] = v11;
        v49[6] = v33;
        v41 = objc_retainBlock(v49);
        [v11 setPacketBufferReadHandler:v41];
        v42 = +[IDSGroupSessionMultiplexer sharedInstance];
        [v42 setupTransportForConnection:v11];

        [v11 startReadOnTransportThread];
        goto LABEL_36;
      }

      v43 = +[IDSGroupSessionMultiplexer sharedInstance];
      [v43 resetConnection:v11 errorCode:61];

      [v11 invalidate];
LABEL_36:
      if (++v10 == v48)
      {
        v48 = [obj countByEnumeratingWithState:&v54 objects:v61 count:16];
        if (!v48)
        {
          goto LABEL_38;
        }

        goto LABEL_9;
      }
    }

    v32 = [v11 multiplexerParams];
    [v11 setContext:{objc_msgSend(v32, "participantID")}];

    goto LABEL_32;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Multiplexer Transport routeClientConnections: failed because transport is invalidated", buf, 2u);
  }

  v9 = +[NSSet set];
LABEL_39:

  return v9;
}

- (void)setPacketBufferReadHandler:(id)a3
{
  if (atomic_load_explicit(&self->_invalidated, memory_order_acquire))
  {
    v3 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Mutliplexer Transport setPacketBufferReadHandler: failed because transport is invalidated", v7, 2u);
    }
  }

  else
  {
    v5 = objc_retainBlock(a3);
    readHandler = self->_readHandler;
    self->_readHandler = v5;

    _objc_release_x1(v5, readHandler);
  }
}

- (void)resetConnectionForPacketBuffer:(id *)a3
{
  if (atomic_load_explicit(&self->_invalidated, memory_order_acquire))
  {
    v3 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Mutliplexer Transport resetConnectionForPacketBuffer: failed because transport is invalidated", &buf, 2u);
    }

LABEL_4:

    return;
  }

  var2 = a3->var2;
  if (var2 <= 3)
  {
    v3 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = sub_10050F958(a3->var0, a3->var2);
      LODWORD(buf) = 136315138;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Control packet doesn't have enough bytes %s", &buf, 0xCu);
    }

    goto LABEL_4;
  }

  var0 = a3->var0;
  if (var2 < 8)
  {
    v9 = 0;
  }

  else
  {
    v9 = bswap32(*(var0 + 1));
  }

  v10 = var2 > 7;
  v11 = (var0[2] << 24) | (var0[3] << 16) | (*var0 << 8) | var0[1];
  os_unfair_lock_lock(&self->_lock);
  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x2020000000;
  v26 = -1;
  portSignatures = self->_portSignatures;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10040C2C4;
  v16[3] = &unk_100BDB540;
  v16[5] = &buf;
  v16[6] = a3;
  v19 = v10;
  v17 = v11;
  v18 = v9;
  v16[4] = self;
  [(NSMutableArray *)portSignatures enumerateObjectsUsingBlock:v16];
  if (*(*(&buf + 1) + 24) == -1)
  {
    v13 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sub_10050F958(a3->var0, a3->var2);
      *v20 = 67109378;
      v21 = v11;
      v22 = 2080;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cannot find connection to reset for portSignature %08X packet %s", v20, 0x12u);
    }
  }

  else
  {
    v13 = +[IDSGroupSessionMultiplexer sharedInstance];
    v14 = [(NSMutableArray *)self->_routedConnections objectAtIndexedSubscript:*(*(&buf + 1) + 24)];
    [v13 resetConnection:v14];
  }

  _Block_object_dispose(&buf, 8);
  os_unfair_lock_unlock(&self->_lock);
}

- (void)purgeQUICConnectionsForParticipants:(id)a3
{
  v4 = a3;
  if (atomic_load_explicit(&self->_invalidated, memory_order_acquire))
  {
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Mutliplexer Transport purgeQUICConnectionsForParticipants: failed because transport is invalidated", buf, 2u);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_routedConnections;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
    if (v7)
    {
      v8 = *v18;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v18 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v17 + 1) + 8 * i);
          v11 = +[IDSFoundationLog Multiplexer];
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = [v10 isQUIC];
            *buf = 138412802;
            v13 = @"NO";
            if (v12)
            {
              v13 = @"YES";
            }

            v22 = v10;
            v23 = 2112;
            v24 = v13;
            v25 = 2112;
            v26 = v4;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "purgeQUICConnectionsForParticipants: checking connection %@ isQUIC: %@ for participants %@", buf, 0x20u);
          }

          if ([v10 isQUIC])
          {
            if (!v4 || (+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 context]), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v4, "containsObject:", v14), v14, v15))
            {
              v16 = +[IDSGroupSessionMultiplexer sharedInstance];
              [v16 resetConnection:v10];

              [v10 invalidate];
            }
          }
        }

        v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v27 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)addListenerConnection:(id)a3
{
  v4 = a3;
  explicit = atomic_load_explicit(&self->_invalidated, memory_order_acquire);
  if (explicit)
  {
    v6 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Mutliplexer Transport addListenerConnection: failed because transport is invalidated", buf, 2u);
    }
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableArray *)self->_listeners addObject:v4];
    os_unfair_lock_unlock(&self->_lock);
    v7 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      listeners = self->_listeners;
      *buf = 138412802;
      v19 = v4;
      v20 = 2112;
      v21 = listeners;
      v22 = 2112;
      v23 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "added listener connection %@ to listeners %@\nLocalMUXTransport %@", buf, 0x20u);
    }

    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_10040C9C8;
    v15 = &unk_100BDB568;
    v16 = self;
    v9 = v4;
    v17 = v9;
    v10 = objc_retainBlock(&v12);
    [v9 setPacketBufferReadHandler:{v10, v12, v13, v14, v15, v16}];
    [v9 startReadOnTransportThread];
  }

  return (explicit & 1) == 0;
}

- (BOOL)_tryConsumeQUICShortHeaderPacketBuffer:(id *)a3
{
  if ([(NSMutableArray *)self->_routedConnections count])
  {
    v5 = [(NSMutableArray *)self->_routedConnections objectAtIndexedSubscript:0];
    [v5 writePacketBuffer:a3];
  }

  else
  {
    v6 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "_tryConsumeQUICShortHeaderPacketBuffer: no reliable unicast connection to consume packetBuffer.", v8, 2u);
    }
  }

  return 1;
}

- (BOOL)tryConsumePacketBuffer:(id *)a3
{
  if (atomic_load_explicit(&self->_invalidated, memory_order_acquire))
  {
    v3 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Mutliplexer Transport tryConsumePacketBuffer: failed because transport is invalidated", buf, 2u);
    }

LABEL_8:

    return 0;
  }

  if (a3->var2 <= 3)
  {
    v3 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      var2 = a3->var2;
      *buf = 134217984;
      *v59 = var2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "not enough header %ld to consume", buf, 0xCu);
    }

    goto LABEL_8;
  }

  v8 = bswap32(*a3->var0);
  if (v8 == -87113609)
  {
    IDSLinkPacketBufferAddBufferStart();
    v9 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v59 = -87113609;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "header %08X is is control packet", buf, 8u);
    }

    [(IDSMultiplexerGroupSessionTransport *)self resetConnectionForPacketBuffer:a3];
    return 1;
  }

  if (!a3->var15)
  {
    if (v8 != -87133353)
    {
      return 0;
    }

    kdebug_trace();
    var4 = a3->var24[0].var4;
    if (var4 || byte_100CD3D60)
    {
      IDSLinkPacketBufferAddBufferStart();
      goto LABEL_23;
    }

    if (a3->var2 <= 33)
    {
      v27 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = a3->var2;
        *buf = 134217984;
        *v59 = v28;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "packet is fanout but doest not have enough bytes for encryption header %ld", buf, 0xCu);
      }

      return 1;
    }

    v45 = *(a3->var0 + 2);
    v29 = *(a3->var0 + 6);
    v30 = *(a3->var0 + 7);
    v31 = *(a3->var0 + 8);
    v32 = *(a3->var0 + 9);
    v33 = [[NSUUID alloc] initWithUUIDBytes:a3->var0 + 10];
    value = 0xAAAAAAAAAAAAAAAALL;
    if (NSMapMember(self->_fanoutEncryptionMKIToReceivingStateMap, v33, 0, &value))
    {
      v34 = value;
    }

    else
    {
      v34 = malloc_type_malloc(0x11F0uLL, 0x10300408CDAB1FBuLL);
      fanoutEncryptionManager = self->_fanoutEncryptionManager;
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_10040D504;
      v56[3] = &unk_100BDB588;
      v56[4] = v34;
      v57 = (v29 << 24) | (v30 << 16) | (v31 << 8) | v32;
      if (([(IDSGroupEncryptionKeyManager *)fanoutEncryptionManager useDecryptingKeyForKeyIndex:v33 handler:v56]& 1) == 0)
      {
        free(v34);
        v39 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v59 = v33;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Fanout encryption - useDecryptingKeyForKeyIndex %@ failed - dropping incoming packet", buf, 0xCu);
        }

        goto LABEL_60;
      }

      [(NSMapTable *)self->_fanoutEncryptionMKIToReceivingStateMap setObject:v34 forKey:v33];
    }

    IDSLinkPacketBufferAddBufferStart();
    v38 = sub_10050CB8C(v34, bswap32(v45) >> 16, a3->var0, a3->var2, 0);
    if (!v38)
    {

LABEL_23:
      if (a3->var2 <= 3)
      {
        v11 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = a3->var2;
          *buf = 134217984;
          *v59 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cannot retrieve port signature, invalid packetBuffer size: %ld", buf, 0xCu);
        }

        return 1;
      }

      v13 = *a3->var0;
      v14 = __rev16(*(a3->var0 + 1));
      v15 = __PAIR64__(v14, bswap32(v13)) >> 16;
      os_unfair_lock_lock(&self->_lock);
      value = 0;
      p_value = &value;
      v54 = 0x2020000000;
      v55 = -1;
      portSignatures = self->_portSignatures;
      v50[0] = _NSConcreteStackBlock;
      v50[1] = 3221225472;
      v50[2] = sub_10040D624;
      v50[3] = &unk_100BDB5B0;
      v51 = v15;
      v50[5] = &value;
      v50[6] = var4;
      v50[4] = self;
      [(NSMutableArray *)portSignatures enumerateObjectsUsingBlock:v50];
      if (p_value[3] == -1)
      {
        v43 = v15;
        v20 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          listeners = self->_listeners;
          *buf = 138412546;
          *v59 = listeners;
          *&v59[8] = 2112;
          *&v59[10] = self;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "check listeners %@\nGroupSessionMUXTransport %@", buf, 0x16u);
        }

        v44 = v14;
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v17 = self->_listeners;
        v22 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v46 objects:v64 count:16];
        if (v22)
        {
          v23 = *v47;
          while (2)
          {
            for (i = 0; i != v22; i = i + 1)
            {
              if (*v47 != v23)
              {
                objc_enumerationMutation(v17);
              }

              v25 = *(*(&v46 + 1) + 8 * i);
              if ([v25 tryConsumePacketBuffer:a3])
              {
                [v25 setContext:var4];
                goto LABEL_54;
              }
            }

            v22 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v46 objects:v64 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }
        }

        v17 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(&v17->super.super, OS_LOG_TYPE_DEFAULT))
        {
          v26 = sub_10050F958(a3->var0, a3->var2);
          *buf = 67110146;
          *v59 = v44;
          *&v59[4] = 1024;
          *&v59[6] = __rev16(v13);
          *&v59[10] = 2048;
          *&v59[12] = var4;
          v60 = 1024;
          v61 = v43;
          v62 = 2080;
          v63 = v26;
          _os_log_impl(&_mh_execute_header, &v17->super.super, OS_LOG_TYPE_DEFAULT, "Cannot find corresponding connection (localPort:%d, remotePort:%d, participantID:%llu, portSignature %08X), for incoming packet %s", buf, 0x28u);
        }

        goto LABEL_54;
      }

      v17 = [(NSMutableArray *)self->_routedConnections objectAtIndexedSubscript:?];
      if ([(NSMutableArray *)v17 isTCP])
      {
        v18 = [(NSMutableArray *)v17 remoteTCPSYN];
        v19 = v18 == 0;

        if (v19)
        {
          if (a3->var2 <= 19)
          {
            v35 = +[IDSFoundationLog Multiplexer];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = a3->var2;
              *buf = 134217984;
              *v59 = v36;
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "connection is tcp but packet does not have enough bytes for header %ld", buf, 0xCu);
            }

            goto LABEL_54;
          }

          if ((a3->var0[13] & 2) != 0)
          {
            v40 = bswap32(*(a3->var0 + 1));
            v41 = [NSNumber numberWithUnsignedInt:v40];
            [(NSMutableArray *)v17 setRemoteTCPSYN:v41];

            v42 = +[IDSFoundationLog Multiplexer];
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 67109378;
              *v59 = v40;
              *&v59[4] = 2112;
              *&v59[6] = v17;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "saved remote SYN %08X for connection %@", buf, 0x12u);
            }
          }
        }
      }

      [(NSMutableArray *)v17 writePacketBuffer:a3];
LABEL_54:

      _Block_object_dispose(&value, 8);
      os_unfair_lock_unlock(&self->_lock);
      return 1;
    }

    v39 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v59 = v38;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Fanout encryptinon - decryption failed with error code %d", buf, 8u);
    }

LABEL_60:

    return 1;
  }

  return [(IDSMultiplexerGroupSessionTransport *)self _tryConsumeQUICShortHeaderPacketBuffer:?];
}

- (void)invalidate
{
  atomic_store(1u, &self->_invalidated);
  readHandler = self->_readHandler;
  self->_readHandler = 0;

  participantIDToAliasConverter = self->_participantIDToAliasConverter;
  self->_participantIDToAliasConverter = 0;

  fanoutEncryptionSendingEncryptionState = self->_fanoutEncryptionSendingEncryptionState;
  if (fanoutEncryptionSendingEncryptionState)
  {
    sub_10050CB5C(fanoutEncryptionSendingEncryptionState);
    free(self->_fanoutEncryptionSendingEncryptionState);
    self->_fanoutEncryptionSendingEncryptionState = 0;
  }

  fanoutEncryptionSendingMKI = self->_fanoutEncryptionSendingMKI;
  self->_fanoutEncryptionSendingMKI = 0;

  memset(&enumerator, 170, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, self->_fanoutEncryptionMKIToReceivingStateMap);
  value = 0xAAAAAAAAAAAAAAAALL;
  while (NSNextMapEnumeratorPair(&enumerator, 0, &value))
  {
    v7 = value;
    sub_10050CB5C(value);
    free(v7);
  }

  NSEndMapTableEnumeration(&enumerator);
  os_unfair_lock_lock(&self->_lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_routedConnections;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v27 count:16];
  if (v9)
  {
    v10 = *v21;
    do
    {
      v11 = 0;
      do
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v20 + 1) + 8 * v11) invalidate];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v27 count:16];
    }

    while (v9);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v12 = self->_listeners;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v13)
  {
    v14 = *v17;
    do
    {
      v15 = 0;
      do
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v16 + 1) + 8 * v15) invalidate];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v16 objects:v26 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end
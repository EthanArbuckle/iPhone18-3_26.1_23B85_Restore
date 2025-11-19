@interface IDSMultiplexerLocalTransport
- (BOOL)addListenerConnection:(id)a3;
- (BOOL)tryConsumePacketBuffer:(id *)a3;
- (IDSMultiplexerLocalTransport)initWithIdentifier:(id)a3;
- (id)routeClientConnections:(id)a3;
- (void)cancelClientConnection:(id)a3;
- (void)setPacketBufferReadHandler:(id)a3;
@end

@implementation IDSMultiplexerLocalTransport

- (IDSMultiplexerLocalTransport)initWithIdentifier:(id)a3
{
  v5 = a3;
  v14.receiver = self;
  v14.super_class = IDSMultiplexerLocalTransport;
  v6 = [(IDSMultiplexerLocalTransport *)&v14 init];
  if (v6)
  {
    v7 = +[NSMutableArray array];
    portSignatures = v6->_portSignatures;
    v6->_portSignatures = v7;

    v9 = +[NSMutableArray array];
    routedConnections = v6->_routedConnections;
    v6->_routedConnections = v9;

    v11 = +[NSMutableArray array];
    listeners = v6->_listeners;
    v6->_listeners = v11;

    objc_storeStrong(&v6->_identifier, a3);
  }

  return v6;
}

- (void)cancelClientConnection:(id)a3
{
  v4 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = -1;
  routedConnections = self->_routedConnections;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10046FBC0;
  v16[3] = &unk_100BDB4C8;
  v6 = v4;
  v17 = v6;
  v18 = &v19;
  [(NSMutableArray *)routedConnections enumerateObjectsUsingBlock:v16];
  v7 = v20;
  if (v20[3] != -1)
  {
    [(NSMutableArray *)self->_portSignatures removeObjectAtIndex:?];
    [(NSMutableArray *)self->_routedConnections removeObjectAtIndex:v20[3]];
    v7 = v20;
  }

  v7[3] = -1;
  listeners = self->_listeners;
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10046FBE8;
  v13 = &unk_100BDB4C8;
  v9 = v6;
  v14 = v9;
  v15 = &v19;
  [(NSMutableArray *)listeners enumerateObjectsUsingBlock:&v10];
  if (v20[3] != -1)
  {
    [(NSMutableArray *)self->_listeners removeObjectAtIndex:v10, v11, v12, v13];
  }

  [v9 invalidate];

  _Block_object_dispose(&v19, 8);
}

- (id)routeClientConnections:(id)a3
{
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v21;
    *&v5 = 67109120;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        v10 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [v9 portsSignature];
          *buf = v17;
          v25 = v11;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[IDSLocalMultiplexer routeClientConnections] portsSignature:%08X", buf, 8u);
        }

        portSignatures = self->_portSignatures;
        v13 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v9 portsSignature]);
        [(NSMutableArray *)portSignatures addObject:v13];

        [(NSMutableArray *)self->_routedConnections addObject:v9];
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10046FE5C;
        v19[3] = &unk_100BDB568;
        v19[4] = self;
        v19[5] = v9;
        v14 = objc_retainBlock(v19);
        [v9 setPacketBufferReadHandler:v14];
        v15 = +[IDSLocalMultiplexer sharedInstance];
        [v15 setupTransportForConnection:v9];

        [v9 startReadOnTransportThread];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  return obj;
}

- (BOOL)addListenerConnection:(id)a3
{
  v4 = a3;
  [(NSMutableArray *)self->_listeners addObject:v4];
  v5 = +[IDSFoundationLog Multiplexer];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    listeners = self->_listeners;
    *buf = 138412802;
    v17 = v4;
    v18 = 2112;
    v19 = listeners;
    v20 = 2112;
    v21 = self;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "added listener connection %@ to listeners %@\nLocalMUXTransport %@", buf, 0x20u);
  }

  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100470048;
  v13 = &unk_100BDB568;
  v14 = self;
  v15 = v4;
  v7 = v4;
  v8 = objc_retainBlock(&v10);
  [v7 setPacketBufferReadHandler:{v8, v10, v11, v12, v13, v14}];
  [v7 startReadOnTransportThread];

  return 1;
}

- (BOOL)tryConsumePacketBuffer:(id *)a3
{
  if (a3->var2 <= 3)
  {
    v4 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      var2 = a3->var2;
      LODWORD(buf) = 134217984;
      *(&buf + 4) = var2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "not enough header %ld to consume", &buf, 0xCu);
    }

    return 0;
  }

  if (bswap32(*a3->var0) != -87133353)
  {
    return 0;
  }

  kdebug_trace();
  [(IDSMultiplexerLocalTransport *)self packetizationHeadroom];
  IDSLinkPacketBufferAddBufferStart();
  if (a3->var2 > 3)
  {
    v10 = *a3->var0;
    v11 = __rev16(*(a3->var0 + 1));
    v12 = __PAIR64__(v11, bswap32(v10)) >> 16;
    *&buf = 0;
    *(&buf + 1) = &buf;
    v33 = 0x2020000000;
    v34 = -1;
    portSignatures = self->_portSignatures;
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100470548;
    v25[3] = &unk_100BDD030;
    v26 = v12;
    v25[4] = &buf;
    [(NSMutableArray *)portSignatures enumerateObjectsUsingBlock:v25];
    if (*(*(&buf + 1) + 24) == -1)
    {
      v15 = +[IDSFoundationLog Multiplexer];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        listeners = self->_listeners;
        *v27 = 138412546;
        *v28 = listeners;
        *&v28[8] = 2112;
        v29 = self;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "check listeners %@\nLocalMUXTransport %@", v27, 0x16u);
      }

      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v14 = self->_listeners;
      v17 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
      if (v17)
      {
        v18 = *v22;
LABEL_20:
        v19 = 0;
        while (1)
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v14);
          }

          if ([*(*(&v21 + 1) + 8 * v19) tryConsumePacketBuffer:{a3, v21}])
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v31 count:16];
            if (v17)
            {
              goto LABEL_20;
            }

            goto LABEL_26;
          }
        }
      }

      else
      {
LABEL_26:

        v14 = +[IDSFoundationLog Multiplexer];
        if (os_log_type_enabled(&v14->super.super, OS_LOG_TYPE_DEFAULT))
        {
          v20 = sub_10050F958(a3->var0, a3->var2);
          *v27 = 67109890;
          *v28 = v11;
          *&v28[4] = 1024;
          *&v28[6] = __rev16(v10);
          LOWORD(v29) = 1024;
          *(&v29 + 2) = v12;
          HIWORD(v29) = 2080;
          v30 = v20;
          _os_log_impl(&_mh_execute_header, &v14->super.super, OS_LOG_TYPE_DEFAULT, "Cannot find corresponding connection (localPort:%d, remotePort:%d, portSignature %08X), for incoming packet %s", v27, 0x1Eu);
        }
      }
    }

    else
    {
      v14 = [(NSMutableArray *)self->_routedConnections objectAtIndexedSubscript:?];
      [(NSMutableArray *)v14 writePacketBuffer:a3];
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a3->var2;
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Cannot retrieve port signature, invalid packetBuffer size: %ld", &buf, 0xCu);
    }
  }

  return 1;
}

- (void)setPacketBufferReadHandler:(id)a3
{
  v4 = objc_retainBlock(a3);
  readHandler = self->_readHandler;
  self->_readHandler = v4;

  _objc_release_x1(v4, readHandler);
}

@end
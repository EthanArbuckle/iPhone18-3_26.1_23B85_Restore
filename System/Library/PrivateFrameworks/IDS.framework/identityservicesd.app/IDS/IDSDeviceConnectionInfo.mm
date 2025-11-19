@interface IDSDeviceConnectionInfo
- (IDSDeviceConnectionInfo)init;
- (unsigned)nextAvailableLocalCID;
- (void)addBlocksOnLinkConnect:(id)a3;
- (void)cancelBlockOnLinkConnectWithID:(id)a3 cancelSucceeded:(BOOL *)a4;
- (void)cancelBlocksOnLinkConnect;
- (void)clearLocalCID:(unsigned __int16)a3;
- (void)dealloc;
- (void)invalidate;
- (void)performBlocksOnLinkConnect;
@end

@implementation IDSDeviceConnectionInfo

- (IDSDeviceConnectionInfo)init
{
  v4.receiver = self;
  v4.super_class = IDSDeviceConnectionInfo;
  v2 = [(IDSDeviceConnectionInfo *)&v4 init];
  if (v2)
  {
    *(v2 + 4) = objc_alloc_init(NSMutableDictionary);
    *(v2 + 8) = objc_alloc_init(NSMutableSet);
    if (qword_100CBCE10 != -1)
    {
      sub_100915644();
    }

    *(v2 + 1036) = *&qword_100CBCE18 * mach_continuous_time();
    sub_1004C6F18(v2 + 72);
    sub_1004C6EC8(0, (v2 + 72));
    sub_1005B0794((v2 + 8320));
    sub_1005B0EDC((v2 + 8320), 0x400u);
    sub_1005B0EDC((v2 + 8320), 0x401u);
    sub_1006C2C64((v2 + 16528), 32);
    sub_1006C2C64((v2 + 16552), 32);
    sub_1006C2C64((v2 + 16576), 32);
    *(v2 + 2075) = objc_alloc_init(NSMutableArray);
    *(v2 + 4152) = -1;
    uuid_generate(v2 + 21968);
    *(v2 + 2079) = 0;
    *(v2 + 4160) = 0;
    uuid_clear(v2 + 16612);
    *(v2 + 16648) = 0u;
    *(v2 + 2083) = 0;
    *(v2 + 2745) = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (void)dealloc
{
  p_utunSocket = &self->_utunSocket;
  if (self->_vifRef)
  {
    NEVirtualInterfaceInvalidate();
    vifRef = self->_vifRef;
    if (vifRef)
    {
      CFRelease(vifRef);
      self->_vifRef = 0;
    }
  }

  sub_10000C280(&self->_connectionsTableByLocalRemotePortKey, &stru_100BD7700);
  sub_1006C2CA8(&self->_connectionsTableByLocalRemotePortKey);
  sub_10000C280(&self->_outgoingEncryptionTableBySSRC, &stru_100BD7720);
  sub_1006C2CA8(&self->_outgoingEncryptionTableBySSRC);
  sub_10000C280(&self->_incomingEncryptionTableBySSRC, &stru_100BD7740);
  sub_1006C2CA8(&self->_incomingEncryptionTableBySSRC);

  if (self->_utunChannel)
  {
    os_channel_destroy();
    self->_utunChannel = 0;
  }

  p_numPackets = &self->regularPackets.numPackets;
  p_utunSocket[8] = 0;
  uuid_clear(self->_utunNexusUUID);
  *&self->_utunChannelTxRing = 0u;
  *&self->_utunChannelRxCount = 0;
  if (*p_utunSocket != -1)
  {
    close(*p_utunSocket);
    *p_utunSocket = -1;
  }

  v6 = p_utunSocket[675];
  if (v6 < p_utunSocket[674])
  {
    v7 = &self->urgentPackets.genericConnection[v6];
    do
    {
      objc_storeWeak(v7, 0);
      ++v6;
      ++v7;
    }

    while (v6 < p_utunSocket[674]);
  }

  nextPacket = self->regularPackets.nextPacket;
  if (nextPacket < *p_numPackets)
  {
    v9 = &self->regularPackets.genericConnection[nextPacket];
    do
    {
      objc_storeWeak(v9, 0);
      ++nextPacket;
      ++v9;
    }

    while (nextPacket < *p_numPackets);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  serviceConnectionCache = self->_serviceConnectionCache;
  v11 = [(NSMutableDictionary *)serviceConnectionCache countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(serviceConnectionCache);
        }

        nw_connection_cancel([(NSMutableDictionary *)self->_serviceConnectionCache objectForKeyedSubscript:*(*(&v16 + 1) + 8 * i)]);
      }

      v12 = [(NSMutableDictionary *)serviceConnectionCache countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  [(NSMutableDictionary *)self->_serviceConnectionCache removeAllObjects];

  if (self->_serviceConnector)
  {
    nw_service_connector_cancel();
    nw_release(self->_serviceConnector);
    self->_serviceConnector = 0;
  }

  if (self->_cloudServiceConnector)
  {
    nw_service_connector_cancel();
    nw_release(self->_cloudServiceConnector);
    self->_cloudServiceConnector = 0;
  }

  v15.receiver = self;
  v15.super_class = IDSDeviceConnectionInfo;
  [(IDSDeviceConnectionInfo *)&v15 dealloc];
}

- (unsigned)nextAvailableLocalCID
{
  v3 = 0;
  while (sub_1004C6F00(v3, self->_localCIDSet))
  {
    if (++v3 == 0xFFFF)
    {
      LOWORD(v3) = -1;
      return v3;
    }
  }

  v4 = +[IDSFoundationLog utunController];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Assign localCID(%04x) from CID set", v6, 8u);
  }

  sub_1004C6EC8(v3, self->_localCIDSet);
  return v3;
}

- (void)clearLocalCID:(unsigned __int16)a3
{
  v3 = a3;
  v5 = +[IDSFoundationLog utunController];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      v7[0] = 67109120;
      v7[1] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Clear localCID(%04x) from CID set", v7, 8u);
    }

    sub_1004C6EE4(v3, self->_localCIDSet);
  }

  else if (v6)
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Attempt to clear reserved CID 0, skip.", v7, 2u);
  }
}

- (void)addBlocksOnLinkConnect:(id)a3
{
  if (a3)
  {
    v4 = [a3 copy];
    [(NSMutableArray *)self->_blocksOnLinkConnect addObject:v4];
  }
}

- (void)performBlocksOnLinkConnect
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  blocksOnLinkConnect = self->_blocksOnLinkConnect;
  v4 = [(NSMutableArray *)blocksOnLinkConnect countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    *&v5 = 138412290;
    v12 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(blocksOnLinkConnect);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (v9)
        {
          v10 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            cbuuid = self->_cbuuid;
            *buf = v12;
            v18 = cbuuid;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Link is connected, perform a block for %@", buf, 0xCu);
          }

          (*(v9 + 16))(v9, 0, 0, 0);
        }
      }

      v6 = [(NSMutableArray *)blocksOnLinkConnect countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_blocksOnLinkConnect removeAllObjects];
}

- (void)cancelBlockOnLinkConnectWithID:(id)a3 cancelSucceeded:(BOOL *)a4
{
  if (a3 && a4)
  {
    v7 = [(NSMutableArray *)self->_blocksOnLinkConnect count];
    *a4 = 0;
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      while (1)
      {
        v10 = [(NSMutableArray *)self->_blocksOnLinkConnect objectAtIndex:v9];
        if (v10)
        {
          v10[2](v10, 0, a3, a4);
          if (*a4)
          {
            break;
          }
        }

        if (v8 == ++v9)
        {
          return;
        }
      }

      v12 = +[IDSFoundationLog utunController];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        cbuuid = self->_cbuuid;
        v14 = 138412546;
        v15 = a3;
        v16 = 2112;
        v17 = cbuuid;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Cancel block by ID succeeded: %@ for %@", &v14, 0x16u);
      }

      [(NSMutableArray *)self->_blocksOnLinkConnect removeObjectAtIndex:v9];
    }
  }

  else
  {
    v11 = +[IDSFoundationLog utunController];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cancelling block by ID needs to pass in ID and success var.", &v14, 2u);
    }
  }
}

- (void)cancelBlocksOnLinkConnect
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  blocksOnLinkConnect = self->_blocksOnLinkConnect;
  v4 = [(NSMutableArray *)blocksOnLinkConnect countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    *&v5 = 138412290;
    v12 = v5;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(blocksOnLinkConnect);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (v9)
        {
          v10 = +[IDSFoundationLog utunController];
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            cbuuid = self->_cbuuid;
            *buf = v12;
            v18 = cbuuid;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Link is connected, cancel a block for %@", buf, 0xCu);
          }

          (*(v9 + 16))(v9, 1, 0, 0);
        }
      }

      v6 = [(NSMutableArray *)blocksOnLinkConnect countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_blocksOnLinkConnect removeAllObjects];
}

- (void)invalidate
{
  v3 = &self->_portMap.ports[1008];
  if (self->_utunChannel)
  {
    os_channel_destroy();
    self->_utunChannel = 0;
  }

  *(v3 + 64) = 0;
  uuid_clear(self->_utunNexusUUID);
  *&self->_utunChannelTxRing = 0u;
  *&self->_utunChannelRxCount = 0;
  NEVirtualInterfaceInvalidate();
  vifRef = self->_vifRef;
  if (vifRef)
  {
    CFRelease(vifRef);
  }

  self->_vifRef = 0;
  v5 = *(v3 + 56);
  if (v5 != -1)
  {
    close(v5);
    *(v3 + 56) = -1;
  }

  if (self->_serviceConnector)
  {
    nw_service_connector_cancel();
    nw_release(self->_serviceConnector);
    self->_serviceConnector = 0;
  }

  if (self->_cloudServiceConnector)
  {
    nw_service_connector_cancel();
    nw_release(self->_cloudServiceConnector);
    self->_cloudServiceConnector = 0;
  }
}

@end
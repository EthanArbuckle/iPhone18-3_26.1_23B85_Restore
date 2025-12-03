@interface ACCTransportServerRemote
- (ACCTransportClientInfo)clientInfo;
- (ACCTransportServerRemote)initWithClientInfo:(id)info;
- (void)accessoryInfoForConnectionWithUUID:(id)d withReply:(id)reply;
- (void)accessoryInfoForEndpointWithUUID:(id)d withReply:(id)reply;
- (void)addToDictionaryProperty:(id)property values:(id)values forConnectionWithUUID:(id)d withReply:(id)reply;
- (void)addToDictionaryProperty:(id)property values:(id)values forEndpointWithUUID:(id)d withReply:(id)reply;
- (void)appendToArrayProperty:(id)property values:(id)values forConnectionWithUUID:(id)d withReply:(id)reply;
- (void)appendToArrayProperty:(id)property values:(id)values forEndpointWithUUID:(id)d withReply:(id)reply;
- (void)authStatusForConnectionWithUUID:(id)d authType:(int)type withReply:(id)reply;
- (void)connectionUUIDForEndpointWithUUID:(id)d withReply:(id)reply;
- (void)destroyConnectionWithUUID:(id)d withReply:(id)reply;
- (void)destroyEndpointWithUUID:(id)d withReply:(id)reply;
- (void)enableSecureTunnelDataReceiveHandlerForEndpoint:(id)endpoint;
- (void)endpointUUIDsForConnectionWithUUID:(id)d withReply:(id)reply;
- (void)identifierForConnectionWithUUID:(id)d withReply:(id)reply;
- (void)identifierForEndpointWithUUID:(id)d withReply:(id)reply;
- (void)isConnectionAuthenticatedForUUID:(id)d withReply:(id)reply;
- (void)launchServer;
- (void)processIncomingData:(id)data forEndpointWithUUID:(id)d withReply:(id)reply;
- (void)propertiesForConnectionWithUUID:(id)d withReply:(id)reply;
- (void)propertiesForEndpointWithUUID:(id)d withReply:(id)reply;
- (void)publishConnectionWithUUID:(id)d withReply:(id)reply;
- (void)removeProperty:(id)property forConnectionWithUUID:(id)d withReply:(id)reply;
- (void)removeProperty:(id)property forEndpointWithUUID:(id)d withReply:(id)reply;
- (void)sendOutgoingSecureTunnelData:(id)data forEndpointWithUUID:(id)d forType:(unsigned __int16)type withResult:(id)result;
- (void)setAccessoryInfo:(id)info forEndpointWithUUID:(id)d withReply:(id)reply;
- (void)setConnectionAuthenticated:(id)authenticated state:(BOOL)state;
- (void)setProperties:(id)properties forConnectionWithUUID:(id)d withReply:(id)reply;
- (void)setProperties:(id)properties forEndpointWithUUID:(id)d withReply:(id)reply;
@end

@implementation ACCTransportServerRemote

- (ACCTransportClientInfo)clientInfo
{
  WeakRetained = objc_loadWeakRetained(&self->_clientInfo);

  return WeakRetained;
}

- (ACCTransportServerRemote)initWithClientInfo:(id)info
{
  infoCopy = info;
  v8.receiver = self;
  v8.super_class = ACCTransportServerRemote;
  v5 = [(ACCTransportServerRemote *)&v8 init];
  v6 = v5;
  if (v5)
  {
    if (infoCopy)
    {
      objc_storeWeak(&v5->_clientInfo, infoCopy);
    }

    else
    {

      v6 = 0;
    }
  }

  return v6;
}

- (void)launchServer
{
  kdebug_trace();
  if (gLogObjects)
  {
    v2 = gNumLogObjects < 3;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v4 = &_os_log_default;
    v3 = &_os_log_default;
  }

  else
  {
    v4 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "launchServer called!", v5, 2u);
  }
}

id __77__ACCTransportServerRemote_createConnectionWithType_andIdentifier_withReply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = +[ACCTransportServer sharedServer];
  v9 = [*(a1 + 32) clientInfo];
  v10 = [v8 sendOutgoingData:a4 forEndpointWithUUID:a3 connectionUUID:a2 toClient:v9];

  return v10;
}

- (void)setProperties:(id)properties forConnectionWithUUID:(id)d withReply:(id)reply
{
  propertiesCopy = properties;
  dCopy = d;
  replyCopy = reply;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v12 = &_os_log_default;
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    clientInfo = [(ACCTransportServerRemote *)self clientInfo];
    connectionUUIDs = [clientInfo connectionUUIDs];
    *buf = 138412802;
    v33 = propertiesCopy;
    v34 = 2112;
    v35 = dCopy;
    v36 = 2112;
    v37 = connectionUUIDs;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "setProperties: %@ forConnectionWithUUID: %@ withReply: , connectionUUIDs = %@", buf, 0x20u);
  }

  clientInfo2 = [(ACCTransportServerRemote *)self clientInfo];
  connectionUUIDs2 = [clientInfo2 connectionUUIDs];
  v18 = [connectionUUIDs2 containsObject:dCopy];

  if (v18)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __74__ACCTransportServerRemote_setProperties_forConnectionWithUUID_withReply___block_invoke;
    v24[3] = &unk_100227308;
    v19 = dCopy;
    v25 = v19;
    v26 = propertiesCopy;
    v27 = &v28;
    if ((acc_manager_protectedConnectionCall(v19, 0, 0, v24) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v20 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v20 = &_os_log_default;
        v23 = &_os_log_default;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v33 = "[ACCTransportServerRemote setProperties:forConnectionWithUUID:withReply:]";
        v34 = 2112;
        v35 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
      }
    }

    v21 = v25;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v21 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v21 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = dCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Attempt to modify properties on connection not created by client, ignore! connectionUUID %@", buf, 0xCu);
    }
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, *(v29 + 24));
  }

  _Block_object_dispose(&v28, 8);
}

uint64_t __74__ACCTransportServerRemote_setProperties_forConnectionWithUUID_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __74__ACCTransportServerRemote_setProperties_forConnectionWithUUID_withReply___block_invoke_cold_2(a1);
  }

  *(*(*(a1 + 48) + 8) + 24) = acc_connection_setProperties(a2, *(a1 + 40));
  return 1;
}

- (void)appendToArrayProperty:(id)property values:(id)values forConnectionWithUUID:(id)d withReply:(id)reply
{
  propertyCopy = property;
  valuesCopy = values;
  dCopy = d;
  replyCopy = reply;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  clientInfo = [(ACCTransportServerRemote *)self clientInfo];
  connectionUUIDs = [clientInfo connectionUUIDs];
  v16 = [connectionUUIDs containsObject:dCopy];

  if (v16)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __89__ACCTransportServerRemote_appendToArrayProperty_values_forConnectionWithUUID_withReply___block_invoke;
    v22[3] = &unk_100229598;
    v17 = dCopy;
    v23 = v17;
    v24 = propertyCopy;
    v25 = valuesCopy;
    v26 = &v27;
    if ((acc_manager_protectedConnectionCall(v17, 0, 0, v22) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v18 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v18 = &_os_log_default;
        v21 = &_os_log_default;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v32 = "[ACCTransportServerRemote appendToArrayProperty:values:forConnectionWithUUID:withReply:]";
        v33 = 2112;
        v34 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
      }
    }

    v19 = v23;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v19 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = dCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Attempt to modify properties on connection not created by client, ignore! connectionUUID %@", buf, 0xCu);
    }
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, *(v28 + 24));
  }

  _Block_object_dispose(&v27, 8);
}

uint64_t __89__ACCTransportServerRemote_appendToArrayProperty_values_forConnectionWithUUID_withReply___block_invoke(void *a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __89__ACCTransportServerRemote_appendToArrayProperty_values_forConnectionWithUUID_withReply___block_invoke_cold_2(a1);
  }

  *(*(a1[7] + 8) + 24) = acc_connection_appendToArrayProperty(a2, a1[5], a1[6]);
  return 1;
}

- (void)addToDictionaryProperty:(id)property values:(id)values forConnectionWithUUID:(id)d withReply:(id)reply
{
  propertyCopy = property;
  valuesCopy = values;
  dCopy = d;
  replyCopy = reply;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  clientInfo = [(ACCTransportServerRemote *)self clientInfo];
  connectionUUIDs = [clientInfo connectionUUIDs];
  v16 = [connectionUUIDs containsObject:dCopy];

  if (v16)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __91__ACCTransportServerRemote_addToDictionaryProperty_values_forConnectionWithUUID_withReply___block_invoke;
    v22[3] = &unk_100229598;
    v17 = dCopy;
    v23 = v17;
    v24 = propertyCopy;
    v25 = valuesCopy;
    v26 = &v27;
    if ((acc_manager_protectedConnectionCall(v17, 0, 0, v22) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v18 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v18 = &_os_log_default;
        v21 = &_os_log_default;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v32 = "[ACCTransportServerRemote addToDictionaryProperty:values:forConnectionWithUUID:withReply:]";
        v33 = 2112;
        v34 = v17;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
      }
    }

    v19 = v23;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v19 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v19 = &_os_log_default;
      v20 = &_os_log_default;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v32 = dCopy;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Attempt to modify properties on connection not created by client, ignore! connectionUUID %@", buf, 0xCu);
    }
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, *(v28 + 24));
  }

  _Block_object_dispose(&v27, 8);
}

uint64_t __91__ACCTransportServerRemote_addToDictionaryProperty_values_forConnectionWithUUID_withReply___block_invoke(void *a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __91__ACCTransportServerRemote_addToDictionaryProperty_values_forConnectionWithUUID_withReply___block_invoke_cold_2(a1);
  }

  *(*(a1[7] + 8) + 24) = acc_connection_addToDictionaryProperty(a2, a1[5], a1[6]);
  return 1;
}

- (void)removeProperty:(id)property forConnectionWithUUID:(id)d withReply:(id)reply
{
  propertyCopy = property;
  dCopy = d;
  replyCopy = reply;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 3;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v13 = &_os_log_default;
    v12 = &_os_log_default;
  }

  else
  {
    v13 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    clientInfo = [(ACCTransportServerRemote *)self clientInfo];
    connectionUUIDs = [clientInfo connectionUUIDs];
    *buf = 138412802;
    v33 = propertyCopy;
    v34 = 2112;
    v35 = dCopy;
    v36 = 2112;
    v37 = connectionUUIDs;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "removeProperty: %@ forConnectionWithUUID: %@ withReply: , connectionUUIDs = %@", buf, 0x20u);
  }

  clientInfo2 = [(ACCTransportServerRemote *)self clientInfo];
  connectionUUIDs2 = [clientInfo2 connectionUUIDs];
  v18 = [connectionUUIDs2 containsObject:dCopy];

  if (v18)
  {
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __75__ACCTransportServerRemote_removeProperty_forConnectionWithUUID_withReply___block_invoke;
    v24[3] = &unk_100227308;
    v19 = dCopy;
    v25 = v19;
    v26 = propertyCopy;
    v27 = &v28;
    if ((acc_manager_protectedConnectionCall(v19, 0, 0, v24) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v20 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v20 = &_os_log_default;
        v23 = &_os_log_default;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v33 = "[ACCTransportServerRemote removeProperty:forConnectionWithUUID:withReply:]";
        v34 = 2112;
        v35 = v19;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
      }
    }

    v21 = v25;
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v21 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v21 = &_os_log_default;
      v22 = &_os_log_default;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v33 = dCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Attempt to modify properties on connection not created by client, ignore! connectionUUID %@", buf, 0xCu);
    }
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, *(v29 + 24));
  }

  _Block_object_dispose(&v28, 8);
}

uint64_t __75__ACCTransportServerRemote_removeProperty_forConnectionWithUUID_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __75__ACCTransportServerRemote_removeProperty_forConnectionWithUUID_withReply___block_invoke_cold_2(a1);
  }

  *(*(*(a1 + 48) + 8) + 24) = acc_connection_removeProperty(a2, *(a1 + 40));
  return 1;
}

- (void)setAccessoryInfo:(id)info forEndpointWithUUID:(id)d withReply:(id)reply
{
  infoCopy = info;
  dCopy = d;
  replyCopy = reply;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __75__ACCTransportServerRemote_setAccessoryInfo_forEndpointWithUUID_withReply___block_invoke;
  v14[3] = &unk_1002295C0;
  v14[4] = self;
  v16 = &v17;
  v11 = infoCopy;
  v15 = v11;
  if ((acc_manager_protectedEndpointCall(dCopy, 0, 0, v14) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v12 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v12 = &_os_log_default;
      v13 = &_os_log_default;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v22 = "[ACCTransportServerRemote setAccessoryInfo:forEndpointWithUUID:withReply:]";
      v23 = 2112;
      v24 = dCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, *(v18 + 24));
  }

  _Block_object_dispose(&v17, 8);
}

uint64_t __75__ACCTransportServerRemote_setAccessoryInfo_forEndpointWithUUID_withReply___block_invoke(uint64_t a1, id **a2)
{
  v4 = **a2;
  v5 = [*(a1 + 32) clientInfo];
  v6 = [v5 connectionUUIDs];
  v7 = [v6 containsObject:v4];

  if (v7)
  {
    v8 = *(a1 + 40);
    *(*(*(a1 + 48) + 8) + 24) = acc_endpoint_setAccessoryInfoOverridesWithDictionary(a2);
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v9 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v9 = &_os_log_default;
      v10 = &_os_log_default;
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = 138412290;
      v13 = v4;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Attempt to modify accessoryInfo on connection not created by client, ignore! connectionUUID %@", &v12, 0xCu);
    }
  }

  return 1;
}

- (void)setProperties:(id)properties forEndpointWithUUID:(id)d withReply:(id)reply
{
  propertiesCopy = properties;
  dCopy = d;
  replyCopy = reply;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __72__ACCTransportServerRemote_setProperties_forEndpointWithUUID_withReply___block_invoke;
  v15[3] = &unk_1002295E8;
  v15[4] = self;
  v18 = &v19;
  v11 = propertiesCopy;
  v16 = v11;
  v12 = dCopy;
  v17 = v12;
  if ((acc_manager_protectedEndpointCall(v12, 0, 0, v15) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v13 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v13 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[ACCTransportServerRemote setProperties:forEndpointWithUUID:withReply:]";
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, *(v20 + 24));
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __72__ACCTransportServerRemote_setProperties_forEndpointWithUUID_withReply___block_invoke(uint64_t a1, id **a2)
{
  if (*a2)
  {
    v4 = **a2;
    v5 = [*(a1 + 32) clientInfo];
    v6 = [v5 connectionUUIDs];
    v7 = [v6 containsObject:v4];

    if (v7)
    {
      *(*(*(a1 + 56) + 8) + 24) = acc_endpoint_setProperties(a2, *(a1 + 40));
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v10 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v10 = &_os_log_default;
        v12 = &_os_log_default;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 48);
        v15 = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Attempt to modify properties on endpoint of connection not created by client, ignore! endpointUUID %@, connectionUUID %@", &v15, 0x16u);
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 3;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v9 = &_os_log_default;
    }

    else
    {
      v4 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 48);
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Attempt to modify properties on endpoint of connection but cannot get connection for endpointUUID %@", &v15, 0xCu);
    }
  }

  return 1;
}

- (void)appendToArrayProperty:(id)property values:(id)values forEndpointWithUUID:(id)d withReply:(id)reply
{
  propertyCopy = property;
  valuesCopy = values;
  dCopy = d;
  replyCopy = reply;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __87__ACCTransportServerRemote_appendToArrayProperty_values_forEndpointWithUUID_withReply___block_invoke;
  v19[3] = &unk_100229610;
  v19[4] = self;
  v23 = &v24;
  v14 = propertyCopy;
  v20 = v14;
  v15 = valuesCopy;
  v21 = v15;
  v16 = dCopy;
  v22 = v16;
  if ((acc_manager_protectedEndpointCall(v16, 0, 0, v19) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v17 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "[ACCTransportServerRemote appendToArrayProperty:values:forEndpointWithUUID:withReply:]";
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, *(v25 + 24));
  }

  _Block_object_dispose(&v24, 8);
}

uint64_t __87__ACCTransportServerRemote_appendToArrayProperty_values_forEndpointWithUUID_withReply___block_invoke(uint64_t a1, id **a2)
{
  if (*a2)
  {
    v4 = **a2;
    v5 = [*(a1 + 32) clientInfo];
    v6 = [v5 connectionUUIDs];
    v7 = [v6 containsObject:v4];

    if (v7)
    {
      *(*(*(a1 + 64) + 8) + 24) = acc_endpoint_appendToArrayProperty(a2, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v10 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v10 = &_os_log_default;
        v12 = &_os_log_default;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 56);
        v15 = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Attempt to modify properties on endpoint of connection not created by client, ignore! endpointUUID %@, connectionUUID %@", &v15, 0x16u);
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 3;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v9 = &_os_log_default;
    }

    else
    {
      v4 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 56);
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Attempt to modify properties on endpoint of connection but cannot get connection for endpointUUID %@", &v15, 0xCu);
    }
  }

  return 1;
}

- (void)addToDictionaryProperty:(id)property values:(id)values forEndpointWithUUID:(id)d withReply:(id)reply
{
  propertyCopy = property;
  valuesCopy = values;
  dCopy = d;
  replyCopy = reply;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __89__ACCTransportServerRemote_addToDictionaryProperty_values_forEndpointWithUUID_withReply___block_invoke;
  v19[3] = &unk_100229610;
  v19[4] = self;
  v23 = &v24;
  v14 = propertyCopy;
  v20 = v14;
  v15 = valuesCopy;
  v21 = v15;
  v16 = dCopy;
  v22 = v16;
  if ((acc_manager_protectedEndpointCall(v16, 0, 0, v19) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v17 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v17 = &_os_log_default;
      v18 = &_os_log_default;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v29 = "[ACCTransportServerRemote addToDictionaryProperty:values:forEndpointWithUUID:withReply:]";
      v30 = 2112;
      v31 = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, *(v25 + 24));
  }

  _Block_object_dispose(&v24, 8);
}

uint64_t __89__ACCTransportServerRemote_addToDictionaryProperty_values_forEndpointWithUUID_withReply___block_invoke(uint64_t a1, id **a2)
{
  if (*a2)
  {
    v4 = **a2;
    v5 = [*(a1 + 32) clientInfo];
    v6 = [v5 connectionUUIDs];
    v7 = [v6 containsObject:v4];

    if (v7)
    {
      *(*(*(a1 + 64) + 8) + 24) = acc_endpoint_addToDictionaryProperty(a2, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v10 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v10 = &_os_log_default;
        v12 = &_os_log_default;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = *(a1 + 56);
        v15 = 138412546;
        v16 = v13;
        v17 = 2112;
        v18 = v4;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "Attempt to modify properties on endpoint of connection not created by client, ignore! endpointUUID %@, connectionUUID %@", &v15, 0x16u);
      }
    }
  }

  else
  {
    if (gLogObjects)
    {
      v8 = gNumLogObjects < 3;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v4 = &_os_log_default;
      v9 = &_os_log_default;
    }

    else
    {
      v4 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 56);
      v15 = 138412290;
      v16 = v11;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "Attempt to modify properties on endpoint of connection but cannot get connection for endpointUUID %@", &v15, 0xCu);
    }
  }

  return 1;
}

- (void)removeProperty:(id)property forEndpointWithUUID:(id)d withReply:(id)reply
{
  propertyCopy = property;
  dCopy = d;
  replyCopy = reply;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __73__ACCTransportServerRemote_removeProperty_forEndpointWithUUID_withReply___block_invoke;
  v15[3] = &unk_1002295E8;
  v15[4] = self;
  v18 = &v19;
  v11 = propertyCopy;
  v16 = v11;
  v12 = dCopy;
  v17 = v12;
  if ((acc_manager_protectedEndpointCall(v12, 0, 0, v15) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v13 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v13 = &_os_log_default;
      v14 = &_os_log_default;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[ACCTransportServerRemote removeProperty:forEndpointWithUUID:withReply:]";
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, *(v20 + 24));
  }

  _Block_object_dispose(&v19, 8);
}

uint64_t __73__ACCTransportServerRemote_removeProperty_forEndpointWithUUID_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) && ([*(a1 + 32) clientInfo], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "connectionUUIDs"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "containsObject:", *(a2 + 8)), v5, v4, v6))
  {
    *(*(*(a1 + 56) + 8) + 24) = acc_endpoint_removeProperty(a2, *(a1 + 40));
  }

  else
  {
    if (gLogObjects)
    {
      v7 = gNumLogObjects < 3;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v9 = &_os_log_default;
      v8 = &_os_log_default;
    }

    else
    {
      v9 = *(gLogObjects + 16);
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = *(a1 + 48);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Attempt to modify properties on endpoint not created by client, ignore! endpointUUID %@", &v12, 0xCu);
    }
  }

  return 1;
}

- (void)publishConnectionWithUUID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  v5 = acc_manager_publishConnectionWithUUID(d);
  v6 = replyCopy;
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, v5);
    v6 = replyCopy;
  }
}

- (void)destroyEndpointWithUUID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  v5 = acc_manager_removeEndpointWithUUID(d);
  v6 = replyCopy;
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, v5);
    v6 = replyCopy;
  }
}

- (void)destroyConnectionWithUUID:(id)d withReply:(id)reply
{
  replyCopy = reply;
  dCopy = d;
  v8 = acc_manager_removeConnectionWithUUID(dCopy, v7);
  clientInfo = [(ACCTransportServerRemote *)self clientInfo];
  connectionUUIDs = [clientInfo connectionUUIDs];
  [connectionUUIDs removeObject:dCopy];

  v11 = replyCopy;
  if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, v8);
    v11 = replyCopy;
  }
}

- (void)connectionUUIDForEndpointWithUUID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__4;
  v14 = __Block_byref_object_dispose__4;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __72__ACCTransportServerRemote_connectionUUIDForEndpointWithUUID_withReply___block_invoke;
  v9[3] = &unk_100227380;
  v9[4] = &v10;
  if ((acc_manager_protectedEndpointCall(dCopy, 0, 0, v9) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v7 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v7 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[ACCTransportServerRemote connectionUUIDForEndpointWithUUID:withReply:]";
      v18 = 2112;
      v19 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
    }
  }

  if (replyCopy)
  {
    replyCopy[2](replyCopy, v11[5]);
  }

  _Block_object_dispose(&v10, 8);
}

uint64_t __72__ACCTransportServerRemote_connectionUUIDForEndpointWithUUID_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*a2)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), *(a2 + 8));
  }

  return 1;
}

- (void)endpointUUIDsForConnectionWithUUID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (replyCopy)
  {
    if (dCopy)
    {
      v6 = acc_manager_copyEndpointUUIDsForConnection(dCopy);
      if (v6)
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }

    allObjects = [(__CFSet *)v7 allObjects];
    replyCopy[2](replyCopy, allObjects);
  }
}

- (void)authStatusForConnectionWithUUID:(id)d authType:(int)type withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (replyCopy)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __79__ACCTransportServerRemote_authStatusForConnectionWithUUID_authType_withReply___block_invoke;
    v12[3] = &unk_100229638;
    v9 = dCopy;
    typeCopy = type;
    v13 = v9;
    v14 = &v16;
    if ((acc_manager_protectedConnectionCall(v9, 0, 0, v12) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v10 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v10 = &_os_log_default;
        v11 = &_os_log_default;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v21 = "[ACCTransportServerRemote authStatusForConnectionWithUUID:authType:withReply:]";
        v22 = 2112;
        v23 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
      }
    }

    replyCopy[2](replyCopy, *(v17 + 6));

    _Block_object_dispose(&v16, 8);
  }
}

uint64_t __79__ACCTransportServerRemote_authStatusForConnectionWithUUID_authType_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __79__ACCTransportServerRemote_authStatusForConnectionWithUUID_authType_withReply___block_invoke_cold_2(a1);
  }

  *(*(*(a1 + 40) + 8) + 24) = acc_connection_getAuthStatus(a2, *(a1 + 48));
  return 1;
}

- (void)isConnectionAuthenticatedForUUID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (replyCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __71__ACCTransportServerRemote_isConnectionAuthenticatedForUUID_withReply___block_invoke;
    v10[3] = &unk_100229660;
    v7 = dCopy;
    v11 = v7;
    v12 = &v13;
    if ((acc_manager_protectedConnectionCall(v7, 0, 0, v10) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v8 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v18 = "[ACCTransportServerRemote isConnectionAuthenticatedForUUID:withReply:]";
        v19 = 2112;
        v20 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
      }
    }

    replyCopy[2](replyCopy, *(v14 + 24));

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __71__ACCTransportServerRemote_isConnectionAuthenticatedForUUID_withReply___block_invoke(uint64_t a1, _BOOL8 a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __71__ACCTransportServerRemote_isConnectionAuthenticatedForUUID_withReply___block_invoke_cold_2(a1);
  }

  *(*(*(a1 + 40) + 8) + 24) = acc_connection_isAuthenticated(a2, 6u);
  return 1;
}

- (void)setConnectionAuthenticated:(id)authenticated state:(BOOL)state
{
  stateCopy = state;
  authenticatedCopy = authenticated;
  if (gLogObjects)
  {
    v7 = gNumLogObjects < 3;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v9 = &_os_log_default;
    v8 = &_os_log_default;
  }

  else
  {
    v9 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v27 = authenticatedCopy;
    v28 = 1024;
    LODWORD(v29) = stateCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setConnectionAuthenticated: %@ state: %d", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_clientInfo);
  xPCConnection = [WeakRetained XPCConnection];
  v12 = [xPCConnection hasEntitlement:@"com.apple.accessories.transport.allowauth"];

  if (v12)
  {
    clientInfo = [(ACCTransportServerRemote *)self clientInfo];
    connectionUUIDs = [clientInfo connectionUUIDs];
    v15 = [connectionUUIDs containsObject:authenticatedCopy];

    if (v15)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = __61__ACCTransportServerRemote_setConnectionAuthenticated_state___block_invoke;
      v23[3] = &unk_100229688;
      v25 = stateCopy;
      v16 = authenticatedCopy;
      v24 = v16;
      if ((acc_manager_protectedConnectionCall(v16, 0, 0, v23) & 1) == 0)
      {
        if (gLogObjects && gNumLogObjects >= 3)
        {
          v17 = *(gLogObjects + 16);
        }

        else
        {
          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
          {
            platform_connectionInfo_configStreamGetCategories_cold_2();
          }

          v17 = &_os_log_default;
          v22 = &_os_log_default;
        }

        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v27 = "[ACCTransportServerRemote setConnectionAuthenticated:state:]";
          v28 = 2112;
          v29 = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
        }
      }

      v18 = v24;
      goto LABEL_41;
    }

    if (gLogObjects && gNumLogObjects >= 3)
    {
      v18 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v18 = &_os_log_default;
      v21 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = authenticatedCopy;
      v20 = "Attempt to set Authenticated state on connection not created by client, ignore! connectionUUID %@";
      goto LABEL_33;
    }
  }

  else
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v18 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v18 = &_os_log_default;
      v19 = &_os_log_default;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = authenticatedCopy;
      v20 = "setConnectionAuthenticated: %@, ERROR: No entitlement!";
LABEL_33:
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
    }
  }

LABEL_41:
}

uint64_t __61__ACCTransportServerRemote_setConnectionAuthenticated_state___block_invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  if (gLogObjects)
  {
    v5 = gNumLogObjects < 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v7 = &_os_log_default;
    v6 = &_os_log_default;
  }

  else
  {
    v7 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = 136316162;
    v12 = "[ACCTransportServerRemote setConnectionAuthenticated:state:]_block_invoke";
    v13 = 2112;
    v14 = v9;
    v15 = 1024;
    v16 = v10;
    v17 = 1024;
    v18 = v4;
    v19 = 1024;
    v20 = 0;
    _os_log_debug_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "%s: %@ state: %d, status %{coreacc:ACCAuthInfo_Status_t}d for type %{coreacc:ACCAuthInfo_Type_t}d", &v11, 0x28u);
  }

  acc_connection_setAuthStatus(a2, 0, v4);
  return 1;
}

- (void)accessoryInfoForConnectionWithUUID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (replyCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __73__ACCTransportServerRemote_accessoryInfoForConnectionWithUUID_withReply___block_invoke;
    v10[3] = &unk_100229660;
    v7 = dCopy;
    v11 = v7;
    v12 = &v13;
    if ((acc_manager_protectedConnectionCall(v7, 0, 0, v10) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v8 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[ACCTransportServerRemote accessoryInfoForConnectionWithUUID:withReply:]";
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
      }
    }

    replyCopy[2](replyCopy, v14[5]);

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __73__ACCTransportServerRemote_accessoryInfoForConnectionWithUUID_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __73__ACCTransportServerRemote_accessoryInfoForConnectionWithUUID_withReply___block_invoke_cold_2(a1);
  }

  if (a2)
  {
    AccessoryInfo = acc_connection_getAccessoryInfo(a2);
    v8 = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  return 1;
}

- (void)accessoryInfoForEndpointWithUUID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (replyCopy)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x3032000000;
    v13 = __Block_byref_object_copy__4;
    v14 = __Block_byref_object_dispose__4;
    v15 = 0;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __71__ACCTransportServerRemote_accessoryInfoForEndpointWithUUID_withReply___block_invoke;
    v9[3] = &unk_100227380;
    v9[4] = &v10;
    if ((acc_manager_protectedEndpointCall(dCopy, 0, 0, v9) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v7 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v7 = &_os_log_default;
        v8 = &_os_log_default;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v17 = "[ACCTransportServerRemote accessoryInfoForEndpointWithUUID:withReply:]";
        v18 = 2112;
        v19 = dCopy;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
      }
    }

    replyCopy[2](replyCopy, v11[5]);
    _Block_object_dispose(&v10, 8);
  }
}

uint64_t __71__ACCTransportServerRemote_accessoryInfoForEndpointWithUUID_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  AccessoryInfo = acc_endpoint_getAccessoryInfo(a2);
  v4 = acc_accInfo_copyAccessoryInfoDictionary(AccessoryInfo);
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return 1;
}

- (void)propertiesForConnectionWithUUID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (replyCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __70__ACCTransportServerRemote_propertiesForConnectionWithUUID_withReply___block_invoke;
    v10[3] = &unk_100229660;
    v7 = dCopy;
    v11 = v7;
    v12 = &v13;
    if ((acc_manager_protectedConnectionCall(v7, 0, 0, v10) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v8 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[ACCTransportServerRemote propertiesForConnectionWithUUID:withReply:]";
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
      }
    }

    replyCopy[2](replyCopy, v14[5]);

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __70__ACCTransportServerRemote_propertiesForConnectionWithUUID_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __70__ACCTransportServerRemote_propertiesForConnectionWithUUID_withReply___block_invoke_cold_2(a1);
  }

  v7 = acc_connection_copyProperties(a2);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 1;
}

- (void)propertiesForEndpointWithUUID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (replyCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __68__ACCTransportServerRemote_propertiesForEndpointWithUUID_withReply___block_invoke;
    v10[3] = &unk_1002296B0;
    v7 = dCopy;
    v11 = v7;
    v12 = &v13;
    if ((acc_manager_protectedEndpointCall(v7, 0, 0, v10) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v8 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[ACCTransportServerRemote propertiesForEndpointWithUUID:withReply:]";
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
      }
    }

    replyCopy[2](replyCopy, v14[5]);

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __68__ACCTransportServerRemote_propertiesForEndpointWithUUID_withReply___block_invoke(uint64_t a1, pthread_mutex_t *a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __68__ACCTransportServerRemote_propertiesForEndpointWithUUID_withReply___block_invoke_cold_2(a1);
  }

  v7 = acc_endpoint_copyProperties(a2);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 1;
}

- (void)identifierForConnectionWithUUID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (replyCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __70__ACCTransportServerRemote_identifierForConnectionWithUUID_withReply___block_invoke;
    v10[3] = &unk_100229660;
    v7 = dCopy;
    v11 = v7;
    v12 = &v13;
    if ((acc_manager_protectedConnectionCall(v7, 0, 0, v10) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v8 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[ACCTransportServerRemote identifierForConnectionWithUUID:withReply:]";
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: didn't find connectionUUID %@", buf, 0x16u);
      }
    }

    replyCopy[2](replyCopy, v14[5]);

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __70__ACCTransportServerRemote_identifierForConnectionWithUUID_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __70__ACCTransportServerRemote_identifierForConnectionWithUUID_withReply___block_invoke_cold_2(a1);
  }

  v7 = acc_connection_copyIdentifier(a2);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 1;
}

- (void)identifierForEndpointWithUUID:(id)d withReply:(id)reply
{
  dCopy = d;
  replyCopy = reply;
  if (replyCopy)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__4;
    v17 = __Block_byref_object_dispose__4;
    v18 = 0;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __68__ACCTransportServerRemote_identifierForEndpointWithUUID_withReply___block_invoke;
    v10[3] = &unk_1002296B0;
    v7 = dCopy;
    v11 = v7;
    v12 = &v13;
    if ((acc_manager_protectedEndpointCall(v7, 0, 0, v10) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v8 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v8 = &_os_log_default;
        v9 = &_os_log_default;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v20 = "[ACCTransportServerRemote identifierForEndpointWithUUID:withReply:]";
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
      }
    }

    replyCopy[2](replyCopy, v14[5]);

    _Block_object_dispose(&v13, 8);
  }
}

uint64_t __68__ACCTransportServerRemote_identifierForEndpointWithUUID_withReply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    __68__ACCTransportServerRemote_identifierForEndpointWithUUID_withReply___block_invoke_cold_2(a1);
  }

  v7 = acc_endpoint_copyIdentifier(a2);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return 1;
}

- (void)processIncomingData:(id)data forEndpointWithUUID:(id)d withReply:(id)reply
{
  dataCopy = data;
  dCopy = d;
  replyCopy = reply;
  if (dataCopy && dCopy)
  {
    v10 = dataCopy;
    v11 = acc_manager_processIncomingDataForEndpointWithUUID(dCopy, v10);
    CFRelease(v10);
    if (!replyCopy)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (gLogObjects)
  {
    v12 = gNumLogObjects < 3;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v14 = &_os_log_default;
    v13 = &_os_log_default;
  }

  else
  {
    v14 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ACCTransportPluginManager processIncomingData:v14 forEndpointWithUUID:?];
  }

  v11 = 0;
  if (replyCopy)
  {
LABEL_16:
    replyCopy[2](replyCopy, v11);
  }

LABEL_17:
}

- (void)sendOutgoingSecureTunnelData:(id)data forEndpointWithUUID:(id)d forType:(unsigned __int16)type withResult:(id)result
{
  typeCopy = type;
  dataCopy = data;
  dCopy = d;
  resultCopy = result;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (gLogObjects)
  {
    v12 = gNumLogObjects < 3;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v14 = &_os_log_default;
    v13 = &_os_log_default;
  }

  else
  {
    v14 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v26 = dCopy;
    v27 = 1024;
    LODWORD(v28[0]) = typeCopy;
    WORD2(v28[0]) = 2112;
    *(v28 + 6) = dataCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sendOutgoingSecureTunnelData, endpoint %@, type %d, dataOut %@", buf, 0x1Cu);
  }

  if (dataCopy)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = &__96__ACCTransportServerRemote_sendOutgoingSecureTunnelData_forEndpointWithUUID_forType_withResult___block_invoke;
    v17[3] = &unk_1002296D8;
    v18 = dataCopy;
    v19 = &v21;
    v20 = typeCopy;
    if ((acc_manager_protectedEndpointCall(dCopy, 0, 0, v17) & 1) == 0)
    {
      if (gLogObjects && gNumLogObjects >= 3)
      {
        v15 = *(gLogObjects + 16);
      }

      else
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          platform_connectionInfo_configStreamGetCategories_cold_2();
        }

        v15 = &_os_log_default;
        v16 = &_os_log_default;
      }

      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v26 = "[ACCTransportServerRemote sendOutgoingSecureTunnelData:forEndpointWithUUID:forType:withResult:]";
        v27 = 2112;
        v28[0] = dCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s: didn't find endpointUUID %@", buf, 0x16u);
      }
    }
  }

  if (resultCopy)
  {
    resultCopy[2](resultCopy, *(v22 + 24));
  }

  _Block_object_dispose(&v21, 8);
}

- (void)enableSecureTunnelDataReceiveHandlerForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  if (gLogObjects)
  {
    v4 = gNumLogObjects < 3;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v6 = &_os_log_default;
    v5 = &_os_log_default;
  }

  else
  {
    v6 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = endpointCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Notified that a secure tunnel handler has been added for endpoint: %@", &v10, 0xCu);
  }

  if (!endpointCopy)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v7 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v7 = &_os_log_default;
      v8 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [ACCTransportServerRemote enableSecureTunnelDataReceiveHandlerForEndpoint:v7];
    }

    goto LABEL_29;
  }

  if ((acc_manager_protectedEndpointCall(endpointCopy, 0, 0, &__block_literal_global_30) & 1) == 0)
  {
    if (gLogObjects && gNumLogObjects >= 3)
    {
      v7 = *(gLogObjects + 16);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        platform_connectionInfo_configStreamGetCategories_cold_2();
      }

      v7 = &_os_log_default;
      v9 = &_os_log_default;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(ACCTransportServerRemote *)endpointCopy enableSecureTunnelDataReceiveHandlerForEndpoint:v7];
    }

LABEL_29:
  }
}

BOOL __76__ACCTransportServerRemote_enableSecureTunnelDataReceiveHandlerForEndpoint___block_invoke(id a1, ACCEndpoint_s *a2, void *a3)
{
  if (a2->var1)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __76__ACCTransportServerRemote_enableSecureTunnelDataReceiveHandlerForEndpoint___block_invoke_2;
    v6[3] = &__block_descriptor_40_e35_v24__0____CFString__8____CFData__16l;
    v6[4] = a2;
    v4 = objc_retainBlock(v6);
    acc_endpoint_setEndpointSecureTunnelDataReceiveTypeHandler(a2, 1, v4);
  }

  return 1;
}

void __76__ACCTransportServerRemote_enableSecureTunnelDataReceiveHandlerForEndpoint___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogObjects)
  {
    v6 = gNumLogObjects < 3;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      platform_connectionInfo_configStreamGetCategories_cold_2();
    }

    v8 = &_os_log_default;
    v7 = &_os_log_default;
  }

  else
  {
    v8 = *(gLogObjects + 16);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = a2;
    v12 = 2112;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "SecureTunnelHandler endpoint: %@, data:%@", &v10, 0x16u);
  }

  v9 = +[ACCTransportServer sharedServer];
  [v9 receivedSecureTunnelData:a3 forEndpointWithUUID:a2 connectionUUID:*(*(a1 + 32) + 8)];
}

void __74__ACCTransportServerRemote_setProperties_forConnectionWithUUID_withReply___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_7_21(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void __89__ACCTransportServerRemote_appendToArrayProperty_values_forConnectionWithUUID_withReply___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(OUTLINED_FUNCTION_7_21(a1, __stack_chk_guard) + 48);
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void __91__ACCTransportServerRemote_addToDictionaryProperty_values_forConnectionWithUUID_withReply___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(OUTLINED_FUNCTION_7_21(a1, __stack_chk_guard) + 48);
  OUTLINED_FUNCTION_5_31();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x2Au);
}

void __75__ACCTransportServerRemote_removeProperty_forConnectionWithUUID_withReply___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_7_21(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x20u);
}

void __79__ACCTransportServerRemote_authStatusForConnectionWithUUID_authType_withReply___block_invoke_cold_2(uint64_t a1)
{
  v1 = *(OUTLINED_FUNCTION_6_28(a1, __stack_chk_guard) + 48);
  OUTLINED_FUNCTION_11_5();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x1Cu);
}

void __71__ACCTransportServerRemote_isConnectionAuthenticatedForUUID_withReply___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6_28(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __73__ACCTransportServerRemote_accessoryInfoForConnectionWithUUID_withReply___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6_28(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __70__ACCTransportServerRemote_propertiesForConnectionWithUUID_withReply___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6_28(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __68__ACCTransportServerRemote_propertiesForEndpointWithUUID_withReply___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6_28(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __70__ACCTransportServerRemote_identifierForConnectionWithUUID_withReply___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6_28(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

void __68__ACCTransportServerRemote_identifierForEndpointWithUUID_withReply___block_invoke_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6_28(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_3_13();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)enableSecureTunnelDataReceiveHandlerForEndpoint:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v2 = 136315394;
  v3 = "[ACCTransportServerRemote enableSecureTunnelDataReceiveHandlerForEndpoint:]";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%s: didn't find endpointUUID %@", &v2, 0x16u);
}

@end
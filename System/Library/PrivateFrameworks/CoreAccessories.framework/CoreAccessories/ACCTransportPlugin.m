@interface ACCTransportPlugin
- (ACCTransportPlugin)initWithDelegate:(id)a3;
- (ACCTransportPluginManagerProtocol)delegate;
- (BOOL)connectedThroughAdapter:(id)a3;
- (BOOL)destroyConnectionWithUUID:(id)a3;
- (BOOL)destroyEndpointWithUUID:(id)a3;
- (BOOL)processIncomingData:(id)a3 forEndpointWithUUID:(id)a4;
- (BOOL)publishConnectionWithUUID:(id)a3;
- (BOOL)routeOutgoingData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5;
- (BOOL)sendOutgoingData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5;
- (BOOL)setAccessoryInfo:(id)a3 forEndpointWithUUID:(id)a4;
- (BOOL)setProperties:(id)a3 forConnectionWithUUID:(id)a4;
- (BOOL)setProperties:(id)a3 forEndpointWithUUID:(id)a4;
- (NSString)pluginClassAndName;
- (id)allConnectionUUIDs;
- (id)allEndpointsUUIDs;
- (id)certificateCapabilitiesForConnectionWithUUID:(id)a3;
- (id)certificateDataForConnectionWithUUID:(id)a3;
- (id)certificateSerialForConnectionWithUUID:(id)a3;
- (id)certificateSerialStringForConnectionWithUUID:(id)a3;
- (id)connectionUUIDForEndpointWithUUID:(id)a3;
- (id)endpointUUIDsForConnectionWithUUID:(id)a3;
- (id)identifierForConnectionWithUUID:(id)a3;
- (id)identifierForEndpointWithUUID:(id)a3;
- (id)propertiesForConnectionWithUUID:(id)a3;
- (id)propertiesForEndpointWithUUID:(id)a3;
- (int)connectionTypeForConnectionWithUUID:(id)a3;
- (int)protocolForEndpointWithUUID:(id)a3;
- (int)transportTypeForEndpointWithUUID:(id)a3;
- (void)authStatusDidChangeHandler:(id)a3;
- (void)connectionPropertiesDidChangeHandler:(id)a3;
- (void)dealloc;
- (void)endpointPropertiesDidChangeHandler:(id)a3;
- (void)initPlugin;
- (void)setHandler:(id)a3 forConnectionProperty:(id)a4;
- (void)setHandler:(id)a3 forEndpointProperty:(id)a4;
- (void)startPlugin;
- (void)startSafeConnectionTransaction;
- (void)stopPlugin;
- (void)stopSafeConnectionTransaction;
@end

@implementation ACCTransportPlugin

- (void)startSafeConnectionTransaction
{
  v3 = [(ACCTransportPlugin *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(ACCTransportPlugin *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(ACCTransportPlugin *)self delegate];
      [v7 startSafeConnectionTransaction];
    }
  }
}

- (ACCTransportPluginManagerProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)allEndpointsUUIDs
{
  v3 = [(ACCTransportPlugin *)self delegate];
  if (v3 && (v4 = v3, [(ACCTransportPlugin *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = [(ACCTransportPlugin *)self delegate];
    v8 = [v7 allEndpointsUUIDs];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)stopSafeConnectionTransaction
{
  v3 = [(ACCTransportPlugin *)self delegate];
  if (v3)
  {
    v4 = v3;
    v5 = [(ACCTransportPlugin *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = [(ACCTransportPlugin *)self delegate];
      [v7 stopSafeConnectionTransaction];
    }
  }
}

- (ACCTransportPlugin)initWithDelegate:(id)a3
{
  v4 = a3;
  init_logging();
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportPlugin initWithDelegate:?];
  }

  v17.receiver = self;
  v17.super_class = ACCTransportPlugin;
  v8 = [(ACCTransportPlugin *)&v17 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v4);
    v10 = [MEMORY[0x277CBEB58] set];
    activeConnectionUUIDs = v9->_activeConnectionUUIDs;
    v9->_activeConnectionUUIDs = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    connectionPropertyChangeHandlers = v9->_connectionPropertyChangeHandlers;
    v9->_connectionPropertyChangeHandlers = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    endpointPropertyChangeHandlers = v9->_endpointPropertyChangeHandlers;
    v9->_endpointPropertyChangeHandlers = v14;
  }

  return v9;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 pluginClassAndName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)pluginClassAndName
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ACCTransportPlugin *)self pluginName];
  v7 = [v3 stringWithFormat:@"%@ (%@)", v5, v6];

  return v7;
}

- (void)initPlugin
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 pluginClassAndName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startPlugin
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 pluginClassAndName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)stopPlugin
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 pluginClassAndName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)authStatusDidChangeHandler:(id)a3
{
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportPlugin authStatusDidChangeHandler:?];
  }

  if ([(ACCTransportPlugin *)self conformsToProtocol:&unk_283537440]&& (objc_opt_respondsToSelector() & 1) != 0)
  {
    v8 = [v4 userInfo];
    v9 = [v8 objectForKey:@"ACCTransportPlugin_AuthStatusDidChangeNotification_ConnectionUUID"];

    v10 = [v4 userInfo];
    v11 = [v10 objectForKey:@"ACCTransportPlugin_AuthStatusDidChangeNotification_AuthStatusOld"];
    v12 = [v11 intValue];

    v13 = [v4 userInfo];
    v14 = [v13 objectForKey:@"ACCTransportPlugin_AuthStatusDidChangeNotification_AuthStatusNew"];
    v15 = [v14 intValue];

    v16 = [v4 userInfo];
    v17 = [v16 objectForKey:@"ACCTransportPlugin_AuthStatusDidChangeNotification_AuthType"];
    v18 = [v17 intValue];

    v19 = [v4 userInfo];
    v20 = [v19 objectForKey:@"ACCTransportPlugin_AuthStatusDidChangeNotification_ConnectionIsAuthenticated"];
    v21 = [v20 BOOLValue];

    v22 = [v4 userInfo];
    v23 = [v22 objectForKey:@"ACCTransportPlugin_AuthStatusDidChangeNotification_ConnectionWasAuthenticated"];
    v24 = [v23 BOOLValue];

    [(ACCTransportPlugin *)self authStatusDidChange:v15 forConnectionWithUUID:v9 previousAuthStatus:v12 authType:v18 connectionIsAuthenticated:v21 connectionWasAuthenticated:v24];
  }
}

- (void)connectionPropertiesDidChangeHandler:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportPlugin authStatusDidChangeHandler:?];
  }

  v8 = [v4 userInfo];
  v9 = [v8 objectForKey:@"ACCTransportPlugin_PropertiesDidChangeNotification_ConnectionUUID"];

  v10 = [(ACCTransportPlugin *)self activeConnectionUUIDs];
  v34 = v9;
  LODWORD(v9) = [v10 containsObject:v9];

  if (v9)
  {
    v11 = [v4 userInfo];
    v12 = [v11 objectForKey:@"ACCTransportPlugin_PropertiesDidChangeNotification_PropertiesOld"];

    v32 = v4;
    v13 = [v4 userInfo];
    v14 = [v13 objectForKey:@"ACCTransportPlugin_PropertiesDidChangeNotification_PropertiesNew"];

    if ([(ACCTransportPlugin *)self conformsToProtocol:&unk_283537440]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(ACCTransportPlugin *)self propertiesDidChange:v14 forConnectionWithUUID:v34 previousProperties:v12];
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v35 = self;
    v15 = [(ACCTransportPlugin *)self connectionPropertyChangeHandlers];
    v16 = [v15 allKeys];

    obj = v16;
    v17 = [v16 countByEnumeratingWithState:&v38 objects:v48 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v39;
      v20 = MEMORY[0x277D86220];
      v33 = *v39;
      do
      {
        v21 = 0;
        v36 = v18;
        do
        {
          if (*v39 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v38 + 1) + 8 * v21);
          v23 = [v14 objectForKey:v22];
          v24 = [v12 objectForKey:v22];
          if ((isNSObjectEqual(v23, v24) & 1) == 0)
          {
            v25 = gLogObjects;
            v26 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v27 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v43 = v25;
                v44 = 1024;
                LODWORD(v45) = v26;
                _os_log_error_impl(&dword_221CB0000, v20, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v28 = v20;
              v27 = v20;
              v19 = v33;
            }

            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v43 = v22;
              v44 = 2112;
              v45 = v23;
              v46 = 2112;
              v47 = v24;
              _os_log_debug_impl(&dword_221CB0000, v27, OS_LOG_TYPE_DEBUG, "Calling connection property did change handler for property: %@ (newValue: %@, oldValue: %@)", buf, 0x20u);
            }

            v29 = [(ACCTransportPlugin *)v35 connectionPropertyChangeHandlers];
            v30 = [v29 objectForKey:v22];

            if (v30)
            {
              (v30)[2](v30, v34, v22, v23, v24);
            }

            v18 = v36;
          }

          ++v21;
        }

        while (v18 != v21);
        v18 = [obj countByEnumeratingWithState:&v38 objects:v48 count:16];
      }

      while (v18);
    }

    v4 = v32;
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)endpointPropertiesDidChangeHandler:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogObjects)
  {
    v5 = gNumLogObjects < 2;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v7 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v7 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [ACCTransportPlugin authStatusDidChangeHandler:?];
  }

  v8 = [v4 userInfo];
  v9 = [v8 objectForKey:@"ACCTransportPlugin_PropertiesDidChangeNotification_ConnectionUUID"];

  v10 = [(ACCTransportPlugin *)self activeConnectionUUIDs];
  v36 = v9;
  LODWORD(v9) = [v10 containsObject:v9];

  if (v9)
  {
    v11 = [v4 userInfo];
    v35 = [v11 objectForKey:@"ACCTransportPlugin_EndpointPropertiesDidChangeNotification_EndpointUUID"];

    v12 = [v4 userInfo];
    v13 = [v12 objectForKey:@"ACCTransportPlugin_PropertiesDidChangeNotification_PropertiesOld"];

    v33 = v4;
    v14 = [v4 userInfo];
    v34 = [v14 objectForKey:@"ACCTransportPlugin_PropertiesDidChangeNotification_PropertiesNew"];

    if ([(ACCTransportPlugin *)self conformsToProtocol:&unk_283537440]&& (objc_opt_respondsToSelector() & 1) != 0)
    {
      [(ACCTransportPlugin *)self propertiesDidChange:v34 forEndpointWithUUID:v35 previousProperties:v13 connectionUUID:v36];
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v37 = self;
    v15 = [(ACCTransportPlugin *)self endpointPropertyChangeHandlers];
    v16 = [v15 allKeys];

    obj = v16;
    v17 = [v16 countByEnumeratingWithState:&v40 objects:v50 count:16];
    v18 = v34;
    if (v17)
    {
      v19 = v17;
      v20 = *v41;
      v21 = MEMORY[0x277D86220];
      do
      {
        v22 = 0;
        v38 = v19;
        do
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v40 + 1) + 8 * v22);
          v24 = [v18 objectForKey:v23];
          v25 = [v13 objectForKey:v23];
          if ((isNSObjectEqual(v24, v25) & 1) == 0)
          {
            v26 = gLogObjects;
            v27 = gNumLogObjects;
            if (gLogObjects && gNumLogObjects >= 2)
            {
              v28 = *(gLogObjects + 8);
            }

            else
            {
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218240;
                v45 = v26;
                v46 = 1024;
                LODWORD(v47) = v27;
                _os_log_error_impl(&dword_221CB0000, v21, OS_LOG_TYPE_ERROR, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", buf, 0x12u);
              }

              v29 = v21;
              v28 = v21;
              v18 = v34;
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v45 = v23;
              v46 = 2112;
              v47 = v24;
              v48 = 2112;
              v49 = v25;
              _os_log_debug_impl(&dword_221CB0000, v28, OS_LOG_TYPE_DEBUG, "Calling endpoint property did change handler for property: %@ (newValue: %@, oldValue: %@)", buf, 0x20u);
            }

            v30 = [(ACCTransportPlugin *)v37 endpointPropertyChangeHandlers];
            v31 = [v30 objectForKey:v23];

            if (v31)
            {
              (v31)[2](v31, v35, v23, v24, v25, v36);
            }

            v19 = v38;
          }

          ++v22;
        }

        while (v19 != v22);
        v19 = [obj countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v19);
    }

    v4 = v33;
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (BOOL)setProperties:(id)a3 forConnectionWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACCTransportPlugin *)self delegate];
  if (v8 && (v9 = v8, [(ACCTransportPlugin *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    v12 = [(ACCTransportPlugin *)self delegate];
    v13 = [v12 setProperties:v6 forConnectionWithUUID:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)setAccessoryInfo:(id)a3 forEndpointWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACCTransportPlugin *)self delegate];
  if (v8 && (v9 = v8, [(ACCTransportPlugin *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    v12 = [(ACCTransportPlugin *)self delegate];
    v13 = [v12 setAccessoryInfo:v6 forEndpointWithUUID:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)setProperties:(id)a3 forEndpointWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(ACCTransportPlugin *)self delegate];
  if (v8 && (v9 = v8, [(ACCTransportPlugin *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, v9, (v11 & 1) != 0))
  {
    v12 = [(ACCTransportPlugin *)self delegate];
    v13 = [v12 setProperties:v6 forEndpointWithUUID:v7];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)publishConnectionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 publishConnectionWithUUID:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)destroyEndpointWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 destroyEndpointWithUUID:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)destroyConnectionWithUUID:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(ACCTransportPlugin *)self activeConnectionUUIDs];
    [v5 removeObject:v4];
  }

  v6 = [(ACCTransportPlugin *)self delegate];
  if (v6 && (v7 = v6, [(ACCTransportPlugin *)self delegate], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_opt_respondsToSelector(), v8, v7, (v9 & 1) != 0))
  {
    v10 = [(ACCTransportPlugin *)self delegate];
    v11 = [v10 destroyConnectionWithUUID:v4];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)allConnectionUUIDs
{
  v3 = [(ACCTransportPlugin *)self delegate];
  if (v3 && (v4 = v3, [(ACCTransportPlugin *)self delegate], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_opt_respondsToSelector(), v5, v4, (v6 & 1) != 0))
  {
    v7 = [(ACCTransportPlugin *)self delegate];
    v8 = [v7 allConnectionUUIDs];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)connectionUUIDForEndpointWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 connectionUUIDForEndpointWithUUID:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)endpointUUIDsForConnectionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 endpointUUIDsForConnectionWithUUID:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int)connectionTypeForConnectionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 connectionTypeForConnectionWithUUID:v4];
  }

  else
  {
    v10 = 11;
  }

  return v10;
}

- (id)certificateDataForConnectionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 certificateDataForConnectionWithUUID:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)certificateSerialForConnectionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 certificateSerialForConnectionWithUUID:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)certificateSerialStringForConnectionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 certificateSerialStringForConnectionWithUUID:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)certificateCapabilitiesForConnectionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 certificateCapabilitiesForConnectionWithUUID:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int)transportTypeForEndpointWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 transportTypeForEndpointWithUUID:v4];
  }

  else
  {
    v10 = 18;
  }

  return v10;
}

- (int)protocolForEndpointWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 protocolForEndpointWithUUID:v4];
  }

  else
  {
    v10 = 19;
  }

  return v10;
}

- (id)identifierForConnectionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 identifierForConnectionWithUUID:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)identifierForEndpointWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 identifierForEndpointWithUUID:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)propertiesForConnectionWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 propertiesForConnectionWithUUID:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)propertiesForEndpointWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 propertiesForEndpointWithUUID:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setHandler:(id)a3 forConnectionProperty:(id)a4
{
  aBlock = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(ACCTransportPlugin *)self connectionPropertyChangeHandlers];
    if (aBlock)
    {
      v8 = _Block_copy(aBlock);
      [v7 setObject:v8 forKey:v6];
    }

    else
    {
      [v7 removeObjectForKey:v6];
    }
  }
}

- (void)setHandler:(id)a3 forEndpointProperty:(id)a4
{
  aBlock = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(ACCTransportPlugin *)self endpointPropertyChangeHandlers];
    if (aBlock)
    {
      v8 = _Block_copy(aBlock);
      [v7 setObject:v8 forKey:v6];
    }

    else
    {
      [v7 removeObjectForKey:v6];
    }
  }
}

- (BOOL)connectedThroughAdapter:(id)a3
{
  v4 = a3;
  v5 = [(ACCTransportPlugin *)self delegate];
  if (v5 && (v6 = v5, [(ACCTransportPlugin *)self delegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    v9 = [(ACCTransportPlugin *)self delegate];
    v10 = [v9 connectedThroughAdapter:v4];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)routeOutgoingData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(ACCTransportPlugin *)self conformsToProtocol:&unk_283537440]&& (objc_opt_respondsToSelector() & 1) != 0 && [(ACCTransportPlugin *)self sendOutgoingData:v8 forEndpointWithUUID:v9 connectionUUID:v10];

  return v11;
}

- (BOOL)sendOutgoingData:(id)a3 forEndpointWithUUID:(id)a4 connectionUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (gLogObjects)
  {
    v11 = gNumLogObjects < 2;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [ACCTransportPlugin initWithDelegate:];
    }

    v13 = MEMORY[0x277D86220];
    v12 = MEMORY[0x277D86220];
  }

  else
  {
    v13 = *(gLogObjects + 8);
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    [ACCTransportPlugin sendOutgoingData:v13 forEndpointWithUUID:? connectionUUID:?];
  }

  return 0;
}

- (BOOL)processIncomingData:(id)a3 forEndpointWithUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_5;
  }

  v8 = [(ACCTransportPlugin *)self delegate];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = [(ACCTransportPlugin *)self delegate];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = [(ACCTransportPlugin *)self delegate];
    v13 = [v12 processIncomingData:v6 forEndpointWithUUID:v7];
  }

  else
  {
LABEL_5:
    v13 = 0;
  }

  return v13;
}

- (void)initWithDelegate:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_221CB0000, MEMORY[0x277D86220], v0, "Make sure you have called init_logging()!\ngLogObjects: %p, gNumLogObjects: %d", v1, v2, v3, v4, v6);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)initWithDelegate:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 pluginClassAndName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)authStatusDidChangeHandler:(void *)a1 .cold.2(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = [a1 pluginClassAndName];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x277D85DE8];
}

- (void)sendOutgoingData:(uint64_t)a1 forEndpointWithUUID:(NSObject *)a2 connectionUUID:.cold.2(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_221CB0000, a2, OS_LOG_TYPE_ERROR, "Class '%@' is missing implementation for the sendOutgoingData:forConnectionWithUUID: method!", v6, 0xCu);

  v5 = *MEMORY[0x277D85DE8];
}

@end
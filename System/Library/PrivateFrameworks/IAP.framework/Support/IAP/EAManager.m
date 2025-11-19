@interface EAManager
+ (id)newPlistForAccessory:(id)a3;
+ (id)sharedManager;
+ (void)_updatePlistWithAccessoryProtocolsInternal:(id)a3;
- (BOOL)_isProtocolContainedInWhitelist:(id)a3;
- (BOOL)fakedLocationDeviceFilteringSupport;
- (BOOL)isFakedLocationDeviceEnabled;
- (BOOL)sessionsOpenForDisplayIdentifer:(const char *)a3;
- (EAManager)init;
- (id).cxx_construct;
- (id)accessoryForConnectionID:(id)a3;
- (id)connectedAccessories;
- (id)connectedAccessoriesForEAClient:(unsigned int)a3;
- (id)connectionIDObjectForConnectionID:(unsigned int)a3;
- (id)valueForProperty:(id)a3 forAccessory:(unsigned int)a4;
- (unsigned)addClient:(unsigned int)a3 withAuditToken:(id *)a4 currentClientID:(unsigned int)a5 xpcConnection:(id)a6 eaProtocols:(id)a7 notifyOfAlreadyConnectedAccessories:(BOOL)a8 andBundleId:(id)a9;
- (unsigned)clientIDForDisplayIdentifier:(const char *)a3;
- (unsigned)generateClientID;
- (void)_dpServiceWithFirmwareVersionFound:(id)a3;
- (void)_shouldPostNoAppAlert:(id)a3;
- (void)_takeClientAssertionsForAccessoryConnection;
- (void)_takeClientAssertionsForAccessoryDisconnection;
- (void)_unregisteredClientAssertionTimerFired:(id)a3;
- (void)applicationStateChanged:(id)a3;
- (void)attachAccessory:(const IPodAccessoryDetails *)a3 forTransport:(void *)a4;
- (void)dealloc;
- (void)detachAccessory:(unsigned int)a3;
- (void)fakedLocationDeviceEphemerisMaxIntervalAvailable;
- (void)fakedLocationDeviceEphemerisRefreshIntervalAvailable;
- (void)fakedLocationDeviceEphemerisURLAvailable;
- (void)fakedLocationDeviceNMEAAvailable;
- (void)fakedLocationDevicePointDataAvailable;
- (void)fakedLocationDeviceSetFilter:(id)a3;
- (void)fakedLocationRequestGPSTime;
- (void)logAccessoryAttach:(id)a3 reason:(id)a4;
- (void)logAccessoryDetach:(id)a3 reason:(id)a4;
- (void)notifyEAClient:(id)a3 ofAccessoryEvent:(const char *)a4 accessory:(id)a5;
- (void)notifyEAClient:(id)a3 ofNotificationName:(const char *)a4 withPayload:(id)a5;
- (void)notifyEAClientsOfAccessoryEvent:(const char *)a3 accessory:(id)a4;
- (void)notifyEALocationClientsOfIAPLocationAccessoryNMEASentenceFilteringSupportChangedNotification:(id)a3;
- (void)notifyEALocationClientsOfIAPLocationDidReceiveEphemerisMaxIntervalNotification:(id)a3;
- (void)notifyEALocationClientsOfIAPLocationDidReceiveEphemerisRecommendedRefreshNotification:(id)a3;
- (void)notifyEALocationClientsOfIAPLocationDidReceiveEphemerisURLNotification:(id)a3;
- (void)notifyEALocationClientsOfIAPLocationDidReceiveLocationPointDataNotification:(id)a3;
- (void)notifyEALocationClientsOfIAPLocationDidReceiveNMEASentenceNotification:(id)a3;
- (void)notifyEALocationClientsOfIAPLocationDidRequestGPSTimeNotification:(id)a3;
- (void)removeAllClients;
- (void)removeClientForXPCConnection:(id)a3;
- (void)reset;
- (void)sendToEALocationClientsNotification:(const char *)a3 withPayload:(id)a4;
- (void)takeProcessAssertionForBundleID:(id)a3;
- (void)updateAccessoryInfo:(const IPodAccessoryDetails *)a3;
- (void)updateAccessoryProtocols:(const IPodAccessoryDetails *)a3;
- (void)updateLocationSupport:(unsigned int)a3 isReady:(BOOL)a4;
- (void)updatePlistWithProtocolsForAccessory:(id)a3;
- (void)updateValueFromApp:(id)a3;
@end

@implementation EAManager

- (EAManager)init
{
  v4.receiver = self;
  v4.super_class = EAManager;
  v2 = [(EAManager *)&v4 init];
  if (!v2)
  {
    return v2;
  }

  result = objc_alloc_init(NSMutableDictionary);
  if (((v2 + 8) & 7) == 0)
  {
    v2->_connectedAccessories = result;
    result = objc_alloc_init(NSLock);
    if (((v2 + 40) & 7) == 0)
    {
      v2->_connectedAccessoriesLock = result;
      result = objc_alloc_init(NSLock);
      if (((v2 + 64) & 7) == 0)
      {
        v2->_clientLock = result;
        signal(13, 1);
        result = objc_alloc_init(IAPApplicationStateMonitor);
        if (((v2 + 72) & 7) == 0)
        {
          v2->_appStateMonitor = result;
          [(EAManager *)result setDelegate:v2];
          [(IAPApplicationStateMonitor *)v2->_appStateMonitor startObserving];
          [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"_dpServiceWithFirmwareVersionFound:" object:@"dpWithFwVer", 0];
          return v2;
        }
      }
    }
  }

  __break(0x5516u);
  return result;
}

- (void)dealloc
{
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:name:object:" name:self object:@"dpWithFwVer", 0];
  if (((self + 8) & 7) != 0)
  {
    goto LABEL_12;
  }

  if (((self + 40) & 7) != 0)
  {
    goto LABEL_12;
  }

  if (((self + 64) & 7) != 0)
  {
    goto LABEL_12;
  }

  v5 = 0xAAAAAAAAAAAAAAAALL;
  if ((&self->_connectionIDMap & 7) != 0)
  {
    goto LABEL_12;
  }

  begin_node = self->_connectionIDMap.__tree_.__begin_node_;
  v5 = begin_node;
  while (begin_node != &self->_connectionIDMap.__tree_.__end_node_)
  {
    if (!begin_node || (begin_node & 7) != 0)
    {
      goto LABEL_12;
    }

    sub_100007D44(&v5);
    begin_node = v5;
  }

  sub_100007DB0(&self->_connectionIDMap);
  if (((self + 72) & 7) != 0)
  {
LABEL_12:
    __break(0x5516u);
  }

  else
  {
    [(IAPApplicationStateMonitor *)self->_appStateMonitor stopObserving];

    self->_appStateMonitor = 0;
    v4.receiver = self;
    v4.super_class = EAManager;
    [(EAManager *)&v4 dealloc];
  }
}

+ (id)sharedManager
{
  result = qword_10012B898;
  if (!qword_10012B898)
  {
    v3 = opendir(&kEAPipePath);
    if (v3)
    {
      v4 = v3;
      *&v5 = 0xAAAAAAAAAAAAAAAALL;
      *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v22 = v5;
      v23 = v5;
      v20 = v5;
      v21 = v5;
      v18 = v5;
      v19 = v5;
      v16 = v5;
      v17 = v5;
      v14 = v5;
      v15 = v5;
      v12 = v5;
      v13 = v5;
      v10 = v5;
      v11 = v5;
      *__str = v5;
      v9 = v5;
      v6 = readdir(v3);
      if (v6)
      {
        while ((v6 & 7) == 0)
        {
          if (v6->d_name[0] != 46 || v6->d_name[1] && (v6->d_name[1] != 46 || v6->d_name[2]))
          {
            snprintf(__str, 0x100uLL, "%s/%s", &kEAPipePath, v6->d_name);
            if (unlink(__str) == -1)
            {
              v7 = __error();
              if (!v7 || (v7 & 3) != 0)
              {
                break;
              }

              NSLog(@"ERROR - %s:%s - %d couldn't delete %s errno = %d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "+[EAManager sharedManager]", 167, __str, *v7);
            }
          }

          v6 = readdir(v4);
          if (!v6)
          {
            goto LABEL_14;
          }
        }

        __break(0x5516u);
      }

LABEL_14:
      closedir(v4);
    }

    result = objc_alloc_init(EAManager);
    qword_10012B898 = result;
  }

  return result;
}

+ (id)newPlistForAccessory:(id)a3
{
  v3 = [[NSMutableDictionary alloc] initWithDictionary:a3];
  [v3 removeObjectForKey:@"EAManagerAccessorySessions"];
  [v3 removeObjectForKey:@"OptionalSDKProtocolsShownKey"];
  [v3 removeObjectForKey:IAPAppAccessoryConnectionTimeInSecKey];
  [v3 removeObjectForKey:IAPEASessionOpenedTimesKey];
  return v3;
}

- (unsigned)generateClientID
{
  p_clients = &self->_clients;
  v3 = &self->_clients & 7;
  while (1)
  {
    v4 = arc4random_uniform(0xFFFFFFFF);
    if (v3)
    {
      break;
    }

    v5 = v4;
    v6 = [(NSMutableDictionary *)*p_clients objectForKey:[EAManager stringForClientID:v4]];
    if (v5 && !v6)
    {
      LODWORD(v4) = v5;
      return v4;
    }
  }

  __break(0x5516u);
  return v4;
}

- (void)logAccessoryAttach:(id)a3 reason:(id)a4
{
  sub_1000DDE90(3u, @"%@", a4);
  v5 = IAPAppAccessoryManufacturerKey;
  v6 = IAPAppAccessoryModelNumberKey;
  [IAPEventLogger LogMsg:2 WithDictionary:a3 andKeys:[NSArray arrayWithObjects:IAPAppAccessoryNameKey, IAPAppAccessoryManufacturerKey, IAPAppAccessoryModelNumberKey, IAPAppAccessoryFirmwareRevisionKey, IAPAppAccessoryHardwareRevisionKey, 0]];
  [IAPDataLogger PowerlogAccAttach:a3];
  if (sub_1000E1660())
  {
    v7 = [a3 valueForKey:v6];
    v8 = [a3 valueForKey:v5];

    [IAPDataLogger AggAccAttach:v7 WithManufacturer:v8];
  }
}

- (void)logAccessoryDetach:(id)a3 reason:(id)a4
{
  sub_1000DDE90(3u, @"%@", a4);
  v5 = [a3 objectForKey:IAPAppAccessoryConnectionTimeInSecKey];
  +[IAPDataLogger PowerlogAccDetach:AndConnectionTime:](IAPDataLogger, "PowerlogAccDetach:AndConnectionTime:", a3, [v5 unsignedLongValue]);
  v6 = sub_1000E1660();
  if (v5)
  {
    v7 = !v6;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = [a3 valueForKey:IAPAppAccessoryModelNumberKey];
    v9 = [a3 valueForKey:IAPAppAccessoryManufacturerKey];
    v10 = [v5 unsignedLongValue];

    [IAPDataLogger AggAccDetach:v8 WithManufacturer:v9 AndConnectionTime:v10];
  }
}

- (id)connectionIDObjectForConnectionID:(unsigned int)a3
{
  v5 = a3;
  result = &self->_connectionIDMap;
  if ((result & 7) != 0)
  {
LABEL_8:
    __break(0x5516u);
    return result;
  }

  result = sub_100007E88(result, &v5);
  if (&self->_connectionIDMap.__tree_.__end_node_ != result)
  {
    if (result && (result & 7) == 0)
    {
      return *(result + 5);
    }

    goto LABEL_8;
  }

  return 0;
}

- (unsigned)addClient:(unsigned int)a3 withAuditToken:(id *)a4 currentClientID:(unsigned int)a5 xpcConnection:(id)a6 eaProtocols:(id)a7 notifyOfAlreadyConnectedAccessories:(BOOL)a8 andBundleId:(id)a9
{
  v46 = a8;
  p_clientLock = &self->_clientLock;
  if ((&self->_clientLock & 7) != 0)
  {
    goto LABEL_46;
  }

  [(NSLock *)self->_clientLock lock];
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  p_clients = &self->_clients;
  if ((&self->_clients & 7) != 0)
  {
    goto LABEL_46;
  }

  v47 = self;
  v49 = a5;
  v15 = *p_clients;
  v16 = [*p_clients countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = v16;
  v18 = *v61;
  while (2)
  {
    for (i = 0; i != v17; i = i + 1)
    {
      if (*v61 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v20 = [*p_clients objectForKey:*(*(&v60 + 1) + 8 * i)];
      v21 = v20;
      if (a9)
      {
        if ([objc_msgSend(v20 "bundleId")])
        {
          sub_1000DDE90(3u, @"Found client by bundleID %@", a9);
LABEL_16:
          if (!v21)
          {
            goto LABEL_18;
          }

          NSLog(@"ERROR - %s:%s - %d already have client for mach port bundleID %@ and xpc connection %@", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "[EAManager addClient:withAuditToken:currentClientID:xpcConnection:eaProtocols:notifyOfAlreadyConnectedAccessories:andBundleId:]", 357, a9, a6);
          LODWORD(v22) = 0;
          goto LABEL_45;
        }
      }

      else if ([v20 xpcConnection] == a6)
      {
        sub_1000DDE90(3u, @"Found client by xpcConnection %@, bundleID is %@", a6, 0);
        goto LABEL_16;
      }
    }

    v17 = [v15 countByEnumeratingWithState:&v60 objects:v66 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_18:
  v23 = [IAPEAClient alloc];
  v24 = *&a4->var0[4];
  v59[0] = *a4->var0;
  v59[1] = v24;
  v25 = a3;
  v26 = [(IAPEAClient *)v23 initWithCapabilities:a3 auditToken:v59 xpcConnection:a6 eaProtocols:a7 andBundleId:a9];
  v27 = *p_clients;
  if (!*p_clients)
  {
    v27 = objc_alloc_init(NSMutableDictionary);
    *p_clients = v27;
  }

  v22 = v49;
  v28 = [v27 objectForKey:{+[EAManager stringForClientID:](EAManager, "stringForClientID:", v49)}];
  if (!v49 || v28)
  {
    v22 = [+[EAManager sharedManager](EAManager "sharedManager")];
  }

  [(IAPEAClient *)v26 setClientID:v22];
  [*p_clients setObject:v26 forKey:{+[EAManager stringForClientID:](EAManager, "stringForClientID:", -[IAPEAClient clientID](v26, "clientID"))}];
  if (v46)
  {
    v29 = objc_alloc_init(NSMutableArray);
    if ((&v47->_connectedAccessoriesLock & 7) == 0)
    {
      v30 = v29;
      [(NSLock *)v47->_connectedAccessoriesLock lock];
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      p_connectedAccessories = &v47->_connectedAccessories;
      if ((&v47->_connectedAccessories & 7) == 0)
      {
        v50 = v22;
        v45 = p_clientLock;
        v32 = *p_connectedAccessories;
        v33 = [*p_connectedAccessories countByEnumeratingWithState:&v55 objects:v65 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v56;
          do
          {
            for (j = 0; j != v34; j = j + 1)
            {
              if (*v56 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = +[EAManager newPlistForAccessory:](EAManager, "newPlistForAccessory:", +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [*p_connectedAccessories objectForKey:*(*(&v55 + 1) + 8 * j)]));
              [v30 addObject:v37];
            }

            v34 = [v32 countByEnumeratingWithState:&v55 objects:v65 count:16];
          }

          while (v34);
        }

        [(NSLock *)v47->_connectedAccessoriesLock unlock];
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v38 = [v30 countByEnumeratingWithState:&v51 objects:v64 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v52;
          do
          {
            for (k = 0; k != v39; k = k + 1)
            {
              if (*v52 != v40)
              {
                objc_enumerationMutation(v30);
              }

              [(EAManager *)v47 notifyEAClient:v26 ofAccessoryEvent:"EAProtocolAccessoryConnected" accessory:*(*(&v51 + 1) + 8 * k)];
            }

            v39 = [v30 countByEnumeratingWithState:&v51 objects:v64 count:16];
          }

          while (v39);
        }

        p_clientLock = v45;
        v25 = a3;
        LODWORD(v22) = v50;
        goto LABEL_41;
      }
    }

LABEL_46:
    __break(0x5516u);
  }

LABEL_41:

  if ((v25 & 4) != 0)
  {
    v42 = sub_1000D5ED0();
    if (!v42 || (v42 & 7) != 0)
    {
      goto LABEL_46;
    }

    (*(*v42 + 160))(v42, 1);
  }

LABEL_45:
  [(NSLock *)*p_clientLock unlock];
  return v22;
}

- (void)removeClientForXPCConnection:(id)a3
{
  p_clientLock = &self->_clientLock;
  if ((&self->_clientLock & 7) != 0)
  {
    goto LABEL_38;
  }

  [(NSLock *)self->_clientLock lock];
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  p_clients = &self->_clients;
  if ((&self->_clients & 7) != 0)
  {
    goto LABEL_38;
  }

  v7 = *p_clients;
  v8 = [*p_clients countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (!v8)
  {
    goto LABEL_36;
  }

  v9 = v8;
  v10 = *v37;
LABEL_5:
  v11 = 0;
  while (1)
  {
    if (*v37 != v10)
    {
      objc_enumerationMutation(v7);
    }

    v12 = [*p_clients objectForKey:*(*(&v36 + 1) + 8 * v11)];
    if ([v12 xpcConnection] == a3)
    {
      break;
    }

    if (v9 == ++v11)
    {
      v9 = [v7 countByEnumeratingWithState:&v36 objects:v42 count:16];
      if (!v9)
      {
LABEL_36:
        NSLog(@"Didn't find client to remove");
        NSLog(@"ERROR - %s:%s - %d couldn't find client for xpc client %hhx", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "[EAManager removeClientForXPCConnection:]", 418, a3);
        goto LABEL_37;
      }

      goto LABEL_5;
    }
  }

  NSLog(@"Found client to remove, client bundleID is %@", [v12 bundleId]);
  if (!v12)
  {
    goto LABEL_36;
  }

  v27 = [v12 clientID];
  if ([v12 locationSupportedByClient])
  {
    [v12 setLocationSupportedByClient:0];
    self->_fakedLocationDeviceEnabled = 0;
  }

  if (([v12 capabilities] & 4) != 0)
  {
    v13 = sub_1000D5ED0();
    if (v13 && (v13 & 7) == 0)
    {
      (*(*v13 + 160))(v13, 0);
      goto LABEL_19;
    }

LABEL_38:
    __break(0x5516u);
  }

LABEL_19:
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  p_connectedAccessories = &self->_connectedAccessories;
  if ((&self->_connectedAccessories & 7) != 0)
  {
    goto LABEL_38;
  }

  v24 = &self->_clients;
  obj = *p_connectedAccessories;
  v15 = [*p_connectedAccessories countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v15)
  {
    v16 = v15;
    v26 = *v33;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v18 = p_connectedAccessories;
        v19 = [objc_msgSend(objc_msgSend(*p_connectedAccessories objectForKey:{*(*(&v32 + 1) + 8 * i)), "objectForKey:", @"EAManagerAccessorySessions", "copySessionsForClientID:", v27}];
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v29;
          do
          {
            for (j = 0; j != v21; j = j + 1)
            {
              if (*v29 != v22)
              {
                objc_enumerationMutation(v19);
              }

              -[EAManager closeSessionForConnectionID:sessionID:notifyApp:](self, "closeSessionForConnectionID:sessionID:notifyApp:", [*(*(&v28 + 1) + 8 * j) connectionID], objc_msgSend(*(*(&v28 + 1) + 8 * j), "sessionID"), 0);
            }

            v21 = [v19 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v21);
        }

        p_connectedAccessories = v18;
      }

      v16 = [obj countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v16);
  }

  [(NSMutableDictionary *)*v24 removeObjectForKey:[EAManager stringForClientID:v27]];
  if (![(NSMutableDictionary *)*v24 count])
  {

    *v24 = 0;
  }

LABEL_37:
  [(NSLock *)*p_clientLock unlock];
}

- (void)removeAllClients
{
  p_clientLock = &self->_clientLock;
  if ((&self->_clientLock & 7) != 0 || ([(NSLock *)self->_clientLock lock], v38 = 0u, v39 = 0u, v36 = 0u, v37 = 0u, p_clients = &self->_clients, (&self->_clients & 7) != 0))
  {
LABEL_35:
    __break(0x5516u);
  }

  obj = *p_clients;
  v21 = [*p_clients countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v21)
  {
    p_connectedAccessories = &self->_connectedAccessories;
    v19 = *v37;
    do
    {
      v3 = 0;
      do
      {
        if (*v37 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v4 = [*p_clients objectForKey:*(*(&v36 + 1) + 8 * v3)];
        v25 = [v4 clientID];
        v5 = [v4 xpcConnection];
        if (!v5)
        {
          goto LABEL_34;
        }

        xpc_connection_set_event_handler(v5, &stru_100111AE8);
        if ([v4 locationSupportedByClient])
        {
          [v4 setLocationSupportedByClient:0];
          self->_fakedLocationDeviceEnabled = 0;
        }

        if (([v4 capabilities] & 4) != 0)
        {
          v6 = sub_1000D5ED0();
          if (!v6 || (v6 & 7) != 0)
          {
            goto LABEL_35;
          }

          (*(*v6 + 160))(v6, 0);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        if ((&self->_connectedAccessories & 7) != 0)
        {
          goto LABEL_35;
        }

        v22 = v3;
        v23 = *p_connectedAccessories;
        v7 = [*p_connectedAccessories countByEnumeratingWithState:&v32 objects:v41 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v33;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v33 != v9)
              {
                objc_enumerationMutation(v23);
              }

              v11 = [objc_msgSend(objc_msgSend(*p_connectedAccessories objectForKey:{*(*(&v32 + 1) + 8 * i)), "objectForKey:", @"EAManagerAccessorySessions", "copySessionsForClientID:", v25}];
              v28 = 0u;
              v29 = 0u;
              v30 = 0u;
              v31 = 0u;
              v12 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
              if (v12)
              {
                v13 = v12;
                v14 = *v29;
                do
                {
                  for (j = 0; j != v13; j = j + 1)
                  {
                    if (*v29 != v14)
                    {
                      objc_enumerationMutation(v11);
                    }

                    -[EAManager closeSessionForConnectionID:sessionID:notifyApp:](self, "closeSessionForConnectionID:sessionID:notifyApp:", [*(*(&v28 + 1) + 8 * j) connectionID], objc_msgSend(*(*(&v28 + 1) + 8 * j), "sessionID"), 0);
                  }

                  v13 = [v11 countByEnumeratingWithState:&v28 objects:v40 count:16];
                }

                while (v13);
              }
            }

            v8 = [v23 countByEnumeratingWithState:&v32 objects:v41 count:16];
          }

          while (v8);
        }

        global_queue = dispatch_get_global_queue(0, 0);
        if (!global_queue)
        {
LABEL_34:
          __break(0x5510u);
          goto LABEL_35;
        }

        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100002C68;
        block[3] = &unk_100111B10;
        block[4] = self;
        v27 = v25;
        dispatch_async(global_queue, block);
        ++v3;
      }

      while ((v22 + 1) != v21);
      v21 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v21);
  }

  [(NSLock *)*p_clientLock unlock];
}

- (unsigned)clientIDForDisplayIdentifier:(const char *)a3
{
  v4 = [[NSString alloc] initWithCString:a3 encoding:4];
  p_clientLock = &self->_clientLock;
  if ((&self->_clientLock & 7) != 0 || (v6 = v4, [(NSLock *)self->_clientLock lock], v18 = 0u, v19 = 0u, v16 = 0u, v17 = 0u, p_clients = &self->_clients, (&self->_clients & 7) != 0))
  {
    __break(0x5516u);
  }

  v8 = *p_clients;
  v9 = [*p_clients countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*p_clients objectForKey:{*(*(&v16 + 1) + 8 * i), v16}];
        if (![objc_msgSend(v13 "bundleId")])
        {
          v14 = [v13 clientID];
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_13:
  [(NSLock *)*p_clientLock unlock];

  return v14;
}

- (BOOL)sessionsOpenForDisplayIdentifer:(const char *)a3
{
  v17 = [[NSString alloc] initWithCString:a3 encoding:4];
  if ((&self->_clientLock & 7) != 0 || ([(NSLock *)self->_clientLock lock], v26 = 0u, v27 = 0u, v24 = 0u, v25 = 0u, p_clients = &self->_clients, (&self->_clients & 7) != 0))
  {
LABEL_20:
    __break(0x5516u);
  }

  obj = *p_clients;
  v19 = [*p_clients countByEnumeratingWithState:&v24 objects:v29 count:16];
  v4 = 0;
  if (v19)
  {
    v16 = *v25;
    p_connectedAccessories = &self->_connectedAccessories;
    do
    {
      for (i = 0; i != v19; i = i + 1)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*p_clients objectForKey:*(*(&v24 + 1) + 8 * i)];
        if (![v17 caseInsensitiveCompare:{objc_msgSend(v7, "bundleId")}])
        {
          v22 = 0u;
          v23 = 0u;
          v20 = 0u;
          v21 = 0u;
          if ((&self->_connectedAccessories & 7) != 0)
          {
            goto LABEL_20;
          }

          v8 = *p_connectedAccessories;
          v9 = [*p_connectedAccessories countByEnumeratingWithState:&v20 objects:v28 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v21;
            do
            {
              for (j = 0; j != v10; j = j + 1)
              {
                if (*v21 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = [objc_msgSend(objc_msgSend(*p_connectedAccessories objectForKey:{*(*(&v20 + 1) + 8 * j)), "objectForKey:", @"EAManagerAccessorySessions", "copySessionsForClientID:", objc_msgSend(v7, "clientID")}];
                v4 |= v13 != 0;
              }

              v10 = [v8 countByEnumeratingWithState:&v20 objects:v28 count:16];
            }

            while (v10);
          }
        }
      }

      v19 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v19);
  }

  [(NSLock *)self->_clientLock unlock];
  return v4 & 1;
}

- (void)attachAccessory:(const IPodAccessoryDetails *)a3 forTransport:(void *)a4
{
  if (!a3 || !a4)
  {
    return;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_182;
  }

  if (((*(a3->var0 + 6))(a3, a2) & 0x200) != 0)
  {
    v5 = (*(a3->var0 + 19))(a3);
    if (*(v5 + 16))
    {
      v6 = v5;
      v7 = objc_alloc_init(NSMutableArray);
      v10 = *v6;
      v9 = v6 + 1;
      v8 = v10;
      v118 = v10;
      if (v10 != v9)
      {
        while (v8 && (v8 & 7) == 0)
        {
          v11 = *(v8 + 64);
          if (v11)
          {
            v12 = [[NSString alloc] initWithUTF8String:v11];
            if (v12)
            {
              [v7 addObject:v12];
            }

            else
            {
              NSLog(@"ERROR - %s:%s - %d got an invalid UTF8 protocolString", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "[EAManager attachAccessory:forTransport:]", 553);
            }
          }

          else
          {
            NSLog(@"ERROR - %s:%s - %d got a NULL protocolString", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "[EAManager attachAccessory:forTransport:]", 558);
          }

          sub_100007D44(&v118);
          v8 = v118;
          if (v118 == v9)
          {
            goto LABEL_16;
          }
        }

        goto LABEL_182;
      }

LABEL_16:
      v13 = v7;
    }

    else
    {
      v13 = 0;
    }

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    obj = v13;
    v98 = [v13 countByEnumeratingWithState:&v133 objects:v140 count:16];
    if (!v98)
    {
      goto LABEL_53;
    }

    v96 = *v134;
    p_clientLock = &self->_clientLock;
    v103 = BKSApplicationStateKey;
LABEL_20:
    v99 = 0;
    while (1)
    {
      if (*v134 != v96)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v133 + 1) + 8 * v99);
      v102 = SBSCopyDisplayIdentifiersForExternalAccessoryProtocol();
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v111 = [v102 countByEnumeratingWithState:&v129 objects:v139 count:16];
      if (v111)
      {
        break;
      }

LABEL_51:

      if (++v99 == v98)
      {
        v98 = [obj countByEnumeratingWithState:&v133 objects:v140 count:16];
        if (!v98)
        {
LABEL_53:
          v4 = obj;
          goto LABEL_54;
        }

        goto LABEL_20;
      }
    }

    v109 = *v130;
LABEL_25:
    v113 = 0;
    while (1)
    {
      if (*v130 != v109)
      {
        objc_enumerationMutation(v102);
      }

      if ((&self->_clientLock & 7) != 0)
      {
        goto LABEL_182;
      }

      v15 = *(*(&v129 + 1) + 8 * v113);
      [(NSLock *)self->_clientLock lock];
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      clients = self->_clients;
      v17 = [(NSMutableDictionary *)clients countByEnumeratingWithState:&v125 objects:v138 count:16];
      if (!v17)
      {
        break;
      }

      v18 = 0;
      v19 = *v126;
      do
      {
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v126 != v19)
          {
            objc_enumerationMutation(clients);
          }

          if (![v15 caseInsensitiveCompare:{objc_msgSend(-[NSMutableDictionary objectForKey:](self->_clients, "objectForKey:", *(*(&v125 + 1) + 8 * i)), "bundleId")}])
          {
            NSLog(@"%s:%s-%d app %@ found in client list", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "[EAManager attachAccessory:forTransport:]", 576, v15);
            v18 = 1;
          }
        }

        v17 = [(NSMutableDictionary *)clients countByEnumeratingWithState:&v125 objects:v138 count:16];
      }

      while (v17);
      [(NSLock *)*p_clientLock unlock];
      if ((v18 & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_49:
      if (++v113 == v111)
      {
        v111 = [v102 countByEnumeratingWithState:&v129 objects:v139 count:16];
        if (!v111)
        {
          goto LABEL_51;
        }

        goto LABEL_25;
      }
    }

    [(NSLock *)*p_clientLock unlock];
LABEL_41:
    if ((&self->_appStateMonitor & 7) != 0)
    {
      goto LABEL_182;
    }

    if ([objc_msgSend(-[IAPApplicationStateMonitor applicationInfoForBundleIDSync:](self->_appStateMonitor applicationInfoForBundleIDSync:{v15), "objectForKey:", v103), "unsignedIntValue"}] <= 3)
    {
      v21 = [LSApplicationProxy applicationProxyForIdentifier:v15];
      if (v21)
      {
        v22 = [v21 UIBackgroundModes];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = [v22 containsObject:@"external-accessory"];
          v24 = v23;
          sub_1000DDE90(3u, @"client '%@' supports background EA = %d, if true needs a process assertion\n", v15, v23);
          if (v24)
          {
            v25 = sub_10004B1AC();
            if (!v25 || (v25 & 7) != 0)
            {
              goto LABEL_182;
            }

            (*(*v25 + 328))(v25, [v15 cStringUsingEncoding:4]);
          }
        }
      }
    }

    goto LABEL_49;
  }

  v4 = 0;
LABEL_54:

  v26 = objc_alloc_init(NSMutableDictionary);
  v107 = (*(a3->var0 + 2))(a3);
  v114 = [NSNumber numberWithUnsignedInteger:(*(a3->var0 + 5))(a3)];
  p_connectedAccessoriesLock = &self->_connectedAccessoriesLock;
  if ((&self->_connectedAccessoriesLock & 7) != 0)
  {
    goto LABEL_182;
  }

  [(NSLock *)self->_connectedAccessoriesLock lock];
  p_connectedAccessories = &self->_connectedAccessories;
  if ((&self->_connectedAccessories & 7) != 0)
  {
    goto LABEL_182;
  }

  v27 = [(NSMutableDictionary *)*p_connectedAccessories objectForKey:v114];
  [(NSLock *)*p_connectedAccessoriesLock unlock];
  if (v27)
  {
    v28 = [objc_msgSend(v27 objectForKey:{@"EAManagerAccessorySessions", "copySessions"}];
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v29 = [v28 countByEnumeratingWithState:&v121 objects:v137 count:16];
    if (v29)
    {
      v30 = *v122;
      do
      {
        for (j = 0; j != v29; j = j + 1)
        {
          if (*v122 != v30)
          {
            objc_enumerationMutation(v28);
          }

          v32 = *(*(&v121 + 1) + 8 * j);
          sub_1000DDE90(3u, @"Closing existing sessionID %d for re-identifying connectionID %u\n", [v32 sessionID], objc_msgSend(v32, "connectionID"));
          -[EAManager closeSessionForConnectionID:sessionID:notifyApp:](self, "closeSessionForConnectionID:sessionID:notifyApp:", [v32 connectionID], objc_msgSend(v32, "sessionID"), 0);
        }

        v29 = [v28 countByEnumeratingWithState:&v121 objects:v137 count:16];
      }

      while (v29);
    }
  }

  v118 = 0;
  v119 = 0;
  v120 = 0;
  sub_1000CC7A0();
  v33 = (*(a3->var0 + 5))(a3);
  sub_1000CE0E4(v33, 9u, &v118);
  if ((v118 & 7) != 0 || (v119 & 7) != 0)
  {
    __break(0x5517u);
    goto LABEL_185;
  }

  if (v118 != v119)
  {
    if (!v118)
    {
      goto LABEL_182;
    }

    v34 = *v118;
    if (!*v118 || (v34 & 7) != 0)
    {
      goto LABEL_182;
    }

    if (*(v34 + 16) > 7u)
    {
      goto LABEL_185;
    }

    v35 = [NSNumber numberWithInt:?];
    [v26 setObject:v35 forKey:IAPAppAccessoryClassKey];
  }

  v36 = (*(a3->var0 + 6))(a3) >> 16;
  v37 = (*(a3->var0 + 13))(a3);
  if (!v37 || (v37 & 3) != 0)
  {
    goto LABEL_182;
  }

  v108 = v36 & 2 | (v107 >> 11) & 4;
  if (sub_1000E15DC(v37 + 168))
  {
    sub_1000DDE90(3u, @"%s:%s-%d should be hiding accessory from Settings", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "[EAManager attachAccessory:forTransport:]", 659);
    v108 |= 0x100u;
  }

  v38 = +[NSMutableDictionary dictionary];
  v39 = +[NSMutableDictionary dictionary];
  if ((a4 & 7) != 0)
  {
    goto LABEL_182;
  }

  v40 = v39;
  if (!(*(*a4 + 208))(a4) || (*(*a4 + 208))(a4) == 1)
  {
    v41 = +[NSMutableDictionary dictionary];
    v42 = sub_100045A94();
    v43 = v42;
    if (!v42 || (v42 & 7) != 0)
    {
      goto LABEL_182;
    }

    [v41 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", (*(*v42 + 184))(v42, a4)), kCFAccessoryPortPropertyIsConnected}];
    v44 = [NSNumber numberWithInt:0];
    [v41 setObject:v44 forKey:kCFAccessoryPortPropertyIsActive];
    if ((*(*v43 + 152))(v43, a4, 0))
    {
      v45 = 1;
    }

    else
    {
      v45 = (*(*v43 + 168))(v43, a4);
    }

    v46 = [NSNumber numberWithInt:v45];
    [v41 setObject:v46 forKey:kCFAccessoryPortPropertyVolumeControlIsSupported];
    if ([(NSNumber *)v46 BOOLValue])
    {
      v47 = sub_100045A94();
      if (!v47 || (v47 & 7) != 0)
      {
        goto LABEL_182;
      }

      *&v48 = (*(*v47 + 104))(v47, a4) / 255.0;
      v49 = [NSNumber numberWithFloat:v48];
      [v41 setObject:v49 forKey:kCFAccessoryPortPropertyVolumeScalar];
    }

    [v40 setObject:v41 forKey:kCFAccessoryPortLineOut];
  }

  if (!(*(*a4 + 208))(a4) || (*(*a4 + 208))(a4) == 1)
  {
    v50 = +[NSMutableDictionary dictionary];
    v51 = sub_1000CE5B4();
    if (!v51)
    {
      goto LABEL_182;
    }

    if ((v51 & 7) != 0)
    {
      goto LABEL_182;
    }

    [v50 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", (*(*v51 + 136))(v51, a4)), kCFAccessoryPortPropertyIsConnected}];
    LODWORD(v116.tv_sec) = 0;
    v52 = sub_1000CE5B4();
    if (!v52 || (v52 & 7) != 0)
    {
      goto LABEL_182;
    }

    v53 = (*(*v52 + 120))(v52, a4, &v116);
    v54 = +[NSMutableArray array];
    if (LODWORD(v116.tv_sec))
    {
      v55 = 0;
      v56 = 0;
      v58 = (v53 & 3) == 0 && v53 != 0;
      while (v55 <= ~v53)
      {
        if (!v58)
        {
          goto LABEL_182;
        }

        [v54 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(v53 + v55))}];
        ++v56;
        v55 += 4;
        if (v56 >= LODWORD(v116.tv_sec))
        {
          goto LABEL_108;
        }
      }

LABEL_183:
      __break(0x5513u);
    }

    if (v53)
    {
LABEL_108:
      operator delete[]();
    }

    [v50 setObject:v54 forKey:kCFAccessoryPortPropertySupportedSampleRatesInHz];
    v59 = [NSNumber numberWithInt:0];
    [v50 setObject:v59 forKey:kCFAccessoryPortPropertyCurrentSampleRate];
    [v40 setObject:v50 forKey:kCFAccessoryPortUSBOut];
  }

  if ((*(*a4 + 208))(a4) && (*(*a4 + 208))(a4) != 1)
  {
    goto LABEL_120;
  }

  v60 = +[NSMutableDictionary dictionary];
  v61 = sub_100019EC0();
  if (!v61 || (v61 & 7) != 0)
  {
    goto LABEL_182;
  }

  if (*(v61 + 8) >= 2u)
  {
LABEL_185:
    __break(0x550Au);
    return;
  }

  v62 = [NSNumber numberWithInt:?];
  [v60 setObject:v62 forKey:kCFAccessoryPortPropertyIsConnected];
  v63 = sub_1000D4754();
  if (!v63)
  {
    goto LABEL_182;
  }

  if ((v63 & 7) != 0)
  {
    goto LABEL_182;
  }

  [v60 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", (*(*v63 + 168))(v63, a4)), kCFAccessoryPortPropertyFullDuplexIsSupported}];
  v64 = sub_1000D4754();
  if (!v64 || (v64 & 7) != 0)
  {
    goto LABEL_182;
  }

  [v60 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", (*(*v64 + 176))(v64, a4)), kCFAccessoryPortPropertyIsVoiceSignalProcessingSupported}];
  v65 = [NSNumber numberWithInt:0];
  [v60 setObject:v65 forKey:kCFAccessoryPortPropertyIsActive];
  [v40 setObject:v60 forKey:kCFAccessoryPortLineIn];
LABEL_120:
  if ([v40 count])
  {
    [v38 setObject:v40 forKey:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%X", (*(a3->var0 + 5))(a3))}];
  }

  if ([v38 count])
  {
    [v26 setObject:v38 forKey:IAPAppAccessoryPortsKey];
  }

  v66 = (*(a3->var0 + 13))(a3);
  if (v66)
  {
    (*(*a4 + 344))(a4, v66);
    if ((v66 & 3) != 0)
    {
      goto LABEL_182;
    }

    v67 = [NSString stringWithUTF8String:v66];
    if (v67)
    {
      v68 = v67;
    }

    else
    {
      v68 = &stru_100119FF8;
    }

    v106 = IAPAppAccessoryNameKey;
    [v26 setObject:v68 forKey:?];
    v69 = [NSString stringWithUTF8String:v66 + 104];
    if (v69)
    {
      v70 = v69;
    }

    else
    {
      v70 = &stru_100119FF8;
    }

    v104 = IAPAppAccessoryManufacturerKey;
    [v26 setObject:v70 forKey:?];
    v71 = [NSString stringWithUTF8String:v66 + 168];
    if (v71)
    {
      v72 = v71;
    }

    else
    {
      v72 = &stru_100119FF8;
    }

    [v26 setObject:v72 forKey:IAPAppAccessoryModelNumberKey];
    v73 = [NSString stringWithUTF8String:v66 + 232];
    if (v73)
    {
      v74 = v73;
    }

    else
    {
      v74 = &stru_100119FF8;
    }

    [v26 setObject:v74 forKey:IAPAppAccessorySerialNumberKey];
    if (v66[64] == 255 && v66[65] == 255 && v66[66] == 255)
    {
      [v26 setObject:&stru_100119FF8 forKey:IAPAppAccessoryFirmwareRevisionKey];
    }

    else
    {
      v75 = [+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")];
      v76 = v66[64];
      v77 = v66[65];
      v78 = v66[66];
      if (v75)
      {
        if ([+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")])
        {
          v79 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (%@)", [+[IAPServer sharedIAPServer](IAPServer "sharedIAPServer")]);
        }

        else
        {
          v79 = &stru_100119FF8;
        }

        v81 = [NSString stringWithFormat:@"%d.%d.%d%@", v76, v77, v78, v79];
        if (v81)
        {
          v82 = v81;
        }

        else
        {
          v82 = &stru_100119FF8;
        }
      }

      else
      {
        if (v66[296])
        {
          v80 = [NSString stringWithFormat:@" (%s)", v66 + 296];
        }

        else
        {
          v80 = &stru_100119FF8;
        }

        v83 = [NSString stringWithFormat:@"%d.%d.%d%@", v76, v77, v78, v80];
        if (v83)
        {
          v82 = v83;
        }

        else
        {
          v82 = &stru_100119FF8;
        }
      }

      [v26 setObject:v82 forKey:IAPAppAccessoryFirmwareRevisionKey];
    }

    v84 = v66[67];
    if (__PAIR64__(v66[68], v84) == 0xFF000000FFLL && v66[69] == 255)
    {
      v86 = &stru_100119FF8;
    }

    else
    {
      v85 = [NSString stringWithFormat:@"%d.%d.%d", v84, v66[68], v66[69]];
      if (v85)
      {
        v86 = v85;
      }

      else
      {
        v86 = &stru_100119FF8;
      }
    }

    [v26 setObject:v86 forKey:IAPAppAccessoryHardwareRevisionKey];
  }

  else
  {
    v106 = IAPAppAccessoryNameKey;
    [v26 setObject:&stru_100119FF8 forKey:?];
    v104 = IAPAppAccessoryManufacturerKey;
    [v26 setObject:&stru_100119FF8 forKey:?];
    [v26 setObject:&stru_100119FF8 forKey:IAPAppAccessoryModelNumberKey];
    [v26 setObject:&stru_100119FF8 forKey:IAPAppAccessorySerialNumberKey];
    [v26 setObject:&stru_100119FF8 forKey:IAPAppAccessoryFirmwareRevisionKey];
    [v26 setObject:&stru_100119FF8 forKey:IAPAppAccessoryHardwareRevisionKey];
  }

  if ((*(a3->var0 + 4))(a3) == 15)
  {
    [v26 setObject:@"iPod Hi-Fi" forKey:v106];
    [v26 setObject:@"Apple" forKey:v104];
  }

  [v26 setObject:v114 forKey:IAPAppConnectionIDKey];
  [v26 setObject:objc_alloc_init(IAPSessionList) forKey:@"EAManagerAccessorySessions"];
  v87 = (*(a3->var0 + 7))(a3);
  if (v87)
  {
    v88 = [NSString stringWithUTF8String:v87];
    if (v88)
    {
      v89 = v88;
    }

    else
    {
      v89 = &stru_100119FF8;
    }

    [v26 setObject:v89 forKey:IAPAppAccessoryPreferredAppKey];
  }

  v90 = [NSNumber numberWithUnsignedInt:v108];
  [v26 setObject:v90 forKey:IAPAppAccessoryCapabilitiesKey];
  WORD2(v117) = -21846;
  LODWORD(v117) = -1431655766;
  (*(*a4 + 184))(&v117);
  if (&v117 == -1 || &v117 + 5 < 4)
  {
    goto LABEL_183;
  }

  v91 = [NSString stringWithFormat:@"%02X:%02X:%02X:%02X:%02X:%02X", v117, BYTE1(v117), BYTE2(v117), BYTE3(v117), BYTE4(v117), BYTE5(v117)];
  [v26 setObject:v91 forKey:IAPAppAccessoryMacAddressKey];
  [(NSLock *)*p_connectedAccessoriesLock lock];
  p_connectionIDMap = &self->_connectionIDMap;
  if ((&self->_connectionIDMap & 7) != 0)
  {
LABEL_182:
    __break(0x5516u);
    goto LABEL_183;
  }

  LODWORD(v116.tv_sec) = (*(a3->var0 + 5))(a3);
  if (&self->_connectionIDMap.__tree_.__end_node_ == sub_100007E88(p_connectionIDMap, &v116))
  {
    v93 = v114;
    LODWORD(v116.tv_sec) = (*(a3->var0 + 5))(a3);
    *sub_1000047CC(p_connectionIDMap, &v116) = v93;
  }

  [(NSMutableDictionary *)*p_connectedAccessories setObject:v26 forKey:v114];
  [(NSLock *)*p_connectedAccessoriesLock unlock];
  [(EAManager *)self _takeClientAssertionsForAccessoryConnection];
  v94 = [EAManager newPlistForAccessory:v26];
  [(EAManager *)self notifyEAClientsOfAccessoryConnection:v94];
  sub_1000DDE90(3u, @"EA new accessory (%lu total) %@", [(NSMutableDictionary *)*p_connectedAccessories count], v26);
  v116.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v116.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v116, 0);
  v95 = [NSNumber numberWithLong:v116.tv_sec];
  [v26 setObject:v95 forKey:IAPAppAccessoryConnectionTimeInSecKey];
  if (v26 && ((*(a3->var0 + 6))(a3) & 0x200) == 0 && (*(a3->var0 + 21))(a3, a4))
  {
    [(EAManager *)self logAccessoryAttach:v26 reason:@"Accessory attached"];
  }

  v116.tv_sec = &v118;
  sub_100007F60(&v116.tv_sec);
}

- (void)updateAccessoryProtocols:(const IPodAccessoryDetails *)a3
{
  p_connectedAccessoriesLock = &self->_connectedAccessoriesLock;
  if ((&self->_connectedAccessoriesLock & 7) == 0)
  {
    [(NSLock *)*p_connectedAccessoriesLock lock];
    if (a3)
    {
      if ((a3 & 7) == 0)
      {
        v6 = [NSNumber numberWithUnsignedInteger:(*(a3->var0 + 5))(a3)];
        dword_10012B8A0 = (*(a3->var0 + 5))(a3);
        if ((&self->_connectedAccessories & 7) == 0)
        {
          v7 = [(NSMutableDictionary *)self->_connectedAccessories objectForKey:v6];
          if (!v7 || (v8 = v7, ((*(a3->var0 + 6))(a3) & 0x200) == 0))
          {
            v9 = *p_connectedAccessoriesLock;

            [(NSLock *)v9 unlock];
            return;
          }

          v10 = (*(a3->var0 + 19))(a3);
          if (*(v10 + 16))
          {
            v11 = v10;
            v12 = objc_alloc_init(NSMutableDictionary);
            v13 = objc_alloc_init(NSMutableDictionary);
            v24 = v11;
            if (v11[2])
            {
              v14 = v11 + 1;
              v25 = *v11;
              if (v25 != v11 + 1)
              {
                v15 = 0;
                while (1)
                {
                  v16 = [NSNumber alloc];
                  if (!v25)
                  {
                    goto LABEL_36;
                  }

                  if ((v25 & 7) != 0)
                  {
                    goto LABEL_36;
                  }

                  v17 = [v16 initWithUnsignedInt:*(v25 + 32)];
                  if (!v25 || (v25 & 7) != 0)
                  {
                    goto LABEL_36;
                  }

                  v18 = *(v25 + 72);
                  if (v18 >= 8)
                  {
                    goto LABEL_37;
                  }

                  v19 = v17;
                  v20 = *(v25 + 64);
                  if (v20)
                  {
                    v21 = [[NSString alloc] initWithUTF8String:v20];
                    if (v21)
                    {
                      v22 = v21;
                      [v13 setObject:v19 forKey:v21];
                      [v12 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", v18), v22}];

                      v15 |= v18 != 0;
                    }

                    else
                    {
                      NSLog(@"ERROR - %s:%s - %d got an invalid UTF8 protocolString", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "[EAManager updateAccessoryProtocols:]", 880);
                    }
                  }

                  else
                  {
                    NSLog(@"ERROR - %s:%s - %d got a NULL protocolString", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "[EAManager updateAccessoryProtocols:]", 883);
                  }

                  sub_100007D44(&v25);
                  if (v25 == v14)
                  {
                    goto LABEL_28;
                  }
                }
              }

              v15 = 0;
LABEL_28:
              [(EAManager *)self performSelectorOnMainThread:"_shouldPostNoAppAlert:" withObject:v12 waitUntilDone:0];
            }

            else
            {
              v15 = 0;
            }

            if (v24[2])
            {
              [v8 setObject:v13 forKey:IAPAppAccessoryProtocolsKey];
            }

            if (v15)
            {
              [v8 setObject:+[NSNumber numberWithUnsignedInt:](NSNumber forKey:{"numberWithUnsignedInt:", objc_msgSend(objc_msgSend(v8, "objectForKey:", IAPAppAccessoryCapabilitiesKey), "unsignedIntValue") | 1), IAPAppAccessoryCapabilitiesKey}];
            }
          }

          [(EAManager *)self logAccessoryAttach:v8 reason:@"Accessory protocols updated"];
          v23 = [EAManager newPlistForAccessory:v8];
          [(NSLock *)self->_connectedAccessoriesLock unlock];
          if (v23)
          {
            [(EAManager *)self notifyEAClientsOfAccessoryReconnection:v23];
          }

          return;
        }
      }
    }
  }

LABEL_36:
  __break(0x5516u);
LABEL_37:
  __break(0x550Au);
}

- (void)updateAccessoryInfo:(const IPodAccessoryDetails *)a3
{
  v29 = objc_alloc_init(NSAutoreleasePool);
  if (!a3)
  {
    goto LABEL_37;
  }

  if ((a3 & 7) != 0)
  {
    goto LABEL_37;
  }

  v5 = (*(a3->var0 + 13))(a3);
  if ((&self->_connectedAccessoriesLock & 7) != 0)
  {
    goto LABEL_37;
  }

  v6 = v5;
  [(NSLock *)self->_connectedAccessoriesLock lock];
  v7 = [NSNumber numberWithUnsignedInteger:(*(a3->var0 + 5))(a3)];
  if ((&self->_connectedAccessories & 7) != 0)
  {
    goto LABEL_37;
  }

  v8 = [(NSMutableDictionary *)self->_connectedAccessories objectForKey:v7];
  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_32;
  }

  if ((v6 & 3) != 0)
  {
LABEL_37:
    __break(0x5516u);
    return;
  }

  v10 = v8;
  v11 = [NSString stringWithUTF8String:v6];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = &stru_100119FF8;
  }

  [v10 setObject:v12 forKey:IAPAppAccessoryNameKey];
  v13 = [NSString stringWithUTF8String:v6 + 104];
  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &stru_100119FF8;
  }

  [v10 setObject:v14 forKey:IAPAppAccessoryManufacturerKey];
  v15 = [NSString stringWithUTF8String:v6 + 168];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = &stru_100119FF8;
  }

  [v10 setObject:v16 forKey:IAPAppAccessoryModelNumberKey];
  v17 = [NSString stringWithUTF8String:v6 + 232];
  if (v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = &stru_100119FF8;
  }

  [v10 setObject:v18 forKey:IAPAppAccessorySerialNumberKey];
  v19 = v6[64];
  if (__PAIR64__(v6[65], v19) == 0xFF000000FFLL && v6[66] == 255)
  {
    v24 = IAPAppAccessoryFirmwareRevisionKey;
    v23 = &stru_100119FF8;
  }

  else
  {
    v20 = v6[65];
    v21 = v6[66];
    if (v6[296])
    {
      v22 = [NSString stringWithFormat:@" (%s)", v6 + 296];
    }

    else
    {
      v22 = &stru_100119FF8;
    }

    v23 = [NSString stringWithFormat:@"%d.%d.%d%@", v19, v20, v21, v22];
    v24 = IAPAppAccessoryFirmwareRevisionKey;
  }

  [v10 setObject:v23 forKey:v24];
  v25 = v6[67];
  if (__PAIR64__(v6[68], v25) == 0xFF000000FFLL && v6[69] == 255)
  {
    v27 = IAPAppAccessoryHardwareRevisionKey;
    v26 = &stru_100119FF8;
  }

  else
  {
    v26 = [NSString stringWithFormat:@"%d.%d.%d", v25, v6[68], v6[69]];
    v27 = IAPAppAccessoryHardwareRevisionKey;
  }

  [v10 setObject:v26 forKey:v27];
  sub_1000DDE90(3u, @"EA new accessory %@ updated", v10);
  [(EAManager *)self logAccessoryAttach:v10 reason:@"Accessory info updated"];
  v28 = [EAManager newPlistForAccessory:v10];
  [(EAManager *)self notifyEAClientsOfAccessoryUpdated:v28];

LABEL_32:
  [(NSLock *)self->_connectedAccessoriesLock unlock];
}

- (void)updateLocationSupport:(unsigned int)a3 isReady:(BOOL)a4
{
  p_connectedAccessoriesLock = &self->_connectedAccessoriesLock;
  if ((&self->_connectedAccessoriesLock & 7) != 0 || (v5 = a4, [(NSLock *)self->_connectedAccessoriesLock lock], (&self->_connectedAccessories & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v8 = [(NSMutableDictionary *)self->_connectedAccessories objectForKey:[NSNumber numberWithUnsignedInteger:a3]];
    if (v8 && ((v9 = v8, v10 = IAPAppAccessoryCapabilitiesKey, v11 = [objc_msgSend(v8 objectForKey:{IAPAppAccessoryCapabilitiesKey), "unsignedIntValue"}] & 0xFFFFFFF7, !v5) ? (v12 = 0) : (v12 = 8), objc_msgSend(v9, "setObject:forKey:", +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v11 | v12), v10), v5))
    {
      v14 = [EAManager newPlistForAccessory:v9];
      [(NSLock *)*p_connectedAccessoriesLock unlock];
      if (v14)
      {
        [(EAManager *)self notifyEAClientsOfAccessoryReconnection:v14];
      }
    }

    else
    {
      v13 = *p_connectedAccessoriesLock;

      [(NSLock *)v13 unlock];
    }
  }
}

- (void)updateValueFromApp:(id)a3
{
  v29 = objc_alloc_init(NSAutoreleasePool);
  if ([objc_msgSend(a3 objectForKey:{IAPAppConnectionIDKey), "intValue"}])
  {
    v4 = [a3 objectForKey:IAPAppAccessoryPortKey];
    v5 = [a3 objectForKey:IAPAppAccessoryPortPropertyKey];
    v6 = [a3 objectForKey:IAPAppAccessoryPortPropertyValueKey];
    if ([v5 compare:kCFAccessoryPortPropertyCurrentSampleRate options:1])
    {
      if ([v5 compare:kCFAccessoryPortPropertyIsActive options:1])
      {
        if ([v5 compare:kCFAccessoryPortPropertyVolumeScalar options:1] || objc_msgSend(v4, "compare:options:", kCFAccessoryPortLineOut, 1))
        {
          goto LABEL_53;
        }

        [v6 floatValue];
        v8 = 1.0;
        if (v7 <= 1.0)
        {
          v8 = v7;
          if (v7 < 0.0)
          {
            v8 = 0.0;
          }
        }

        v9 = sub_100026D74();
        if (!v9)
        {
          goto LABEL_53;
        }

        v10 = v9;
        v11 = sub_100045A94();
        if (v11 && (v11 & 7) == 0)
        {
          v12 = v8 * 255.0;
          if ((v8 * 255.0) > -1.0 && v12 < 4295000000.0)
          {
            sub_100045CE8(v11, v10, v12, 0);
            goto LABEL_53;
          }

LABEL_57:
          __break(0x5505u);
          return;
        }
      }

      else if ([v4 compare:kCFAccessoryPortLineIn options:1])
      {
        if ([v4 compare:kCFAccessoryPortLineOut options:1])
        {
          goto LABEL_53;
        }

        v17 = sub_100019EC0();
        if (v17 && (v17 & 7) == 0)
        {
          v18 = *(v17 + 16);
          if (!v18)
          {
            goto LABEL_53;
          }

          v19 = [v6 intValue];
          v20 = sub_1000D4754();
          v22 = (v20 & 7) == 0 && v20 != 0;
          if (v19)
          {
            if (v22)
            {
              (*(*v20 + 200))(v20, v18);
              goto LABEL_53;
            }
          }

          else if (v22)
          {
            (*(*v20 + 208))(v20, v18);
            goto LABEL_53;
          }
        }
      }

      else
      {
        v23 = sub_100019EC0();
        if (v23 && (v23 & 7) == 0)
        {
          v24 = *(v23 + 16);
          if (!v24)
          {
            goto LABEL_53;
          }

          v25 = [v6 intValue];
          v26 = sub_1000D4754();
          v28 = (v26 & 7) == 0 && v26 != 0;
          if (v25)
          {
            if (v28)
            {
              (*(*v26 + 184))(v26, v24);
              goto LABEL_53;
            }
          }

          else if (v28)
          {
            (*(*v26 + 192))(v26, v24);
            goto LABEL_53;
          }
        }
      }
    }

    else
    {
      v13 = sub_1000188A0();
      if (v13)
      {
        if ((v13 & 7) == 0)
        {
          v14 = sub_100018DC0(v13);
          v15 = sub_1000CE5B4();
          if (v15)
          {
            if ((v15 & 7) == 0)
            {
              if (!(*(*v15 + 136))(v15, v14))
              {
                goto LABEL_53;
              }

              v16 = sub_1000CE5B4();
              if (v16 && (v16 & 7) == 0)
              {
                (*(*v16 + 88))(v16, v14, [v6 intValue]);
                goto LABEL_53;
              }
            }
          }
        }
      }
    }

    __break(0x5516u);
    goto LABEL_57;
  }

LABEL_53:
}

- (id)valueForProperty:(id)a3 forAccessory:(unsigned int)a4
{
  v4 = (self + 40);
  if (((self + 40) & 7) != 0 || (v7 = self, [*(self + 5) lock], self = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", a4), ((v7 + 1) & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    v8 = [objc_msgSend(v7[1] objectForKey:{self), "objectForKey:", a3}];
    [*v4 unlock];
    return v8;
  }

  return self;
}

- (void)detachAccessory:(unsigned int)a3
{
  v23 = a3;
  v5 = objc_alloc_init(NSAutoreleasePool);
  if ((&self->_connectedAccessoriesLock & 7) != 0)
  {
    goto LABEL_18;
  }

  v6 = v5;
  [(NSLock *)self->_connectedAccessoriesLock lock];
  v7 = [NSNumber numberWithUnsignedInteger:a3];
  if ((&self->_connectedAccessories & 7) != 0)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v9 = [(NSMutableDictionary *)self->_connectedAccessories objectForKey:v7];
  [(NSLock *)self->_connectedAccessoriesLock unlock];
  if (v9)
  {
    [(EAManager *)self _takeClientAssertionsForAccessoryDisconnection];
    v10 = [EAManager newPlistForAccessory:v9];
    [(EAManager *)self notifyEAClientsOfAccessoryDisconnection:v10];
    sub_1000DDE90(3u, @"EA accessory with connectionID=%@ detached", v8);

    v11 = [objc_msgSend(v9 objectForKey:{@"EAManagerAccessorySessions", "copySessions"}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          -[EAManager closeSessionForConnectionID:sessionID:notifyApp:](self, "closeSessionForConnectionID:sessionID:notifyApp:", [*(*(&v19 + 1) + 8 * i) connectionID], objc_msgSend(*(*(&v19 + 1) + 8 * i), "sessionID"), 0);
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v13);
    }

    [(EAManager *)self logAccessoryDetach:v9 reason:@"Accessory detached"];
    [(NSMutableDictionary *)self->_connectedAccessories removeObjectForKey:v8];
    if (![(NSMutableDictionary *)self->_connectedAccessories count])
    {
      +[IAPSession resetSessionIDCounter];
    }

    p_connectionIDMap = &self->_connectionIDMap;
    if ((p_connectionIDMap & 7) == 0)
    {
      v17 = sub_100007E88(p_connectionIDMap, &v23);
      if (v17)
      {
        v18 = v17;
        if ((v17 & 7) == 0)
        {

          sub_1000083F0(p_connectionIDMap, v18);
          goto LABEL_17;
        }
      }
    }

LABEL_18:
    __break(0x5516u);
  }

LABEL_17:
}

- (void)reset
{
  v3 = objc_alloc_init(NSAutoreleasePool);
  if ((&self->_connectedAccessories & 7) != 0)
  {
    __break(0x5516u);
  }

  v4 = v3;
  v5 = [(NSMutableDictionary *)self->_connectedAccessories allKeys];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        -[EAManager detachAccessory:](self, "detachAccessory:", [*(*(&v10 + 1) + 8 * i) unsignedIntValue]);
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)accessoryForConnectionID:(id)a3
{
  if (((self + 8) & 7) == 0)
  {
    return [*(self + 1) objectForKey:a3];
  }

  __break(0x5516u);
  return self;
}

- (id)connectedAccessories
{
  result = objc_alloc_init(NSMutableArray);
  if ((&self->_connectedAccessoriesLock & 7) != 0 || (v4 = result, result = [(NSLock *)self->_connectedAccessoriesLock lock], (&self->_connectedAccessories & 7) != 0))
  {
    __break(0x5516u);
  }

  else
  {
    [v4 addObjectsFromArray:{-[NSMutableDictionary allValues](self->_connectedAccessories, "allValues")}];
    [(NSLock *)self->_connectedAccessoriesLock unlock];

    return v4;
  }

  return result;
}

- (id)connectedAccessoriesForEAClient:(unsigned int)a3
{
  v5 = [(EAManager *)self connectedAccessories];
  v6 = objc_alloc_init(NSMutableArray);
  p_clientLock = &self->_clientLock;
  if ((&self->_clientLock & 7) != 0 || (v8 = v6, [(NSLock *)self->_clientLock lock], v28 = 0u, v29 = 0u, v26 = 0u, v27 = 0u, p_clients = &self->_clients, (&self->_clients & 7) != 0))
  {
    __break(0x5516u);
  }

  v10 = *p_clients;
  v11 = [*p_clients countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
LABEL_5:
    v14 = 0;
    while (1)
    {
      if (*v27 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = [*p_clients objectForKey:*(*(&v26 + 1) + 8 * v14)];
      if ([v15 clientID] == a3)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v12)
        {
          goto LABEL_5;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v15 = 0;
  }

  [(NSLock *)*p_clientLock unlock];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v16 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v23;
    do
    {
      for (i = 0; i != v17; i = i + 1)
      {
        if (*v23 != v18)
        {
          objc_enumerationMutation(v5);
        }

        v20 = *(*(&v22 + 1) + 8 * i);
        if ([v15 canSendConnectionEventForAccessory:v20])
        {
          [v8 addObject:v20];
        }
      }

      v17 = [v5 countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v17);
  }

  sub_1000DDE90(3u, @"returning mutableConnectedAccessories %@", v8);
  return v8;
}

- (void)fakedLocationDeviceNMEAAvailable
{
  fakedLocationDeviceEnabled = self->_fakedLocationDeviceEnabled;
  if (fakedLocationDeviceEnabled >= 2)
  {
    __break(0x550Au);
    [(EAManager *)self notifyEALocationClientsOfIAPLocationDidReceiveNMEASentenceNotification:?];
  }

  else if (fakedLocationDeviceEnabled)
  {
    [(EAManager *)self notifyEALocationClientsOfIAPLocationDidReceiveNMEASentenceNotification:0];
  }
}

- (void)fakedLocationDevicePointDataAvailable
{
  fakedLocationDeviceEnabled = self->_fakedLocationDeviceEnabled;
  if (fakedLocationDeviceEnabled >= 2)
  {
    __break(0x550Au);
    [(EAManager *)self notifyEALocationClientsOfIAPLocationDidReceiveLocationPointDataNotification:?];
  }

  else if (fakedLocationDeviceEnabled)
  {
    [(EAManager *)self notifyEALocationClientsOfIAPLocationDidReceiveLocationPointDataNotification:0];
  }
}

- (void)fakedLocationDeviceEphemerisURLAvailable
{
  fakedLocationDeviceEnabled = self->_fakedLocationDeviceEnabled;
  if (fakedLocationDeviceEnabled >= 2)
  {
    __break(0x550Au);
    [(EAManager *)self notifyEALocationClientsOfIAPLocationDidReceiveEphemerisURLNotification:?];
  }

  else if (fakedLocationDeviceEnabled)
  {
    [(EAManager *)self notifyEALocationClientsOfIAPLocationDidReceiveEphemerisURLNotification:0];
  }
}

- (void)fakedLocationDeviceEphemerisMaxIntervalAvailable
{
  fakedLocationDeviceEnabled = self->_fakedLocationDeviceEnabled;
  if (fakedLocationDeviceEnabled >= 2)
  {
    __break(0x550Au);
    [(EAManager *)self notifyEALocationClientsOfIAPLocationDidReceiveEphemerisMaxIntervalNotification:?];
  }

  else if (fakedLocationDeviceEnabled)
  {
    [(EAManager *)self notifyEALocationClientsOfIAPLocationDidReceiveEphemerisMaxIntervalNotification:0];
  }
}

- (void)fakedLocationDeviceEphemerisRefreshIntervalAvailable
{
  fakedLocationDeviceEnabled = self->_fakedLocationDeviceEnabled;
  if (fakedLocationDeviceEnabled >= 2)
  {
    __break(0x550Au);
    [(EAManager *)self notifyEALocationClientsOfIAPLocationDidReceiveEphemerisRecommendedRefreshNotification:?];
  }

  else if (fakedLocationDeviceEnabled)
  {
    [(EAManager *)self notifyEALocationClientsOfIAPLocationDidReceiveEphemerisRecommendedRefreshNotification:0];
  }
}

- (void)fakedLocationRequestGPSTime
{
  fakedLocationDeviceEnabled = self->_fakedLocationDeviceEnabled;
  if (fakedLocationDeviceEnabled >= 2)
  {
    __break(0x550Au);
    [(EAManager *)self notifyEALocationClientsOfIAPLocationDidRequestGPSTimeNotification:?];
  }

  else if (fakedLocationDeviceEnabled)
  {
    [(EAManager *)self notifyEALocationClientsOfIAPLocationDidRequestGPSTimeNotification:0];
  }
}

- (void)fakedLocationDeviceSetFilter:(id)a3
{
  v4 = [a3 objectAtIndex:0];
  v5 = sub_1000D2164([v4 unsignedIntValue], 0);
  v13 = objc_alloc_init(NSAutoreleasePool);
  if (!v5)
  {
    goto LABEL_13;
  }

  if ((v5 & 7) != 0)
  {
LABEL_19:
    __break(0x5516u);
    return;
  }

  if ((*(*v5 + 176))(v5))
  {
    v6 = +[NSString string];
    if ([a3 count] >= 2)
    {
      v7 = 1;
      while (1)
      {
        v8 = [a3 count];
        v9 = v8 - 1;
        if (!v8)
        {
          break;
        }

        v10 = [a3 objectAtIndex:v7];
        if (v9 == v7)
        {
          v11 = [(NSString *)v6 stringByAppendingString:v10];
        }

        else
        {
          v11 = [(NSString *)v6 stringByAppendingFormat:@"%@, ", v10];
        }

        v6 = v11;
        v12 = __CFADD__(v7, 1);
        v7 = (v7 + 1);
        if (v12)
        {
          goto LABEL_18;
        }

        if ([a3 count] <= v7)
        {
          goto LABEL_12;
        }
      }

      __break(0x5515u);
LABEL_18:
      __break(0x5500u);
      goto LABEL_19;
    }

LABEL_12:
    (*(*v5 + 200))(v5, 1);
    (*(*v5 + 224))(v5, [(NSString *)v6 UTF8String]);
  }

  else
  {
LABEL_13:
    NSLog(@"trying to set filtering on an location accessory (%hhx) that either doesn't exist or doesn't support filtering", v4);
  }
}

- (BOOL)isFakedLocationDeviceEnabled
{
  if (self->_fakedLocationDeviceEnabled >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_fakedLocationDeviceEnabled;
  }

  return self;
}

- (void)_shouldPostNoAppAlert:(id)a3
{
  if (!sub_1000E1434("com.apple.AppStore"))
  {
    return;
  }

  v5 = objc_alloc_init(NSAutoreleasePool);
  v6 = CFPreferencesCopyAppValue(@"OptionalSDKProtocolsShownKey", @"com.apple.iapd");
  v7 = objc_alloc_init(NSMutableArray);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (!v8)
  {
    goto LABEL_41;
  }

  v9 = v8;
  v28 = v5;
  v29 = 0;
  v10 = *v35;
  do
  {
    for (i = 0; i != v9; i = i + 1)
    {
      if (*v35 != v10)
      {
        objc_enumerationMutation(a3);
      }

      v12 = *(*(&v34 + 1) + 8 * i);
      if (![(EAManager *)self _isProtocolContainedInWhitelist:v12])
      {
        v13 = [objc_msgSend(a3 objectForKey:{v12), "unsignedIntValue"}];
        if (v13 >= 8)
        {
          __break(0x550Au);
        }

        if (v13 - 3 >= 0xFFFFFFFE)
        {
          v14 = [v12 lowercaseString];
          if (v6 && (v15 = CFGetTypeID(v6), v15 != CFArrayGetTypeID()))
          {
            v16 = CFGetTypeID(v6);
            NSLog(@"ERROR - %s:%s - %d wrong typeID %d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "[EAManager _shouldPostNoAppAlert:]", 1616, v16);
          }

          else
          {
            if ([v6 containsObject:v14] & 1) != 0 || (objc_msgSend(v7, "containsObject:", v14))
            {
              continue;
            }

            [v7 addObject:v14];
            LOBYTE(v29) = 1;
          }

          v17 = SBSCopyDisplayIdentifiersForExternalAccessoryProtocol();
          v18 = v17;
          if (!v17 || ![v17 count])
          {
            BYTE4(v29) = 1;
          }
        }
      }
    }

    v9 = [a3 countByEnumeratingWithState:&v34 objects:v39 count:16];
  }

  while (v9);
  if ((v29 & 0x100000000) == 0)
  {
    v5 = v28;
    v20 = &xpc_connection_set_event_handler_ptr;
LABEL_27:
    if (v29)
    {
      v21 = [v20[173] arrayWithArray:v6];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v22 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v22)
      {
        v23 = v22;
        v24 = *v31;
        do
        {
          for (j = 0; j != v23; j = j + 1)
          {
            if (*v31 != v24)
            {
              objc_enumerationMutation(v7);
            }

            [v21 addObject:*(*(&v30 + 1) + 8 * j)];
          }

          v23 = [v7 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v23);
      }

      if ((v29 & 0x100000000) != 0)
      {
        v26 = [NSNumber numberWithUnsignedInteger:dword_10012B8A0];
        if ((&self->_connectedAccessoriesLock & 7) != 0)
        {
          goto LABEL_46;
        }

        v27 = v26;
        [(NSLock *)self->_connectedAccessoriesLock lock];
        if ((&self->_connectedAccessories & 7) != 0)
        {
          goto LABEL_46;
        }

        [-[NSMutableDictionary objectForKey:](self->_connectedAccessories objectForKey:{v27), "setObject:forKey:", v21, @"OptionalSDKProtocolsShownKey"}];
        [(NSLock *)self->_connectedAccessoriesLock unlock];
      }

      else
      {
        [EAManager _updatePlistWithAccessoryProtocolsInternal:v21];
      }

      v5 = v28;
    }

LABEL_41:
    if (v6)
    {
      CFRelease(v6);
    }

    return;
  }

  v19 = sub_1000154F0();
  v20 = &xpc_connection_set_event_handler_ptr;
  if (v19 && (v19 & 7) == 0)
  {
    sub_1000171DC(v19, dword_10012B8A0);
    v5 = v28;
    goto LABEL_27;
  }

LABEL_46:
  __break(0x5516u);
}

- (void)applicationStateChanged:(id)a3
{
  v5 = [objc_msgSend(a3 objectForKey:{BKSApplicationStateKey), "intValue"}];
  v6 = [a3 objectForKey:BKSApplicationStateDisplayIDKey];
  v7 = [objc_msgSend(a3 objectForKey:{BKSApplicationStateProcessIDKey), "intValue"}];
  v8 = v7;
  v9 = @"running in the background";
  v10 = @"running the foreground";
  v11 = @"switching to other state";
  if (v5 == 1)
  {
    v11 = @"terminated";
  }

  if (v5 != 8)
  {
    v10 = v11;
  }

  if (v5 != 4)
  {
    v9 = v10;
  }

  v12 = v5;
  if (v5 == 2)
  {
    v13 = @"suspending";
  }

  else
  {
    v13 = v9;
  }

  sub_1000DDE90(3u, @"process %@ (pid %d) is now %@", v6, v7, v13);
  if ((&self->_clientLock & 7) != 0 || ([(NSLock *)self->_clientLock lock], v77 = 0u, v78 = 0u, v75 = 0u, v76 = 0u, p_clients = &self->_clients, (&self->_clients & 7) != 0))
  {
LABEL_70:
    __break(0x5516u);
  }

  v15 = *p_clients;
  v16 = [*p_clients countByEnumeratingWithState:&v75 objects:v83 count:16];
  if (v16)
  {
    v17 = v16;
    p_connectedAccessories = &self->_connectedAccessories;
    v52 = &self->_connectedAccessories & 7;
    v18 = *v76;
    p_connectedAccessoriesLock = &self->_connectedAccessoriesLock;
    v50 = v8;
    v48 = *v76;
    v49 = v15;
    v51 = v12;
    v47 = v6;
    do
    {
      v19 = 0;
      v53 = v17;
      do
      {
        if (*v76 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [*p_clients objectForKey:*(*(&v75 + 1) + 8 * v19)];
        if ([v6 caseInsensitiveCompare:{objc_msgSend(v20, "bundleId")}])
        {
          goto LABEL_23;
        }

        if ([v20 processID] != v8)
        {
          sub_1000DDE90(3u, @"%s:%s-%d terminated app %@ pid %d does not match cached pid %d", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "-[EAManager applicationStateChanged:]", 1769, v6, v8, [v20 processID]);
          goto LABEL_23;
        }

        [v20 setApplicationState:v12];
        if (v12 == 2)
        {
          if (([v20 capabilities] & 0x10) != 0)
          {
            goto LABEL_23;
          }

LABEL_29:
          v57 = v20;
          sub_1000DDE90(3u, @"closing sessions for process %@", v6);
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          if (v52)
          {
            goto LABEL_70;
          }

          v54 = v19;
          obj = *p_connectedAccessories;
          v21 = [*p_connectedAccessories countByEnumeratingWithState:&v71 objects:v82 count:16];
          if (v21)
          {
            v22 = v21;
            v23 = *v72;
            do
            {
              for (i = 0; i != v22; i = i + 1)
              {
                if (*v72 != v23)
                {
                  objc_enumerationMutation(obj);
                }

                v25 = [objc_msgSend(objc_msgSend(*p_connectedAccessories objectForKey:{*(*(&v71 + 1) + 8 * i)), "objectForKey:", @"EAManagerAccessorySessions", "copySessionsForClientID:", objc_msgSend(v20, "clientID")}];
                v67 = 0u;
                v68 = 0u;
                v69 = 0u;
                v70 = 0u;
                v26 = [v25 countByEnumeratingWithState:&v67 objects:v81 count:16];
                if (v26)
                {
                  v27 = v26;
                  v28 = *v68;
                  do
                  {
                    for (j = 0; j != v27; j = j + 1)
                    {
                      if (*v68 != v28)
                      {
                        objc_enumerationMutation(v25);
                      }

                      -[EAManager closeSessionForConnectionID:sessionID:notifyApp:](self, "closeSessionForConnectionID:sessionID:notifyApp:", [*(*(&v67 + 1) + 8 * j) connectionID], objc_msgSend(*(*(&v67 + 1) + 8 * j), "sessionID"), 0);
                    }

                    v27 = [v25 countByEnumeratingWithState:&v67 objects:v81 count:16];
                  }

                  while (v27);
                }

                v20 = v57;
              }

              v22 = [obj countByEnumeratingWithState:&v71 objects:v82 count:16];
            }

            while (v22);
          }

          v12 = v51;
          v6 = v47;
          v18 = v48;
          p_clients = &self->_clients;
          v8 = v50;
          v15 = v49;
          v17 = v53;
          v19 = v54;
          if (v51 == 1)
          {
            goto LABEL_23;
          }

          if (([v20 capabilities] & 0x10) == 0 && (objc_msgSend(v20, "capabilities") & 0x20) != 0)
          {
            [v20 setClientRequiresAccReset:1];
          }

LABEL_48:
          if (v12 != 8 && v12 != 4)
          {
            goto LABEL_23;
          }

          goto LABEL_50;
        }

        if (v12 != 4)
        {
          if (v12 == 1)
          {
            goto LABEL_29;
          }

          goto LABEL_48;
        }

        if (([v20 capabilities] & 0x20) == 0)
        {
          goto LABEL_29;
        }

LABEL_50:
        if ([v20 clientRequiresAccReset])
        {
          v30 = v20;
          v31 = objc_alloc_init(NSMutableArray);
          sub_1000DDE90(3u, @"%s:%s-%d reconnecting accessory for running process %@\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "[EAManager applicationStateChanged:]", 1742, v6);
          v32 = v30;
          [v30 setClientRequiresAccReset:0];
          if ((&self->_connectedAccessoriesLock & 7) != 0)
          {
            goto LABEL_70;
          }

          [(NSLock *)*p_connectedAccessoriesLock lock];
          v33 = objc_alloc_init(NSAutoreleasePool);
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          if (v52)
          {
            goto LABEL_70;
          }

          v34 = v33;
          v55 = v19;
          v35 = *p_connectedAccessories;
          v36 = [*p_connectedAccessories countByEnumeratingWithState:&v63 objects:v80 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v64;
            do
            {
              for (k = 0; k != v37; k = k + 1)
              {
                if (*v64 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = +[EAManager newPlistForAccessory:](EAManager, "newPlistForAccessory:", +[NSMutableDictionary dictionaryWithDictionary:](NSMutableDictionary, "dictionaryWithDictionary:", [*p_connectedAccessories objectForKey:*(*(&v63 + 1) + 8 * k)]));
                [v31 addObject:v40];
              }

              v37 = [v35 countByEnumeratingWithState:&v63 objects:v80 count:16];
            }

            while (v37);
          }

          [(NSLock *)*p_connectedAccessoriesLock unlock];
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v41 = [v31 countByEnumeratingWithState:&v59 objects:v79 count:16];
          v17 = v53;
          v18 = v48;
          if (v41)
          {
            v42 = v41;
            v43 = *v60;
            do
            {
              for (m = 0; m != v42; m = m + 1)
              {
                if (*v60 != v43)
                {
                  objc_enumerationMutation(v31);
                }

                [(EAManager *)self notifyEAClient:v32 ofAccessoryEvent:"EAProtocolAccessoryReconnected" accessory:*(*(&v59 + 1) + 8 * m)];
              }

              v42 = [v31 countByEnumeratingWithState:&v59 objects:v79 count:16];
            }

            while (v42);
          }

          p_clients = &self->_clients;
          v8 = v50;
          v15 = v49;
          v19 = v55;
          v12 = v51;
        }

LABEL_23:
        v19 = v19 + 1;
      }

      while (v19 != v17);
      v45 = [v15 countByEnumeratingWithState:&v75 objects:v83 count:16];
      v17 = v45;
    }

    while (v45);
  }

  [(NSLock *)self->_clientLock unlock];
}

- (void)takeProcessAssertionForBundleID:(id)a3
{
  v4 = [[IAPEAUnregisteredClient alloc] initWithBundleId:a3];
  if (v4)
  {
    v6 = v4;
    [(IAPEAUnregisteredClient *)v4 takeProcessAssertion:@"external-accessory.connect"];
    v5 = [[NSTimer alloc] initWithFireDate:+[NSDate dateWithTimeIntervalSinceNow:](NSDate interval:"dateWithTimeIntervalSinceNow:" target:10.0) selector:self userInfo:"_unregisteredClientAssertionTimerFired:" repeats:{v6, 0, 0.0}];
    [+[NSRunLoop mainRunLoop](NSRunLoop addTimer:"addTimer:forMode:" forMode:v5, NSDefaultRunLoopMode];
  }
}

- (void)_dpServiceWithFirmwareVersionFound:(id)a3
{
  v15 = [+[IAPServer sharedIAPServer](IAPServer sharedIAPServer];
  if (v15)
  {
    p_connectedAccessoriesLock = &self->_connectedAccessoriesLock;
    if ((&self->_connectedAccessoriesLock & 7) != 0 || ([(NSLock *)self->_connectedAccessoriesLock lock], v18 = 0u, v19 = 0u, v16 = 0u, v17 = 0u, p_connectedAccessories = &self->_connectedAccessories, (&self->_connectedAccessories & 7) != 0))
    {
      __break(0x5516u);
    }

    v5 = *p_connectedAccessories;
    v6 = [*p_connectedAccessories countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      v9 = IAPAppAccessoryFirmwareRevisionKey;
      v10 = IAPAppAccessoryManufacturerKey;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v12 = [*p_connectedAccessories objectForKey:*(*(&v16 + 1) + 8 * i)];
          v13 = [v12 objectForKey:v9];
          if (![objc_msgSend(v12 objectForKey:{v10), "compare:", @"Apple"}] && objc_msgSend(v13, "rangeOfString:", @" (") == 0x7FFFFFFFFFFFFFFFLL)
          {
            [v12 setObject:objc_msgSend(v13 forKey:{"stringByAppendingFormat:", @" (%@)", v15), v9}];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [(NSLock *)*p_connectedAccessoriesLock unlock];
  }
}

- (void)_takeClientAssertionsForAccessoryConnection
{
  p_clientLock = &self->_clientLock;
  if ((&self->_clientLock & 7) != 0 || ([(NSLock *)self->_clientLock lock], v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, p_clients = &self->_clients, (&self->_clients & 7) != 0))
  {
    __break(0x5516u);
  }

  obj = *p_clients;
  v4 = [*p_clients countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        NSLog(@"%s:%s-%d client %@\n", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "-[EAManager _takeClientAssertionsForAccessoryConnection]", 1816, [objc_msgSend(*p_clients objectForKey:{v8), "bundleId"}]);
        [objc_msgSend(*p_clients objectForKey:{v8), "takeProcessAssertion:", @"external-accessory.connect"}];
      }

      v5 = [obj countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  [(NSLock *)*p_clientLock unlock];
}

- (void)_takeClientAssertionsForAccessoryDisconnection
{
  p_clientLock = &self->_clientLock;
  if ((&self->_clientLock & 7) != 0 || ([(NSLock *)self->_clientLock lock], v13 = 0u, v14 = 0u, v11 = 0u, v12 = 0u, p_clients = &self->_clients, (&self->_clients & 7) != 0))
  {
    __break(0x5516u);
  }

  v5 = *p_clients;
  v6 = [*p_clients countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*p_clients objectForKey:{*(*(&v11 + 1) + 8 * i), v11}];
        [v10 takeProcessAssertion:@"external-accessory.disconnect"];
        [v10 setClientRequiresAccReset:0];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [(NSLock *)*p_clientLock unlock];
}

- (void)_unregisteredClientAssertionTimerFired:(id)a3
{
  v3 = [a3 userInfo];
  [v3 releaseProcessAssertion];
  sub_1000DDE90(3u, @"%s::%s process assertion for unregistered client %@ should be released", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "-[EAManager _unregisteredClientAssertionTimerFired:]", [v3 bundleId]);
}

- (BOOL)_isProtocolContainedInWhitelist:(id)a3
{
  if (![a3 caseInsensitiveCompare:@"com.apple.iPodOut"])
  {
    return 1;
  }

  v7 = 0;
  v4 = -[NSRegularExpression numberOfMatchesInString:options:range:](+[NSRegularExpression regularExpressionWithPattern:options:error:](NSRegularExpression, "regularExpressionWithPattern:options:error:", IAPEAWhitelistedProtocolRegex, 1, &v7), "numberOfMatchesInString:options:range:", a3, 0, 0, [a3 length]);
  v5 = v4 != 0;
  if (v4)
  {
    sub_1000DDE90(3u, @"%s:%s found whitelisted protocol %@", "/Library/Caches/com.apple.xbs/Sources/iapd/iapd/EAManager.mm", "[EAManager _isProtocolContainedInWhitelist:]", a3);
  }

  return v5;
}

- (void)updatePlistWithProtocolsForAccessory:(id)a3
{
  v3 = [a3 objectForKey:@"OptionalSDKProtocolsShownKey"];

  [EAManager _updatePlistWithAccessoryProtocolsInternal:v3];
}

+ (void)_updatePlistWithAccessoryProtocolsInternal:(id)a3
{
  if (a3)
  {
    CFPreferencesSetAppValue(@"OptionalSDKProtocolsShownKey", a3, @"com.apple.iapd");

    CFPreferencesSynchronize(@"com.apple.iapd", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }
}

- (BOOL)fakedLocationDeviceFilteringSupport
{
  if (self->_fakedLocationDeviceFilteringSupport >= 2u)
  {
    __break(0x550Au);
  }

  else
  {
    LOBYTE(self) = self->_fakedLocationDeviceFilteringSupport;
  }

  return self;
}

- (id).cxx_construct
{
  if (((self + 16) & 7) != 0)
  {
    __break(0x5516u);
  }

  else
  {
    *(self + 4) = 0;
    *(self + 3) = 0;
    *(self + 2) = self + 24;
  }

  return self;
}

- (void)notifyEAClient:(id)a3 ofAccessoryEvent:(const char *)a4 accessory:(id)a5
{
  v8 = [a3 canSendConnectionEventForAccessory:a5];
  sub_1000DDE90(3u, @"eaClientToNotify bundle = %@, request = %s, canSendConnectionEvent = %d", [a3 bundleId], a4, v8);
  if (v8)
  {
    v9 = [NSPropertyListSerialization dataWithPropertyList:a5 format:200 options:0 error:0];
    v10 = xpc_dictionary_create(0, 0, 0);
    if (a4 && (v11 = v10) != 0 && (xpc_dictionary_set_string(v10, "requestType", a4), (v12 = -[NSData bytes](v9, "bytes")) != 0) && (xpc_dictionary_set_data(v11, "EAProtocolAccessoryPlistData", v12, -[NSData length](v9, "length")), (v13 = [a3 xpcConnection]) != 0))
    {
      xpc_connection_send_message(v13, v11);

      xpc_release(v11);
    }

    else
    {
      __break(0x5510u);
    }
  }
}

- (void)notifyEAClient:(id)a3 ofNotificationName:(const char *)a4 withPayload:(id)a5
{
  if (!a3 || !a4)
  {
    sub_1000DDE90(3u, @"%s: Received nil param. eaClientToNotify %@ notificationName %s", "[EAManager(EAManagerClientExtensions) notifyEAClient:ofNotificationName:withPayload:]", a3, a4);
    return;
  }

  v8 = [a3 canSendConnectionEventForAccessory:a5];
  sub_1000DDE90(3u, @"eaClientToNotify bundle = %@, request = %s, canSendConnectionEvent = %d", [a3 bundleId], a4, v8);
  if (!v8)
  {
    return;
  }

  if (a5)
  {
    v9 = [NSPropertyListSerialization dataWithPropertyList:a5 format:200 options:0 error:0];
  }

  else
  {
    v9 = 0;
  }

  sub_1000DDE90(3u, @"eaClientToNotify bundle = %@, request = %s, notificationName = %s, notificationPayload=%@", [a3 bundleId], "kXPCACCNotificationKey", a4, a5);
  v10 = xpc_dictionary_create(0, 0, 0);
  if (!v10)
  {
    goto LABEL_17;
  }

  v11 = v10;
  xpc_dictionary_set_string(v10, "requestType", "kXPCACCNotificationKey");
  xpc_dictionary_set_string(v11, "kXPCACCNotificationNameKey", a4);
  if (!v9)
  {
    goto LABEL_13;
  }

  v12 = [(NSData *)v9 bytes];
  if (!v12)
  {
LABEL_17:
    __break(0x5510u);
    return;
  }

  xpc_dictionary_set_data(v11, "kXPCACCNotificationPlistData", v12, [(NSData *)v9 length]);
LABEL_13:
  v13 = [a3 xpcConnection];
  if (!v13)
  {
    goto LABEL_17;
  }

  xpc_connection_send_message(v13, v11);

  xpc_release(v11);
}

- (void)notifyEAClientsOfAccessoryEvent:(const char *)a3 accessory:(id)a4
{
  if (!self || (p_clientLock = &self->_clientLock, (&self->_clientLock & 7) != 0) || ([(NSLock *)*p_clientLock lock], v16 = 0u, v17 = 0u, v14 = 0u, v15 = 0u, p_clients = &self->_clients, (&self->_clients & 7) != 0))
  {
    __break(0x5516u);
  }

  v9 = *p_clients;
  v10 = [*p_clients countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        -[EAManager notifyEAClient:ofAccessoryEvent:accessory:](self, "notifyEAClient:ofAccessoryEvent:accessory:", [*p_clients objectForKey:{*(*(&v14 + 1) + 8 * i), v14}], a3, a4);
      }

      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }

  [(NSLock *)*p_clientLock unlock];
}

- (void)sendToEALocationClientsNotification:(const char *)a3 withPayload:(id)a4
{
  if (!self || (p_clientLock = &self->_clientLock, (&self->_clientLock & 7) != 0) || ([(NSLock *)*p_clientLock lock], v17 = 0u, v18 = 0u, v15 = 0u, v16 = 0u, p_clients = &self->_clients, (&self->_clients & 7) != 0))
  {
    __break(0x5516u);
  }

  v9 = *p_clients;
  v10 = [*p_clients countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*p_clients objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        if ([v14 locationSupportedByClient])
        {
          [(EAManager *)self notifyEAClient:v14 ofNotificationName:a3 withPayload:a4];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  [(NSLock *)*p_clientLock unlock];
}

- (void)notifyEALocationClientsOfIAPLocationDidReceiveNMEASentenceNotification:(id)a3
{
  v5 = [IAPLocationDidReceiveNMEASentenceNotification UTF8String];

  [(EAManager *)self sendToEALocationClientsNotification:v5 withPayload:a3];
}

- (void)notifyEALocationClientsOfIAPLocationDidReceiveLocationPointDataNotification:(id)a3
{
  v5 = [IAPLocationDidReceiveLocationPointDataNotification UTF8String];

  [(EAManager *)self sendToEALocationClientsNotification:v5 withPayload:a3];
}

- (void)notifyEALocationClientsOfIAPLocationDidReceiveEphemerisURLNotification:(id)a3
{
  v5 = [IAPLocationDidReceiveEphemerisURLNotification UTF8String];

  [(EAManager *)self sendToEALocationClientsNotification:v5 withPayload:a3];
}

- (void)notifyEALocationClientsOfIAPLocationDidReceiveEphemerisMaxIntervalNotification:(id)a3
{
  v5 = [IAPLocationDidReceiveEphemerisMaxIntervalNotification UTF8String];

  [(EAManager *)self sendToEALocationClientsNotification:v5 withPayload:a3];
}

- (void)notifyEALocationClientsOfIAPLocationDidReceiveEphemerisRecommendedRefreshNotification:(id)a3
{
  v5 = [IAPLocationDidReceiveEphemerisRecommendedRefreshNotification UTF8String];

  [(EAManager *)self sendToEALocationClientsNotification:v5 withPayload:a3];
}

- (void)notifyEALocationClientsOfIAPLocationDidRequestGPSTimeNotification:(id)a3
{
  v5 = [IAPLocationDidRequestGPSTimeNotification UTF8String];

  [(EAManager *)self sendToEALocationClientsNotification:v5 withPayload:a3];
}

- (void)notifyEALocationClientsOfIAPLocationAccessoryNMEASentenceFilteringSupportChangedNotification:(id)a3
{
  v5 = [IAPLocationAccessoryNMEASentenceFilteringSupportChangedNotification UTF8String];

  [(EAManager *)self sendToEALocationClientsNotification:v5 withPayload:a3];
}

@end
@interface DSCohortManager
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)deviceFound:(id)found;
- (void)deviceLost:(id)lost;
- (void)printConsensusData;
- (void)printConsensusDataFromWindowStart:(double)start ToWindowEnd:(double)end;
@end

@implementation DSCohortManager

- (void)deviceFound:(id)found
{
  dispatchQueue = self->_dispatchQueue;
  foundCopy = found;
  dispatch_assert_queue_V2(dispatchQueue);
  [(DSCohortManager *)self _deviceFound:foundCopy];
}

- (void)deviceLost:(id)lost
{
  dispatchQueue = self->_dispatchQueue;
  lostCopy = lost;
  dispatch_assert_queue_V2(dispatchQueue);
  [(DSCohortManager *)self _deviceLost:lostCopy];
}

- (void)_deviceFound:(id)found
{
  v74 = *MEMORY[0x277D85DE8];
  foundCopy = found;
  v5 = foundCopy;
  if (foundCopy)
  {
    identifier = [foundCopy identifier];
    devices = self->_devices;
    if (!devices)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_devices;
      self->_devices = v8;

      devices = self->_devices;
    }

    v10 = [(NSMutableDictionary *)devices objectForKeyedSubscript:identifier];

    p_inst_meths = &OBJC_PROTOCOL___DSListenerClientProtocol.inst_meths;
    v12 = &OBJC_PROTOCOL___DSListenerClientProtocol.inst_meths;
    if (v10)
    {
      v13 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
      if (onceTokenDSCohortManager != -1)
      {
        [DSCohortManager _deviceFound:];
      }

      v14 = logObjDSCohortManager;
      if (os_log_type_enabled(logObjDSCohortManager, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v73 = identifier;
        _os_log_impl(&dword_249027000, v14, OS_LOG_TYPE_DEFAULT, "Updating device with ID: %@", buf, 0xCu);
      }

      [(DSDeviceContext *)v13 updateWithCBDevice:v5];
      changedFlag = [(DSDeviceContext *)v13 changedFlag];
      v60 = identifier;
      if (onceTokenDSCohortManager != -1)
      {
        [DSCohortManager _deviceFound:];
      }

      v16 = changedFlag & 2;
      v17 = changedFlag & 4;
      v18 = logObjDSCohortManager;
      if (os_log_type_enabled(logObjDSCohortManager, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        *v73 = v16 >> 1;
        *&v73[4] = 1024;
        *&v73[6] = v17 >> 2;
        _os_log_impl(&dword_249027000, v18, OS_LOG_TYPE_DEFAULT, "Changed DSInfo: %d, DSAction %d", buf, 0xEu);
      }

      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      xpcConnections = [(DSXPCServer *)self->_xpcDaemonServer xpcConnections];
      v20 = [xpcConnections countByEnumeratingWithState:&v66 objects:v71 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v67;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v67 != v22)
            {
              objc_enumerationMutation(xpcConnections);
            }

            v24 = *(*(&v66 + 1) + 8 * i);
            motionSession = [v24 motionSession];

            if (motionSession)
            {
              v26 = v16 == 0;
            }

            else
            {
              v26 = 1;
            }

            if (v26)
            {
              kappaSession = [v24 kappaSession];

              if (kappaSession)
              {
                v28 = v17 == 0;
              }

              else
              {
                v28 = 1;
              }

              if (v28)
              {
                continue;
              }

              kappaSession2 = [v24 kappaSession];
            }

            else
            {
              kappaSession2 = [v24 motionSession];
            }

            v30 = kappaSession2;
            deviceChangedHandler = [kappaSession2 deviceChangedHandler];

            if (deviceChangedHandler)
            {
              (deviceChangedHandler)[2](deviceChangedHandler, v13);
            }
          }

          v21 = [xpcConnections countByEnumeratingWithState:&v66 objects:v71 count:16];
        }

        while (v21);
      }

      v32 = 0;
      v12 = (&OBJC_PROTOCOL___DSListenerClientProtocol + 24);
      p_inst_meths = (&OBJC_PROTOCOL___DSListenerClientProtocol + 24);
    }

    else
    {
      if (onceTokenDSCohortManager != -1)
      {
        [DSCohortManager _deviceFound:];
      }

      v33 = logObjDSCohortManager;
      if (os_log_type_enabled(logObjDSCohortManager, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v73 = identifier;
        _os_log_impl(&dword_249027000, v33, OS_LOG_TYPE_DEFAULT, "Adding device with ID: %@", buf, 0xCu);
      }

      v65 = 0;
      v13 = [[DSDeviceContext alloc] initWithCBDevice:v5 error:&v65];
      v32 = v65;
      if (!v13)
      {
        if (onceTokenDSCohortManager != -1)
        {
          [DSCohortManager _deviceFound:];
        }

        v58 = logObjDSCohortManager;
        if (os_log_type_enabled(logObjDSCohortManager, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *v73 = v32;
          _os_log_impl(&dword_249027000, v58, OS_LOG_TYPE_DEFAULT, "Failed to init DSDeviceContext with error : %@", buf, 0xCu);
        }

LABEL_69:

        goto LABEL_70;
      }

      v59 = v5;
      v60 = identifier;
      [(NSMutableDictionary *)self->_devices setObject:v13 forKeyedSubscript:identifier];
    }

    discoveryFlag = [(DSDeviceContext *)v13 discoveryFlag];
    v35 = discoveryFlag & 2;
    if (p_inst_meths[29] != -1)
    {
      [DSCohortManager _deviceFound:];
    }

    v36 = discoveryFlag & 4;
    v37 = v12[28];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v73 = v35 >> 1;
      *&v73[4] = 1024;
      *&v73[6] = v36 >> 2;
      _os_log_impl(&dword_249027000, v37, OS_LOG_TYPE_DEFAULT, "Discovered DSInfo: %d, DSAction %d", buf, 0xEu);
    }

    if (v35)
    {
      if (!self->_dataManager)
      {
        v38 = [[DSConsensusDataManager alloc] initWithWindowOfInterest:15.0];
        dataManager = self->_dataManager;
        self->_dataManager = v38;
      }

      v40 = [DSConsensusDatum alloc];
      vehicleConfidence = [(DSDeviceContext *)v13 vehicleConfidence];
      v42 = [MEMORY[0x277CBEAA8] now];
      v43 = [(DSConsensusDatum *)v40 initWithIdentifier:v60 andConfidence:vehicleConfidence atTime:v42];

      if (v43)
      {
        [(DSConsensusDataManager *)self->_dataManager addDatum:v43];
      }
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    xpcConnections2 = [(DSXPCServer *)self->_xpcDaemonServer xpcConnections];
    v45 = [xpcConnections2 countByEnumeratingWithState:&v61 objects:v70 count:16];
    if (v45)
    {
      v46 = v45;
      v47 = *v62;
      do
      {
        for (j = 0; j != v46; ++j)
        {
          if (*v62 != v47)
          {
            objc_enumerationMutation(xpcConnections2);
          }

          v49 = *(*(&v61 + 1) + 8 * j);
          motionSession2 = [v49 motionSession];

          if (motionSession2)
          {
            v51 = v35 == 0;
          }

          else
          {
            v51 = 1;
          }

          if (!v51)
          {
            motionSession3 = [v49 motionSession];
            goto LABEL_64;
          }

          kappaSession3 = [v49 kappaSession];

          if (kappaSession3)
          {
            v53 = v36 == 0;
          }

          else
          {
            v53 = 1;
          }

          if (!v53)
          {
            motionSession3 = [v49 kappaSession];
LABEL_64:
            v55 = motionSession3;
            deviceFoundHandler = [motionSession3 deviceFoundHandler];

            if (deviceFoundHandler)
            {
              (deviceFoundHandler)[2](deviceFoundHandler, v13);
            }

            continue;
          }
        }

        v46 = [xpcConnections2 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v46);
    }

    v5 = v59;
    identifier = v60;
    goto LABEL_69;
  }

LABEL_70:

  v57 = *MEMORY[0x277D85DE8];
}

- (void)_deviceLost:(id)lost
{
  v30 = *MEMORY[0x277D85DE8];
  identifier = [lost identifier];
  v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];
  if (v5)
  {
    if (onceTokenDSCohortManager != -1)
    {
      [DSCohortManager _deviceFound:];
    }

    v6 = logObjDSCohortManager;
    if (os_log_type_enabled(logObjDSCohortManager, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = identifier;
      _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "Removing device with ID: %@", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_devices removeObjectForKey:identifier];
  }

  dsInfoIsAlreadyFound = [v5 dsInfoIsAlreadyFound];
  dsActionIsAlreadyFound = [v5 dsActionIsAlreadyFound];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  xpcConnections = [(DSXPCServer *)self->_xpcDaemonServer xpcConnections];
  v10 = [xpcConnections countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(xpcConnections);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        motionSession = [v14 motionSession];

        if (motionSession)
        {
          v16 = dsInfoIsAlreadyFound == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          motionSession2 = [v14 motionSession];
          goto LABEL_22;
        }

        kappaSession = [v14 kappaSession];

        if (kappaSession)
        {
          v18 = dsActionIsAlreadyFound == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          motionSession2 = [v14 kappaSession];
LABEL_22:
          v20 = motionSession2;
          deviceLostHandler = [motionSession2 deviceLostHandler];

          if (deviceLostHandler)
          {
            (deviceLostHandler)[2](deviceLostHandler, v5);
          }

          continue;
        }
      }

      v11 = [xpcConnections countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)printConsensusData
{
  dataManager = self->_dataManager;
  if (dataManager)
  {
    [(DSConsensusDataManager *)dataManager printConsensusData];
  }
}

- (void)printConsensusDataFromWindowStart:(double)start ToWindowEnd:(double)end
{
  dataManager = self->_dataManager;
  if (dataManager)
  {
    [(DSConsensusDataManager *)dataManager printConsensusDataFromWindowStart:start ToWindowEnd:end];
  }
}

@end
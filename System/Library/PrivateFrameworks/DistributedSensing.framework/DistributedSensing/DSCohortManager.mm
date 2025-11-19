@interface DSCohortManager
- (void)_deviceFound:(id)a3;
- (void)_deviceLost:(id)a3;
- (void)deviceFound:(id)a3;
- (void)deviceLost:(id)a3;
- (void)printConsensusData;
- (void)printConsensusDataFromWindowStart:(double)a3 ToWindowEnd:(double)a4;
@end

@implementation DSCohortManager

- (void)deviceFound:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  [(DSCohortManager *)self _deviceFound:v5];
}

- (void)deviceLost:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  [(DSCohortManager *)self _deviceLost:v5];
}

- (void)_deviceFound:(id)a3
{
  v74 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 identifier];
    devices = self->_devices;
    if (!devices)
    {
      v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v9 = self->_devices;
      self->_devices = v8;

      devices = self->_devices;
    }

    v10 = [(NSMutableDictionary *)devices objectForKeyedSubscript:v6];

    p_inst_meths = &OBJC_PROTOCOL___DSListenerClientProtocol.inst_meths;
    v12 = &OBJC_PROTOCOL___DSListenerClientProtocol.inst_meths;
    if (v10)
    {
      v13 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v6];
      if (onceTokenDSCohortManager != -1)
      {
        [DSCohortManager _deviceFound:];
      }

      v14 = logObjDSCohortManager;
      if (os_log_type_enabled(logObjDSCohortManager, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *v73 = v6;
        _os_log_impl(&dword_249027000, v14, OS_LOG_TYPE_DEFAULT, "Updating device with ID: %@", buf, 0xCu);
      }

      [(DSDeviceContext *)v13 updateWithCBDevice:v5];
      v15 = [(DSDeviceContext *)v13 changedFlag];
      v60 = v6;
      if (onceTokenDSCohortManager != -1)
      {
        [DSCohortManager _deviceFound:];
      }

      v16 = v15 & 2;
      v17 = v15 & 4;
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
      v19 = [(DSXPCServer *)self->_xpcDaemonServer xpcConnections];
      v20 = [v19 countByEnumeratingWithState:&v66 objects:v71 count:16];
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
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v66 + 1) + 8 * i);
            v25 = [v24 motionSession];

            if (v25)
            {
              v26 = v16 == 0;
            }

            else
            {
              v26 = 1;
            }

            if (v26)
            {
              v27 = [v24 kappaSession];

              if (v27)
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

              v29 = [v24 kappaSession];
            }

            else
            {
              v29 = [v24 motionSession];
            }

            v30 = v29;
            v31 = [v29 deviceChangedHandler];

            if (v31)
            {
              (v31)[2](v31, v13);
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v66 objects:v71 count:16];
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
        *v73 = v6;
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
      v60 = v6;
      [(NSMutableDictionary *)self->_devices setObject:v13 forKeyedSubscript:v6];
    }

    v34 = [(DSDeviceContext *)v13 discoveryFlag];
    v35 = v34 & 2;
    if (p_inst_meths[29] != -1)
    {
      [DSCohortManager _deviceFound:];
    }

    v36 = v34 & 4;
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
      v41 = [(DSDeviceContext *)v13 vehicleConfidence];
      v42 = [MEMORY[0x277CBEAA8] now];
      v43 = [(DSConsensusDatum *)v40 initWithIdentifier:v60 andConfidence:v41 atTime:v42];

      if (v43)
      {
        [(DSConsensusDataManager *)self->_dataManager addDatum:v43];
      }
    }

    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v44 = [(DSXPCServer *)self->_xpcDaemonServer xpcConnections];
    v45 = [v44 countByEnumeratingWithState:&v61 objects:v70 count:16];
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
            objc_enumerationMutation(v44);
          }

          v49 = *(*(&v61 + 1) + 8 * j);
          v50 = [v49 motionSession];

          if (v50)
          {
            v51 = v35 == 0;
          }

          else
          {
            v51 = 1;
          }

          if (!v51)
          {
            v54 = [v49 motionSession];
            goto LABEL_64;
          }

          v52 = [v49 kappaSession];

          if (v52)
          {
            v53 = v36 == 0;
          }

          else
          {
            v53 = 1;
          }

          if (!v53)
          {
            v54 = [v49 kappaSession];
LABEL_64:
            v55 = v54;
            v56 = [v54 deviceFoundHandler];

            if (v56)
            {
              (v56)[2](v56, v13);
            }

            continue;
          }
        }

        v46 = [v44 countByEnumeratingWithState:&v61 objects:v70 count:16];
      }

      while (v46);
    }

    v5 = v59;
    v6 = v60;
    goto LABEL_69;
  }

LABEL_70:

  v57 = *MEMORY[0x277D85DE8];
}

- (void)_deviceLost:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = [a3 identifier];
  v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:v4];
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
      v29 = v4;
      _os_log_impl(&dword_249027000, v6, OS_LOG_TYPE_DEFAULT, "Removing device with ID: %@", buf, 0xCu);
    }

    [(NSMutableDictionary *)self->_devices removeObjectForKey:v4];
  }

  v7 = [v5 dsInfoIsAlreadyFound];
  v8 = [v5 dsActionIsAlreadyFound];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = [(DSXPCServer *)self->_xpcDaemonServer xpcConnections];
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = [v14 motionSession];

        if (v15)
        {
          v16 = v7 == 0;
        }

        else
        {
          v16 = 1;
        }

        if (!v16)
        {
          v19 = [v14 motionSession];
          goto LABEL_22;
        }

        v17 = [v14 kappaSession];

        if (v17)
        {
          v18 = v8 == 0;
        }

        else
        {
          v18 = 1;
        }

        if (!v18)
        {
          v19 = [v14 kappaSession];
LABEL_22:
          v20 = v19;
          v21 = [v19 deviceLostHandler];

          if (v21)
          {
            (v21)[2](v21, v5);
          }

          continue;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (void)printConsensusDataFromWindowStart:(double)a3 ToWindowEnd:(double)a4
{
  dataManager = self->_dataManager;
  if (dataManager)
  {
    [(DSConsensusDataManager *)dataManager printConsensusDataFromWindowStart:a3 ToWindowEnd:a4];
  }
}

@end
@interface CLIndoorPositionProvider
- (CLIndoorPositionProvider)initWithApiKey:(id)a3;
- (CLIndoorPositionProvider)initWithApiKey:(id)a3 onServer:(id)a4;
- (CLIndoorPositionProvider)initWithConnection:(id)a3;
- (id)withinQueuePermanentShutdownReason;
- (void)clVisionNotificationAvailable:(id)a3;
- (void)clpOutdoorEstimatorLogEntryNotificationAvailable:(id)a3;
- (void)gpsEstimateAvailable:(id)a3;
- (void)gpsSignalQualityAvailable:(id)a3;
- (void)outdoorLocationAvailable:(id)a3;
- (void)playbackDatarun:(id)a3;
- (void)setApiKey:(id)a3;
- (void)setApiKey:(id)a3 onServer:(id)a4;
- (void)setDelegate:(id)a3;
- (void)startUpdatingLocationAtLocation:(id)a3;
- (void)stopUpdatingLocation;
- (void)withinQueueReinitializeRemoteState;
- (void)withinQueueSetDelegate:(id)a3;
@end

@implementation CLIndoorPositionProvider

- (CLIndoorPositionProvider)initWithApiKey:(id)a3
{
  v7.receiver = self;
  v7.super_class = CLIndoorPositionProvider;
  v3 = [(CLIndoorXPCProvider *)&v7 init];
  if (qword_28144B270 != -1)
  {
    sub_245A8E640();
    v4 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      return v3;
    }

    goto LABEL_3;
  }

  v4 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v6 = 0;
    _os_log_impl(&dword_245A2E000, v4, OS_LOG_TYPE_INFO, "Deprecated API.  Please call regular -init instead", v6, 2u);
  }

  return v3;
}

- (CLIndoorPositionProvider)initWithApiKey:(id)a3 onServer:(id)a4
{
  v8.receiver = self;
  v8.super_class = CLIndoorPositionProvider;
  v4 = [(CLIndoorXPCProvider *)&v8 init:a3];
  if (qword_28144B270 != -1)
  {
    sub_245A8E640();
    v5 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
    {
      return v4;
    }

    goto LABEL_3;
  }

  v5 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_INFO))
  {
LABEL_3:
    *v7 = 0;
    _os_log_impl(&dword_245A2E000, v5, OS_LOG_TYPE_INFO, "Deprecated API.  Please call regular -init instead", v7, 2u);
  }

  return v4;
}

- (CLIndoorPositionProvider)initWithConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLIndoorPositionProvider;
  v5 = [(CLIndoorXPCProvider *)&v9 initWithConnection:v4];
  if (v5)
  {
    v6 = objc_alloc_init(ServiceState);
    state = v5->_state;
    v5->_state = v6;
  }

  return v5;
}

- (id)withinQueuePermanentShutdownReason
{
  v5 = objc_msgSend_delegateProxy(self->_state, a2, v2, v3, v4);
  v10 = objc_msgSend_shutdownReason(v5, v6, v7, v8, v9);

  return v10;
}

- (void)withinQueueReinitializeRemoteState
{
  v49 = objc_msgSend_state(self, a2, v2, v3, v4);
  v10 = objc_msgSend_delegateProxy(v49, v6, v7, v8, v9);
  v15 = objc_msgSend_delegate(v10, v11, v12, v13, v14);
  objc_msgSend_withinQueueSetDelegate_(self, v16, v17, v18, v19, v15);

  v50 = objc_msgSend_state(self, v20, v21, v22, v23);
  LODWORD(v10) = objc_msgSend_updateLocation(v50, v24, v25, v26, v27);

  if (v10)
  {
    v51 = objc_msgSend_state(self, v28, v29, v30, v31);
    objc_msgSend_setUpdateLocation_(v51, v32, v33, v34, v35, 0);

    v52 = objc_msgSend_state(self, v36, v37, v38, v39);
    v44 = objc_msgSend_lastLocation(v52, v40, v41, v42, v43);
    objc_msgSend_startUpdatingLocationAtLocation_(self, v45, v46, v47, v48, v44);
  }
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_245A75E78;
  v7[3] = &unk_278E8AA90;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(frameworkQueue, v7);
}

- (void)withinQueueSetDelegate:(id)a3
{
  v42 = a3;
  v4 = [IndoorProtocolProxy alloc];
  v9 = objc_msgSend_initWithDelegate_(v4, v5, v6, v7, v8, v42);
  v14 = objc_msgSend_state(self, v10, v11, v12, v13);
  objc_msgSend_setDelegateProxy_(v14, v15, v16, v17, v18, v9);

  v23 = objc_msgSend_interfaceWithProtocol_(MEMORY[0x277CCAE90], v19, v20, v21, v22, &unk_2858A5760);
  objc_msgSend_setExportedInterface_(self->super._connection, v24, v25, v26, v27, v23);

  v32 = objc_msgSend_state(self, v28, v29, v30, v31);
  v37 = objc_msgSend_delegateProxy(v32, v33, v34, v35, v36);
  objc_msgSend_setExportedObject_(self->super._connection, v38, v39, v40, v41, v37);
}

- (void)setApiKey:(id)a3
{
  v3 = a3;
  if (qword_28144B270 != -1)
  {
    sub_245A8E668();
    v4 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
  {
LABEL_3:
    *v5 = 0;
    _os_log_impl(&dword_245A2E000, v4, OS_LOG_TYPE_ERROR, "This API is deprecated. Please stop using", v5, 2u);
  }

LABEL_4:
}

- (void)setApiKey:(id)a3 onServer:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (qword_28144B270 != -1)
  {
    sub_245A8E668();
    v7 = qword_28144B278;
    if (!os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = qword_28144B278;
  if (os_log_type_enabled(qword_28144B278, OS_LOG_TYPE_ERROR))
  {
LABEL_3:
    *v8 = 0;
    _os_log_impl(&dword_245A2E000, v7, OS_LOG_TYPE_ERROR, "This API is deprecated. Please stop using", v8, 2u);
  }

LABEL_4:
}

- (void)playbackDatarun:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_245A76210;
  v9[3] = &unk_28589FD58;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(frameworkQueue, v9);
}

- (void)startUpdatingLocationAtLocation:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_245A76488;
  v9[3] = &unk_28589FD88;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(frameworkQueue, v9);
}

- (void)stopUpdatingLocation
{
  frameworkQueue = self->super._frameworkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = sub_245A768D8;
  block[3] = &unk_28589FDB8;
  v5 = self;
  v3 = v5;
  dispatch_async(frameworkQueue, block);
}

- (void)outdoorLocationAvailable:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_245A76BF4;
  v9[3] = &unk_28589FDE8;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_async(frameworkQueue, v9);
}

- (void)gpsEstimateAvailable:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_245A77048;
  v9[3] = &unk_28589FE18;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_sync(frameworkQueue, v9);
}

- (void)gpsSignalQualityAvailable:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_245A7729C;
  v9[3] = &unk_28589FE48;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_sync(frameworkQueue, v9);
}

- (void)clVisionNotificationAvailable:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_245A774F0;
  v9[3] = &unk_28589FE78;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_sync(frameworkQueue, v9);
}

- (void)clpOutdoorEstimatorLogEntryNotificationAvailable:(id)a3
{
  v4 = a3;
  frameworkQueue = self->super._frameworkQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3321888768;
  v9[2] = sub_245A77744;
  v9[3] = &unk_28589FEA8;
  v6 = self;
  v7 = v4;
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_sync(frameworkQueue, v9);
}

@end
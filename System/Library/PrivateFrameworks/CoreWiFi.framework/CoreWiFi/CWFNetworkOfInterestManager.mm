@interface CWFNetworkOfInterestManager
+ (CWFNetworkOfInterestManager)sharedInstance;
- (CWFNetworkOfInterestManager)init;
- (int64_t)homeTypeForNetworkName:(id)name;
- (int64_t)homeTypeForNetworkSignature:(id)signature;
- (int64_t)workTypeForNetworkName:(id)name;
- (int64_t)workTypeForNetworkSignature:(id)signature;
- (void)_homeNetworkDeterminationDidChange;
- (void)_workNetworkDeterminationDidChange;
- (void)activate;
- (void)didStartTrackingNOI:(id)i;
- (void)didStopTrackingAllNOIs:(id)is;
- (void)didStopTrackingNOI:(id)i;
- (void)fetchHomeWiFiInfoFromHomeKit;
- (void)homeManagerDidUpdateHomes:(id)homes;
- (void)invalidate;
@end

@implementation CWFNetworkOfInterestManager

+ (CWFNetworkOfInterestManager)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D5EB08;
  block[3] = &unk_1E86E55D8;
  block[4] = self;
  if (qword_1ED7E3A70 != -1)
  {
    dispatch_once(&qword_1ED7E3A70, block);
  }

  v2 = qword_1ED7E3A78;

  return v2;
}

- (CWFNetworkOfInterestManager)init
{
  v29 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = CWFNetworkOfInterestManager;
  v2 = [(CWFNetworkOfInterestManager *)&v22 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.wifi.CWFNetworkOfInterestManager", v3);
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = dispatch_semaphore_create(0);
    v7 = *(v2 + 2);
    *(v2 + 2) = v6;

    v8 = objc_alloc_init(off_1EED2D3E0());
    v9 = *(v2 + 3);
    *(v2 + 3) = v8;

    if (*(v2 + 3))
    {
      v10 = *(v2 + 5);
      *(v2 + 5) = 0;

      v11 = *(v2 + 6);
      *(v2 + 6) = 0;

      [*(v2 + 3) setQueue:*(v2 + 1)];
      [*(v2 + 3) setDelegate:v2];
    }

    else
    {
      v12 = CWFGetOSLog();
      if (v12)
      {
        v13 = CWFGetOSLog();
      }

      else
      {
        v13 = MEMORY[0x1E69E9C10];
        v14 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v23 = 136446722;
        v24 = "[CWFNetworkOfInterestManager init]";
        v25 = 2082;
        v26 = "CWFNetworkOfInterestManager.m";
        v27 = 1024;
        v28 = 145;
        _os_log_send_and_compose_impl();
      }
    }

    v15 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(v2 + 1));
    v16 = *(v2 + 9);
    *(v2 + 9) = v15;

    v17 = *(v2 + 9);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1E0D5EDA4;
    handler[3] = &unk_1E86E6010;
    v21 = v2;
    dispatch_source_set_event_handler(v17, handler);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v2;
}

- (void)activate
{
  v10 = *MEMORY[0x1E69E9840];
  [(NWNetworkOfInterestManager *)self->_noiManager trackAllBuiltinNOIsForInterfaceType:1 options:0];
  [(CWFNetworkOfInterestManager *)self fetchHomeWiFiInfoFromHomeKit];
  v3 = +[CWFNetworkOfInterestManager testHomeNetworks];
  v4 = [v3 count];

  if (v4)
  {
    v5 = CWFGetOSLog();
    if (v5)
    {
      v6 = CWFGetOSLog();
    }

    else
    {
      v6 = MEMORY[0x1E69E9C10];
      v7 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      _os_log_send_and_compose_impl();
    }

    [(CWFNetworkOfInterestManager *)self _homeNetworkDeterminationDidChange];
  }

  homeKitFetchTimer = self->_homeKitFetchTimer;
  if (homeKitFetchTimer)
  {
    dispatch_resume(homeKitFetchTimer);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  homeNetworkDeterminationChangedHandler = self->_homeNetworkDeterminationChangedHandler;
  self->_homeNetworkDeterminationChangedHandler = 0;

  workNetworkDeterminationChangedHandler = self->_workNetworkDeterminationChangedHandler;
  self->_workNetworkDeterminationChangedHandler = 0;
}

- (void)_homeNetworkDeterminationDidChange
{
  noiQueue = self->_noiQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D5EFCC;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(noiQueue, block);
}

- (void)_workNetworkDeterminationDidChange
{
  noiQueue = self->_noiQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D5F1A0;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(noiQueue, block);
}

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  noiQueue = self->_noiQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D5F308;
  v7[3] = &unk_1E86E6420;
  v8 = homesCopy;
  selfCopy = self;
  v6 = homesCopy;
  dispatch_async(noiQueue, v7);
}

- (void)fetchHomeWiFiInfoFromHomeKit
{
  v33 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  if (_os_feature_enabled_impl())
  {
    if (_os_feature_enabled_impl())
    {
      v4 = 60.0;
    }

    else
    {
      v4 = 3600.0;
    }
  }

  else
  {
    v4 = 3600.0;
  }

  if (self->_lastHomeKitWiFiFetchTimestamp)
  {
    [date timeIntervalSinceDate:?];
    if (v5 < v4)
    {
      v6 = CWFGetOSLog();
      if (v6)
      {
        v7 = CWFGetOSLog();
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v30 = 136446722;
        *&v30[4] = "[CWFNetworkOfInterestManager fetchHomeWiFiInfoFromHomeKit]";
        *&v30[12] = 2082;
        *&v30[14] = "CWFNetworkOfInterestManager.m";
        *&v30[22] = 1024;
        LODWORD(v31) = 337;
        _os_log_send_and_compose_impl();
      }

LABEL_24:

      goto LABEL_43;
    }
  }

  if (self->_homeManager)
  {
    v8 = self->_lastHomeKitWiFiFetchTimestamp == 0;
    v9 = CWFGetOSLog();
    v10 = v9;
    if (!v8)
    {
      if (v9)
      {
        v7 = CWFGetOSLog();
      }

      else
      {
        v7 = MEMORY[0x1E69E9C10];
        v20 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v30 = 136446722;
        *&v30[4] = "[CWFNetworkOfInterestManager fetchHomeWiFiInfoFromHomeKit]";
        *&v30[12] = 2082;
        *&v30[14] = "CWFNetworkOfInterestManager.m";
        *&v30[22] = 1024;
        LODWORD(v31) = 346;
        _os_log_send_and_compose_impl();
      }

      goto LABEL_24;
    }

    if (v9)
    {
      v18 = CWFGetOSLog();
    }

    else
    {
      v18 = MEMORY[0x1E69E9C10];
      v22 = MEMORY[0x1E69E9C10];
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v30 = 136446722;
      *&v30[4] = "[CWFNetworkOfInterestManager fetchHomeWiFiInfoFromHomeKit]";
      *&v30[12] = 2082;
      *&v30[14] = "CWFNetworkOfInterestManager.m";
      *&v30[22] = 1024;
      LODWORD(v31) = 350;
      _os_log_send_and_compose_impl();
    }

    [(CWFNetworkOfInterestManager *)self homeManagerDidUpdateHomes:self->_homeManager];
  }

  else
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v11 = qword_1ED7E3A90;
    v29 = qword_1ED7E3A90;
    if (!qword_1ED7E3A90)
    {
      *v30 = MEMORY[0x1E69E9820];
      *&v30[8] = 3221225472;
      *&v30[16] = sub_1E0D61C20;
      v31 = &unk_1E86E5600;
      v32 = &v26;
      sub_1E0D61C20(v30);
      v11 = v27[3];
    }

    v12 = v11;
    _Block_object_dispose(&v26, 8);
    v13 = objc_alloc_init(v11);
    homeManager = self->_homeManager;
    self->_homeManager = v13;

    v15 = self->_homeManager;
    if (v15)
    {
      [(HMHomeManager *)v15 setDelegate:self];
      v16 = CWFGetOSLog();
      if (v16)
      {
        v17 = CWFGetOSLog();
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v23 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *v30 = 136446722;
        *&v30[4] = "[CWFNetworkOfInterestManager fetchHomeWiFiInfoFromHomeKit]";
        *&v30[12] = 2082;
        *&v30[14] = "CWFNetworkOfInterestManager.m";
        *&v30[22] = 1024;
        LODWORD(v31) = 366;
        _os_log_send_and_compose_impl();
      }
    }

    else
    {
      v21 = CWFGetOSLog();
      if (v21)
      {
        v17 = CWFGetOSLog();
      }

      else
      {
        v17 = MEMORY[0x1E69E9C10];
        v24 = MEMORY[0x1E69E9C10];
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v30 = 136446722;
        *&v30[4] = "[CWFNetworkOfInterestManager fetchHomeWiFiInfoFromHomeKit]";
        *&v30[12] = 2082;
        *&v30[14] = "CWFNetworkOfInterestManager.m";
        *&v30[22] = 1024;
        LODWORD(v31) = 361;
        _os_log_send_and_compose_impl();
      }
    }
  }

LABEL_43:

  v25 = *MEMORY[0x1E69E9840];
}

- (int64_t)homeTypeForNetworkName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  noiQueue = self->_noiQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D60608;
  block[3] = &unk_1E86E7BE0;
  v10 = nameCopy;
  v11 = &v12;
  block[4] = self;
  v6 = nameCopy;
  dispatch_sync(noiQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (int64_t)homeTypeForNetworkSignature:(id)signature
{
  signatureCopy = signature;
  noiQueue = self->_noiQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = sub_1E0D60B64;
  v8[3] = &unk_1E86E6420;
  v8[4] = self;
  v9 = signatureCopy;
  v6 = signatureCopy;
  dispatch_sync(noiQueue, v8);

  return 0;
}

- (int64_t)workTypeForNetworkName:(id)name
{
  nameCopy = name;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  noiQueue = self->_noiQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D60E40;
  block[3] = &unk_1E86E7BE0;
  v10 = nameCopy;
  v11 = &v12;
  block[4] = self;
  v6 = nameCopy;
  dispatch_sync(noiQueue, block);
  v7 = v13[3];

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (int64_t)workTypeForNetworkSignature:(id)signature
{
  noiQueue = self->_noiQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D610F0;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(noiQueue, block);
  return 0;
}

- (void)didStartTrackingNOI:(id)i
{
  iCopy = i;
  noiManager = self->_noiManager;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D61374;
  v7[3] = &unk_1E86E9C38;
  v8 = iCopy;
  selfCopy = self;
  v6 = iCopy;
  [(NWNetworkOfInterestManager *)noiManager networkAttachmentInfoForScopedNOI:v6 reply:v7];
}

- (void)didStopTrackingNOI:(id)i
{
  iCopy = i;
  noiQueue = self->_noiQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1E0D61940;
  v7[3] = &unk_1E86E6420;
  v8 = iCopy;
  selfCopy = self;
  v6 = iCopy;
  dispatch_async(noiQueue, v7);
}

- (void)didStopTrackingAllNOIs:(id)is
{
  noiQueue = self->_noiQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0D61A28;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_async(noiQueue, block);
}

@end
@interface CLServiceVendor
+ (CLServiceVendor)sharedInstance;
+ (void)initialize;
+ (void)rereadConfiguration:(id)a3;
- (BOOL)ensureServiceIsRunning:(id)a3;
- (BOOL)isServiceEnabled:(id)a3;
- (BOOL)isServiceRunning:(id)a3;
- (CLServiceVendor)init;
- (id)getServiceWithName:(id)a3;
- (id)proxyForService:(id)a3;
- (id)proxyForService:(id)a3 forClient:(id)a4;
- (void)dealloc;
- (void)enableTimeCoercion;
- (void)intendToSyncServiceWithName:(id)a3;
- (void)retireServiceWithName:(id)a3;
- (void)setCurrentGlobalLatchedAbsoluteTimestamp:(double)a3;
- (void)setServiceReplacementMap:(id)a3 missBehavior:(int)a4;
@end

@implementation CLServiceVendor

+ (CLServiceVendor)sharedInstance
{
  if (qword_1ED5FADD0 != -1)
  {
    dispatch_once(&qword_1ED5FADD0, &unk_1F5AC6B48);
  }

  v3 = qword_1ED5FADC8;

  return v3;
}

+ (void)initialize
{
  if (qword_1ED5FAD80 != -1)
  {
    dispatch_once(&qword_1ED5FAD80, &unk_1F5AC6B08);
  }
}

- (CLServiceVendor)init
{
  v9.receiver = self;
  v9.super_class = CLServiceVendor;
  v2 = [(CLServiceVendor *)&v9 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    catalog = v2->_catalog;
    v2->_catalog = v3;

    v5 = [MEMORY[0x1E695DFA8] set];
    unavailableServiceNames = v2->_unavailableServiceNames;
    v2->_unavailableServiceNames = v5;

    v7 = v2;
  }

  return v2;
}

+ (void)rereadConfiguration:(id)a3
{
  v3 = a3;
  v4 = [CLSettingsDictionary settingsWithDictionary:v3];
  [v4 doubleForKey:@"CLServiceVendor.HeartbeatCheckInterval" defaultValue:60.0];
  v6 = v5;
  v7 = [v4 BOOLForKey:@"HeartAttackStackshot" defaultValue:0];
  v8 = [v4 BOOLForKey:@"IsInternalInstall" defaultValue:0];
  v9 = [v4 BOOLForKey:@"IsLocationServicesEnabled" defaultValue:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = sub_1DF81E998;
  v10[3] = &unk_1E86C86A0;
  v11 = v7;
  v10[4] = v6;
  v12 = v8;
  v13 = v9;
  dispatch_barrier_async(qword_1ED5FADA0, v10);
}

- (void)enableTimeCoercion
{
  v19 = *MEMORY[0x1E69E9840];
  if ([(NSMutableDictionary *)self->_catalog count])
  {
    v6 = sub_1DF81E1BC();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = &unk_1DF8255EF;
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "0 == [_catalog count]";
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Enabling Time Coercion must be done before any services are started, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v7 = sub_1DF81E1BC();
    if (os_signpost_enabled(v7))
    {
      *buf = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = &unk_1DF8255EF;
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "0 == [_catalog count]";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Enabling Time Coercion must be done before any services are started", "{msg%{public}.0s:Enabling Time Coercion must be done before any services are started, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v8 = sub_1DF81E1BC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = &unk_1DF8255EF;
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "0 == [_catalog count]";
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Enabling Time Coercion must be done before any services are started, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

LABEL_19:

    abort_report_np();
  }

  if (self->_timeCoercibleSilos)
  {
    v9 = sub_1DF81E1BC();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = &unk_1DF8255EF;
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "!_timeCoercibleSilos";
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Only enable Time Coercion once, eh?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v10 = sub_1DF81E1BC();
    if (os_signpost_enabled(v10))
    {
      *buf = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = &unk_1DF8255EF;
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "!_timeCoercibleSilos";
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Only enable Time Coercion once, eh?", "{msg%{public}.0s:Only enable Time Coercion once, eh?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v8 = sub_1DF81E1BC();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v12 = 0;
      v13 = 2082;
      v14 = &unk_1DF8255EF;
      v15 = 2082;
      v16 = "assert";
      v17 = 2081;
      v18 = "!_timeCoercibleSilos";
      _os_log_impl(&dword_1DF7FE000, v8, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Only enable Time Coercion once, eh?, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    goto LABEL_19;
  }

  v3 = [MEMORY[0x1E695DFA8] set];
  timeCoercibleSilos = self->_timeCoercibleSilos;
  self->_timeCoercibleSilos = v3;
  v5 = *MEMORY[0x1E69E9840];

  MEMORY[0x1EEE66BB8]();
}

- (void)setServiceReplacementMap:(id)a3 missBehavior:(int)a4
{
  v6 = a3;
  v7 = qword_1ED5FADA0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF81F47C;
  block[3] = &unk_1E86C86C8;
  v10 = v6;
  v11 = self;
  v12 = a4;
  v8 = v6;
  dispatch_barrier_sync(v7, block);
}

- (id)getServiceWithName:(id)a3
{
  v65 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (byte_1ED5FAD98 == 1 && (([v4 containsString:@"Test"] & 1) != 0 || objc_msgSend(v5, "containsString:", @"Mock")))
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v6 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289282;
      *v62 = 2082;
      *&v62[2] = &unk_1DF8255EF;
      *&v62[10] = 2114;
      *&v62[12] = v5;
      _os_log_impl(&dword_1DF7FE000, v6, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Test and Mock services may only be looked up indirectly via -setServiceReplacementMap:, RequestedServiceName:%{public, location:escape_only}@}", buf, 0x1Cu);
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }
    }

    v7 = qword_1ED5FAD48;
    if (os_signpost_enabled(qword_1ED5FAD48))
    {
      *buf = 68289282;
      *v62 = 2082;
      *&v62[2] = &unk_1DF8255EF;
      *&v62[10] = 2114;
      *&v62[12] = v5;
      _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v7, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Test and Mock services may only be looked up indirectly via -setServiceReplacementMap:", "{msg%{public}.0s:Test and Mock services may only be looked up indirectly via -setServiceReplacementMap:, RequestedServiceName:%{public, location:escape_only}@}", buf, 0x1Cu);
    }

    v8 = 0;
  }

  else
  {
    *buf = 0;
    *v62 = buf;
    *&v62[8] = 0x3032000000;
    *&v62[16] = sub_1DF8090EC;
    v63 = sub_1DF809114;
    v64 = 0;
    v48 = 0;
    v49 = &v48;
    v50 = 0x3032000000;
    v51 = sub_1DF8090EC;
    v52 = sub_1DF809114;
    v53 = v5;
    v42 = 0;
    v43 = &v42;
    v44 = 0x3032000000;
    v45 = sub_1DF8090EC;
    v46 = sub_1DF809114;
    v47 = 0;
    v9 = qword_1ED5FADA0;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1DF82097C;
    block[3] = &unk_1E86C86F0;
    block[4] = self;
    v10 = v53;
    v38 = v10;
    v39 = buf;
    v40 = &v48;
    v41 = &v42;
    dispatch_sync(v9, block);
    v11 = *(*v62 + 40);
    if (v11)
    {
      v8 = v11;
    }

    else if (v49[5])
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v12 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
      {
        v54 = 68289282;
        v55 = 2082;
        v56 = &unk_1DF8255EF;
        v57 = 2114;
        v58 = v10;
        _os_log_impl(&dword_1DF7FE000, v12, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:Looking up service identified by name, ServiceName:%{public, location:escape_only}@}", &v54, 0x1Cu);
      }

      v35 = 0;
      v36 = 0;
      v13 = sub_1DF807DE4(&v36, &v35, v49[5]);
      v14 = v35;
      v15 = v36;
      if (v36)
      {
        v16 = qword_1ED5FADA0;
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = sub_1DF820B34;
        v27[3] = &unk_1E86C8740;
        v34 = v13;
        v28 = v10;
        v29 = self;
        v31 = &v48;
        v32 = buf;
        v33 = v15;
        v30 = v14;
        dispatch_barrier_sync(v16, v27);
        v8 = *(*v62 + 40);
      }

      else
      {
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }

        v21 = qword_1ED5FAD48;
        if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
        {
          v22 = v49[5];
          v54 = 68289538;
          v55 = 2082;
          v56 = &unk_1DF8255EF;
          v57 = 2114;
          v58 = v10;
          v59 = 2114;
          v60 = v22;
          _os_log_impl(&dword_1DF7FE000, v21, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Tried to look up a service by name that doesn't exist, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@}", &v54, 0x26u);
          if (qword_1ED5FAD40 != -1)
          {
            dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
          }
        }

        v23 = qword_1ED5FAD48;
        if (os_signpost_enabled(qword_1ED5FAD48))
        {
          v24 = v49[5];
          v54 = 68289538;
          v55 = 2082;
          v56 = &unk_1DF8255EF;
          v57 = 2114;
          v58 = v10;
          v59 = 2114;
          v60 = v24;
          _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v23, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Tried to look up a service by name that doesn't exist", "{msg%{public}.0s:Tried to look up a service by name that doesn't exist, RequestedServiceName:%{public, location:escape_only}@, EffectiveServiceName:%{public, location:escape_only}@}", &v54, 0x26u);
        }

        v8 = 0;
      }
    }

    else
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v17 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_FAULT))
      {
        v18 = v43[5];
        v54 = 68289538;
        v55 = 2082;
        v56 = &unk_1DF8255EF;
        v57 = 2114;
        v58 = v10;
        v59 = 2114;
        v60 = v18;
        _os_log_impl(&dword_1DF7FE000, v17, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Service replacement map does not include requested service, RequestedServiceName:%{public, location:escape_only}@, ReplacementMap:%{public, location:escape_only}@}", &v54, 0x26u);
        if (qword_1ED5FAD40 != -1)
        {
          dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
        }
      }

      v19 = qword_1ED5FAD48;
      if (os_signpost_enabled(qword_1ED5FAD48))
      {
        v20 = v43[5];
        v54 = 68289538;
        v55 = 2082;
        v56 = &unk_1DF8255EF;
        v57 = 2114;
        v58 = v10;
        v59 = 2114;
        v60 = v20;
        _os_signpost_emit_with_name_impl(&dword_1DF7FE000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Service replacement map does not include requested service", "{msg%{public}.0s:Service replacement map does not include requested service, RequestedServiceName:%{public, location:escape_only}@, ReplacementMap:%{public, location:escape_only}@}", &v54, 0x26u);
      }

      v8 = 0;
    }

    _Block_object_dispose(&v42, 8);
    _Block_object_dispose(&v48, 8);

    _Block_object_dispose(buf, 8);
  }

  v25 = *MEMORY[0x1E69E9840];

  return v8;
}

- (void)retireServiceWithName:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1DF8090EC;
  v19 = sub_1DF809114;
  v20 = 0;
  v5 = qword_1ED5FADA0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF821698;
  block[3] = &unk_1E86C8768;
  v14 = &v15;
  block[4] = self;
  v6 = v4;
  v13 = v6;
  dispatch_barrier_sync(v5, block);
  v7 = v16[5];
  if (v7)
  {
    v8 = [v7 silo];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1DF82179C;
    v11[3] = &unk_1E86C8790;
    v11[4] = &v15;
    [v8 sync:v11];
  }

  else
  {
    if (qword_1ED5FAD40 != -1)
    {
      dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
    }

    v9 = qword_1ED5FAD48;
    if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
    {
      buf = 68289282;
      v22 = 2082;
      v23 = &unk_1DF8255EF;
      v24 = 2114;
      v25 = v6;
      _os_log_impl(&dword_1DF7FE000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Warning Service retired redundantly or without ever having been started, RequestedServiceName:%{public, location:escape_only}@}", &buf, 0x1Cu);
    }
  }

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)isServiceEnabled:(id)a3
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1DF8090EC;
  v16 = sub_1DF809114;
  v17 = a3;
  v4 = qword_1ED5FADA0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF821944;
  block[3] = &unk_1E86C8768;
  v11 = &v12;
  block[4] = self;
  v5 = v17;
  v10 = v5;
  dispatch_sync(v4, block);
  v7 = 0;
  v8 = 0;
  sub_1DF807DE4(&v8, &v7, v13[5]);
  LOBYTE(v4) = v7 != 0;

  _Block_object_dispose(&v12, 8);
  return v4;
}

- (BOOL)isServiceRunning:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = qword_1ED5FADA0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1DF821A68;
  block[3] = &unk_1E86C8768;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);
  LOBYTE(v5) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return v5;
}

- (BOOL)ensureServiceIsRunning:(id)a3
{
  v3 = [(CLServiceVendor *)self getServiceWithName:a3];
  v4 = v3 != 0;

  return v4;
}

- (id)proxyForService:(id)a3
{
  v4 = a3;
  v5 = [(CLServiceVendor *)self getServiceWithName:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 silo];
    v8 = [CLIntersiloProxy proxyForRecipientObject:v6 inSilo:v7 recipientName:v4];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)proxyForService:(id)a3 forClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CLServiceVendor *)self getServiceWithName:v7];
  if (v8)
  {
    v9 = [(CLServiceVendor *)self proxyForService:v6];
    v10 = [v8 silo];
    [v9 registerDelegate:v8 inSilo:v10];

    [v9 setDelegateEntityName:{objc_msgSend(v7, "UTF8String")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)setCurrentGlobalLatchedAbsoluteTimestamp:(double)a3
{
  v36 = *MEMORY[0x1E69E9840];
  timeCoercibleSilos = self->_timeCoercibleSilos;
  if (timeCoercibleSilos)
  {
    self->_currentGlobalLatchedAbsoluteTimestamp = a3;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = timeCoercibleSilos;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
    if (v7)
    {
      v8 = *v30;
      do
      {
        v9 = 0;
        do
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v29 + 1) + 8 * v9++) suspend];
        }

        while (v7 != v9);
        v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v29 objects:v35 count:16];
      }

      while (v7);
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v10 = self->_timeCoercibleSilos;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    if (v11)
    {
      v12 = *v26;
      do
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = *(*(&v25 + 1) + 8 * v13);
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = sub_1DF821F84;
          v24[3] = &unk_1E86C85E8;
          v24[4] = v14;
          *&v24[5] = a3;
          [v14 async:v24];
          ++v13;
        }

        while (v11 != v13);
        v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
      }

      while (v11);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = self->_timeCoercibleSilos;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v33 count:16];
    if (v16)
    {
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v20 + 1) + 8 * v18++) resume];
        }

        while (v16 != v18);
        v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v33 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)intendToSyncServiceWithName:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[CLAutoCohortUtilities autoCohortingEnabled])
  {
    if (-[CLServiceVendor isServiceEnabled:](self, "isServiceEnabled:", v4) && (-[CLServiceVendor getServiceWithName:](self, "getServiceWithName:", v4), v5 = objc_claimAutoreleasedReturnValue(), [v5 silo], v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
    {
      [v6 intendToSync];
    }

    else
    {
      if (qword_1ED5FAD40 != -1)
      {
        dispatch_once(&qword_1ED5FAD40, &unk_1F5AC6B68);
      }

      v7 = qword_1ED5FAD48;
      if (os_log_type_enabled(qword_1ED5FAD48, OS_LOG_TYPE_DEBUG))
      {
        v9[0] = 68289282;
        v9[1] = 0;
        v10 = 2082;
        v11 = &unk_1DF8255EF;
        v12 = 2114;
        v13 = v4;
        _os_log_impl(&dword_1DF7FE000, v7, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:#Cohorting Cannot deduce toSilo, serviceName:%{public, location:escape_only}@}", v9, 0x1Cu);
      }

      v6 = 0;
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = CLServiceVendor;
  [(CLServiceVendor *)&v2 dealloc];
}

@end
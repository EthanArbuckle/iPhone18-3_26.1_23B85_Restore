@interface FAAgeRangeController
- (FAAgeRangeController)initWithDaemonXPCEndpoint:(id)endpoint;
- (void)dealloc;
- (void)deleteAgeRangesWith:(id)with completion:(id)completion;
- (void)fetchAgeRangesWith:(id)with completion:(id)completion;
- (void)fetchAgeWithCompletionHandler:(id)handler;
- (void)fetchAltDSIDWithCompletionHandler:(id)handler;
- (void)fetchFamilyCircleWithCompletionHandler:(id)handler;
- (void)fetchPrivacyVersionForAltDSID:(id)d completion:(id)completion;
- (void)globalStateForAltDSID:(id)d completion:(id)completion;
- (void)postAgeRangeNotificationWith:(id)with lowerAgeBound:(id)bound upperAgeBound:(id)ageBound completion:(id)completion;
- (void)requestAgeRangeWith:(id)with userAgeOverride:(id)override altDSID:(id)d bundleID:(id)iD appName:(id)name attestedAtOverrideInDays:(id)days completion:(id)completion;
- (void)saveAgeRangeWith:(id)with completion:(id)completion;
- (void)shouldPromptAgeRangeWith:(id)with bundleID:(id)d appName:(id)name privacyVersion:(id)version userAgeOverride:(id)override attestedAtOverrideInDays:(id)days completion:(id)completion;
- (void)updateAgeRangeWith:(id)with completion:(id)completion;
@end

@implementation FAAgeRangeController

- (FAAgeRangeController)initWithDaemonXPCEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = FAAgeRangeController;
  v5 = [(FAAgeRangeController *)&v9 init];
  if (v5)
  {
    v6 = [[FAAgeRangeDaemonConnection alloc] initWithListenerEndpoint:endpointCopy];
    daemonConnection = v5->_daemonConnection;
    v5->_daemonConnection = v6;
  }

  return v5;
}

- (void)fetchAgeRangesWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v8 = _FASignpostLogSystem();
  v9 = _FASignpostCreate(v8);
  v11 = v10;

  v12 = _FASignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "FetchAgeRanges", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = _FASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController fetchAgeRangesWith:completion:];
  }

  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v38 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke;
  aBlock[3] = &unk_1E7CA50D8;
  v30 = buf;
  v31 = v9;
  v32 = v11;
  v16 = completionCopy;
  v29 = v16;
  v17 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_17;
  v26[3] = &unk_1E7CA46D8;
  v19 = v17;
  v27 = v19;
  v20 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v26];
  v21 = _FALogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_1B70B0000, v21, OS_LOG_TYPE_DEFAULT, "Fetching age ranges.", v25, 2u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_19;
  v23[3] = &unk_1E7CA5100;
  v22 = v19;
  v24 = v22;
  [v20 fetchAgeRangesWith:withCopy completion:v23];

  _Block_object_dispose(buf, 8);
}

void __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _FASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _FASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v19 = 67240192;
    LODWORD(v20) = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchAgeRanges", " ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v19, 8u);
  }

  v13 = _FASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = a1[6];
    v18 = [v6 code];
    v19 = 134218496;
    v20 = v17;
    v21 = 2048;
    v22 = v16;
    v23 = 1026;
    v24 = v18;
    _os_log_debug_impl(&dword_1B70B0000, v13, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:FetchAgeRanges  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v19, 0x1Cu);
  }

  if (a1[4])
  {
    v14 = _FALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1B70B0000, v14, OS_LOG_TYPE_DEFAULT, "Fetched age ranges: %@.", &v19, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_17(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_17_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_19(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_19_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)deleteAgeRangesWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v8 = _FASignpostLogSystem();
  v9 = _FASignpostCreate(v8);
  v11 = v10;

  v12 = _FASignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "DeleteAgeRanges", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = _FASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController deleteAgeRangesWith:completion:];
  }

  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v38 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke;
  aBlock[3] = &unk_1E7CA5128;
  v30 = buf;
  v31 = v9;
  v32 = v11;
  v16 = completionCopy;
  v29 = v16;
  v17 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_20;
  v26[3] = &unk_1E7CA46D8;
  v19 = v17;
  v27 = v19;
  v20 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v26];
  v21 = _FALogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_1B70B0000, v21, OS_LOG_TYPE_DEFAULT, "Deleting age ranges.", v25, 2u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_21;
  v23[3] = &unk_1E7CA46D8;
  v22 = v19;
  v24 = v22;
  [v20 deleteAgeRangesWith:withCopy completion:v23];

  _Block_object_dispose(buf, 8);
}

void __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _FASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _FASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v16 = 67240192;
    LODWORD(v17) = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v8, OS_SIGNPOST_INTERVAL_END, v9, "DeleteAgeRanges", " ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v16, 8u);
  }

  v10 = _FASignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[6];
    v15 = [v3 code];
    v16 = 134218496;
    v17 = v14;
    v18 = 2048;
    v19 = v13;
    v20 = 1026;
    v21 = v15;
    _os_log_debug_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:DeleteAgeRanges  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v16, 0x1Cu);
  }

  if (a1[4])
  {
    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v3;
      _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "Deleted age ranges with error: %@.", &v16, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_20_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_21(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_21_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)saveAgeRangeWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v8 = _FASignpostLogSystem();
  v9 = _FASignpostCreate(v8);
  v11 = v10;

  v12 = _FASignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "SaveAgeRange", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = _FASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController saveAgeRangeWith:completion:];
  }

  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v38 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke;
  aBlock[3] = &unk_1E7CA5128;
  v30 = buf;
  v31 = v9;
  v32 = v11;
  v16 = completionCopy;
  v29 = v16;
  v17 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_22;
  v26[3] = &unk_1E7CA46D8;
  v19 = v17;
  v27 = v19;
  v20 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v26];
  v21 = _FALogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_1B70B0000, v21, OS_LOG_TYPE_DEFAULT, "Saving age range.", v25, 2u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_23;
  v23[3] = &unk_1E7CA46D8;
  v22 = v19;
  v24 = v22;
  [v20 saveAgeRangeWith:withCopy completion:v23];

  _Block_object_dispose(buf, 8);
}

void __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _FASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _FASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v16 = 67240192;
    LODWORD(v17) = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v8, OS_SIGNPOST_INTERVAL_END, v9, "SaveAgeRange", " ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v16, 8u);
  }

  v10 = _FASignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[6];
    v15 = [v3 code];
    v16 = 134218496;
    v17 = v14;
    v18 = 2048;
    v19 = v13;
    v20 = 1026;
    v21 = v15;
    _os_log_debug_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:SaveAgeRange  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v16, 0x1Cu);
  }

  if (a1[4])
  {
    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v3;
      _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "Saved age ranges with error: %@.", &v16, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_22(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_22_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_23_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)updateAgeRangeWith:(id)with completion:(id)completion
{
  withCopy = with;
  completionCopy = completion;
  v8 = _FASignpostLogSystem();
  v9 = _FASignpostCreate(v8);
  v11 = v10;

  v12 = _FASignpostLogSystem();
  v13 = v12;
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v9, "UpdateAgeRange", " enableTelemetry=YES ", buf, 2u);
  }

  v14 = _FASignpostLogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController updateAgeRangeWith:completion:];
  }

  *buf = 0;
  v34 = buf;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__2;
  v37 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v38 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke;
  aBlock[3] = &unk_1E7CA5128;
  v30 = buf;
  v31 = v9;
  v32 = v11;
  v16 = completionCopy;
  v29 = v16;
  v17 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_24;
  v26[3] = &unk_1E7CA46D8;
  v19 = v17;
  v27 = v19;
  v20 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v26];
  v21 = _FALogSystem();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_1B70B0000, v21, OS_LOG_TYPE_DEFAULT, "Updating age range.", v25, 2u);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_25;
  v23[3] = &unk_1E7CA46D8;
  v22 = v19;
  v24 = v22;
  [v20 updateAgeRangeWith:withCopy completion:v23];

  _Block_object_dispose(buf, 8);
}

void __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke(void *a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  Nanoseconds = _FASignpostGetNanoseconds(a1[6], a1[7]);
  v7 = _FASignpostLogSystem();
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v16 = 67240192;
    LODWORD(v17) = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v8, OS_SIGNPOST_INTERVAL_END, v9, "UpdateAgeRange", " ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v16, 8u);
  }

  v10 = _FASignpostLogSystem();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v13 = Nanoseconds / 1000000000.0;
    v14 = a1[6];
    v15 = [v3 code];
    v16 = 134218496;
    v17 = v14;
    v18 = 2048;
    v19 = v13;
    v20 = 1026;
    v21 = v15;
    _os_log_debug_impl(&dword_1B70B0000, v10, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:UpdateAgeRange  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v16, 0x1Cu);
  }

  if (a1[4])
  {
    v11 = _FALogSystem();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v3;
      _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "Updated age range with error: %@.", &v16, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_24(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_24_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_25_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)globalStateForAltDSID:(id)d completion:(id)completion
{
  completionCopy = completion;
  daemonConnection = self->_daemonConnection;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke;
  v14[3] = &unk_1E7CA46D8;
  v8 = completionCopy;
  v15 = v8;
  dCopy = d;
  v10 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke_26;
  v12[3] = &unk_1E7CA5150;
  v13 = v8;
  v11 = v8;
  [v10 ageRangeGlobalStateForAltDSID:dCopy completion:v12];
}

void __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke_26(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = _FALogSystem();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke_26_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __86__FAAgeRangeController_setGlobalStateForAltDSID_forAltDSID_privacyVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __86__FAAgeRangeController_setGlobalStateForAltDSID_forAltDSID_privacyVersion_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __86__FAAgeRangeController_setGlobalStateForAltDSID_forAltDSID_privacyVersion_completion___block_invoke_28(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __86__FAAgeRangeController_setGlobalStateForAltDSID_forAltDSID_privacyVersion_completion___block_invoke_28_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __99__FAAgeRangeController_saveAgeRangeGlobalState_forAltDSID_cacheDuration_privacyVersion_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__FAAgeRangeController_saveAgeRangeGlobalState_forAltDSID_cacheDuration_privacyVersion_completion___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __99__FAAgeRangeController_saveAgeRangeGlobalState_forAltDSID_cacheDuration_privacyVersion_completion___block_invoke_29(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_23_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)shouldPromptAgeRangeWith:(id)with bundleID:(id)d appName:(id)name privacyVersion:(id)version userAgeOverride:(id)override attestedAtOverrideInDays:(id)days completion:(id)completion
{
  withCopy = with;
  dCopy = d;
  nameCopy = name;
  versionCopy = version;
  overrideCopy = override;
  daysCopy = days;
  completionCopy = completion;
  v20 = _FASignpostLogSystem();
  v21 = _FASignpostCreate(v20);
  v23 = v22;

  v24 = _FASignpostLogSystem();
  v25 = v24;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v21, "RequestAgeRange", " enableTelemetry=YES ", buf, 2u);
  }

  v26 = _FASignpostLogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController shouldPromptAgeRangeWith:bundleID:appName:privacyVersion:userAgeOverride:attestedAtOverrideInDays:completion:];
  }

  *buf = 0;
  v48 = buf;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__2;
  v51 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v52 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke;
  aBlock[3] = &unk_1E7CA5178;
  v44 = buf;
  v45 = v21;
  v46 = v23;
  v28 = completionCopy;
  v43 = v28;
  v29 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_31;
  v40[3] = &unk_1E7CA46D8;
  v31 = v29;
  v41 = v31;
  v32 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v40];
  v33 = _FALogSystem();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *v39 = 0;
    _os_log_impl(&dword_1B70B0000, v33, OS_LOG_TYPE_DEFAULT, "Requesting shouldPromptAgeRange", v39, 2u);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_32;
  v37[3] = &unk_1E7CA51A0;
  v34 = v31;
  v38 = v34;
  [v32 shouldPromptAgeRangeWith:withCopy bundleID:dCopy appName:nameCopy privacyVersion:versionCopy userAgeOverride:overrideCopy attestedAtOverrideInDays:daysCopy completion:v37];

  _Block_object_dispose(buf, 8);
}

void __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _FASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _FASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v19 = 67240192;
    LODWORD(v20) = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v11, OS_SIGNPOST_INTERVAL_END, v12, "RequestAgeRange", " ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v19, 8u);
  }

  v13 = _FASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = a1[6];
    v18 = [v6 code];
    v19 = 134218496;
    v20 = v17;
    v21 = 2048;
    v22 = v16;
    v23 = 1026;
    v24 = v18;
    _os_log_debug_impl(&dword_1B70B0000, v13, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:RequestAgeRange  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v19, 0x1Cu);
  }

  if (a1[4])
  {
    v14 = _FALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 134217984;
      v20 = v5;
      _os_log_impl(&dword_1B70B0000, v14, OS_LOG_TYPE_DEFAULT, "shouldPromptAgeRange with response: %ld.", &v19, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_31_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_32_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1B70B0000, v0, v1, "%@ deallocated.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)postAgeRangeNotificationWith:(id)with lowerAgeBound:(id)bound upperAgeBound:(id)ageBound completion:(id)completion
{
  withCopy = with;
  boundCopy = bound;
  ageBoundCopy = ageBound;
  completionCopy = completion;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__2;
  v30[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v31 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke;
  aBlock[3] = &unk_1E7CA51C8;
  v29 = v30;
  v15 = completionCopy;
  v28 = v15;
  v16 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke_35;
  v25[3] = &unk_1E7CA46D8;
  v18 = v16;
  v26 = v18;
  v19 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v25];
  v20 = _FALogSystem();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v20, OS_LOG_TYPE_DEFAULT, "Posting age range notification...", buf, 2u);
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke_36;
  v22[3] = &unk_1E7CA46D8;
  v21 = v18;
  v23 = v21;
  [v19 postAgeRangeNotification:withCopy lowerAgeBound:boundCopy upperAgeBound:ageBoundCopy completion:v22];

  _Block_object_dispose(v30, 8);
}

void __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  if (*(a1 + 32))
  {
    v6 = _FALogSystem();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_1B70B0000, v6, OS_LOG_TYPE_DEFAULT, "Posted age range notification with error: %@.", &v8, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke_35(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_24_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke_36(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _FALogSystem();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke_36_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchFamilyCircleWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__2;
  v21[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v22 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7CA51F0;
  v20 = v21;
  v6 = handlerCopy;
  v19 = v6;
  v7 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_38;
  v16[3] = &unk_1E7CA46D8;
  v9 = v7;
  v17 = v9;
  v10 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v16];
  v11 = _FALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "Fetching family circle", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_39;
  v13[3] = &unk_1E7CA4928;
  v12 = v9;
  v14 = v12;
  [v10 fetchFamilyCircleWithCompletionHandler:v13];

  _Block_object_dispose(v21, 8);
}

void __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (*(a1 + 32))
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B70B0000, v9, OS_LOG_TYPE_DEFAULT, "fetchFamilyCircle with error: %@.", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_38_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_39(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_39_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchAltDSIDWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__2;
  v21[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v22 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7CA5218;
  v20 = v21;
  v6 = handlerCopy;
  v19 = v6;
  v7 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_41;
  v16[3] = &unk_1E7CA46D8;
  v9 = v7;
  v17 = v9;
  v10 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v16];
  v11 = _FALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "Fetching altDSID for account", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_42;
  v13[3] = &unk_1E7CA5240;
  v12 = v9;
  v14 = v12;
  [v10 fetchAltDSIDWithCompletionHandler:v13];

  _Block_object_dispose(v21, 8);
}

void __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (*(a1 + 32))
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B70B0000, v9, OS_LOG_TYPE_DEFAULT, "fetchAltDSID with error: %@.", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_41_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_42(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_42_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchAgeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__2;
  v21[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v22 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7CA5268;
  v20 = v21;
  v6 = handlerCopy;
  v19 = v6;
  v7 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_44;
  v16[3] = &unk_1E7CA46D8;
  v9 = v7;
  v17 = v9;
  v10 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v16];
  v11 = _FALogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v11, OS_LOG_TYPE_DEFAULT, "Fetching age for account", buf, 2u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_45;
  v13[3] = &unk_1E7CA5290;
  v12 = v9;
  v14 = v12;
  [v10 fetchAgeWithCompletionHandler:v13];

  _Block_object_dispose(v21, 8);
}

void __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (*(a1 + 32))
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B70B0000, v9, OS_LOG_TYPE_DEFAULT, "fetchAge with error: %@.", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_44_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_45(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_45_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchPrivacyVersionForAltDSID:(id)d completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__2;
  v24[4] = __Block_byref_object_dispose__2;
  selfCopy = self;
  v25 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke;
  aBlock[3] = &unk_1E7CA5268;
  v23 = v24;
  v9 = completionCopy;
  v22 = v9;
  v10 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_46;
  v19[3] = &unk_1E7CA46D8;
  v12 = v10;
  v20 = v12;
  v13 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v19];
  v14 = _FALogSystem();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B70B0000, v14, OS_LOG_TYPE_DEFAULT, "Fetching privacy version for account", buf, 2u);
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_47;
  v16[3] = &unk_1E7CA5290;
  v15 = v12;
  v17 = v15;
  [v13 fetchPrivacyVersionForAltDSID:dCopy completion:v16];

  _Block_object_dispose(v24, 8);
}

void __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  if (*(a1 + 32))
  {
    v9 = _FALogSystem();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v6;
      _os_log_impl(&dword_1B70B0000, v9, OS_LOG_TYPE_DEFAULT, "fetchPrivacyVersion with error: %@.", &v11, 0xCu);
    }

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_46_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_47_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestAgeRangeWith:(id)with userAgeOverride:(id)override altDSID:(id)d bundleID:(id)iD appName:(id)name attestedAtOverrideInDays:(id)days completion:(id)completion
{
  v60 = *MEMORY[0x1E69E9840];
  withCopy = with;
  overrideCopy = override;
  dCopy = d;
  iDCopy = iD;
  nameCopy = name;
  daysCopy = days;
  completionCopy = completion;
  v20 = _FASignpostLogSystem();
  v21 = _FASignpostCreate(v20);
  v23 = v22;

  v24 = _FASignpostLogSystem();
  v25 = v24;
  if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v21, "RequestAgeRange", " enableTelemetry=YES ", buf, 2u);
  }

  v26 = _FASignpostLogSystem();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [FAAgeRangeController shouldPromptAgeRangeWith:bundleID:appName:privacyVersion:userAgeOverride:attestedAtOverrideInDays:completion:];
  }

  *buf = 0;
  v49 = buf;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__2;
  v52 = __Block_byref_object_dispose__2;
  selfCopy = self;
  v53 = selfCopy;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke;
  aBlock[3] = &unk_1E7CA52B8;
  v45 = buf;
  v46 = v21;
  v28 = nameCopy;
  v47 = v23;
  v29 = completionCopy;
  v44 = v29;
  v30 = _Block_copy(aBlock);
  daemonConnection = selfCopy->_daemonConnection;
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_49;
  v41[3] = &unk_1E7CA46D8;
  v32 = v30;
  v42 = v32;
  v33 = [(FAAgeRangeDaemonConnection *)daemonConnection remoteObjectProxyWithErrorHandler:v41];
  v34 = _FALogSystem();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *v54 = 138412802;
    v55 = withCopy;
    v56 = 2112;
    v57 = iDCopy;
    v58 = 2112;
    v59 = v28;
    _os_log_impl(&dword_1B70B0000, v34, OS_LOG_TYPE_DEFAULT, "Requesting age range from daemon with parameters: ages=%@, bundleID=%@, appName=%@", v54, 0x20u);
  }

  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_50;
  v39[3] = &unk_1E7CA52E0;
  v35 = v32;
  v40 = v35;
  [v33 requestAgeRangeWith:withCopy userAgeOverride:overrideCopy altDSID:dCopy bundleID:iDCopy appName:v28 attestedAtOverrideInDays:daysCopy completion:v39];

  _Block_object_dispose(buf, 8);
  v36 = *MEMORY[0x1E69E9840];
}

void __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1[5] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = 0;

  Nanoseconds = _FASignpostGetNanoseconds(a1[6], a1[7]);
  v10 = _FASignpostLogSystem();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v19 = 67240192;
    LODWORD(v20) = [v6 code];
    _os_signpost_emit_with_name_impl(&dword_1B70B0000, v11, OS_SIGNPOST_INTERVAL_END, v12, "RequestAgeRange", " ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v19, 8u);
  }

  v13 = _FASignpostLogSystem();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v16 = Nanoseconds / 1000000000.0;
    v17 = a1[6];
    v18 = [v6 code];
    v19 = 134218496;
    v20 = v17;
    v21 = 2048;
    v22 = v16;
    v23 = 1026;
    v24 = v18;
    _os_log_debug_impl(&dword_1B70B0000, v13, OS_LOG_TYPE_DEBUG, "END [%lld] %fs:RequestAgeRange  ErrorCode=%{public,signpost.telemetry:number2,name=ErrorCode}d ", &v19, 0x1Cu);
  }

  if (a1[4])
  {
    v14 = _FALogSystem();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138412290;
      v20 = v5;
      _os_log_impl(&dword_1B70B0000, v14, OS_LOG_TYPE_DEFAULT, "requestAgeRange with response: %@.", &v19, 0xCu);
    }

    (*(a1[4] + 16))();
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _FALogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_49_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

void __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _FALogSystem();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_50_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (void)fetchAgeRangesWith:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1B70B0000, v0, v1, "BEGIN [%lld]: FetchAgeRanges  enableTelemetry=YES ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_17_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Family daemon connection for fetching age ranges returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__FAAgeRangeController_fetchAgeRangesWith_completion___block_invoke_19_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error fetching age ranges: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)deleteAgeRangesWith:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1B70B0000, v0, v1, "BEGIN [%lld]: DeleteAgeRanges  enableTelemetry=YES ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_20_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Family daemon connection for deleting age ranges returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __55__FAAgeRangeController_deleteAgeRangesWith_completion___block_invoke_21_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error deleting age ranges: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)saveAgeRangeWith:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1B70B0000, v0, v1, "BEGIN [%lld]: SaveAgeRange  enableTelemetry=YES ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_22_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Family daemon connection for saving age range returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __52__FAAgeRangeController_saveAgeRangeWith_completion___block_invoke_23_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error saving age range: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)updateAgeRangeWith:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1B70B0000, v0, v1, "BEGIN [%lld]: UpdateAgeRange  enableTelemetry=YES ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_24_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Family daemon connection for updating age range returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__FAAgeRangeController_updateAgeRangeWith_completion___block_invoke_25_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error updating age range: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Family daemon connection for fetching age range settings: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __57__FAAgeRangeController_globalStateForAltDSID_completion___block_invoke_26_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error fetching global age range settings: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __86__FAAgeRangeController_setGlobalStateForAltDSID_forAltDSID_privacyVersion_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Family daemon connection for setting age range settings: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __86__FAAgeRangeController_setGlobalStateForAltDSID_forAltDSID_privacyVersion_completion___block_invoke_28_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error setting age range: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __99__FAAgeRangeController_saveAgeRangeGlobalState_forAltDSID_cacheDuration_privacyVersion_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Family daemon connection for saving age range global state: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)shouldPromptAgeRangeWith:bundleID:appName:privacyVersion:userAgeOverride:attestedAtOverrideInDays:completion:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2_0(&dword_1B70B0000, v0, v1, "BEGIN [%lld]: RequestAgeRange  enableTelemetry=YES ", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_31_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "FamilyCircle daemon connection for shouldPromptAgeRange returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __133__FAAgeRangeController_shouldPromptAgeRangeWith_bundleID_appName_privacyVersion_userAgeOverride_attestedAtOverrideInDays_completion___block_invoke_32_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error requesting shouldPromptAgeRange: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __92__FAAgeRangeController_postAgeRangeNotificationWith_lowerAgeBound_upperAgeBound_completion___block_invoke_36_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error posting age range notification: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_38_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "FamilyCircle daemon connection for fetchFamilyCircle returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__FAAgeRangeController_fetchFamilyCircleWithCompletionHandler___block_invoke_39_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error fetching family circle: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_41_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "FamilyCircle daemon connection for fetchAltDSID returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __58__FAAgeRangeController_fetchAltDSIDWithCompletionHandler___block_invoke_42_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error fetching altDSID: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_44_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "FamilyCircle daemon connection for fetchAge returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __54__FAAgeRangeController_fetchAgeWithCompletionHandler___block_invoke_45_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error fetching age: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_46_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "FamilyCircle daemon connection for fetchPrivacyVersion returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __65__FAAgeRangeController_fetchPrivacyVersionForAltDSID_completion___block_invoke_47_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error fetching privacy version: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_49_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "FamilyCircle daemon connection for requestAgeRange returned an error: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __121__FAAgeRangeController_requestAgeRangeWith_userAgeOverride_altDSID_bundleID_appName_attestedAtOverrideInDays_completion___block_invoke_50_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_1B70B0000, v0, v1, "Error requesting age range from daemon: %@.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end
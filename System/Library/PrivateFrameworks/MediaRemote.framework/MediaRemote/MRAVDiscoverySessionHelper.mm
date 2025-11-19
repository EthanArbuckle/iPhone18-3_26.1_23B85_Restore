@interface MRAVDiscoverySessionHelper
- (MRAVDiscoverySessionHelper)initWithFeatures:(unint64_t)a3;
- (id)createDiscoverySession;
- (void)searchAVOutputDeviceForUID:(id)a3 timeout:(double)a4 identifier:(id)a5 reason:(id)a6 completion:(id)a7;
@end

@implementation MRAVDiscoverySessionHelper

- (MRAVDiscoverySessionHelper)initWithFeatures:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = MRAVDiscoverySessionHelper;
  result = [(MRAVDiscoverySessionHelper *)&v5 init];
  if (result)
  {
    result->_discoverySessionFeatures = a3;
  }

  return result;
}

- (void)searchAVOutputDeviceForUID:(id)a3 timeout:(double)a4 identifier:(id)a5 reason:(id)a6 completion:(id)a7
{
  v68[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a5;
  v41 = a6;
  v14 = a7;
  v15 = [MEMORY[0x1E695DF00] date];
  v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"searchAVOutputDeviceForUID-%@", v41];
  v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"outputDeviceUID=%@", v12];
  v17 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v16, v13];
  v18 = v17;
  if (v40)
  {
    [v17 appendFormat:@" for %@", v40];
  }

  v19 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v18;
    _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v65 = 0x3042000000;
  v66 = __Block_byref_object_copy__7;
  v67 = __Block_byref_object_dispose__7;
  v68[0] = 0;
  v57[0] = MEMORY[0x1E69E9820];
  v57[1] = 3221225472;
  v57[2] = __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke;
  v57[3] = &unk_1E769C7F8;
  p_buf = &buf;
  v20 = v12;
  v58 = v20;
  v21 = v16;
  v59 = v21;
  v39 = v13;
  v60 = v39;
  v22 = v15;
  v61 = v22;
  v23 = v14;
  v62 = v23;
  v24 = MEMORY[0x1A58E3570](v57);
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__17;
  v55 = __Block_byref_object_dispose__18;
  v56 = 0;
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_19;
  v47[3] = &unk_1E769C848;
  v25 = v20;
  v48 = v25;
  v50 = &v51;
  v26 = v24;
  v49 = v26;
  v27 = MEMORY[0x1A58E3570](v47);
  v28 = [(MRAVDiscoverySessionHelper *)self createDiscoverySession];
  [v28 setDiscoveryMode:3];
  v29 = [MEMORY[0x1E696AD88] defaultCenter];
  v30 = *MEMORY[0x1E69587A0];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_3;
  v44[3] = &unk_1E769C870;
  v31 = v27;
  v46 = v31;
  v32 = v28;
  v45 = v32;
  v33 = [v29 addObserverForName:v30 object:v32 queue:0 usingBlock:v44];
  objc_storeWeak((*(&buf + 1) + 40), v33);

  v34 = [MRBlockGuard alloc];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_4;
  v42[3] = &unk_1E769AD80;
  v35 = v26;
  v43 = v35;
  v36 = [(MRBlockGuard *)v34 initWithTimeout:v21 reason:v42 handler:a4];
  v37 = v52[5];
  v52[5] = v36;

  (*(v31 + 2))(v31, v32);
  _Block_object_dispose(&v51, 8);

  _Block_object_dispose(&buf, 8);
  objc_destroyWeak(v68);

  v38 = *MEMORY[0x1E69E9840];
}

void __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [MEMORY[0x1E696AD88] defaultCenter];
  WeakRetained = objc_loadWeakRetained((*(a1[9] + 8) + 40));
  [v7 removeObserver:WeakRetained];

  v9 = a1[4];
  v10 = _MRLogForCategory(0xAuLL);
  v11 = v10;
  if (v5 && !v6)
  {
    v12 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        v14 = a1[5];
        v13 = a1[6];
        v15 = a1[4];
        v16 = [MEMORY[0x1E695DF00] date];
        [v16 timeIntervalSinceDate:a1[7]];
        v38 = 138544386;
        v39 = v14;
        v40 = 2114;
        v41 = v13;
        v42 = 2112;
        v43 = v5;
        v44 = 2114;
        v45 = v15;
        v46 = 2048;
        v47 = v17;
        v18 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v19 = v11;
        v20 = 52;
LABEL_16:
        _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, v18, &v38, v20);
        goto LABEL_17;
      }

      goto LABEL_22;
    }

    if (!v12)
    {
      goto LABEL_22;
    }

    v31 = a1[5];
    v32 = a1[6];
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:a1[7]];
    v38 = 138544130;
    v39 = v31;
    v40 = 2114;
    v41 = v32;
    v42 = 2112;
    v43 = v5;
    v44 = 2048;
    v45 = v33;
    v18 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_15:
    v19 = v11;
    v20 = 42;
    goto LABEL_16;
  }

  if (v6)
  {
    v21 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    if (v9)
    {
      if (v21)
      {
        v23 = a1[5];
        v22 = a1[6];
        v24 = a1[4];
        v16 = [MEMORY[0x1E695DF00] date];
        [v16 timeIntervalSinceDate:a1[7]];
        v38 = 138544386;
        v39 = v23;
        v40 = 2114;
        v41 = v22;
        v42 = 2114;
        v43 = v6;
        v44 = 2114;
        v45 = v24;
        v46 = 2048;
        v47 = v25;
        _os_log_error_impl(&dword_1A2860000, v11, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v38, 0x34u);
LABEL_17:

        goto LABEL_22;
      }
    }

    else if (v21)
    {
      __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_cold_1(a1, v6, v11);
    }

    goto LABEL_22;
  }

  v26 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (!v26)
    {
      goto LABEL_22;
    }

    v34 = a1[5];
    v35 = a1[6];
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:a1[7]];
    v38 = 138543874;
    v39 = v34;
    v40 = 2114;
    v41 = v35;
    v42 = 2048;
    v43 = v36;
    v18 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v19 = v11;
    v20 = 32;
    goto LABEL_16;
  }

  if (v26)
  {
    v28 = a1[5];
    v27 = a1[6];
    v29 = a1[4];
    v16 = [MEMORY[0x1E695DF00] date];
    [v16 timeIntervalSinceDate:a1[7]];
    v38 = 138544130;
    v39 = v28;
    v40 = 2114;
    v41 = v27;
    v42 = 2114;
    v43 = v29;
    v44 = 2048;
    v45 = v30;
    v18 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_15;
  }

LABEL_22:

  (*(a1[8] + 16))();
  v37 = *MEMORY[0x1E69E9840];
}

void __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_19(uint64_t a1, void *a2)
{
  v3 = [a2 availableOutputDevices];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_2;
  v5[3] = &unk_1E769C820;
  v6 = *(a1 + 32);
  v4 = [v3 mr_first:v5];
  if (v4 && [*(*(*(a1 + 48) + 8) + 40) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 ID];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (id)createDiscoverySession
{
  v2 = [objc_alloc(MEMORY[0x1E6958810]) initWithDeviceFeatures:self->_discoverySessionFeatures];

  return v2;
}

void __94__MRAVDiscoverySessionHelper_searchAVOutputDeviceForUID_timeout_identifier_reason_completion___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a1[5];
  v7 = a1[6];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSinceDate:a1[7]];
  v11 = 138544130;
  v12 = v6;
  v13 = 2114;
  v14 = v7;
  v15 = 2114;
  v16 = a2;
  v17 = 2048;
  v18 = v9;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", &v11, 0x2Au);

  v10 = *MEMORY[0x1E69E9840];
}

@end
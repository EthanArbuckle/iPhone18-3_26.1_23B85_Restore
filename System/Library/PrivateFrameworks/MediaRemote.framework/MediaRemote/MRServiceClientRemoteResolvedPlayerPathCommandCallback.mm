@interface MRServiceClientRemoteResolvedPlayerPathCommandCallback
@end

@implementation MRServiceClientRemoteResolvedPlayerPathCommandCallback

void ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke(void *a1, void *a2)
{
  v42 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = a1[4];
  v5 = _MRLogForCategory(0xAuLL);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (!v4)
    {
      if (v6)
      {
        v22 = a1[5];
        v23 = a1[6];
        v10 = [MEMORY[0x1E695DF00] date];
        [v10 timeIntervalSinceDate:a1[7]];
        v32 = 138543874;
        v33 = v22;
        v34 = 2114;
        v35 = v23;
        v36 = 2048;
        v37 = v24;
        v12 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v13 = v5;
        v14 = 32;
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    if (!v6)
    {
      goto LABEL_14;
    }

    v16 = a1[5];
    v15 = a1[6];
    v17 = a1[4];
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:a1[7]];
    v32 = 138544130;
    v33 = v16;
    v34 = 2114;
    v35 = v15;
    v36 = 2114;
    v37 = v17;
    v38 = 2048;
    v39 = v18;
    v12 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_10:
    v13 = v5;
    v14 = 42;
    goto LABEL_13;
  }

  if (!v4)
  {
    if (!v6)
    {
      goto LABEL_14;
    }

    v19 = a1[5];
    v20 = a1[6];
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:a1[7]];
    v32 = 138544130;
    v33 = v19;
    v34 = 2114;
    v35 = v20;
    v36 = 2112;
    v37 = v3;
    v38 = 2048;
    v39 = v21;
    v12 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_10;
  }

  if (v6)
  {
    v8 = a1[5];
    v7 = a1[6];
    v9 = a1[4];
    v10 = [MEMORY[0x1E695DF00] date];
    [v10 timeIntervalSinceDate:a1[7]];
    v32 = 138544386;
    v33 = v8;
    v34 = 2114;
    v35 = v7;
    v36 = 2112;
    v37 = v3;
    v38 = 2114;
    v39 = v9;
    v40 = 2048;
    v41 = v11;
    v12 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
    v13 = v5;
    v14 = 52;
LABEL_13:
    _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, v12, &v32, v14);
  }

LABEL_14:

  (*(a1[8] + 16))(a1[8], v3, v25, v26, v27, v28, v29, v30);
  v31 = *MEMORY[0x1E69E9840];
}

uint64_t ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke_70(uint64_t a1)
{
  if (MSVDeviceOSIsInternalInstall())
  {
    ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke_70_cold_1(a1);
  }

  v2 = *(*(a1 + 48) + 16);

  return v2();
}

void ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke_2(void *a1)
{
  v2 = _MRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ___MRServiceClientOriginCommandCallback_block_invoke_2_cold_1(a1);
  }
}

void ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke_74(void *a1)
{
  v2 = _MRLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    ___MRServiceClientOriginCommandCallback_block_invoke_2_cold_1(a1);
  }

  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    ___MRServiceClientOriginCommandCallback_block_invoke_64_cold_2(a1);
  }
}

void ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke_75(uint64_t a1)
{
  v2 = _MRLogForCategory(2uLL);
  v3 = [*(a1 + 32) hash];
  if ((v3 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = v3;
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v2, OS_SIGNPOST_INTERVAL_END, v4, "SendCommandPlayerMain", &unk_1A2BB0121, buf, 2u);
    }
  }

  v5 = _MRLogForCategory(2uLL);
  v6 = [*(a1 + 32) hash];
  if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v7 = v6;
    if (os_signpost_enabled(v5))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v7, "SendCommandPlayer", &unk_1A2BB0121, buf, 2u);
    }
  }

  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke_76;
  v11[3] = &unk_1E769FA30;
  v10 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v15 = *(a1 + 32);
  v16 = *(a1 + 80);
  (*(v8 + 16))(v8, v9, v10, v11);
}

void ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke_76(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  [*(a1 + 40) invalidate];
  if ([*(a1 + 48) disarm])
  {
    v4 = _MRLogForCategory(2uLL);
    v5 = [*(a1 + 56) hash];
    if ((v5 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v6 = v5;
      if (os_signpost_enabled(v4))
      {
        *v7 = 0;
        _os_signpost_emit_with_name_impl(&dword_1A2860000, v4, OS_SIGNPOST_INTERVAL_END, v6, "SendCommandPlayer", &unk_1A2BB0121, v7, 2u);
      }
    }

    (*(*(a1 + 64) + 16))();
  }
}

void ___MRServiceClientRemoteResolvedPlayerPathCommandCallback_block_invoke_70_cold_1(uint64_t a1)
{
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _MRServiceClientRemoteResolvedPlayerPathCommandCallback(MRMediaRemoteCommand, NSDictionary *__strong, MRPlayerPath *__strong, __strong MRMediaRemoteCommandHandlerCallback, void (^__strong)(NSArray<MRSendCommandResultStatus *> *__strong))_block_invoke"}];
  [v3 handleFailureInFunction:v2 file:@"MRCommandServiceClient.m" lineNumber:238 description:{@"Completion was not called for commandHandler=%@<%@>", *(a1 + 32), *(a1 + 40)}];
}

@end
@interface MRMediaRemoteSendCommandToPlayerWithResult
@end

@implementation MRMediaRemoteSendCommandToPlayerWithResult

void ___MRMediaRemoteSendCommandToPlayerWithResult_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MRCommandResult commandResultWithSendError:3];
  (*(v1 + 16))(v1, v2);
}

void ___MRMediaRemoteSendCommandToPlayerWithResult_block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = ___MRMediaRemoteSendCommandToPlayerWithResult_block_invoke_2;
  v20 = &unk_1E769F1F8;
  v26 = *(a1 + 88);
  v7 = v5;
  v21 = v7;
  v27 = *(a1 + 92);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v25 = *(a1 + 80);
  v11 = *(a1 + 56);
  *&v12 = v10;
  *(&v12 + 1) = v11;
  *&v13 = v8;
  *(&v13 + 1) = v9;
  v22 = v13;
  v23 = v12;
  v24 = *(a1 + 64);
  v14 = MEMORY[0x1A58E3570](&v17);
  if (v6)
  {
    v15 = [MRCommandResult alloc];
    v16 = [(MRCommandResult *)v15 initWithError:v6, v17, v18, v19, v20, v21, v22, v23];
    (v14)[2](v14, v16);
  }

  else
  {
    _MRMediaRemoteSendCommandToPlayer(*(a1 + 92), *(a1 + 32), *(a1 + 48), v7, *(a1 + 72), v14);
  }
}

void ___MRMediaRemoteSendCommandToPlayerWithResult_block_invoke_2(uint64_t a1, void *a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = qos_class_self();
  [v3 setStartQOS:*(a1 + 88)];
  [v3 setEndQOS:v4];
  v5 = [v3 error];
  if (v5)
  {
  }

  else
  {
    v8 = [v3 debugDescription];

    if (v8)
    {
      v9 = [v3 playerPath];
      if (v9)
      {
      }

      else if (!*(a1 + 32))
      {
        v10 = _MRLogForCategory(0xAuLL);
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_27;
        }

        v11 = MRMediaRemoteCommandCreateDescription(*(a1 + 92), *(a1 + 40), 0);
        v12 = [v3 debugDescription];
        v14 = [MEMORY[0x1E695DF00] date];
        [v14 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544130;
        *&buf[4] = v11;
        *&buf[12] = 2114;
        *&buf[14] = 0;
        *&buf[22] = 2112;
        v82 = v12;
        *v83 = 2048;
        *&v83[2] = v68;
        v16 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
LABEL_19:
        _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, v16, buf, 0x2Au);
LABEL_25:

        goto LABEL_26;
      }

      v10 = _MRLogForCategory(0xAuLL);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = MRMediaRemoteCommandCreateDescription(*(a1 + 92), *(a1 + 40), 0);
      v12 = [v3 debugDescription];
      v14 = [v3 playerPath];
      v17 = v14;
      if (!v14)
      {
        v17 = *(a1 + 32);
      }

      v18 = [MEMORY[0x1E695DF00] date];
      [v18 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = 0;
      *&buf[22] = 2112;
      v82 = v12;
      *v83 = 2114;
      *&v83[2] = v17;
      *&v83[10] = 2048;
      *&v83[12] = v19;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", buf, 0x34u);

      goto LABEL_25;
    }
  }

  v6 = [v3 error];

  v7 = [v3 playerPath];
  if (!v6)
  {
    if (v7)
    {
    }

    else if (!*(a1 + 32))
    {
      v10 = _MRLogForCategory(0xAuLL);
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v11 = MRMediaRemoteCommandCreateDescription(*(a1 + 92), *(a1 + 40), 0);
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138543874;
      *&buf[4] = v11;
      *&buf[12] = 2114;
      *&buf[14] = 0;
      *&buf[22] = 2048;
      v82 = v67;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
LABEL_26:

      goto LABEL_27;
    }

    v10 = _MRLogForCategory(0xAuLL);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    v11 = MRMediaRemoteCommandCreateDescription(*(a1 + 92), *(a1 + 40), 0);
    v12 = [v3 playerPath];
    v13 = v12;
    if (!v12)
    {
      v13 = *(a1 + 32);
    }

    v14 = [MEMORY[0x1E695DF00] date];
    [v14 timeIntervalSinceDate:*(a1 + 48)];
    *buf = 138544130;
    *&buf[4] = v11;
    *&buf[12] = 2114;
    *&buf[14] = 0;
    *&buf[22] = 2114;
    v82 = v13;
    *v83 = 2048;
    *&v83[2] = v15;
    v16 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    goto LABEL_19;
  }

  if (v7)
  {

    goto LABEL_12;
  }

  if (*(a1 + 32))
  {
LABEL_12:
    v10 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      ___MRMediaRemoteSendCommandToPlayerWithResult_block_invoke_2_cold_1(a1, v3, v10);
    }

    goto LABEL_27;
  }

  v10 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    ___MRMediaRemoteSendCommandToPlayerWithResult_block_invoke_2_cold_2(a1, v3, v10);
  }

LABEL_27:

  if (*(a1 + 92) == 122)
  {
    v20 = _MRLogForCategory(2uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      [*(a1 + 48) timeIntervalSinceNow];
      *buf = 134217984;
      *&buf[4] = -v21;
      _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "[MRSendCommand] WHAPRO: SetPlaybackQueue took %f seconds", buf, 0xCu);
    }

    v22 = [*(a1 + 40) objectForKeyedSubscript:@"kMRMediaRemoteOptionHomeKitUserIdentifier"];
    if (v22)
    {
      v23 = [v3 error];

      if (!v23)
      {
        v24 = MRGetSharedService();
        MRMediaRemoteServiceSetNearbyDevicesToRemoteControl(v24, v22);
      }
    }
  }

  v25 = [v3 error];
  if ([v25 code] != 5)
  {
    goto LABEL_37;
  }

  v26 = [*(a1 + 56) origin];

  if (v26)
  {
    v25 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v27 = [*(a1 + 56) origin];
    [v25 processPlayerPathInvalidationHandlersWithInvalidOrigin:v27];

LABEL_37:
  }

  v28 = _MRLogForCategory(2uLL);
  v29 = [*(a1 + 40) objectForKeyedSubscript:@"kMRMediaRemoteOptionCommandID"];
  v30 = [v29 hash];

  if (v30 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1A2860000, v28, OS_SIGNPOST_INTERVAL_END, v30, "SendCommandWithResult", &unk_1A2BB0121, buf, 2u);
  }

  v31 = *(a1 + 80);
  if (v31)
  {
    v32 = *(a1 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___MRMediaRemoteSendCommandToPlayerWithResult_block_invoke_27;
    block[3] = &unk_1E769AB28;
    v80 = v31;
    v79 = v3;
    dispatch_async(v32, block);
  }

  v33 = [*(a1 + 40) objectForKeyedSubscript:@"kMRMediaRemoteOptionIsRedirectingCommand"];
  v34 = [v33 BOOLValue];

  if ((v34 & 1) == 0)
  {
    v75 = *(a1 + 92);
    v35 = *(a1 + 72);
    v36 = *(a1 + 56);
    v38 = *(a1 + 32);
    v37 = *(a1 + 40);
    v39 = [v3 playerPath];
    v40 = [v3 error];
    v41 = *(a1 + 48);
    v76 = v35;
    v42 = v37;
    v43 = v36;
    v73 = v39;
    v74 = v40;
    v44 = v41;
    v45 = v38;
    v46 = [v45 origin];
    v72 = [v45 isLocal];

    v77 = v46;
    v71 = [v46 isLocallyHosted];
    v47 = [MEMORY[0x1E696AAE8] mainBundle];
    v48 = [v47 bundleIdentifier];

    v49 = [v42 objectForKeyedSubscript:@"kMRMediaRemoteOptionDirectUserInteraction"];
    v69 = [v49 BOOLValue];

    v50 = [v43 client];
    v51 = [v50 bundleIdentifier];
    if ([v51 length])
    {
      v52 = 1;
    }

    else
    {
      v53 = [v43 client];
      v52 = [v53 processIdentifier] > 0;
    }

    v54 = [v43 client];
    v55 = [v54 hasPlaceholder];

    v56 = [v42 objectForKeyedSubscript:@"kMRMediaRemoteOptionContextID"];
    v57 = [v56 BOOLValue];

    v58 = [v42 objectForKeyedSubscript:@"kMRMediaRemoteOptionRemoteControlInterfaceIdentifier"];
    dispatch_get_global_queue(-2, 0);
    v59 = v70 = v43;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __trackAnalyticsSendCommand_block_invoke;
    v82 = &unk_1E769F2C0;
    *v83 = v44;
    *&v83[8] = v48;
    *&v83[16] = v73;
    v84 = v76;
    v87 = v75;
    v88 = v71;
    v89 = v72;
    v90 = v69;
    v91 = v52;
    v92 = v55;
    v93 = v57;
    v85 = v58;
    v86 = v74;
    v60 = v44;
    v61 = v48;
    v62 = v73;
    v63 = v76;
    v64 = v58;
    v65 = v74;
    [MRDeviceInfoRequest deviceInfoForOrigin:v77 queue:v59 completion:buf];
  }

  v66 = *MEMORY[0x1E69E9840];
}

void ___MRMediaRemoteSendCommandToPlayerWithResult_block_invoke_2_cold_1(uint64_t a1, void *a2, NSObject *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = MRMediaRemoteCommandCreateDescription(*(a1 + 92), *(a1 + 40), 0);
  v7 = [a2 error];
  v8 = [a2 playerPath];
  v9 = v8;
  if (!v8)
  {
    v9 = *(a1 + 32);
  }

  v10 = [MEMORY[0x1E695DF00] date];
  [v10 timeIntervalSinceDate:*(a1 + 48)];
  OUTLINED_FUNCTION_0_17();
  v15 = v11;
  v16 = v9;
  v17 = 2048;
  v18 = v12;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", v14, 0x34u);

  v13 = *MEMORY[0x1E69E9840];
}

void ___MRMediaRemoteSendCommandToPlayerWithResult_block_invoke_2_cold_2(uint64_t a1, void *a2, NSObject *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = MRMediaRemoteCommandCreateDescription(*(a1 + 92), *(a1 + 40), 0);
  v7 = [a2 error];
  v8 = [MEMORY[0x1E695DF00] date];
  [v8 timeIntervalSinceDate:*(a1 + 48)];
  OUTLINED_FUNCTION_0_17();
  v12 = 2048;
  v13 = v9;
  _os_log_error_impl(&dword_1A2860000, a3, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", v11, 0x2Au);

  v10 = *MEMORY[0x1E69E9840];
}

@end
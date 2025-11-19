@interface MRAVLightweightReconnaissanceSession
+ (id)searchEndpointsForOutputDeviceUIDImplementation;
+ (void)setSearchEndpointsForOutputDeviceUIDImplementation:(id)a3;
- (id)_discoverySessionForFeature:(void *)a1;
- (void)searchEndpointsForCompanionWithTimeout:(double)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)searchEndpointsForGroupUID:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)searchEndpointsForLeaderOutputDeviceUID:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)searchEndpointsForMyGroupLeaderWithTimeout:(double)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6;
- (void)searchEndpointsForOutputDeviceUID:(id)a3 timeout:(double)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)searchEndpointsForOutputDeviceUID:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)searchEndpointsForRoutingContextUID:(id)a3 timeout:(double)a4 details:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)searchEndpointsForRoutingContextUID:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)searchEndpointsForString:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)searchEndpointsWithPredicate:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)searchForLogicalOutputDeviceUID:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)searchForOutputDeviceUID:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7;
- (void)searchForOutputDevices:(id)a3 categories:(id)a4 timeout:(double)a5 details:(id)a6 queue:(id)a7 completion:(id)a8;
- (void)searchOutputDeviceUIDs:(id)a3 matchingPredicate:(id)a4 timeout:(double)a5 details:(id)a6 queue:(id)a7 completion:(id)a8;
- (void)searchOutputDevices:(id)a3 reason:(id)a4 timeout:(double)a5 queue:(id)a6 completion:(id)a7;
@end

@implementation MRAVLightweightReconnaissanceSession

+ (id)searchEndpointsForOutputDeviceUIDImplementation
{
  v2 = MEMORY[0x1A58E3570](__searchEndpointsForOutputDeviceUIDImplementation, a2);

  return v2;
}

- (void)searchEndpointsForOutputDeviceUID:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7
{
  v11 = a7;
  v12 = a6;
  v13 = a3;
  v14 = [[MRRequestDetails alloc] initWithName:@"searchEndpointsForOutputDeviceUID" requestID:0 reason:@"API"];
  [(MRAVLightweightReconnaissanceSession *)self searchEndpointsForOutputDeviceUID:v13 timeout:v14 details:v12 queue:v11 completion:a4];
}

- (void)searchEndpointsForOutputDeviceUID:(id)a3 timeout:(double)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v115 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (!v12)
  {
    [MRAVLightweightReconnaissanceSession searchEndpointsForOutputDeviceUID:timeout:details:queue:completion:];
  }

  if (!v13)
  {
    v13 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v16 = [MEMORY[0x1E695DF00] date];
  v17 = [v12 requestID];
  v103 = 0;
  v104 = &v103;
  v105 = 0x3032000000;
  v106 = __Block_byref_object_copy__36;
  v107 = __Block_byref_object_dispose__36;
  v82 = v11;
  v108 = v82;
  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchEndpointsForOutputDeviceUID", v17];
  v19 = v18;
  if (v104[5])
  {
    [(__CFString *)v18 appendFormat:@" for %@", v104[5]];
  }

  v20 = [v12 reason];

  if (v20)
  {
    v21 = [v12 reason];
    [(__CFString *)v19 appendFormat:@" because %@", v21];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v110 = v19;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if (a4 > 60.0)
  {
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"resolving timeout from %lf -> %lf", *&a4, 0x404E000000000000];
    v24 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v110 = @"searchEndpointsForOutputDeviceUID";
      v111 = 2114;
      v112 = v17;
      v113 = 2112;
      v114 = v23;
      _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    a4 = 60.0;
  }

  v96[0] = MEMORY[0x1E69E9820];
  v96[1] = 3221225472;
  v96[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke;
  v96[3] = &unk_1E76A20D0;
  v102 = &v103;
  v97 = @"searchEndpointsForOutputDeviceUID";
  v25 = v17;
  v98 = v25;
  v79 = v16;
  v99 = v79;
  v83 = v13;
  v100 = v83;
  v78 = v14;
  v101 = v78;
  v26 = MEMORY[0x1A58E3570](v96);
  v27 = [MRBlockGuard alloc];
  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"searchEndpointsForOutputDeviceUID", v25];
  v94[0] = MEMORY[0x1E69E9820];
  v94[1] = 3221225472;
  v94[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_2;
  v94[3] = &unk_1E769AD80;
  v29 = v26;
  v95 = v29;
  v30 = [(MRBlockGuard *)v27 initWithTimeout:v28 reason:v94 handler:a4];

  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_3;
  v91[3] = &unk_1E769C360;
  v81 = v30;
  v92 = v81;
  v80 = v29;
  v93 = v80;
  v31 = MEMORY[0x1A58E3570](v91);
  v32 = +[MRDeviceInfoRequest localDeviceInfo];
  v33 = v104[5];
  v34 = +[MRAVOutputDevice localDeviceUID];
  if ([v33 compare:v34 options:1])
  {
    goto LABEL_20;
  }

  v35 = [v32 deviceUID];
  v36 = v35 == 0;

  if (!v36)
  {
    v37 = objc_alloc(MEMORY[0x1E696AEC0]);
    v38 = [v32 deviceUID];
    v34 = [v37 initWithFormat:@"substituting deviceUID <%@> for outputDeviceUID...", v38];

    v39 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v110 = @"searchEndpointsForOutputDeviceUID";
      v111 = 2114;
      v112 = v25;
      v113 = 2112;
      v114 = v34;
      _os_log_impl(&dword_1A2860000, v39, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v40 = [v32 deviceUID];
    v41 = v104[5];
    v104[5] = v40;

LABEL_20:
  }

  if (!v104[5])
  {
    v42 = [v32 deviceUID];
    v43 = v42 == 0;

    if (!v43)
    {
      v44 = objc_alloc(MEMORY[0x1E696AEC0]);
      v45 = [v32 deviceUID];
      v46 = [v44 initWithFormat:@"substituting deviceUID <%@> for outputDeviceUID...", v45];

      v47 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v110 = @"searchEndpointsForOutputDeviceUID";
        v111 = 2114;
        v112 = v25;
        v113 = 2112;
        v114 = v46;
        _os_log_impl(&dword_1A2860000, v47, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v48 = [v32 deviceUID];
      v49 = v104[5];
      v104[5] = v48;
    }
  }

  if (!v104[5])
  {
    v50 = objc_alloc(MEMORY[0x1E696AEC0]);
    v51 = +[MRAVOutputDevice localDeviceUID];
    v52 = [v50 initWithFormat:@"substituting deviceUID <%@> for outputDeviceUID...", v51];

    v53 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v110 = @"searchEndpointsForOutputDeviceUID";
      v111 = 2114;
      v112 = v25;
      v113 = 2112;
      v114 = v52;
      _os_log_impl(&dword_1A2860000, v53, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v54 = +[MRAVOutputDevice localDeviceUID];
    v55 = v104[5];
    v104[5] = v54;

    if (!v104[5])
    {
      v75 = [MEMORY[0x1E696AAA8] currentHandler];
      [v75 handleFailureInMethod:a2 object:self file:@"MRAVLightweightReconnaissanceSession.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"outputDeviceUID"}];
    }
  }

  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_48;
  v87[3] = &unk_1E76A20F8;
  v88 = @"searchEndpointsForOutputDeviceUID";
  v56 = v25;
  v89 = v56;
  v57 = v32;
  v90 = v57;
  v58 = MEMORY[0x1A58E3570](v87);
  if (v58[2]())
  {
    v59 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
    v60 = v104[5];
    v61 = +[MRAVOutputDevice localDeviceUID];
    v62 = [v60 compare:v61 options:1] == 0;

    if (v62)
    {
      v65 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v110 = @"searchEndpointsForOutputDeviceUID";
        v111 = 2114;
        v112 = v56;
        v113 = 2112;
        v114 = @"searching for local, using localEndpoint...";
        goto LABEL_44;
      }

LABEL_45:

      v31[2](v31, v59, 0);
      goto LABEL_50;
    }

    v63 = [v57 deviceUID];
    v64 = [v63 isEqualToString:v104[5]];

    if (v64)
    {
      v65 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v110 = @"searchEndpointsForOutputDeviceUID";
        v111 = 2114;
        v112 = v56;
        v113 = 2112;
        v114 = @"searching for localDeviceUID, using localEndpoint...";
LABEL_44:
        _os_log_impl(&dword_1A2860000, v65, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
        goto LABEL_45;
      }

      goto LABEL_45;
    }

    v66 = [v57 identifier];
    v67 = [v66 isEqualToString:v104[5]];

    if (v67)
    {
      v65 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v110 = @"searchEndpointsForOutputDeviceUID";
        v111 = 2114;
        v112 = v56;
        v113 = 2112;
        v114 = @"searching for localIdentifier, using localEndpoint...";
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 3221225472;
    v86[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_71;
    v86[3] = &unk_1E76A2120;
    v86[4] = &v103;
    v68 = [v59 outputDevicesMatchingPredicate:v86];
    v69 = [v68 count] == 0;

    if (!v69)
    {
      v65 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v110 = @"searchEndpointsForOutputDeviceUID";
        v111 = 2114;
        v112 = v56;
        v113 = 2112;
        v114 = @"found device in localEndpoint, using localEndpoint...";
        goto LABEL_44;
      }

      goto LABEL_45;
    }
  }

  v70 = [objc_opt_class() searchEndpointsForOutputDeviceUIDImplementation];

  if (v70)
  {
    v59 = [objc_opt_class() searchEndpointsForOutputDeviceUIDImplementation];
    (v59)[2](v59, v104[5], v12, v83, v31, a4);
  }

  else
  {
    v59 = MRCreateXPCMessage(0x300000000000030uLL);
    xpc_dictionary_set_double(v59, "timeout", a4);
    MRAddRequestDetailsToXPCMessage(v59, v12);
    MRAddStringToXPCMessage(v59, v104[5], "outputDeviceID");
    v71 = +[MRMediaRemoteServiceClient sharedServiceClient];
    v72 = [v71 service];
    v73 = [v72 mrXPCConnection];
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 3221225472;
    v84[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_79;
    v84[3] = &unk_1E769B338;
    v85 = v31;
    [v73 sendMessage:v59 queue:v83 reply:v84];
  }

LABEL_50:

  _Block_object_dispose(&v103, 8);
  v74 = *MEMORY[0x1E69E9840];
}

void __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(*(*(a1 + 72) + 8) + 40);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v28 = *(*(*(a1 + 72) + 8) + 40);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544130;
        v49 = v26;
        v50 = 2114;
        v51 = v27;
        v52 = 2114;
        v53 = v28;
        v54 = 2048;
        v55 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 32);
        v37 = *(a1 + 40);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138543874;
        v49 = v36;
        v50 = 2114;
        v51 = v37;
        v52 = 2048;
        v53 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v13 = [v5 debugName];
      v20 = *(*(*(a1 + 72) + 8) + 40);
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v49 = v18;
      v50 = 2114;
      v51 = v19;
      v52 = 2112;
      v53 = v13;
      v54 = 2114;
      v55 = v20;
      v56 = 2048;
      v57 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = *(a1 + 32);
      v34 = *(a1 + 40);
      v13 = [v5 debugName];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v49 = v33;
      v50 = 2114;
      v51 = v34;
      v52 = 2112;
      v53 = v13;
      v54 = 2048;
      v55 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

    goto LABEL_20;
  }

  v7 = *(*(*(a1 + 72) + 8) + 40);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(*(*(a1 + 72) + 8) + 40);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v49 = v10;
      v50 = 2114;
      v51 = v11;
      v52 = 2114;
      v53 = v6;
      v54 = 2114;
      v55 = v12;
      v56 = 2048;
      v57 = v14;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_cold_1(a1, v6, v8);
  }

LABEL_21:

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_35;
  block[3] = &unk_1E769AC18;
  v39 = *(a1 + 56);
  v40 = *(a1 + 64);
  v46 = v6;
  v47 = v40;
  v45 = v5;
  v41 = v6;
  v42 = v5;
  dispatch_async(v39, block);

  v43 = *MEMORY[0x1E69E9840];
}

uint64_t __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_35(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

uint64_t __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_48(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = +[MRAVClusterController sharedController];
  v3 = [v2 clusterStatus];

  if (v3 == 2)
  {
    v4 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v15 = 138543874;
      v16 = v5;
      v17 = 2114;
      v18 = v6;
      v19 = 2112;
      v20 = @"Not short-circuiting because cluster secondary";
LABEL_10:
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", &v15, 0x20u);
    }
  }

  else if ([*(a1 + 48) isGroupLeader])
  {
    if (![*(a1 + 48) isAirPlayActive])
    {
      v13 = +[MRUserSettings currentSettings];
      v14 = [v13 supportMultiplayerHost];

      result = v14 ^ 1u;
      goto LABEL_12;
    }

    v4 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v15 = 138543874;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      v19 = 2112;
      v20 = @"Not short-circuiting because secondary";
      goto LABEL_10;
    }
  }

  else
  {
    v4 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v15 = 138543874;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      v19 = 2112;
      v20 = @"Not short-circuiting not group leader";
      goto LABEL_10;
    }
  }

  result = 0;
LABEL_12:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

void __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_79(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MREndpointFromXPCMessage(a2);
  (*(*(a1 + 32) + 16))();
}

- (void)searchEndpointsForString:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7
{
  v43 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (!v11)
  {
    [MRAVLightweightReconnaissanceSession searchEndpointsForString:timeout:reason:queue:completion:];
  }

  v15 = [MEMORY[0x1E695DF00] date];
  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];

  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchEndpointsWithString", v17];
  v19 = v18;
  if (v11)
  {
    [v18 appendFormat:@" for %@", v11];
  }

  if (v12)
  {
    [v19 appendFormat:@" because %@", v12];
  }

  v20 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v19;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if (a4 > 60.0)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"resolving timeout from %lf -> %lf", *&a4, 0x404E000000000000];
    v22 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = @"searchEndpointsWithString";
      *&buf[12] = 2114;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v40 = v21;
      _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    a4 = 60.0;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v40 = __Block_byref_object_copy__36;
  v41 = __Block_byref_object_dispose__36;
  v42 = 0;
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __97__MRAVLightweightReconnaissanceSession_searchEndpointsForString_timeout_reason_queue_completion___block_invoke;
  v36[3] = &unk_1E76A2148;
  v37 = v11;
  v38 = buf;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __97__MRAVLightweightReconnaissanceSession_searchEndpointsForString_timeout_reason_queue_completion___block_invoke_2;
  v29[3] = &unk_1E76A2170;
  v23 = v37;
  v30 = v23;
  v31 = @"searchEndpointsWithString";
  v24 = v17;
  v32 = v24;
  v25 = v15;
  v33 = v25;
  v26 = v14;
  v34 = v26;
  v35 = buf;
  [(MRAVLightweightReconnaissanceSession *)self searchEndpointsWithPredicate:v36 timeout:v12 reason:v13 queue:v29 completion:a4];

  _Block_object_dispose(buf, 8);
  v27 = *MEMORY[0x1E69E9840];
}

uint64_t __97__MRAVLightweightReconnaissanceSession_searchEndpointsForString_timeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v75 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  if (v5)
  {
    goto LABEL_4;
  }

  v6 = [v3 localizedName];
  v7 = [v6 isEqualToString:*(a1 + 32)];

  if (v7 || ([v3 debugName], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isEqualToString:", *(a1 + 32)), v8, v9))
  {
LABEL_4:
    v10 = [v3 groupLeader];
    v11 = *(*(a1 + 40) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

LABEL_5:
    v13 = 1;
  }

  else
  {
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v16 = [v3 outputDevices];
    v17 = [v16 countByEnumeratingWithState:&v68 objects:v74 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v69;
      v56 = *v69;
      while (2)
      {
        v20 = 0;
        do
        {
          if (*v69 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v57 = v20;
          v21 = *(*(&v68 + 1) + 8 * v20);
          v22 = [v21 uid];
          v23 = [v22 isEqualToString:*(a1 + 32)];

          if (v23)
          {
            goto LABEL_40;
          }

          v24 = [v21 groupID];
          v25 = [v24 isEqualToString:*(a1 + 32)];

          if (v25)
          {
            goto LABEL_40;
          }

          v26 = [v21 name];
          v27 = [v26 isEqualToString:*(a1 + 32)];

          if (v27 || ([v21 bluetoothID], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "isEqualToString:", *(a1 + 32)), v28, v29))
          {
LABEL_40:
            v53 = *(*(a1 + 40) + 8);
            v54 = v21;
            obj = *(v53 + 40);
            *(v53 + 40) = v54;
LABEL_41:

            goto LABEL_5;
          }

          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          obj = [v21 clusterComposition];
          v30 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v65;
            v58 = v16;
            v55 = v18;
            while (2)
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v65 != v32)
                {
                  objc_enumerationMutation(obj);
                }

                v34 = *(*(&v64 + 1) + 8 * i);
                v35 = [MRAVDistantOutputDevice alloc];
                v36 = [v34 descriptor];
                v37 = [(MRAVDistantOutputDevice *)v35 initWithDescriptor:v36];

                v38 = [v34 uid];
                v39 = [v38 isEqualToString:*(a1 + 32)];

                if (v39 & 1) != 0 || ([v34 name], v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_msgSend(v40, "isEqualToString:", *(a1 + 32)), v40, (v41))
                {
                  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v37);

                  v16 = v58;
                  goto LABEL_41;
                }
              }

              v31 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
              v16 = v58;
              v18 = v55;
              if (v31)
              {
                continue;
              }

              break;
            }
          }

          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          obj = [v21 roomOutputDevices];
          v42 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
          if (v42)
          {
            v43 = v42;
            v44 = *v61;
            while (2)
            {
              for (j = 0; j != v43; ++j)
              {
                if (*v61 != v44)
                {
                  objc_enumerationMutation(obj);
                }

                v46 = *(*(&v60 + 1) + 8 * j);
                v47 = [v46 uid];
                v48 = [v47 isEqualToString:*(a1 + 32)];

                if (v48)
                {
                  goto LABEL_39;
                }

                v49 = [v46 name];
                v50 = [v49 isEqualToString:*(a1 + 32)];

                if ((v50 & 1) == 0)
                {
                  v51 = [v46 roomID];
                  v52 = [v51 isEqualToString:*(a1 + 32)];

                  if ((v52 & 1) == 0)
                  {
                    continue;
                  }
                }

LABEL_39:
                objc_storeStrong((*(*(a1 + 40) + 8) + 40), v46);
                goto LABEL_41;
              }

              v43 = [obj countByEnumeratingWithState:&v60 objects:v72 count:16];
              if (v43)
              {
                continue;
              }

              break;
            }
          }

          v19 = v56;
          v20 = v57 + 1;
        }

        while (v57 + 1 != v18);
        v18 = [v16 countByEnumeratingWithState:&v68 objects:v74 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

void __97__MRAVLightweightReconnaissanceSession_searchEndpointsForString_timeout_reason_queue_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = a1[4];
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = a1[5];
        v26 = a1[6];
        v28 = a1[4];
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:a1[7]];
        v41 = 138544130;
        v42 = v27;
        v43 = 2114;
        v44 = v26;
        v45 = 2114;
        v46 = v28;
        v47 = 2048;
        v48 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = a1[5];
        v37 = a1[6];
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:a1[7]];
        v41 = 138543874;
        v42 = v36;
        v43 = 2114;
        v44 = v37;
        v45 = 2048;
        v46 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, &v41, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = a1[5];
      v19 = a1[6];
      v13 = [v5 debugName];
      v20 = a1[4];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:a1[7]];
      v41 = 138544386;
      v42 = v18;
      v43 = 2114;
      v44 = v19;
      v45 = 2112;
      v46 = v13;
      v47 = 2114;
      v48 = v20;
      v49 = 2048;
      v50 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = a1[5];
      v34 = a1[6];
      v13 = [v5 debugName];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:a1[7]];
      v41 = 138544130;
      v42 = v33;
      v43 = 2114;
      v44 = v34;
      v45 = 2112;
      v46 = v13;
      v47 = 2048;
      v48 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, &v41, v25);

    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v11 = a1[5];
      v10 = a1[6];
      v12 = a1[4];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:a1[7]];
      v41 = 138544386;
      v42 = v11;
      v43 = 2114;
      v44 = v10;
      v45 = 2114;
      v46 = v6;
      v47 = 2114;
      v48 = v12;
      v49 = 2048;
      v50 = v14;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v41, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v8);
  }

LABEL_21:

  v39 = *(*(a1[9] + 8) + 40);
  (*(a1[8] + 16))();

  v40 = *MEMORY[0x1E69E9840];
}

- (void)searchEndpointsWithPredicate:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (!v14)
  {
    v14 = MEMORY[0x1E69E96A0];
    v16 = MEMORY[0x1E69E96A0];
  }

  if (a4 > 60.0)
  {
    a4 = 60.0;
  }

  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy__36;
  v45 = __Block_byref_object_dispose__36;
  v46 = 0;
  v17 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  [v17 setDiscoveryMode:3];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke;
  v36[3] = &unk_1E76A21C0;
  v18 = v14;
  v37 = v18;
  v19 = v15;
  v39 = v19;
  v20 = v17;
  v38 = v20;
  v40 = &v41;
  v21 = MEMORY[0x1A58E3570](v36);
  v22 = [MRBlockGuard alloc];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke_3;
  v34[3] = &unk_1E769AD80;
  v23 = v21;
  v35 = v23;
  v24 = [(MRBlockGuard *)v22 initWithTimeout:v13 reason:v34 handler:a4];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke_4;
  v30[3] = &unk_1E76A21E8;
  v25 = v12;
  v32 = v25;
  v26 = v24;
  v31 = v26;
  v27 = v23;
  v33 = v27;
  v28 = [v20 addEndpointsChangedCallback:v30];
  v29 = v42[5];
  v42[5] = v28;

  _Block_object_dispose(&v41, 8);
}

void __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke_2;
  block[3] = &unk_1E76A2198;
  v16 = *(a1 + 48);
  v13 = v5;
  v14 = v6;
  v8 = *(a1 + 40);
  v9 = *(a1 + 56);
  v15 = v8;
  v17 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v7, block);
}

uint64_t __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  result = [*(a1 + 48) setDiscoveryMode:0];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = *(a1 + 48);

    return [v4 removeEndpointsChangedCallback:?];
  }

  return result;
}

uint64_t __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __101__MRAVLightweightReconnaissanceSession_searchEndpointsWithPredicate_timeout_reason_queue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ((*(*(a1 + 40) + 16))(*(a1 + 40)))
        {
          if ([*(a1 + 32) disarm])
          {
            (*(*(a1 + 48) + 16))();
          }

          goto LABEL_12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v9 = *MEMORY[0x1E69E9840];
}

- (void)searchEndpointsForGroupUID:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7
{
  v103 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v60 = a5;
  v13 = a6;
  v14 = a7;
  if (!v13)
  {
    v13 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v91 = 0;
  v92 = &v91;
  v93 = 0x3032000000;
  v94 = __Block_byref_object_copy__36;
  v95 = __Block_byref_object_dispose__36;
  v59 = v12;
  v96 = v59;
  v85 = 0;
  v86 = &v85;
  v87 = 0x3032000000;
  v88 = __Block_byref_object_copy__36;
  v89 = __Block_byref_object_dispose__36;
  v90 = 0;
  v79 = 0;
  v80 = &v79;
  v81 = 0x3032000000;
  v82 = __Block_byref_object_copy__36;
  v83 = __Block_byref_object_dispose__36;
  v84 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  [v80[5] setDiscoveryMode:2];
  v16 = [MEMORY[0x1E695DF00] date];
  v17 = [MEMORY[0x1E696AFB0] UUID];
  v18 = [v17 UUIDString];

  v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchEndpointsForGroupUID", v18];
  v20 = v19;
  if (v92[5])
  {
    [(__CFString *)v19 appendFormat:@" for %@", v92[5]];
  }

  if (v60)
  {
    [(__CFString *)v20 appendFormat:@" because %@", v60];
  }

  v21 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v98 = v20;
    _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v69[0] = MEMORY[0x1E69E9820];
  v69[1] = 3221225472;
  v69[2] = __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke;
  v69[3] = &unk_1E76A2238;
  v76 = &v91;
  v70 = @"searchEndpointsForGroupUID";
  v22 = v18;
  v71 = v22;
  v23 = v16;
  v72 = v23;
  v57 = v13;
  v73 = v57;
  v58 = v14;
  v74 = self;
  v75 = v58;
  v77 = &v79;
  v78 = &v85;
  v24 = MEMORY[0x1A58E3570](v69);
  v25 = [MRBlockGuard alloc];
  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"searchEndpointsForGroupUID", v22];
  v67[0] = MEMORY[0x1E69E9820];
  v67[1] = 3221225472;
  v67[2] = __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke_2;
  v67[3] = &unk_1E769AD80;
  v27 = v24;
  v68 = v27;
  v28 = [(MRBlockGuard *)v25 initWithTimeout:v26 reason:v67 handler:a4];

  v29 = +[MROrigin localOrigin];
  v30 = [MRDeviceInfoRequest deviceInfoForOrigin:v29];

  if (!v92[5])
  {
    v31 = [v30 groupUID];
    v32 = v31 == 0;

    if (!v32)
    {
      v33 = objc_alloc(MEMORY[0x1E696AEC0]);
      v34 = [v30 groupUID];
      v35 = [v33 initWithFormat:@"substituting groupID <%@> for nil...", v34];

      v36 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v98 = @"searchEndpointsForGroupUID";
        v99 = 2114;
        v100 = v22;
        v101 = 2112;
        v102 = v35;
        _os_log_impl(&dword_1A2860000, v36, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v37 = [v30 groupUID];
      v38 = v92[5];
      v92[5] = v37;
    }
  }

  v39 = [v30 groupUID];
  if (v39)
  {
    v40 = v92[5];
    v41 = +[MRAVOutputDevice localDeviceUID];
    LODWORD(v40) = [v40 compare:v41 options:1] == 0;

    if (v40)
    {
      v42 = objc_alloc(MEMORY[0x1E696AEC0]);
      v43 = [v30 groupUID];
      v44 = +[MRAVOutputDevice localDeviceUID];
      v45 = [v42 initWithFormat:@"substituting group <%@> for %@...", v43, v44];

      v46 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v98 = @"searchEndpointsForGroupUID";
        v99 = 2114;
        v100 = v22;
        v101 = 2112;
        v102 = v45;
        _os_log_impl(&dword_1A2860000, v46, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v47 = [v30 groupUID];
      v48 = v92[5];
      v92[5] = v47;
    }
  }

  v49 = self;
  objc_sync_enter(v49);
  v50 = v80[5];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke_102;
  v61[3] = &unk_1E76A2260;
  v66 = &v91;
  v51 = v28;
  v62 = v51;
  v63 = @"searchEndpointsForGroupUID";
  v52 = v22;
  v64 = v52;
  v53 = v27;
  v65 = v53;
  v54 = [v50 addEndpointsChangedCallback:v61];
  v55 = v86[5];
  v86[5] = v54;

  objc_sync_exit(v49);
  _Block_object_dispose(&v79, 8);

  _Block_object_dispose(&v85, 8);
  _Block_object_dispose(&v91, 8);

  v56 = *MEMORY[0x1E69E9840];
}

void __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(*(*(a1 + 80) + 8) + 40);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v28 = *(*(*(a1 + 80) + 8) + 40);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544130;
        v51 = v26;
        v52 = 2114;
        v53 = v27;
        v54 = 2114;
        v55 = v28;
        v56 = 2048;
        v57 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 32);
        v37 = *(a1 + 40);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138543874;
        v51 = v36;
        v52 = 2114;
        v53 = v37;
        v54 = 2048;
        v55 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 32);
      v19 = *(a1 + 40);
      v13 = [v5 debugName];
      v20 = *(*(*(a1 + 80) + 8) + 40);
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v51 = v18;
      v52 = 2114;
      v53 = v19;
      v54 = 2112;
      v55 = v13;
      v56 = 2114;
      v57 = v20;
      v58 = 2048;
      v59 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = *(a1 + 32);
      v34 = *(a1 + 40);
      v13 = [v5 debugName];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v51 = v33;
      v52 = 2114;
      v53 = v34;
      v54 = 2112;
      v55 = v13;
      v56 = 2048;
      v57 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

    goto LABEL_20;
  }

  v7 = *(*(*(a1 + 80) + 8) + 40);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = *(*(*(a1 + 80) + 8) + 40);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v51 = v10;
      v52 = 2114;
      v53 = v11;
      v54 = 2114;
      v55 = v6;
      v56 = 2114;
      v57 = v12;
      v58 = 2048;
      v59 = v14;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_cold_1(a1, v6, v8);
  }

LABEL_21:

  v39 = *(a1 + 56);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke_94;
  v44[3] = &unk_1E76A2210;
  v40 = *(a1 + 72);
  v45 = v5;
  v46 = v6;
  v47 = *(a1 + 64);
  v48 = v40;
  v49 = *(a1 + 88);
  v41 = v6;
  v42 = v5;
  dispatch_async(v39, v44);

  v43 = *MEMORY[0x1E69E9840];
}

void __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke_94(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  obj = *(a1 + 48);
  objc_sync_enter(obj);
  [*(*(*(a1 + 64) + 8) + 40) setDiscoveryMode:0];
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    [*(*(*(a1 + 64) + 8) + 40) removeEndpointsChangedCallback:?];
  }

  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_sync_exit(obj);
}

uint64_t __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __99__MRAVLightweightReconnaissanceSession_searchEndpointsForGroupUID_timeout_reason_queue_completion___block_invoke_102(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v16 + 1) + 8 * i) outputDevices];
        v9 = [v8 firstObject];
        v10 = [v9 groupID];
        v11 = [v10 isEqualToString:*(*(*(a1 + 64) + 8) + 40)];

        if (v11)
        {
          if ([*(a1 + 32) disarm])
          {
            v12 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              v13 = *(a1 + 40);
              v14 = *(a1 + 48);
              *buf = 138543874;
              v21 = v13;
              v22 = 2114;
              v23 = v14;
              v24 = 2112;
              v25 = @"found device in discovery";
              _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }

            (*(*(a1 + 56) + 16))();
          }

          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)searchEndpointsForCompanionWithTimeout:(double)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6
{
  v60 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v11)
  {
    v11 = MEMORY[0x1E69E96A0];
    v13 = MEMORY[0x1E69E96A0];
  }

  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__36;
  v56 = __Block_byref_object_dispose__36;
  v57 = 0;
  v14 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  [v14 setDiscoveryMode:2];
  v15 = [MEMORY[0x1E695DF00] date];
  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];

  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchEndpointsForCompanion", v17];
  v19 = v18;
  if (v10)
  {
    [v18 appendFormat:@" because %@", v10];
  }

  v20 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v59 = v19;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke;
  v44[3] = &unk_1E76A2288;
  v45 = @"searchEndpointsForCompanion";
  v21 = v17;
  v46 = v21;
  v22 = v15;
  v47 = v22;
  v23 = v11;
  v48 = v23;
  v24 = v12;
  v50 = v24;
  v25 = v14;
  v49 = v25;
  v51 = &v52;
  v26 = MEMORY[0x1A58E3570](v44);
  v27 = [MRBlockGuard alloc];
  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"searchEndpointsForCompanion", v21];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke_2;
  v42[3] = &unk_1E769AD80;
  v29 = v26;
  v43 = v29;
  v30 = [(MRBlockGuard *)v27 initWithTimeout:v28 reason:v42 handler:a3];

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke_3;
  v37[3] = &unk_1E76A22B0;
  v31 = v30;
  v38 = v31;
  v39 = @"searchEndpointsForCompanion";
  v32 = v21;
  v40 = v32;
  v33 = v29;
  v41 = v33;
  v34 = [v25 addEndpointsChangedCallback:v37];
  v35 = v53[5];
  v53[5] = v34;

  _Block_object_dispose(&v52, 8);
  v36 = *MEMORY[0x1E69E9840];
}

void __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = [v5 debugName];

    v7 = _MRLogForCategory(0xAuLL);
    v9 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = [v5 debugName];
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v31 = v10;
      v32 = 2114;
      v33 = v11;
      v34 = 2112;
      v35 = v12;
      v36 = 2048;
      v37 = v14;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
    }

    else
    {
      if (!v9)
      {
        goto LABEL_10;
      }

      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      v12 = [MEMORY[0x1E695DF00] date];
      [v12 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138543874;
      v31 = v15;
      v32 = 2114;
      v33 = v16;
      v34 = 2048;
      v35 = v17;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }

    goto LABEL_10;
  }

  v7 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_cold_1(a1, v6, v7);
  }

LABEL_10:

  v18 = *(a1 + 56);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke_109;
  block[3] = &unk_1E76A2198;
  v28 = *(a1 + 72);
  v25 = v5;
  v26 = v6;
  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  v27 = v19;
  v29 = v20;
  v21 = v6;
  v22 = v5;
  dispatch_async(v18, block);

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke_109(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  result = [*(a1 + 48) setDiscoveryMode:0];
  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v4 = *(a1 + 48);

    return [v4 removeEndpointsChangedCallback:?];
  }

  return result;
}

uint64_t __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __103__MRAVLightweightReconnaissanceSession_searchEndpointsForCompanionWithTimeout_reason_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v12 + 1) + 8 * i) isCompanionEndpoint])
        {
          if ([*(a1 + 32) disarm])
          {
            v8 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = *(a1 + 40);
              v10 = *(a1 + 48);
              *buf = 138543874;
              v17 = v9;
              v18 = 2114;
              v19 = v10;
              v20 = 2112;
              v21 = @"found device in discovery";
              _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }

            (*(*(a1 + 56) + 16))();
          }

          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)searchEndpointsForLeaderOutputDeviceUID:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7
{
  v75 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v42 = a5;
  v13 = a6;
  v14 = a7;
  if (!v13)
  {
    v13 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v67 = 0;
  v68 = &v67;
  v69 = 0x3032000000;
  v70 = __Block_byref_object_copy__36;
  v71 = __Block_byref_object_dispose__36;
  v72 = 0;
  v61 = 0;
  v62 = &v61;
  v63 = 0x3032000000;
  v64 = __Block_byref_object_copy__36;
  v65 = __Block_byref_object_dispose__36;
  v66 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  [v62[5] setDiscoveryMode:3];
  v16 = [MEMORY[0x1E695DF00] date];
  v17 = [MEMORY[0x1E696AFB0] UUID];
  v18 = [v17 UUIDString];

  v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchEndpointsForLeaderOutputDeviceUID", v18];
  v20 = v19;
  if (v12)
  {
    [v19 appendFormat:@" for %@", v12];
  }

  if (v42)
  {
    [v20 appendFormat:@" because %@", v42];
  }

  v21 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v74 = v20;
    _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke;
  v51[3] = &unk_1E76A22D8;
  v22 = v12;
  v52 = v22;
  v53 = @"searchEndpointsForLeaderOutputDeviceUID";
  v23 = v18;
  v54 = v23;
  v41 = v16;
  v55 = v41;
  v39 = v13;
  v56 = v39;
  v40 = v14;
  v57 = self;
  v58 = v40;
  v59 = &v61;
  v60 = &v67;
  v24 = MEMORY[0x1A58E3570](v51);
  v25 = [MRBlockGuard alloc];
  v26 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"searchEndpointsForLeaderOutputDeviceUID", v23];
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_2;
  v49[3] = &unk_1E769AD80;
  v27 = v24;
  v50 = v27;
  v28 = [(MRBlockGuard *)v25 initWithTimeout:v26 reason:v49 handler:a4];

  v29 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
  if (!v12)
  {
    (*(v27 + 2))(v27, v29, 0);
  }

  v30 = self;
  objc_sync_enter(v30);
  v31 = v62[5];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_3;
  v43[3] = &unk_1E769FA30;
  v32 = v22;
  v44 = v32;
  v33 = v28;
  v45 = v33;
  v46 = @"searchEndpointsForLeaderOutputDeviceUID";
  v34 = v23;
  v47 = v34;
  v35 = v27;
  v48 = v35;
  v36 = [v31 addEndpointsChangedCallback:v43];
  v37 = v68[5];
  v68[5] = v36;

  objc_sync_exit(v30);
  _Block_object_dispose(&v61, 8);

  _Block_object_dispose(&v67, 8);
  v38 = *MEMORY[0x1E69E9840];
}

void __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v60 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (!v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = *(a1 + 40);
        v26 = *(a1 + 48);
        v28 = *(a1 + 32);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v51 = v27;
        v52 = 2114;
        v53 = v26;
        v54 = 2114;
        v55 = v28;
        v56 = 2048;
        v57 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 40);
        v37 = *(a1 + 48);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v51 = v36;
        v52 = 2114;
        v53 = v37;
        v54 = 2048;
        v55 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
      goto LABEL_20;
    }

    if (v16)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 40);
      v19 = *(a1 + 48);
      v13 = [v5 debugName];
      v20 = *(a1 + 32);
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v51 = v18;
      v52 = 2114;
      v53 = v19;
      v54 = 2112;
      v55 = v13;
      v56 = 2114;
      v57 = v20;
      v58 = 2048;
      v59 = v22;
      v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v24 = v8;
      v25 = 52;
    }

    else
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      v33 = *(a1 + 40);
      v34 = *(a1 + 48);
      v13 = [v5 debugName];
      v21 = [MEMORY[0x1E695DF00] date];
      [v21 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544130;
      v51 = v33;
      v52 = 2114;
      v53 = v34;
      v54 = 2112;
      v55 = v13;
      v56 = 2048;
      v57 = v35;
      v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
      v24 = v8;
      v25 = 42;
    }

    _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (v9)
    {
      v11 = *(a1 + 40);
      v10 = *(a1 + 48);
      v12 = *(a1 + 32);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138544386;
      v51 = v11;
      v52 = 2114;
      v53 = v10;
      v54 = 2114;
      v55 = v6;
      v56 = 2114;
      v57 = v12;
      v58 = 2048;
      v59 = v14;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:
    }
  }

  else if (v9)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v8);
  }

LABEL_21:

  v39 = *(a1 + 64);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_113;
  v44[3] = &unk_1E76A2210;
  v40 = *(a1 + 80);
  v45 = v5;
  v46 = v6;
  v47 = *(a1 + 72);
  v48 = v40;
  v49 = *(a1 + 88);
  v41 = v6;
  v42 = v5;
  dispatch_async(v39, v44);

  v43 = *MEMORY[0x1E69E9840];
}

void __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_113(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    (*(v2 + 16))(v2, *(a1 + 32), *(a1 + 40));
  }

  obj = *(a1 + 48);
  objc_sync_enter(obj);
  [*(*(*(a1 + 64) + 8) + 40) setDiscoveryMode:0];
  if (*(*(*(a1 + 72) + 8) + 40))
  {
    [*(*(*(a1 + 64) + 8) + 40) removeEndpointsChangedCallback:?];
  }

  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;

  objc_sync_exit(obj);
}

uint64_t __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v26;
    *&v5 = 138543874;
    v23 = v5;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = [v9 designatedGroupLeader];
        v11 = [v10 supportsMultiplayer];

        if (v11)
        {
          v12 = [v9 outputDevices];
          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_4;
          v24[3] = &unk_1E769CDC0;
          v24[4] = v9;
          v13 = [v12 msv_firstWhere:v24];

          if ([v13 containsUID:*(a1 + 32)] && objc_msgSend(*(a1 + 40), "disarm"))
          {
            v14 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = *(a1 + 48);
              v16 = *(a1 + 56);
              *buf = v23;
              v30 = v15;
              v31 = 2114;
              v32 = v16;
              v33 = 2112;
              v34 = @"found multiplayer device in discovery";
              _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }

            (*(*(a1 + 64) + 16))();
          }
        }

        else
        {
          v17 = [v9 designatedGroupLeader];
          v18 = [v17 containsUID:*(a1 + 32)];

          if (v18)
          {
            if ([*(a1 + 40) disarm])
            {
              v19 = _MRLogForCategory(0xAuLL);
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v20 = *(a1 + 48);
                v21 = *(a1 + 56);
                *buf = v23;
                v30 = v20;
                v31 = 2114;
                v32 = v21;
                v33 = 2112;
                v34 = @"found device in discovery";
                _os_log_impl(&dword_1A2860000, v19, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
              }

              (*(*(a1 + 64) + 16))();
            }

            goto LABEL_21;
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v25 objects:v35 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __112__MRAVLightweightReconnaissanceSession_searchEndpointsForLeaderOutputDeviceUID_timeout_reason_queue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 designatedGroupLeader];
  v5 = [v4 uid];
  v6 = [v3 containsUID:v5];

  return v6;
}

- (void)searchForOutputDeviceUID:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7
{
  v96 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v52 = a5;
  v13 = a6;
  v14 = a7;
  if (!v13)
  {
    v13 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v84 = 0;
  v85 = &v84;
  v86 = 0x3032000000;
  v87 = __Block_byref_object_copy__36;
  v88 = __Block_byref_object_dispose__36;
  v51 = v12;
  v89 = v51;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = __Block_byref_object_copy__36;
  v82 = __Block_byref_object_dispose__36;
  v83 = 0;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__36;
  v76 = __Block_byref_object_dispose__36;
  v77 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  v16 = [MEMORY[0x1E695DF00] date];
  v17 = [MEMORY[0x1E696AFB0] UUID];
  v18 = [v17 UUIDString];

  v19 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchForOutputDeviceUID", v18];
  v20 = v19;
  if (v85[5])
  {
    [(__CFString *)v19 appendFormat:@" for %@", v85[5]];
  }

  if (v52)
  {
    [(__CFString *)v20 appendFormat:@" because %@", v52];
  }

  v21 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v91 = v20;
    _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if (a4 > 60.0)
  {
    v22 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"resolving timeout from %lf -> %lf", *&a4, 0x404E000000000000];
    v23 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v91 = @"searchForOutputDeviceUID";
      v92 = 2114;
      v93 = v18;
      v94 = 2112;
      v95 = v22;
      _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    a4 = 60.0;
  }

  v62[0] = MEMORY[0x1E69E9820];
  v62[1] = 3221225472;
  v62[2] = __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke;
  v62[3] = &unk_1E76A2300;
  v69 = &v84;
  v63 = @"searchForOutputDeviceUID";
  v24 = v18;
  v64 = v24;
  v25 = v16;
  v65 = v25;
  v66 = self;
  v70 = &v72;
  v71 = &v78;
  v26 = v14;
  v68 = v26;
  v50 = v13;
  v67 = v50;
  v27 = MEMORY[0x1A58E3570](v62);
  v28 = [MRBlockGuard alloc];
  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"searchForOutputDeviceUID", v24];
  v60[0] = MEMORY[0x1E69E9820];
  v60[1] = 3221225472;
  v60[2] = __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_2;
  v60[3] = &unk_1E769AD80;
  v30 = v27;
  v61 = v30;
  v31 = [(MRBlockGuard *)v28 initWithTimeout:v29 reason:v60 handler:a4];

  v32 = [MRAVLocalEndpoint sharedLocalEndpointForRoutingContextWithUID:0];
  v33 = +[MROrigin localOrigin];
  v34 = [MRDeviceInfoRequest deviceInfoForOrigin:v33];

  if (!v85[5])
  {
    v35 = [v34 deviceUID];
    v36 = v35 == 0;

    if (!v36)
    {
      v37 = objc_alloc(MEMORY[0x1E696AEC0]);
      v38 = [v34 deviceUID];
      v39 = [v37 initWithFormat:@"substituting deviceUID <%@> for outputDeviceUID...", v38];

      v40 = _MRLogForCategory(0xAuLL);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543874;
        v91 = @"searchForOutputDeviceUID";
        v92 = 2114;
        v93 = v24;
        v94 = 2112;
        v95 = v39;
        _os_log_impl(&dword_1A2860000, v40, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      v41 = [v34 deviceUID];
      v42 = v85[5];
      v85[5] = v41;
    }
  }

  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_122;
  v59[3] = &unk_1E76A2120;
  v59[4] = &v84;
  v43 = [v32 outputDevicesMatchingPredicate:v59];
  if (![v43 count])
  {
    v45 = self;
    objc_sync_enter(v45);
    [v73[5] setDiscoveryMode:3];
    v46 = v73[5];
    v53[0] = MEMORY[0x1E69E9820];
    v53[1] = 3221225472;
    v53[2] = __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_126;
    v53[3] = &unk_1E76A2260;
    v58 = &v84;
    v54 = v31;
    v55 = @"searchForOutputDeviceUID";
    v56 = v24;
    v57 = v30;
    v47 = [v46 addOutputDevicesChangedCallback:v53];
    v48 = v79[5];
    v79[5] = v47;

    objc_sync_exit(v45);
LABEL_24:

    goto LABEL_25;
  }

  if ([(MSVBlockGuard *)v31 disarm])
  {
    v44 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v91 = @"searchForOutputDeviceUID";
      v92 = 2114;
      v93 = v24;
      v94 = 2112;
      v95 = @"found device in localEndpoint...";
      _os_log_impl(&dword_1A2860000, v44, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v45 = [v43 firstObject];
    (*(v30 + 2))(v30, v45, 0);
    goto LABEL_24;
  }

LABEL_25:

  _Block_object_dispose(&v72, 8);
  _Block_object_dispose(&v78, 8);

  _Block_object_dispose(&v84, 8);
  v49 = *MEMORY[0x1E69E9840];
}

void __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *(*(*(a1 + 80) + 8) + 40) == 0;
    v8 = _MRLogForCategory(0xAuLL);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (v7)
    {
      if (v9)
      {
        __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_cold_1(a1, v6, v8);
      }
    }

    else if (v9)
    {
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = *(*(*(a1 + 80) + 8) + 40);
      v13 = [MEMORY[0x1E695DF00] date];
      [v13 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544386;
      v50 = v11;
      v51 = 2114;
      v52 = v10;
      v53 = 2114;
      v54 = v6;
      v55 = 2114;
      v56 = v12;
      v57 = 2048;
      v58 = v14;
      _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    }
  }

  else
  {
    v15 = [v5 debugName];
    v16 = v15 == 0;

    v17 = *(*(*(a1 + 80) + 8) + 40);
    v8 = _MRLogForCategory(0xAuLL);
    v18 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      if (v17)
      {
        if (v18)
        {
          v26 = *(a1 + 32);
          v25 = *(a1 + 40);
          v27 = *(*(*(a1 + 80) + 8) + 40);
          v28 = [MEMORY[0x1E695DF00] date];
          [v28 timeIntervalSinceDate:*(a1 + 48)];
          *buf = 138544130;
          v50 = v26;
          v51 = 2114;
          v52 = v25;
          v53 = 2114;
          v54 = v27;
          v55 = 2048;
          v56 = v29;
          _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
        }
      }

      else if (v18)
      {
        v36 = *(a1 + 32);
        v35 = *(a1 + 40);
        v37 = [MEMORY[0x1E695DF00] date];
        [v37 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138543874;
        v50 = v36;
        v51 = 2114;
        v52 = v35;
        v53 = 2048;
        v54 = v38;
        _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
      }
    }

    else if (v17)
    {
      if (v18)
      {
        v20 = *(a1 + 32);
        v19 = *(a1 + 40);
        v21 = [v5 debugName];
        v22 = *(*(*(a1 + 80) + 8) + 40);
        v23 = [MEMORY[0x1E695DF00] date];
        [v23 timeIntervalSinceDate:*(a1 + 48)];
        *buf = 138544386;
        v50 = v20;
        v51 = 2114;
        v52 = v19;
        v53 = 2112;
        v54 = v21;
        v55 = 2114;
        v56 = v22;
        v57 = 2048;
        v58 = v24;
        _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds", buf, 0x34u);
      }
    }

    else if (v18)
    {
      v31 = *(a1 + 32);
      v30 = *(a1 + 40);
      v32 = [v5 debugName];
      v33 = [MEMORY[0x1E695DF00] date];
      [v33 timeIntervalSinceDate:*(a1 + 48)];
      *buf = 138544130;
      v50 = v31;
      v51 = 2114;
      v52 = v30;
      v53 = 2112;
      v54 = v32;
      v55 = 2048;
      v56 = v34;
      _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds", buf, 0x2Au);
    }
  }

  v39 = *(a1 + 56);
  objc_sync_enter(v39);
  [*(*(*(a1 + 88) + 8) + 40) setDiscoveryMode:0];
  if (*(*(*(a1 + 96) + 8) + 40))
  {
    [*(*(*(a1 + 88) + 8) + 40) removeOutputDevicesChangedCallback:?];
  }

  v40 = *(*(a1 + 88) + 8);
  v41 = *(v40 + 40);
  *(v40 + 40) = 0;

  objc_sync_exit(v39);
  v42 = *(a1 + 72);
  if (v42)
  {
    v43 = *(a1 + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_120;
    block[3] = &unk_1E769AC18;
    v48 = v42;
    v46 = v5;
    v47 = v6;
    dispatch_async(v43, block);
  }

  v44 = *MEMORY[0x1E69E9840];
}

uint64_t __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __97__MRAVLightweightReconnaissanceSession_searchForOutputDeviceUID_timeout_reason_queue_completion___block_invoke_126(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v12 + 1) + 8 * i) containsUID:{*(*(*(a1 + 64) + 8) + 40), v12}])
        {
          if ([*(a1 + 32) disarm])
          {
            v8 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
            {
              v9 = *(a1 + 40);
              v10 = *(a1 + 48);
              *buf = 138543874;
              v17 = v9;
              v18 = 2114;
              v19 = v10;
              v20 = 2112;
              v21 = @"found device in discovery";
              _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }

            (*(*(a1 + 56) + 16))();
          }

          goto LABEL_14;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v22 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v11 = *MEMORY[0x1E69E9840];
}

- (void)searchForLogicalOutputDeviceUID:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7
{
  v70 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v43 = a5;
  v13 = a6;
  v14 = a7;
  if (!v13)
  {
    v13 = MEMORY[0x1E69E96A0];
    v15 = MEMORY[0x1E69E96A0];
  }

  v62 = 0;
  v63 = &v62;
  v64 = 0x3032000000;
  v65 = __Block_byref_object_copy__36;
  v66 = __Block_byref_object_dispose__36;
  v67 = 0;
  v16 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  [v16 setDiscoveryMode:3];
  v17 = [MEMORY[0x1E695DF00] date];
  v18 = [MEMORY[0x1E696AFB0] UUID];
  v19 = [v18 UUIDString];

  v20 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchForLogicalOutputDeviceUID", v19];
  v21 = v20;
  if (v12)
  {
    [v20 appendFormat:@" for %@", v12];
  }

  if (v43)
  {
    [v21 appendFormat:@" because %@", v43];
  }

  v22 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v69 = v21;
    _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v53[0] = MEMORY[0x1E69E9820];
  v53[1] = 3221225472;
  v53[2] = __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke;
  v53[3] = &unk_1E76A2328;
  v23 = v12;
  v54 = v23;
  v55 = @"searchForLogicalOutputDeviceUID";
  v24 = v19;
  v56 = v24;
  v25 = v17;
  v57 = v25;
  v26 = v16;
  v58 = v26;
  v61 = &v62;
  v42 = v14;
  v60 = v42;
  v27 = v13;
  v59 = v27;
  v28 = MEMORY[0x1A58E3570](v53);
  v29 = [MRBlockGuard alloc];
  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@<%@>", @"searchForLogicalOutputDeviceUID", v24];
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 3221225472;
  v51[2] = __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke_2;
  v51[3] = &unk_1E769AD80;
  v31 = v28;
  v52 = v31;
  v32 = [(MRBlockGuard *)v29 initWithTimeout:v30 reason:v51 handler:a4];

  v33 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke_3;
  v44[3] = &unk_1E76A2350;
  v34 = v23;
  v45 = v34;
  v35 = v33;
  v46 = v35;
  v47 = @"searchForLogicalOutputDeviceUID";
  v36 = v24;
  v48 = v36;
  v37 = v32;
  v49 = v37;
  v38 = v31;
  v50 = v38;
  v39 = [v26 addOutputDevicesChangedCallback:v44];
  v40 = v63[5];
  v63[5] = v39;

  _Block_object_dispose(&v62, 8);
  v41 = *MEMORY[0x1E69E9840];
}

void __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = MRAVOutputDeviceArrayDescription(v5);

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = *(a1 + 40);
        v19 = *(a1 + 48);
        v13 = MRAVOutputDeviceArrayDescription(v5);
        v20 = *(a1 + 32);
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544386;
        v47 = v18;
        v48 = 2114;
        v49 = v19;
        v50 = 2112;
        v51 = v13;
        v52 = 2114;
        v53 = v20;
        v54 = 2048;
        v55 = v22;
        v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v24 = v8;
        v25 = 52;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v34 = *(a1 + 48);
        v13 = MRAVOutputDeviceArrayDescription(v5);
        v21 = [MEMORY[0x1E695DF00] date];
        [v21 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v47 = v33;
        v48 = 2114;
        v49 = v34;
        v50 = 2112;
        v51 = v13;
        v52 = 2048;
        v53 = v35;
        v23 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v24 = v8;
        v25 = 42;
      }

      _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    }

    else
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v27 = *(a1 + 40);
        v26 = *(a1 + 48);
        v28 = *(a1 + 32);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138544130;
        v47 = v27;
        v48 = 2114;
        v49 = v26;
        v50 = 2114;
        v51 = v28;
        v52 = 2048;
        v53 = v29;
        v30 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v31 = v8;
        v32 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v36 = *(a1 + 40);
        v37 = *(a1 + 48);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        *buf = 138543874;
        v47 = v36;
        v48 = 2114;
        v49 = v37;
        v50 = 2048;
        v51 = v38;
        v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v31 = v8;
        v32 = 32;
      }

      _os_log_impl(&dword_1A2860000, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 40);
    v10 = *(a1 + 48);
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v47 = v11;
    v48 = 2114;
    v49 = v10;
    v50 = 2114;
    v51 = v6;
    v52 = 2114;
    v53 = v12;
    v54 = 2048;
    v55 = v14;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v6, v8);
  }

LABEL_21:

  [*(a1 + 64) setDiscoveryMode:0];
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    [*(a1 + 64) removeOutputDevicesChangedCallback:?];
  }

  v39 = *(a1 + 80);
  if (v39)
  {
    v40 = *(a1 + 72);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke_130;
    block[3] = &unk_1E769AC18;
    v45 = v39;
    v43 = v5;
    v44 = v6;
    dispatch_async(v40, block);
  }

  v41 = *MEMORY[0x1E69E9840];
}

uint64_t __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __104__MRAVLightweightReconnaissanceSession_searchForLogicalOutputDeviceUID_timeout_reason_queue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v25 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v9 = [v8 logicalDeviceID];
        v10 = [v9 isEqualToString:*(a1 + 32)];

        if (v10)
        {
          v11 = *(a1 + 40);
          v12 = [v8 uid];
          v13 = [v11 objectForKeyedSubscript:v12];

          if (!v13)
          {
            v14 = objc_alloc(MEMORY[0x1E696AEC0]);
            v15 = [v8 debugName];
            v16 = [v14 initWithFormat:@"found outputDevice %@", v15];

            v17 = _MRLogForCategory(0xAuLL);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              v18 = *(a1 + 48);
              v19 = *(a1 + 56);
              *buf = 138543874;
              v30 = v18;
              v31 = 2114;
              v32 = v19;
              v33 = 2112;
              v34 = v16;
              _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
            }

            v20 = *(a1 + 40);
            v21 = [v8 uid];
            [v20 setObject:v8 forKeyedSubscript:v21];
          }
        }

        if ([*(a1 + 40) count] == 2 && objc_msgSend(*(a1 + 64), "disarm"))
        {
          v22 = *(a1 + 72);
          v23 = [*(a1 + 40) allValues];
          (*(v22 + 16))(v22, v23, 0);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v25 objects:v35 count:16];
    }

    while (v5);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)searchEndpointsForRoutingContextUID:(id)a3 timeout:(double)a4 reason:(id)a5 queue:(id)a6 completion:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v16 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:v14];

  [(MRAVLightweightReconnaissanceSession *)self searchEndpointsForRoutingContextUID:v15 timeout:v16 details:v13 queue:v12 completion:a4];
}

- (void)searchEndpointsForRoutingContextUID:(id)a3 timeout:(double)a4 details:(id)a5 queue:(id)a6 completion:(id)a7
{
  v57 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  if (!v11)
  {
    [MRAVLightweightReconnaissanceSession searchEndpointsForRoutingContextUID:timeout:details:queue:completion:];
  }

  v15 = [MEMORY[0x1E695DF00] date];
  if (!v12)
  {
    v12 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"API"];
  }

  v16 = objc_alloc(MEMORY[0x1E696AD60]);
  v17 = [(MRRequestDetails *)v12 requestID];
  v18 = [v16 initWithFormat:@"%@<%@>", @"searchEndpointsForRoutingContextUID", v17];

  if (v11)
  {
    [v18 appendFormat:@" for %@", v11];
  }

  v19 = [(MRRequestDetails *)v12 label];

  if (v19)
  {
    v20 = [(MRRequestDetails *)v12 label];
    [v18 appendFormat:@" because %@", v20];
  }

  v21 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v56 = v18;
    _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke;
  v49[3] = &unk_1E76A2378;
  v50 = v11;
  v51 = @"searchEndpointsForRoutingContextUID";
  v52 = v12;
  v53 = v15;
  v54 = v14;
  v41 = v14;
  v40 = v15;
  v22 = v12;
  v23 = v11;
  v24 = MEMORY[0x1A58E3570](v49);
  v25 = [MRBlockGuard alloc];
  v26 = objc_alloc(MEMORY[0x1E696AEC0]);
  v27 = [(MRRequestDetails *)v22 requestID];
  v28 = [v26 initWithFormat:@"%@<%@>", @"searchEndpointsForRoutingContextUID", v27];
  v47[0] = MEMORY[0x1E69E9820];
  v47[1] = 3221225472;
  v47[2] = __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_142;
  v47[3] = &unk_1E769AD80;
  v29 = v24;
  v48 = v29;
  v30 = [(MRBlockGuard *)v25 initWithTimeout:v28 reason:v13 queue:v47 handler:a4];

  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_2;
  v44[3] = &unk_1E769C360;
  v45 = v30;
  v46 = v29;
  v31 = v29;
  v32 = v30;
  v33 = MEMORY[0x1A58E3570](v44);
  v34 = MRCreateXPCMessage(0x300000000000033uLL);
  xpc_dictionary_set_double(v34, "timeout", a4);
  MRAddRequestDetailsToXPCMessage(v34, v22);
  MRAddStringToXPCMessage(v34, v23, "routingContextID");
  v35 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v36 = [v35 service];
  v37 = [v36 mrXPCConnection];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_3;
  v42[3] = &unk_1E769B338;
  v43 = v33;
  v38 = v33;
  [v37 sendMessage:v34 queue:v13 reply:v42];

  v39 = *MEMORY[0x1E69E9840];
}

void __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v15 = [v5 debugName];

    v16 = *(a1 + 32);
    v8 = _MRLogForCategory(0xAuLL);
    v17 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v18 = *(a1 + 40);
        v11 = [*(a1 + 48) requestID];
        v13 = [v5 debugName];
        v19 = *(a1 + 32);
        v20 = [MEMORY[0x1E695DF00] date];
        [v20 timeIntervalSinceDate:*(a1 + 56)];
        v37 = 138544386;
        v38 = v18;
        v39 = 2114;
        v40 = v11;
        v41 = 2112;
        v42 = v13;
        v43 = 2114;
        v44 = v19;
        v45 = 2048;
        v46 = v21;
        v22 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v23 = v8;
        v24 = 52;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v31 = *(a1 + 40);
        v11 = [*(a1 + 48) requestID];
        v13 = [v5 debugName];
        v20 = [MEMORY[0x1E695DF00] date];
        [v20 timeIntervalSinceDate:*(a1 + 56)];
        v37 = 138544130;
        v38 = v31;
        v39 = 2114;
        v40 = v11;
        v41 = 2112;
        v42 = v13;
        v43 = 2048;
        v44 = v32;
        v22 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
        v23 = v8;
        v24 = 42;
      }

      _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, v22, &v37, v24);
    }

    else
    {
      if (v16)
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v25 = *(a1 + 40);
        v11 = [*(a1 + 48) requestID];
        v26 = *(a1 + 32);
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v37 = 138544130;
        v38 = v25;
        v39 = 2114;
        v40 = v11;
        v41 = 2114;
        v42 = v26;
        v43 = 2048;
        v44 = v27;
        v28 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
        v29 = v8;
        v30 = 42;
      }

      else
      {
        if (!v17)
        {
          goto LABEL_21;
        }

        v33 = *(a1 + 40);
        v11 = [*(a1 + 48) requestID];
        v13 = [MEMORY[0x1E695DF00] date];
        [v13 timeIntervalSinceDate:*(a1 + 56)];
        v37 = 138543874;
        v38 = v33;
        v39 = 2114;
        v40 = v11;
        v41 = 2048;
        v42 = v34;
        v28 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
        v29 = v8;
        v30 = 32;
      }

      _os_log_impl(&dword_1A2860000, v29, OS_LOG_TYPE_DEFAULT, v28, &v37, v30);
    }

    goto LABEL_20;
  }

  v7 = *(a1 + 32);
  v8 = _MRLogForCategory(0xAuLL);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_21;
    }

    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) requestID];
    v12 = *(a1 + 32);
    v13 = [MEMORY[0x1E695DF00] date];
    [v13 timeIntervalSinceDate:*(a1 + 56)];
    v37 = 138544386;
    v38 = v10;
    v39 = 2114;
    v40 = v11;
    v41 = 2114;
    v42 = v6;
    v43 = 2114;
    v44 = v12;
    v45 = 2048;
    v46 = v14;
    _os_log_error_impl(&dword_1A2860000, v8, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", &v37, 0x34u);
LABEL_20:

    goto LABEL_21;
  }

  if (v9)
  {
    __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_cold_1(a1, v6, v8);
  }

LABEL_21:

  v35 = *(a1 + 64);
  if (v35)
  {
    (*(v35 + 16))(v35, v5, v6);
  }

  v36 = *MEMORY[0x1E69E9840];
}

uint64_t __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_142(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MREndpointFromXPCMessage(a2);
  (*(*(a1 + 32) + 16))();
}

- (void)searchEndpointsForMyGroupLeaderWithTimeout:(double)a3 reason:(id)a4 queue:(id)a5 completion:(id)a6
{
  v40[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [MEMORY[0x1E695DF00] date];
  v14 = [MEMORY[0x1E696AFB0] UUID];
  v15 = [v14 UUIDString];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForMyGroupLeaderWithTimeout_reason_queue_completion___block_invoke;
  v34[3] = &unk_1E76A23A0;
  v35 = @"searchEndpointsForMyGroupLeader";
  v16 = v15;
  v36 = v16;
  v17 = v13;
  v37 = v17;
  v18 = v12;
  v39 = v18;
  v19 = v11;
  v38 = v19;
  v20 = MEMORY[0x1A58E3570](v34);
  v21 = MRMediaRemoteCopyDeviceUID();
  if (v21)
  {
    v22 = [MRRequestDetails alloc];
    v30 = v10;
    v23 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MRAVLightweightReconnaissanceSession.searchEndpointsForMyGroupLeader-%@", v10];
    v24 = [(MRRequestDetails *)v22 initWithInitiator:@"Infer" requestID:v16 reason:v23];

    v25 = [MRAVReconnaissanceSession alloc];
    v40[0] = v21;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
    v27 = [(MRAVReconnaissanceSession *)v25 initWithOutputDeviceUIDs:v26 features:8 details:v24];

    [(MRAVReconnaissanceSession *)v27 setCachedDiscoveryEnabled:[(MRAVLightweightReconnaissanceSession *)self cachedDiscoveryEnabled]];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForMyGroupLeaderWithTimeout_reason_queue_completion___block_invoke_2;
    v31[3] = &unk_1E76A23C8;
    v32 = v27;
    v33 = v20;
    v28 = v27;
    [(MRAVReconnaissanceSession *)v28 beginSearchWithTimeout:v31 completion:a3];

    v10 = v30;
  }

  else
  {
    v24 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:33];
    (v20)[2](v20, 0, v24);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __107__MRAVLightweightReconnaissanceSession_searchEndpointsForMyGroupLeaderWithTimeout_reason_queue_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = _MRLogForCategory(0xAuLL);
  v8 = v7;
  if (v5 && !v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v9 = a1[4];
    v10 = a1[5];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:a1[6]];
    *buf = 138544130;
    v27 = v9;
    v28 = 2114;
    v29 = v10;
    v30 = 2112;
    v31 = v5;
    v32 = 2048;
    v33 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);

    goto LABEL_11;
  }

  if (!v6)
  {
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v16 = a1[4];
    v17 = a1[5];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:a1[6]];
    *buf = 138543874;
    v27 = v16;
    v28 = 2114;
    v29 = v17;
    v30 = 2048;
    v31 = v18;
    v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v14 = v8;
    v15 = 32;
    goto LABEL_10;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    __107__MRAVLightweightReconnaissanceSession_searchEndpointsForOutputDeviceUID_timeout_details_queue_completion___block_invoke_cold_1(a1, v6, v8);
  }

LABEL_11:

  v19 = a1[8];
  if (v19)
  {
    v20 = a1[7];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __107__MRAVLightweightReconnaissanceSession_searchEndpointsForMyGroupLeaderWithTimeout_reason_queue_completion___block_invoke_147;
    block[3] = &unk_1E769AC18;
    v25 = v19;
    v23 = v5;
    v24 = v6;
    dispatch_async(v20, block);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __107__MRAVLightweightReconnaissanceSession_searchEndpointsForMyGroupLeaderWithTimeout_reason_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  v8 = *(a1 + 32);
  v7(v6, a3, a4);
}

- (void)searchOutputDevices:(id)a3 reason:(id)a4 timeout:(double)a5 queue:(id)a6 completion:(id)a7
{
  v69 = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a6;
  v13 = a7;
  v14 = MEMORY[0x1E695DF00];
  v40 = a3;
  v15 = [v14 date];
  v16 = [MEMORY[0x1E696AFB0] UUID];
  v17 = [v16 UUIDString];

  v18 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"searchOutputDevices", v17];
  v19 = v18;
  if (v11)
  {
    [(__CFString *)v18 appendFormat:@" for %@", v11];
  }

  v20 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v64 = v19;
    _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if (a5 > 60.0)
  {
    v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"resolving timeout from %lf -> %lf", *&a5, 0x404E000000000000];
    v22 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v64 = @"searchOutputDevices";
      v65 = 2114;
      v66 = v17;
      v67 = 2112;
      v68 = v21;
      _os_log_impl(&dword_1A2860000, v22, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    a5 = 60.0;
  }

  v56[0] = MEMORY[0x1E69E9820];
  v56[1] = 3221225472;
  v56[2] = __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke;
  v56[3] = &unk_1E76A23F0;
  v57 = v11;
  v58 = @"searchOutputDevices";
  v59 = v17;
  v60 = v15;
  v61 = v12;
  v62 = v13;
  v44 = v12;
  v43 = v13;
  v42 = v15;
  v41 = v17;
  v23 = v11;
  v24 = MEMORY[0x1A58E3570](v56);
  v25 = [MRBlockGuard alloc];
  v54[0] = MEMORY[0x1E69E9820];
  v54[1] = 3221225472;
  v54[2] = __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke_2;
  v54[3] = &unk_1E769AD80;
  v26 = v24;
  v55 = v26;
  v27 = [(MRBlockGuard *)v25 initWithTimeout:v23 reason:v54 handler:a5];
  v28 = [MRRequestDetails alloc];
  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"MRAVLightweightReconnaissanceSession.searchOutputDevices-%@", v23];
  v30 = [(MRRequestDetails *)v28 initWithInitiator:@"Infer" requestID:v41 reason:v29];

  v31 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:v40 features:8 details:v30];
  [(MRAVReconnaissanceSession *)v31 setCachedDiscoveryEnabled:[(MRAVLightweightReconnaissanceSession *)self cachedDiscoveryEnabled]];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke_3;
  v50[3] = &unk_1E76A2418;
  v51 = v31;
  v32 = v27;
  v52 = v32;
  v33 = v26;
  v53 = v33;
  v34 = v31;
  [(MRAVReconnaissanceSession *)v34 beginSearchWithTimeout:v50 endpointsCompletion:a5];
  v35 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:v40 features:1 details:v30];

  [(MRAVReconnaissanceSession *)v35 setCachedDiscoveryEnabled:[(MRAVLightweightReconnaissanceSession *)self cachedDiscoveryEnabled]];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke_4;
  v46[3] = &unk_1E76A2418;
  v47 = v35;
  v48 = v32;
  v49 = v33;
  v36 = v33;
  v37 = v32;
  v38 = v35;
  [(MRAVReconnaissanceSession *)v38 beginSearchWithTimeout:v46 endpointsCompletion:a5];

  v39 = *MEMORY[0x1E69E9840];
}

void __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke(void *a1, void *a2, void *a3, void *a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = a1[4];
  v11 = _MRLogForCategory(0xAuLL);
  v12 = v11;
  if (v7 && !v9)
  {
    v13 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (!v13)
      {
        goto LABEL_22;
      }

      v15 = a1[5];
      v14 = a1[6];
      v16 = a1[4];
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:a1[7]];
      *buf = 138544386;
      v47 = v15;
      v48 = 2114;
      v49 = v14;
      v50 = 2112;
      v51 = v7;
      v52 = 2114;
      v53 = v16;
      v54 = 2048;
      v55 = v18;
      v19 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
      v20 = v12;
      v21 = 52;
      goto LABEL_16;
    }

    if (!v13)
    {
      goto LABEL_22;
    }

    v32 = a1[5];
    v33 = a1[6];
    v17 = [MEMORY[0x1E695DF00] date];
    [v17 timeIntervalSinceDate:a1[7]];
    *buf = 138544130;
    v47 = v32;
    v48 = 2114;
    v49 = v33;
    v50 = 2112;
    v51 = v7;
    v52 = 2048;
    v53 = v34;
    v19 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    goto LABEL_15;
  }

  if (v9)
  {
    v22 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10)
    {
      if (!v22)
      {
        goto LABEL_22;
      }

      v24 = a1[5];
      v23 = a1[6];
      v25 = a1[4];
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:a1[7]];
      *buf = 138544386;
      v47 = v24;
      v48 = 2114;
      v49 = v23;
      v50 = 2114;
      v51 = v9;
      v52 = 2114;
      v53 = v25;
      v54 = 2048;
      v55 = v26;
      _os_log_error_impl(&dword_1A2860000, v12, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
      goto LABEL_17;
    }

    if (v22)
    {
      __86__MRV2NowPlayingController__loadNowPlayingStateForConfiguration_requestID_completion___block_invoke_53_cold_1(a1, v9, v12);
    }
  }

  else
  {
    v27 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (!v27)
      {
        goto LABEL_22;
      }

      v29 = a1[5];
      v28 = a1[6];
      v30 = a1[4];
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:a1[7]];
      *buf = 138544130;
      v47 = v29;
      v48 = 2114;
      v49 = v28;
      v50 = 2114;
      v51 = v30;
      v52 = 2048;
      v53 = v31;
      v19 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
LABEL_15:
      v20 = v12;
      v21 = 42;
LABEL_16:
      _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, v19, buf, v21);
LABEL_17:

      goto LABEL_22;
    }

    if (v27)
    {
      v35 = a1[5];
      v36 = a1[6];
      v17 = [MEMORY[0x1E695DF00] date];
      [v17 timeIntervalSinceDate:a1[7]];
      *buf = 138543874;
      v47 = v35;
      v48 = 2114;
      v49 = v36;
      v50 = 2048;
      v51 = v37;
      v19 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v20 = v12;
      v21 = 32;
      goto LABEL_16;
    }
  }

LABEL_22:

  v38 = a1[9];
  if (v38)
  {
    v39 = a1[8];
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke_158;
    v41[3] = &unk_1E769C980;
    v45 = v38;
    v42 = v7;
    v43 = v8;
    v44 = v9;
    dispatch_async(v39, v41);
  }

  v40 = *MEMORY[0x1E69E9840];
}

void __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v12 = a2;
  v8 = a4;
  v9 = a5;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  if ([v10 disarm])
  {
    (*(*(a1 + 48) + 16))();
  }
}

void __92__MRAVLightweightReconnaissanceSession_searchOutputDevices_reason_timeout_queue_completion___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v11 = a4;
  v8 = a5;
  v9 = *(a1 + 32);
  v10 = [a2 msv_filter:&__block_literal_global_83];
  if ([v10 count] && objc_msgSend(*(a1 + 40), "disarm"))
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)searchForOutputDevices:(id)a3 categories:(id)a4 timeout:(double)a5 details:(id)a6 queue:(id)a7 completion:(id)a8
{
  v92 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  if (v17)
  {
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_28:
    v16 = MEMORY[0x1E69E96A0];
    v58 = MEMORY[0x1E69E96A0];
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_29;
  }

  [MRAVLightweightReconnaissanceSession searchForOutputDevices:categories:timeout:details:queue:completion:];
  if (!v16)
  {
    goto LABEL_28;
  }

LABEL_3:
  if (v15)
  {
    goto LABEL_4;
  }

LABEL_29:
  v15 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"MRAVLightweightReconnaissanceSession.searchForOutputDevicesWithCategories"];
LABEL_4:
  v18 = [MEMORY[0x1E695DF00] now];
  v19 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ - %@", v13, v14];
  v20 = objc_alloc(MEMORY[0x1E696AD60]);
  v21 = [(MRRequestDetails *)v15 requestID];
  v22 = [v20 initWithFormat:@"%@<%@>", @"searchForOutputDevicesWithCategories", v21];

  if (v19)
  {
    [v22 appendFormat:@" for %@", v19];
  }

  v23 = [(MRRequestDetails *)v15 initiator];

  if (v23)
  {
    v24 = [(MRRequestDetails *)v15 initiator];
    [v22 appendFormat:@" because %@", v24];
  }

  v66 = v19;
  v25 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v91 = v22;
    _os_log_impl(&dword_1A2860000, v25, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if (a5 > 60.0)
  {
    a5 = 60.0;
  }

  v84[0] = MEMORY[0x1E69E9820];
  v84[1] = 3221225472;
  v84[2] = __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke;
  v84[3] = &unk_1E76A2440;
  v26 = v15;
  v85 = v26;
  v27 = v18;
  v86 = v27;
  v28 = v16;
  v87 = v28;
  v29 = v17;
  v88 = v29;
  v30 = MEMORY[0x1A58E3570](v84);
  if (![v14 count])
  {

    v14 = &unk_1F1577608;
  }

  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_2;
  v81[3] = &unk_1E76A2468;
  v31 = v13;
  v82 = v31;
  v32 = v26;
  v83 = v32;
  v33 = [v14 msv_compactMap:v81];
  v34 = [MRBlockGuard alloc];
  v64 = v32;
  v35 = [(MRRequestDetails *)v32 requestReasonID];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_189;
  v78[3] = &unk_1E769AB50;
  v36 = v30;
  v80 = v36;
  v37 = v33;
  v79 = v37;
  v38 = [(MRBlockGuard *)v34 initWithTimeout:v35 reason:v78 handler:a5];

  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_2_190;
  v74[3] = &unk_1E76A2490;
  v39 = v38;
  v75 = v39;
  v40 = v36;
  v77 = v40;
  v41 = v37;
  v76 = v41;
  v42 = MEMORY[0x1A58E3570](v74);
  v65 = v31;
  if (![v41 count])
  {
    v55 = v14;
    v47 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:39 description:@"Could not resolve the input categories to anything"];
    (v42)[2](v42, 0, 0, v47);
LABEL_25:
    v56 = v66;
    goto LABEL_26;
  }

  v63 = v39;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v43 = v41;
  v44 = [v43 countByEnumeratingWithState:&v70 objects:v89 count:16];
  if (!v44)
  {
    v55 = v14;
    v47 = v43;
    goto LABEL_25;
  }

  v45 = v44;
  v59 = v41;
  v60 = v40;
  v61 = v28;
  v62 = v14;
  v46 = *v71;
  v47 = v43;
  do
  {
    for (i = 0; i != v45; ++i)
    {
      if (*v71 != v46)
      {
        objc_enumerationMutation(v47);
      }

      v49 = *(*(&v70 + 1) + 8 * i);
      v50 = [v49 first];
      v51 = [v49 second];
      v52 = [v51 category];
      v67[0] = MEMORY[0x1E69E9820];
      v67[1] = 3221225472;
      v67[2] = __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_3;
      v67[3] = &unk_1E76A24B8;
      v53 = v42;
      v68 = v52;
      v69 = v53;
      v54 = v52;
      [v50 beginSearchWithTimeout:v67 completion:7.0];

      v47 = v43;
    }

    v45 = [v43 countByEnumeratingWithState:&v70 objects:v89 count:16];
  }

  while (v45);
  v28 = v61;
  v55 = v62;
  v56 = v66;
  v41 = v59;
  v40 = v60;
  v39 = v63;
LABEL_26:

  v57 = *MEMORY[0x1E69E9840];
}

void __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v55 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = @"activeCategory";
  if (v10)
  {
    v13 = v10;
  }

  v14 = v13;
  v15 = _MRLogForCategory(0xAuLL);
  v16 = v15;
  if (!v9 || v12)
  {
    if (v12)
    {
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_14;
      }

      v17 = [*(a1 + 32) requestID];
      v18 = [MEMORY[0x1E695DF00] date];
      [v18 timeIntervalSinceDate:*(a1 + 40)];
      *buf = 138544386;
      v46 = @"searchForOutputDevicesWithCategories";
      v47 = 2114;
      v48 = v17;
      v49 = 2114;
      v50 = v12;
      v51 = 2114;
      v52 = v14;
      v53 = 2048;
      v54 = v23;
      _os_log_error_impl(&dword_1A2860000, v16, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
      goto LABEL_13;
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v17 = [*(a1 + 32) requestID];
    v18 = [MEMORY[0x1E695DF00] date];
    [v18 timeIntervalSinceDate:*(a1 + 40)];
    *buf = 138544130;
    v46 = @"searchForOutputDevicesWithCategories";
    v47 = 2114;
    v48 = v17;
    v49 = 2114;
    v50 = v14;
    v51 = 2048;
    v52 = v24;
    v20 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    v21 = v16;
    v22 = 42;
  }

  else
  {
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v17 = [*(a1 + 32) requestID];
    v18 = [MEMORY[0x1E695DF00] date];
    [v18 timeIntervalSinceDate:*(a1 + 40)];
    *buf = 138544386;
    v46 = @"searchForOutputDevicesWithCategories";
    v47 = 2114;
    v48 = v17;
    v49 = 2112;
    v50 = v9;
    v51 = 2114;
    v52 = v14;
    v53 = 2048;
    v54 = v19;
    v20 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
    v21 = v16;
    v22 = 52;
  }

  _os_log_impl(&dword_1A2860000, v21, OS_LOG_TYPE_DEFAULT, v20, buf, v22);
LABEL_13:

LABEL_14:
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = v11;
  v26 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v41;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v41 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v40 + 1) + 8 * i) first];
        [v30 cancelSearch];
      }

      v27 = [v25 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v27);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_178;
  block[3] = &unk_1E769AC18;
  v31 = *(a1 + 48);
  v32 = *(a1 + 56);
  v38 = v12;
  v39 = v32;
  v37 = v9;
  v33 = v12;
  v34 = v9;
  dispatch_async(v31, block);

  v35 = *MEMORY[0x1E69E9840];
}

id __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [[MRAVReconnaissanceSession alloc] initWithOutputDeviceUIDs:*(a1 + 32) features:1 details:*(a1 + 40)];
  [(MRAVReconnaissanceSession *)v4 setCachedDiscoveryEnabled:1];
  [(MRAVReconnaissanceSession *)v4 setShouldLog:0];
  if (![v3 length])
  {
    v5 = 0;
    goto LABEL_5;
  }

  v5 = [MEMORY[0x1E6958460] auxiliarySession];
  v16 = 0;
  v6 = [v5 setCategory:v3 error:&v16];
  v7 = v16;
  if (v6)
  {
    v8 = [v5 opaqueSessionID];
    v9 = [(MRAVReconnaissanceSession *)v4 discoverySession];
    [v9 setTargetAudioSessionID:v8];

LABEL_5:
    v10 = [objc_alloc(MEMORY[0x1E69B1470]) initWithFirst:v4 second:v5];
    goto LABEL_9;
  }

  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Failed to set %@ category on aux content %@", v3, v7];
  v12 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) requestID];
    *buf = 138543874;
    v18 = @"searchForOutputDevicesWithCategories";
    v19 = 2114;
    v20 = v13;
    v21 = 2112;
    v22 = v11;
    _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  v10 = 0;
LABEL_9:

  v14 = *MEMORY[0x1E69E9840];

  return v10;
}

void __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_2_190(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if ([*(a1 + 32) disarm])
  {
    v9 = *(a1 + 40);
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t __107__MRAVLightweightReconnaissanceSession_searchForOutputDevices_categories_timeout_details_queue_completion___block_invoke_3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return (*(*(result + 40) + 16))(*(result + 40), a2, *(result + 32));
  }

  return result;
}

void __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  [*(a1 + 32) removeOutputDevicesAddedCallback:*(*(*(a1 + 80) + 8) + 40)];
  [*(a1 + 32) setDiscoveryMode:0];
  v7 = _MRLogForCategory(0xAuLL);
  v8 = v7;
  if (!v5 || v6)
  {
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __109__MRAVLightweightReconnaissanceSession_searchEndpointsForRoutingContextUID_timeout_details_queue_completion___block_invoke_cold_1(a1, v6, v8);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 40);
      v10 = [*(a1 + 48) requestID];
      v11 = [MEMORY[0x1E695DF00] date];
      [v11 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v28 = v16;
      v29 = 2114;
      v30 = v10;
      v31 = 2048;
      v32 = v17;
      v13 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
      v14 = v8;
      v15 = 32;
      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v10 = [*(a1 + 48) requestID];
    v11 = [MEMORY[0x1E695DF00] date];
    [v11 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v28 = v9;
    v29 = 2114;
    v30 = v10;
    v31 = 2112;
    v32 = v5;
    v33 = 2048;
    v34 = v12;
    v13 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v14 = v8;
    v15 = 42;
LABEL_10:
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_204;
  block[3] = &unk_1E769AC18;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  v25 = v6;
  v26 = v19;
  v24 = v5;
  v20 = v6;
  v21 = v5;
  dispatch_async(v18, block);

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) disarm])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_4(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        v9 = *(a1 + 32);
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_5;
        v14[3] = &unk_1E769CA28;
        v14[4] = v8;
        v10 = [v9 msv_filter:v14];
        if ([v10 count])
        {
          if ((*(*(a1 + 56) + 16))())
          {
            (*(*(a1 + 64) + 16))();
          }

          [*(a1 + 40) addObjectsFromArray:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  v11 = [*(a1 + 40) count];
  if (v11 == [*(a1 + 48) count])
  {
    v12 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithMRError:141];
    (*(*(a1 + 64) + 16))();
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (void)setSearchEndpointsForOutputDeviceUIDImplementation:(id)a3
{
  v3 = MEMORY[0x1A58E3570](a3, a2);
  v4 = __searchEndpointsForOutputDeviceUIDImplementation;
  __searchEndpointsForOutputDeviceUIDImplementation = v3;
}

- (id)_discoverySessionForFeature:(void *)a1
{
  if (a1)
  {
    v3 = [MRAVRoutingDiscoverySession discoverySessionWithEndpointFeatures:a2];
    [v3 setCachedDiscoveryEnabled:{objc_msgSend(a1, "cachedDiscoveryEnabled")}];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)searchOutputDeviceUIDs:(id)a3 matchingPredicate:(id)a4 timeout:(double)a5 details:(id)a6 queue:(id)a7 completion:(id)a8
{
  v82 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  if ([v15 count])
  {
    if (v16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v49 = [MEMORY[0x1E696AAA8] currentHandler];
    [v49 handleFailureInMethod:a2 object:self file:@"MRAVLightweightReconnaissanceSession.m" lineNumber:785 description:{@"Invalid parameter not satisfying: %@", @"outputDeviceUIDs.count > 0"}];

    if (v16)
    {
LABEL_3:
      if (v19)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }
  }

  v50 = [MEMORY[0x1E696AAA8] currentHandler];
  [v50 handleFailureInMethod:a2 object:self file:@"MRAVLightweightReconnaissanceSession.m" lineNumber:786 description:{@"Invalid parameter not satisfying: %@", @"predicate"}];

  if (v19)
  {
LABEL_4:
    if (v18)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_17:
  v51 = [MEMORY[0x1E696AAA8] currentHandler];
  [v51 handleFailureInMethod:a2 object:self file:@"MRAVLightweightReconnaissanceSession.m" lineNumber:787 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

  if (!v18)
  {
LABEL_5:
    v18 = MEMORY[0x1E69E96A0];
    v20 = MEMORY[0x1E69E96A0];
  }

LABEL_6:
  v21 = [MEMORY[0x1E695DF00] now];
  if (!v17)
  {
    v17 = [[MRRequestDetails alloc] initWithInitiator:@"Infer" requestID:0 reason:@"MRAVLightweightReconnaissanceSession.searchOutputDeviceUIDsWithPredicate"];
  }

  v22 = [(MRAVLightweightReconnaissanceSession *)self _discoverySessionForFeature:?];
  [v22 setDiscoveryMode:3];
  v74 = 0;
  v75 = &v74;
  v76 = 0x3032000000;
  v77 = __Block_byref_object_copy__36;
  v78 = __Block_byref_object_dispose__36;
  v79 = 0;
  v23 = objc_alloc(MEMORY[0x1E696AD60]);
  v24 = [(MRRequestDetails *)v17 requestID];
  v25 = [v23 initWithFormat:@"%@<%@>", @"MRAVLightweightReconnaissanceSession.searchOutputDeviceUIDsWithPredicate", v24];

  if (v15)
  {
    [v25 appendFormat:@" for %@", v15];
  }

  v26 = [(MRRequestDetails *)v17 reason];

  if (v26)
  {
    v27 = [(MRRequestDetails *)v17 reason];
    [v25 appendFormat:@" because %@", v27];
  }

  v28 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v81 = v25;
    _os_log_impl(&dword_1A2860000, v28, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke;
  v66[3] = &unk_1E76A24E0;
  v29 = v22;
  v73 = &v74;
  v67 = v29;
  v68 = @"MRAVLightweightReconnaissanceSession.searchOutputDeviceUIDsWithPredicate";
  v30 = v17;
  v69 = v30;
  v54 = v21;
  v70 = v54;
  v52 = v18;
  v71 = v52;
  v53 = v19;
  v72 = v53;
  v31 = MEMORY[0x1A58E3570](v66);
  v32 = [MRBlockGuard alloc];
  v33 = [(MRRequestDetails *)v30 requestReasonID];
  v64[0] = MEMORY[0x1E69E9820];
  v64[1] = 3221225472;
  v64[2] = __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_2;
  v64[3] = &unk_1E769AD80;
  v34 = v31;
  v65 = v34;
  v35 = [(MRBlockGuard *)v32 initWithTimeout:v33 reason:v64 handler:a5];

  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_3;
  v61[3] = &unk_1E76A2508;
  v36 = v35;
  v62 = v36;
  v37 = v34;
  v63 = v37;
  v38 = MEMORY[0x1A58E3570](v61);
  v39 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v15];
  v40 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __114__MRAVLightweightReconnaissanceSession_searchOutputDeviceUIDs_matchingPredicate_timeout_details_queue_completion___block_invoke_4;
  v55[3] = &unk_1E76A2530;
  v41 = v15;
  v56 = v41;
  v42 = v16;
  v59 = v42;
  v43 = v38;
  v60 = v43;
  v44 = v40;
  v57 = v44;
  v45 = v39;
  v58 = v45;
  v46 = [v29 addOutputDevicesAddedCallback:v55];
  v47 = v75[5];
  v75[5] = v46;

  _Block_object_dispose(&v74, 8);
  v48 = *MEMORY[0x1E69E9840];
}

- (void)searchEndpointsForOutputDeviceUID:timeout:details:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"details" object:? file:? lineNumber:? description:?];
}

- (void)searchEndpointsForString:timeout:reason:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"string" object:? file:? lineNumber:? description:?];
}

- (void)searchEndpointsForRoutingContextUID:timeout:details:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"routingContextUID" object:? file:? lineNumber:? description:?];
}

- (void)searchForOutputDevices:categories:timeout:details:queue:completion:.cold.1()
{
  OUTLINED_FUNCTION_1_6();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

@end
@interface MRAVOutputContextModification
+ (id)modifyOutputContextImplementation;
+ (void)setModifyOutputContextImplementation:(id)a3;
- (MRAVOutputContextModification)initWithRequest:(id)a3;
- (void)modifyWithOutputContext:(id)a3 queue:(id)a4 completion:(id)a5;
@end

@implementation MRAVOutputContextModification

- (MRAVOutputContextModification)initWithRequest:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MRAVOutputContextModification;
  v6 = [(MRAVOutputContextModification *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_request, a3);
  }

  return v7;
}

- (void)modifyWithOutputContext:(id)a3 queue:(id)a4 completion:(id)a5
{
  v62 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = [objc_opt_class() modifyOutputContextImplementation];

  if (v11)
  {
    v12 = [objc_opt_class() modifyOutputContextImplementation];
    v13 = [(MRAVOutputContextModification *)self request];
    (v12)[2](v12, v13, v8, v10, v9);

    goto LABEL_24;
  }

  v14 = [MEMORY[0x1E695DF00] date];
  v15 = [(MRGroupTopologyModificationRequest *)self->_request requestDetails];
  v16 = [v15 requestID];

  v17 = [(MRGroupTopologyModificationRequest *)self->_request shouldModifyPredictedRoutes];
  v18 = @"modifyOutputContext";
  if (v17)
  {
    v18 = @"modifyPredictedOutputDevices";
  }

  v19 = v18;
  v47 = qos_class_self();
  v20 = objc_alloc(MEMORY[0x1E696AEC0]);
  v21 = [v8 contextID];
  v22 = [v20 initWithFormat:@"contextID=%@", v21];

  v23 = [(MRGroupTopologyModificationRequest *)self->_request type];
  v24 = v23;
  v49 = v22;
  switch(v23)
  {
    case 3uLL:
      v25 = _MRLogForCategory(2uLL);
      v30 = [v16 hash];
      if ((v30 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_18;
      }

      v27 = v30;
      if (!os_signpost_enabled(v25))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v28 = "SetOutputDevices.xpcInterface";
      goto LABEL_17;
    case 2uLL:
      v25 = _MRLogForCategory(2uLL);
      v29 = [v16 hash];
      if ((v29 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_18;
      }

      v27 = v29;
      if (!os_signpost_enabled(v25))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v28 = "RemoveOutputDevices.xpcInterface";
      goto LABEL_17;
    case 1uLL:
      v25 = _MRLogForCategory(2uLL);
      v26 = [v16 hash];
      if ((v26 - 1) > 0xFFFFFFFFFFFFFFFDLL)
      {
        goto LABEL_18;
      }

      v27 = v26;
      if (!os_signpost_enabled(v25))
      {
        goto LABEL_18;
      }

      *buf = 0;
      v28 = "AddOutputDevices.xpcInterface";
LABEL_17:
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v27, v28, &unk_1A2BB0121, buf, 2u);
LABEL_18:
      v22 = v49;

      break;
  }

  v31 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", v19, v16];
  v32 = v31;
  if (v22)
  {
    [v31 appendFormat:@" for %@", v22];
  }

  v33 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v61 = v32;
    _os_log_impl(&dword_1A2860000, v33, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __74__MRAVOutputContextModification_modifyWithOutputContext_queue_completion___block_invoke;
  v52[3] = &unk_1E769C8C0;
  v59 = v47;
  v53 = v19;
  v54 = v16;
  v58 = v24;
  v34 = v8;
  v55 = v34;
  v56 = v14;
  v57 = v9;
  v48 = v14;
  v35 = v16;
  v36 = v19;
  v37 = MEMORY[0x1A58E3570](v52);
  v38 = MRCreateXPCMessage(0x300000000000028uLL);
  v39 = [(MRAVOutputContextModification *)self request];
  v40 = [v39 data];
  MRAddDataToXPCMessage(v38, v40, "MRXPC_CONTEXT_MODIFICATION_DATA_KEY");

  v41 = [v34 uniqueIdentifier];
  MRAddStringToXPCMessage(v38, v41, "MRXPC_ROUTING_CONTEXT_UID_KEY");

  MRAddStringToXPCMessage(v38, v35, "MRXPC_MESSAGE_CUSTOM_ID_KEY");
  v42 = +[MRMediaRemoteServiceClient sharedServiceClient];
  v43 = [v42 service];
  v44 = [v43 mrXPCConnection];
  v50[0] = MEMORY[0x1E69E9820];
  v50[1] = 3221225472;
  v50[2] = __74__MRAVOutputContextModification_modifyWithOutputContext_queue_completion___block_invoke_32;
  v50[3] = &unk_1E769B338;
  v51 = v37;
  v45 = v37;
  [v44 sendMessage:v38 queue:v10 reply:v50];

LABEL_24:
  v46 = *MEMORY[0x1E69E9840];
}

void __74__MRAVOutputContextModification_modifyWithOutputContext_queue_completion___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = qos_class_self();
  if (!v3 && *(a1 + 80) != v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"priority degraded from %u -> %u", *(a1 + 80), v4];
    v6 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138543874;
      v35 = v7;
      v36 = 2114;
      v37 = v8;
      v38 = 2112;
      v39 = v5;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v9 = *(a1 + 72);
  if (v9 == 3)
  {
    v10 = _MRLogForCategory(2uLL);
    v15 = [*(a1 + 40) hash];
    if ((v15 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_19;
    }

    v12 = v15;
    if (!os_signpost_enabled(v10))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "SetOutputDevices.xpcInterface";
    goto LABEL_18;
  }

  if (v9 == 2)
  {
    v10 = _MRLogForCategory(2uLL);
    v14 = [*(a1 + 40) hash];
    if ((v14 - 1) > 0xFFFFFFFFFFFFFFFDLL)
    {
      goto LABEL_19;
    }

    v12 = v14;
    if (!os_signpost_enabled(v10))
    {
      goto LABEL_19;
    }

    *buf = 0;
    v13 = "RemoveOutputDevices.xpcInterface";
    goto LABEL_18;
  }

  if (v9 != 1)
  {
    goto LABEL_20;
  }

  v10 = _MRLogForCategory(2uLL);
  v11 = [*(a1 + 40) hash];
  if ((v11 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v12 = v11;
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      v13 = "AddOutputDevices.xpcInterface";
LABEL_18:
      _os_signpost_emit_with_name_impl(&dword_1A2860000, v10, OS_SIGNPOST_INTERVAL_END, v12, v13, &unk_1A2BB0121, buf, 2u);
    }
  }

LABEL_19:

LABEL_20:
  v16 = [*(a1 + 48) contextID];

  v17 = _MRLogForCategory(0xAuLL);
  v18 = v17;
  if (!v3)
  {
    v25 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!v16)
    {
      if (!v25)
      {
        goto LABEL_33;
      }

      v29 = *(a1 + 32);
      v30 = *(a1 + 40);
      v22 = [MEMORY[0x1E695DF00] date];
      [v22 timeIntervalSinceDate:*(a1 + 56)];
      *buf = 138543874;
      v35 = v29;
      v36 = 2114;
      v37 = v30;
      v38 = 2048;
      v39 = v31;
      _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
      goto LABEL_32;
    }

    if (!v25)
    {
      goto LABEL_33;
    }

    v26 = *(a1 + 32);
    v27 = *(a1 + 40);
    v22 = [*(a1 + 48) contextID];
    v23 = [MEMORY[0x1E695DF00] date];
    [v23 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544130;
    v35 = v26;
    v36 = 2114;
    v37 = v27;
    v38 = 2114;
    v39 = v22;
    v40 = 2048;
    v41 = v28;
    _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
LABEL_27:

LABEL_32:
    goto LABEL_33;
  }

  v19 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v16)
  {
    if (!v19)
    {
      goto LABEL_33;
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = [*(a1 + 48) contextID];
    v23 = [MEMORY[0x1E695DF00] date];
    [v23 timeIntervalSinceDate:*(a1 + 56)];
    *buf = 138544386;
    v35 = v20;
    v36 = 2114;
    v37 = v21;
    v38 = 2114;
    v39 = v3;
    v40 = 2114;
    v41 = v22;
    v42 = 2048;
    v43 = v24;
    _os_log_error_impl(&dword_1A2860000, v18, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
    goto LABEL_27;
  }

  if (v19)
  {
    __74__MRAVOutputContextModification_modifyWithOutputContext_queue_completion___block_invoke_cold_1(a1, v3, v18);
  }

LABEL_33:

  v32 = *(a1 + 64);
  if (v32)
  {
    (*(v32 + 16))(v32, v3);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __74__MRAVOutputContextModification_modifyWithOutputContext_queue_completion___block_invoke_32(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MRCreateClientErrorFromXPCMessage(a2);
  (*(*(a1 + 32) + 16))();
}

+ (void)setModifyOutputContextImplementation:(id)a3
{
  v3 = MEMORY[0x1A58E3570](a3, a2);
  v4 = __modifyOutputContextImplementation;
  __modifyOutputContextImplementation = v3;
}

+ (id)modifyOutputContextImplementation
{
  v2 = MEMORY[0x1A58E3570](__modifyOutputContextImplementation, a2);

  return v2;
}

void __74__MRAVOutputContextModification_modifyWithOutputContext_queue_completion___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a1[4];
  v7 = a1[5];
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
@interface DRSSubmittedLogInfo
+ (id)submittedLogInfosFromPaths:(id)a3 sandboxExtensions:(id)a4 transferOwnerships:(id)a5 successOut:(BOOL *)a6;
- (DRSSubmittedLogInfo)initWithPath:(const char *)a3 sandboxExtension:(const char *)a4 transferOwnership:(BOOL)a5;
- (id)debugDescription;
@end

@implementation DRSSubmittedLogInfo

- (DRSSubmittedLogInfo)initWithPath:(const char *)a3 sandboxExtension:(const char *)a4 transferOwnership:(BOOL)a5
{
  v5 = 0;
  if (a3 && a4)
  {
    v15.receiver = self;
    v15.super_class = DRSSubmittedLogInfo;
    v9 = [(DRSSubmittedLogInfo *)&v15 init];
    if (v9)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3];
      path = v9->_path;
      v9->_path = v10;

      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
      sandboxExtension = v9->_sandboxExtension;
      v9->_sandboxExtension = v12;

      v9->_transferOwnership = a5;
    }

    self = v9;
    v5 = self;
  }

  return v5;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(DRSSubmittedLogInfo *)self path];
  v5 = [(DRSSubmittedLogInfo *)self sandboxExtension];
  v6 = [(DRSSubmittedLogInfo *)self transferOwnership];
  v7 = @"Copy";
  if (v6)
  {
    v7 = @"Transfer";
  }

  v8 = [v3 stringWithFormat:@"%@ %@ %@", v4, v5, v7];

  return v8;
}

+ (id)submittedLogInfosFromPaths:(id)a3 sandboxExtensions:(id)a4 transferOwnerships:(id)a5 successOut:(BOOL *)a6
{
  v44 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  *a6 = 1;
  if (!v9 || !v10 || !v11)
  {
    if (!v9 && !v10 && !v11)
    {
      v18 = 0;
      goto LABEL_31;
    }

    v15 = DPLogHandle_RequestError();
    if (!os_signpost_enabled(v15))
    {
      goto LABEL_30;
    }

    v19 = @"Available";
    if (v9)
    {
      v20 = @"Available";
    }

    else
    {
      v20 = @"Missing";
    }

    if (v10)
    {
      v21 = @"Available";
    }

    else
    {
      v21 = @"Missing";
    }

    v38 = 138543874;
    v39 = v20;
    v40 = 2114;
    v41 = v21;
    if (!v12)
    {
      v19 = @"Missing";
    }

    v42 = 2114;
    v43 = v19;
    v16 = "SubmittedLogInfoFailure";
    v17 = "Could not generate submitted log info array due to missing input.\nPaths: %{public}@\nSandboxExtensions:%{public}@\nTransferBools:%{public}@";
LABEL_21:
    v22 = v15;
    v23 = 32;
LABEL_29:
    _os_signpost_emit_with_name_impl(&dword_232906000, v22, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v16, v17, &v38, v23);
    goto LABEL_30;
  }

  v13 = MEMORY[0x23838A140](v9);
  v14 = MEMORY[0x277D86440];
  if (v13 != MEMORY[0x277D86440])
  {
    v15 = DPLogHandle_RequestError();
    if (os_signpost_enabled(v15))
    {
      LOWORD(v38) = 0;
      v16 = "SubmittedLogInfoFailureUnexpected xpcPathArray type";
      v17 = &unk_232980861;
LABEL_28:
      v22 = v15;
      v23 = 2;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (MEMORY[0x23838A140](v10) != v14)
  {
    v15 = DPLogHandle_RequestError();
    if (os_signpost_enabled(v15))
    {
      LOWORD(v38) = 0;
      v16 = "SubmittedLogInfoFailureUnexpected xpcSandboxExtensionsArray type";
      v17 = &unk_232980861;
      goto LABEL_28;
    }

LABEL_30:

    v18 = 0;
    *a6 = 0;
    goto LABEL_31;
  }

  if (MEMORY[0x23838A140](v12) != v14)
  {
    v15 = DPLogHandle_RequestError();
    if (os_signpost_enabled(v15))
    {
      LOWORD(v38) = 0;
      v16 = "SubmittedLogInfoFailureUnexpected xpcTransferBoolArray type";
      v17 = &unk_232980861;
      goto LABEL_28;
    }

    goto LABEL_30;
  }

  count = xpc_array_get_count(v9);
  v27 = xpc_array_get_count(v10);
  v28 = xpc_array_get_count(v12);
  v29 = v28;
  if (count != v27 || count != v28)
  {
    v15 = DPLogHandle_RequestError();
    if (!os_signpost_enabled(v15))
    {
      goto LABEL_30;
    }

    v38 = 134349568;
    v39 = count;
    v40 = 2050;
    v41 = v27;
    v42 = 2050;
    v43 = v29;
    v16 = "SubmittedLogInfoFailure";
    v17 = "Inconsisted info counts:\nPaths: %{public}zu\nSandbox extensions: %{public}zu\nTransfer BOOLs: %{public}zu\n";
    goto LABEL_21;
  }

  v30 = [MEMORY[0x277CBEB18] array];
  if (count)
  {
    v31 = 0;
    while (1)
    {
      v32 = [DRSSubmittedLogInfo alloc];
      string = xpc_array_get_string(v9, v31);
      v34 = xpc_array_get_string(v10, v31);
      v35 = [(DRSSubmittedLogInfo *)v32 initWithPath:string sandboxExtension:v34 transferOwnership:xpc_array_get_BOOL(v12, v31)];
      if (!v35)
      {
        break;
      }

      v36 = v35;
      [v30 addObject:v35];

      if (count == ++v31)
      {
        goto LABEL_40;
      }
    }

    v37 = DPLogHandle_RequestError();
    if (os_signpost_enabled(v37))
    {
      LOWORD(v38) = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v37, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "SubmittedLogInfoFailure", "Could not create new submitted log info\n", &v38, 2u);
    }

    goto LABEL_47;
  }

LABEL_40:
  if (![v30 count])
  {
LABEL_47:
    v18 = 0;
    *a6 = 0;
    goto LABEL_48;
  }

  v18 = v30;
LABEL_48:

LABEL_31:
  v24 = *MEMORY[0x277D85DE8];

  return v18;
}

@end
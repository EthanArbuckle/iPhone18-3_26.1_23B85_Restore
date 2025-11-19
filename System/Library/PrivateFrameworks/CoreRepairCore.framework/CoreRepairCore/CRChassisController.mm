@interface CRChassisController
- (BOOL)checkRepairEnvironment;
- (BOOL)shouldIgnorePatching:(id)a3;
- (id)diffWithSealed:(id)a3 live:(id)a4;
- (id)getAndVerifyDataInstance:(id)a3;
- (id)getLiveChMf;
- (id)getOSEnvironment;
- (id)overrideFromNVRam:(id)a3;
- (id)overrideParameters:(id)a3;
- (void)replyWithMessage:(id)a3 status:(id)a4 results:(id)a5 reply:(id)a6;
- (void)seal:(id)a3 withReply:(id)a4;
@end

@implementation CRChassisController

- (void)seal:(id)a3 withReply:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([(CRChassisController *)self checkRepairEnvironment])
  {
    v8 = [(CRChassisController *)self overrideParameters:v6];
    v9 = [v8 mutableCopy];

    v10 = [(CRChassisController *)self getAndVerifyDataInstance:@"ChMf"];
    if (v10)
    {
      v11 = v10;
      v12 = [CRFDRUtils getDataPayloadDictWithClass:@"ChMf" instance:v10];
      if (v12)
      {
        v13 = v12;
        v14 = handleForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v34 = v13;
          _os_log_impl(&dword_1CEDC5000, v14, OS_LOG_TYPE_DEFAULT, "Sealed system manifest %@", buf, 0xCu);
        }

        v15 = [(CRChassisController *)self getLiveChMf];
        if (v15)
        {
          v16 = v15;
          v17 = handleForCategory(0);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v34 = v16;
            _os_log_impl(&dword_1CEDC5000, v17, OS_LOG_TYPE_DEFAULT, "Live system manifest %@", buf, 0xCu);
          }

          v18 = [(CRChassisController *)self diffWithSealed:v13 live:v16];
          v19 = v18;
          if (v18 && [v18 count])
          {
            v20 = MGCopyAnswer();
            [v9 setObject:v20 forKeyedSubscript:@"KGBSerialNumber"];

            [v9 setObject:&unk_1F4BCD228 forKeyedSubscript:@"patchDataClasses"];
            v32 = v11;
            v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
            [v9 setObject:v21 forKeyedSubscript:@"patchDataInstances"];

            v31 = v19;
            v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
            [v9 setObject:v22 forKeyedSubscript:@"patchValues"];

            [v9 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"doSeal"];
            v23 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.corerepair" options:0];
            v24 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4BD2C38];
            [v23 setRemoteObjectInterface:v24];

            [v23 resume];
            v25 = [v23 remoteObjectProxy];
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __38__CRChassisController_seal_withReply___block_invoke;
            v28[3] = &unk_1E83B3EE8;
            v28[4] = self;
            v29 = v23;
            v30 = v7;
            v26 = v23;
            [v25 seal:v9 withReply:v28];
          }

          else
          {
            [(CRChassisController *)self replyWithMessage:@"Nothing to patch" status:&unk_1F4BCD9F8 results:0 reply:v7];
          }
        }

        else
        {
          [(CRChassisController *)self replyWithError:@"Failed to get live system manifest" reply:v7];
        }
      }

      else
      {
        [(CRChassisController *)self replyWithError:@"Failed to get sealed system manifest" reply:v7];
      }
    }

    else
    {
      [(CRChassisController *)self replyWithError:@"Failed to get data instance" reply:v7];
    }
  }

  else
  {
    [(CRChassisController *)self replyWithError:@"Not supported under current environment" reply:v7];
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __38__CRChassisController_seal_withReply___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = handleForCategory(0);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_1CEDC5000, v4, OS_LOG_TYPE_DEFAULT, "Results %@", &v9, 0xCu);
  }

  v5 = [v3 objectForKeyedSubscript:@"statusCode"];

  if (v5)
  {
    v5 = [v3 objectForKeyedSubscript:@"statusCode"];
  }

  v6 = [v3 objectForKeyedSubscript:@"data"];

  if (v6)
  {
    v6 = [v3 objectForKeyedSubscript:@"data"];
    v7 = [v6 objectForKeyedSubscript:@"fdrErrorDescription"];

    if (v7)
    {
      v7 = [v6 objectForKeyedSubscript:@"fdrErrorDescription"];
    }
  }

  else
  {
    v7 = 0;
  }

  [*(a1 + 32) replyWithMessage:v7 status:v5 results:v6 reply:*(a1 + 48)];
  [*(a1 + 40) invalidate];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)replyWithMessage:(id)a3 status:(id)a4 results:(id)a5 reply:(id)a6
{
  v19[3] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v18[0] = @"status";
  v13 = v10;
  if (!v10)
  {
    v13 = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = v13;
  v18[1] = @"description";
  v14 = v9;
  if (!v9)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = v14;
  v18[2] = @"results";
  v15 = v11;
  if (!v11)
  {
    v15 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  v12[2](v12, v16);

  if (v11)
  {
    if (v9)
    {
      goto LABEL_9;
    }

LABEL_12:

    if (v10)
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_10;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:

  v17 = *MEMORY[0x1E69E9840];
}

- (id)overrideParameters:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 mutableCopy];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = v6;
  v8 = [v6 objectForKeyedSubscript:@"CAURL"];

  if (!v8)
  {
    [v7 setObject:@"https://gg.apple.com" forKeyedSubscript:@"CAURL"];
  }

  v9 = [v7 objectForKeyedSubscript:@"DSURL"];

  if (!v9)
  {
    [v7 setObject:@"https://skl.apple.com" forKeyedSubscript:@"DSURL"];
  }

  v10 = [v7 objectForKeyedSubscript:@"TrustObjectURL"];

  if (!v10)
  {
    [v7 setObject:@"http://gg.apple.com/fdrtrustobject" forKeyedSubscript:@"TrustObjectURL"];
  }

  v11 = [v7 objectForKeyedSubscript:@"SealingURL"];

  if (!v11)
  {
    [v7 setObject:@"https://ig.apple.com" forKeyedSubscript:@"SealingURL"];
  }

  if (os_variant_has_internal_content())
  {
    v12 = [(CRChassisController *)self overrideFromNVRam:v7];
  }

  else
  {
    v12 = v7;
  }

  v13 = v12;

  return v13;
}

- (id)overrideFromNVRam:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v27 = 0;
  v4 = [CRNVRAMController readNVRAMValueForKey:@"corerepair-override" error:&v27];
  v5 = v27;
  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v26 = 0;
    v10 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v4 options:4 error:&v26];
    v11 = v26;
    v7 = v11;
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 0;
    }

    if (!v12)
    {
      v13 = handleForCategory(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(CRChassisController *)v7 overrideFromNVRam:v13];
      }
    }

    v14 = handleForCategory(0);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v10;
      _os_log_impl(&dword_1CEDC5000, v14, OS_LOG_TYPE_DEFAULT, "nvram overriede: %@", buf, 0xCu);
    }

    if (v3)
    {
      v15 = [v3 mutableCopy];
    }

    else
    {
      v15 = [MEMORY[0x1E695DF90] dictionary];
    }

    v9 = v15;
    v16 = [v10 objectForKeyedSubscript:@"CAURL"];

    if (v16)
    {
      v17 = [v10 objectForKeyedSubscript:@"CAURL"];
      [v9 setObject:v17 forKeyedSubscript:@"CAURL"];
    }

    v18 = [v10 objectForKeyedSubscript:@"DSURL"];

    if (v18)
    {
      v19 = [v10 objectForKeyedSubscript:@"DSURL"];
      [v9 setObject:v19 forKeyedSubscript:@"DSURL"];
    }

    v20 = [v10 objectForKeyedSubscript:@"TrustObjectURL"];

    if (v20)
    {
      v21 = [v10 objectForKeyedSubscript:@"TrustObjectURL"];
      [v9 setObject:v21 forKeyedSubscript:@"TrustObjectURL"];
    }

    v22 = [v10 objectForKeyedSubscript:@"SealingURL"];

    if (v22)
    {
      v23 = [v10 objectForKeyedSubscript:@"SealingURL"];
      [v9 setObject:v23 forKeyedSubscript:@"SealingURL"];
    }
  }

  else
  {
    v7 = v5;
    v8 = handleForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v7;
      _os_log_impl(&dword_1CEDC5000, v8, OS_LOG_TYPE_DEFAULT, "No nvram override: %@", buf, 0xCu);
    }

    v9 = v3;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)diffWithSealed:(id)a3 live:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v21 = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        v14 = [v6 objectForKeyedSubscript:v12];
        if (v13 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          if (v14 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if ([v13 isEqualToData:v14])
            {
              goto LABEL_23;
            }

            v15 = handleForCategory(0);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v28 = v12;
              _os_log_impl(&dword_1CEDC5000, v15, OS_LOG_TYPE_DEFAULT, "Found diff values of %@", buf, 0xCu);
            }

            if ([(CRChassisController *)self shouldIgnorePatching:v12])
            {
              v16 = handleForCategory(0);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v28 = v12;
                _os_log_impl(&dword_1CEDC5000, v16, OS_LOG_TYPE_DEFAULT, "Ignore %@", buf, 0xCu);
              }
            }

            else
            {
              v16 = [v6 objectForKeyedSubscript:v12];
              [v21 setObject:v16 forKeyedSubscript:v12];
            }
          }

          else
          {
            v16 = handleForCategory(0);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412546;
              v28 = v12;
              v29 = 2112;
              v30 = v14;
              v17 = v16;
              v18 = "Invalid type of %@ in live data: %@";
              goto LABEL_20;
            }
          }
        }

        else
        {
          v16 = handleForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v28 = v12;
            v29 = 2112;
            v30 = v13;
            v17 = v16;
            v18 = "Invalid type of %@ in sealed data: %@";
LABEL_20:
            _os_log_error_impl(&dword_1CEDC5000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x16u);
          }
        }

LABEL_23:
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v9);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v21;
}

- (BOOL)shouldIgnorePatching:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a3;
  LODWORD(v7) = -1281988531;
  v4 = MGIsDeviceOfType() && (([v3 isEqualToString:{@"BM05", 0xD4C83437A3FD0C4FLL, 0x2B927B663C22D954, v7, v8}] & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"N") && (objc_msgSend(v3, "hasSuffix:", @"4") & 1) != 0);

  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

- (id)getLiveChMf
{
  if (copyFdrBlob())
  {
    v2 = handleForCategory(0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      [(CRChassisController *)v2 getLiveChMf:v3];
    }
  }

  return 0;
}

- (id)getAndVerifyDataInstance:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AMFDRSealingMapCopyInstanceForClass();
  v5 = handleForCategory(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v3;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_1CEDC5000, v6, OS_LOG_TYPE_DEFAULT, "Instance of %@ from sealing map: %@", buf, 0x16u);
    }

    v7 = AMFDRSealingManifestCopyInstanceForClass();
    v8 = handleForCategory(0);
    v6 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v26 = v3;
        v27 = 2112;
        v28 = v7;
        _os_log_impl(&dword_1CEDC5000, v6, OS_LOG_TYPE_DEFAULT, "Instance of %@ from sealing manifest: %@", buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CRChassisController *)v6 getAndVerifyDataInstance:v18, v19, v20, v21, v22, v23, v24];
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CRChassisController *)v6 getAndVerifyDataInstance:v11, v12, v13, v14, v15, v16, v17];
    }

    v7 = 0;
  }

  AMSupportSafeRelease();
  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (BOOL)checkRepairEnvironment
{
  v2 = [(CRChassisController *)self getOSEnvironment];
  v3 = [v2 isEqualToString:@"repair"];

  return v3;
}

- (id)getOSEnvironment
{
  v2 = IORegistryEntryFromPath(*MEMORY[0x1E696CD60], "IODeviceTree:/chosen");
  if (v2)
  {
    v3 = v2;
    CFProperty = IORegistryEntryCreateCFProperty(v2, @"osenvironment", *MEMORY[0x1E695E480], 0);
    v5 = CFProperty;
    if (CFProperty)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:objc_msgSend(CFProperty length:"bytes") encoding:{strnlen(objc_msgSend(CFProperty, "bytes"), objc_msgSend(CFProperty, "length")), 1}];
    }

    else
    {
      v6 = 0;
    }

    IOObjectRelease(v3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
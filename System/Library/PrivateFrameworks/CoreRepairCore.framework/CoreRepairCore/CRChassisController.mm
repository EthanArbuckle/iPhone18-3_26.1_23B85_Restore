@interface CRChassisController
- (BOOL)checkRepairEnvironment;
- (BOOL)shouldIgnorePatching:(id)patching;
- (id)diffWithSealed:(id)sealed live:(id)live;
- (id)getAndVerifyDataInstance:(id)instance;
- (id)getLiveChMf;
- (id)getOSEnvironment;
- (id)overrideFromNVRam:(id)ram;
- (id)overrideParameters:(id)parameters;
- (void)replyWithMessage:(id)message status:(id)status results:(id)results reply:(id)reply;
- (void)seal:(id)seal withReply:(id)reply;
@end

@implementation CRChassisController

- (void)seal:(id)seal withReply:(id)reply
{
  v35 = *MEMORY[0x1E69E9840];
  sealCopy = seal;
  replyCopy = reply;
  if ([(CRChassisController *)self checkRepairEnvironment])
  {
    v8 = [(CRChassisController *)self overrideParameters:sealCopy];
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

        getLiveChMf = [(CRChassisController *)self getLiveChMf];
        if (getLiveChMf)
        {
          v16 = getLiveChMf;
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
            remoteObjectProxy = [v23 remoteObjectProxy];
            v28[0] = MEMORY[0x1E69E9820];
            v28[1] = 3221225472;
            v28[2] = __38__CRChassisController_seal_withReply___block_invoke;
            v28[3] = &unk_1E83B3EE8;
            v28[4] = self;
            v29 = v23;
            v30 = replyCopy;
            v26 = v23;
            [remoteObjectProxy seal:v9 withReply:v28];
          }

          else
          {
            [(CRChassisController *)self replyWithMessage:@"Nothing to patch" status:&unk_1F4BCD9F8 results:0 reply:replyCopy];
          }
        }

        else
        {
          [(CRChassisController *)self replyWithError:@"Failed to get live system manifest" reply:replyCopy];
        }
      }

      else
      {
        [(CRChassisController *)self replyWithError:@"Failed to get sealed system manifest" reply:replyCopy];
      }
    }

    else
    {
      [(CRChassisController *)self replyWithError:@"Failed to get data instance" reply:replyCopy];
    }
  }

  else
  {
    [(CRChassisController *)self replyWithError:@"Not supported under current environment" reply:replyCopy];
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

- (void)replyWithMessage:(id)message status:(id)status results:(id)results reply:(id)reply
{
  v19[3] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  statusCopy = status;
  resultsCopy = results;
  replyCopy = reply;
  v18[0] = @"status";
  null = statusCopy;
  if (!statusCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v19[0] = null;
  v18[1] = @"description";
  null2 = messageCopy;
  if (!messageCopy)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v19[1] = null2;
  v18[2] = @"results";
  null3 = resultsCopy;
  if (!resultsCopy)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v19[2] = null3;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:3];
  replyCopy[2](replyCopy, v16);

  if (resultsCopy)
  {
    if (messageCopy)
    {
      goto LABEL_9;
    }

LABEL_12:

    if (statusCopy)
    {
      goto LABEL_10;
    }

LABEL_13:

    goto LABEL_10;
  }

  if (!messageCopy)
  {
    goto LABEL_12;
  }

LABEL_9:
  if (!statusCopy)
  {
    goto LABEL_13;
  }

LABEL_10:

  v17 = *MEMORY[0x1E69E9840];
}

- (id)overrideParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = parametersCopy;
  if (parametersCopy)
  {
    dictionary = [parametersCopy mutableCopy];
  }

  else
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
  }

  v7 = dictionary;
  v8 = [dictionary objectForKeyedSubscript:@"CAURL"];

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

- (id)overrideFromNVRam:(id)ram
{
  v30 = *MEMORY[0x1E69E9840];
  ramCopy = ram;
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

    if (ramCopy)
    {
      dictionary = [ramCopy mutableCopy];
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v9 = dictionary;
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

    v9 = ramCopy;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)diffWithSealed:(id)sealed live:(id)live
{
  v32 = *MEMORY[0x1E69E9840];
  sealedCopy = sealed;
  liveCopy = live;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = sealedCopy;
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
        v14 = [liveCopy objectForKeyedSubscript:v12];
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
              v16 = [liveCopy objectForKeyedSubscript:v12];
              [dictionary setObject:v16 forKeyedSubscript:v12];
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

  return dictionary;
}

- (BOOL)shouldIgnorePatching:(id)patching
{
  v8 = *MEMORY[0x1E69E9840];
  patchingCopy = patching;
  LODWORD(v7) = -1281988531;
  v4 = MGIsDeviceOfType() && (([patchingCopy isEqualToString:{@"BM05", 0xD4C83437A3FD0C4FLL, 0x2B927B663C22D954, v7, v8}] & 1) != 0 || objc_msgSend(patchingCopy, "hasPrefix:", @"N") && (objc_msgSend(patchingCopy, "hasSuffix:", @"4") & 1) != 0);

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

- (id)getAndVerifyDataInstance:(id)instance
{
  v29 = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  v4 = AMFDRSealingMapCopyInstanceForClass();
  v5 = handleForCategory(0);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = instanceCopy;
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
        v26 = instanceCopy;
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
  getOSEnvironment = [(CRChassisController *)self getOSEnvironment];
  v3 = [getOSEnvironment isEqualToString:@"repair"];

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
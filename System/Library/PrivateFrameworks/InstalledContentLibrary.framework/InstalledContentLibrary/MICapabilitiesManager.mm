@interface MICapabilitiesManager
+ (id)defaultManager;
- (id)checkCapabilities:(id)capabilities withOptions:(id)options error:(id *)error;
@end

@implementation MICapabilitiesManager

+ (id)defaultManager
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__MICapabilitiesManager_defaultManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (defaultManager_onceToken_0 != -1)
  {
    dispatch_once(&defaultManager_onceToken_0, block);
  }

  v2 = defaultManager_defaultManager_0;

  return v2;
}

uint64_t __39__MICapabilitiesManager_defaultManager__block_invoke()
{
  defaultManager_defaultManager_0 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x1EEE66BB8]();
}

- (id)checkCapabilities:(id)capabilities withOptions:(id)options error:(id *)error
{
  v47[3] = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  optionsCopy = options;
  v9 = objc_opt_new();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    allKeys = capabilitiesCopy;
    allValues = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v29 = _CreateAndLogError("[MICapabilitiesManager checkCapabilities:withOptions:error:]", 65, @"MIInstallerErrorDomain", 66, 0, 0, @"UIRequiredDeviceCapabilties in Info.plist does not have an array or dictionary value.", v11, v36);
      v24 = 0;
      allValues = 0;
      allKeys = 0;
      if (!error)
      {
        goto LABEL_47;
      }

      goto LABEL_45;
    }

    allKeys = [capabilitiesCopy allKeys];
    allValues = [capabilitiesCopy allValues];
  }

  v39 = capabilitiesCopy;
  errorCopy = error;
  v40 = v9;
  if (optionsCopy)
  {
    v12 = [optionsCopy objectForKeyedSubscript:*MEMORY[0x1E695E4F0]];
    if (v12 && (+[MIDaemonConfiguration sharedInstance](MIDaemonConfiguration, "sharedInstance"), v13 = objc_claimAutoreleasedReturnValue(), [v13 installationBlacklist], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "containsObject:", v12), v14, v13, v15))
    {
      if (!gLogHandle || *(gLogHandle + 44) >= 5)
      {
        v36 = v12;
        MOLogWrite();
      }

      v16 = 1;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  v17 = [allKeys count];
  if (!v17)
  {
LABEL_34:
    if (v16)
    {
      v46[0] = @"CapabilitiesMatch";
      v46[1] = @"MismatchedCapabilities";
      v9 = v40;
      v47[0] = MEMORY[0x1E695E110];
      v47[1] = v40;
      v46[2] = @"AppBlacklisted";
      v47[2] = MEMORY[0x1E695E118];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v47 forKeys:v46 count:3];
      v29 = 0;
      capabilitiesCopy = v39;
      error = errorCopy;
      if (!errorCopy)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v9 = v40;
      error = errorCopy;
      if ([v40 count])
      {
        v44[0] = @"CapabilitiesMatch";
        v44[1] = @"MismatchedCapabilities";
        v45[0] = MEMORY[0x1E695E110];
        v45[1] = v40;
        v30 = MEMORY[0x1E695DF20];
        v31 = v45;
        v32 = v44;
        v33 = 2;
      }

      else
      {
        v42 = @"CapabilitiesMatch";
        v43 = MEMORY[0x1E695E118];
        v30 = MEMORY[0x1E695DF20];
        v31 = &v43;
        v32 = &v42;
        v33 = 1;
      }

      v24 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33];
      v29 = 0;
      capabilitiesCopy = v39;
      if (!errorCopy)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_45;
  }

  v18 = v17;
  v19 = 0;
  v20 = *MEMORY[0x1E695E4D0];
  v21 = *MEMORY[0x1E695E4C0];
  while (1)
  {
    v22 = [allKeys objectAtIndexedSubscript:v19];
    objc_opt_class();
    v23 = v22;
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v26 = v20;
    if (allValues)
    {
      v26 = [allValues objectAtIndexedSubscript:v19];
    }

    if (!v24)
    {
      break;
    }

    if (v16)
    {
      if (CFEqual(v20, v26))
      {
        v27 = v21;
      }

      else
      {
        v27 = v20;
      }

      [v40 setObject:v27 forKeyedSubscript:v24];
    }

    else
    {
      v28 = MGCopyAnswer();
      if (!v28)
      {
        CFRetain(v21);
        v28 = v21;
      }

      if (!CFEqual(v28, v26))
      {
        [v40 setObject:v28 forKeyedSubscript:v24];
      }

      CFRelease(v28);
    }

    if (v18 == ++v19)
    {
      goto LABEL_34;
    }
  }

  v29 = _CreateAndLogError("[MICapabilitiesManager checkCapabilities:withOptions:error:]", 92, @"MIInstallerErrorDomain", 66, 0, 0, @"UIRequiredDeviceCapabilties in Info.plist has a key that is not a string", v25, v37);
  capabilitiesCopy = v39;
  error = errorCopy;
  v9 = v40;
  if (errorCopy)
  {
LABEL_45:
    if (!v24)
    {
      v34 = v29;
      *error = v29;
    }
  }

LABEL_47:

  return v24;
}

@end
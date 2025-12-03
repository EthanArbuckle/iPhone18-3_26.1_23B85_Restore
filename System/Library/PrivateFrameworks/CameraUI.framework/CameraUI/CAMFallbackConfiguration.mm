@interface CAMFallbackConfiguration
+ (id)getPathOfFallbackDevicesFile;
+ (id)readFallbackDevicesFromDisk;
+ (void)checkAvailableCameraModules;
+ (void)getAvailableFallbackDevicesWithCompletion:(id)completion;
@end

@implementation CAMFallbackConfiguration

+ (void)getAvailableFallbackDevicesWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v4 = MEMORY[0x1E69870A8];
  v5 = +[CAMCaptureCapabilities capabilities];
  getSupportedCameraModules = [v5 getSupportedCameraModules];
  v7 = [v4 discoverySessionWithDeviceTypes:getSupportedCameraModules mediaType:0 position:1];

  v8 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  devices = [v7 devices];
  v10 = [devices countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(devices);
        }

        deviceType = [*(*(&v16 + 1) + 8 * v13) deviceType];
        [v8 addObject:deviceType];

        ++v13;
      }

      while (v11 != v13);
      v11 = [devices countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  allObjects = [v8 allObjects];
  completionCopy[2](completionCopy, allObjects);
}

+ (id)readFallbackDevicesFromDisk
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DEC8];
  v3 = MEMORY[0x1E695DFF8];
  getPathOfFallbackDevicesFile = [objc_opt_class() getPathOfFallbackDevicesFile];
  v5 = [v3 fileURLWithPath:getPathOfFallbackDevicesFile];
  v15 = 0;
  v6 = [v2 arrayWithContentsOfURL:v5 error:&v15];
  v7 = v15;

  code = [v7 code];
  v9 = os_log_create("com.apple.camera", "Camera");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (code == 260)
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v11 = "Read in readFallbackDevicesFromDisk no file exists";
    v12 = v9;
    v13 = 2;
  }

  else
  {
    if (!v10)
    {
      goto LABEL_7;
    }

    *buf = 138412546;
    v17 = v6;
    v18 = 2112;
    v19 = v7;
    v11 = "Read in readFallbackDevicesFromDisk %@ error: %@";
    v12 = v9;
    v13 = 22;
  }

  _os_log_impl(&dword_1A3640000, v12, OS_LOG_TYPE_DEFAULT, v11, buf, v13);
LABEL_7:

  return v6;
}

+ (id)getPathOfFallbackDevicesFile
{
  if (getPathOfFallbackDevicesFile_onceToken != -1)
  {
    +[CAMFallbackConfiguration getPathOfFallbackDevicesFile];
  }

  v3 = getPathOfFallbackDevicesFile_pathOfFile;

  return v3;
}

void __56__CAMFallbackConfiguration_getPathOfFallbackDevicesFile__block_invoke()
{
  v2 = CPSharedResourcesDirectory();
  v0 = [v2 stringByAppendingPathComponent:@"Media/DCIM/.MISC/CAMFallbackBackCameraModule.plist"];
  v1 = getPathOfFallbackDevicesFile_pathOfFile;
  getPathOfFallbackDevicesFile_pathOfFile = v0;
}

+ (void)checkAvailableCameraModules
{
  v2 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "checkAvailableCameraModules check available camera modules", v3, 2u);
  }

  [CAMFallbackConfiguration getAvailableFallbackDevicesWithCompletion:&__block_literal_global_9_0];
}

void __55__CAMFallbackConfiguration_checkAvailableCameraModules__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__CAMFallbackConfiguration_checkAvailableCameraModules__block_invoke_2;
  block[3] = &unk_1E76F77B0;
  v6 = v2;
  v4 = v2;
  dispatch_async(v3, block);
}

void __55__CAMFallbackConfiguration_checkAvailableCameraModules__block_invoke_2(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = os_log_create("com.apple.camera", "Camera");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v45 = v3;
    _os_log_impl(&dword_1A3640000, v2, OS_LOG_TYPE_DEFAULT, "checkAvailableCameraModules availableDevices %@", buf, 0xCu);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = +[CAMCaptureCapabilities capabilities];
  v5 = [v4 getSupportedCameraModules];

  v6 = [v5 countByEnumeratingWithState:&v38 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        if (([*(a1 + 32) containsObject:v10] & 1) == 0)
        {
          v17 = os_log_create("com.apple.camera", "Camera");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v45 = v10;
            _os_log_impl(&dword_1A3640000, v17, OS_LOG_TYPE_DEFAULT, "checkAvailableCameraModules missing camera module %@", buf, 0xCu);
          }

          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v15 = *(a1 + 32);
          v18 = [v15 countByEnumeratingWithState:&v34 objects:v42 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v35;
            while (2)
            {
              for (j = 0; j != v19; ++j)
              {
                if (*v35 != v20)
                {
                  objc_enumerationMutation(v15);
                }

                v22 = *(*(&v34 + 1) + 8 * j);
                v23 = +[CAMCaptureCapabilities capabilities];
                v24 = [v23 fallbackCameraModules];
                v25 = [v24 containsObject:v22];

                if ((v25 & 1) == 0)
                {
                  v26 = os_log_create("com.apple.camera", "Camera");
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v45 = v22;
                    _os_log_impl(&dword_1A3640000, v26, OS_LOG_TYPE_DEFAULT, "checkAvailableCameraModules missing camera module restored %@", buf, 0xCu);
                  }

                  v27 = *(a1 + 32);
                  v28 = MEMORY[0x1E695DFF8];
                  v29 = +[CAMFallbackConfiguration getPathOfFallbackDevicesFile];
                  v30 = [v28 fileURLWithPath:v29];
                  v33 = 0;
                  [v27 writeToURL:v30 error:&v33];
                  v16 = v33;

                  v31 = os_log_create("com.apple.camera", "Camera");
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v45 = v16;
                    _os_log_impl(&dword_1A3640000, v31, OS_LOG_TYPE_DEFAULT, "checkAvailableCameraModules failed with error %@", buf, 0xCu);
                  }

                  goto LABEL_30;
                }
              }

              v19 = [v15 countByEnumeratingWithState:&v34 objects:v42 count:16];
              if (v19)
              {
                continue;
              }

              break;
            }
          }

          goto LABEL_31;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:v43 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = +[CAMCaptureCapabilities capabilities];
  v12 = [v11 fallbackCameraEnabled];

  if (v12)
  {
    v13 = [MEMORY[0x1E696AC08] defaultManager];
    v14 = +[CAMFallbackConfiguration getPathOfFallbackDevicesFile];
    v32 = 0;
    [v13 removeItemAtPath:v14 error:&v32];
    v15 = v32;

    v16 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = v15;
      _os_log_impl(&dword_1A3640000, v16, OS_LOG_TYPE_DEFAULT, "checkAvailableCameraModules all camera modules restored file cleanup error %@", buf, 0xCu);
    }

LABEL_30:
  }

  else
  {
    v15 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3640000, v15, OS_LOG_TYPE_DEFAULT, "checkAvailableCameraModules all camera modules operational", buf, 2u);
    }
  }

LABEL_31:
}

@end
id IFDefaultLog()
{
  if (IFDefaultLog_onceToken != -1)
  {
    IFDefaultLog_cold_1();
  }

  v1 = IFDefaultLog_log;

  return v1;
}

uint64_t __IFDefaultLog_block_invoke()
{
  IFDefaultLog_log = os_log_create("com.apple.iconservices", "foundation");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t CopyImageBlockSetCallback(void *a1, uint64_t a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = a1;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      CopyImageBlockSetCallback_cold_1();
    }

    v5 = [v4 __IS_copyCGImageBlockSetWithProvider:a2];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [a1 blockSet];
      if (v5)
      {
        CGImageBlockSetRetain();
      }
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

void ReleaseInfoCallback(void *a1)
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      ReleaseInfoCallback_cold_1();
    }
  }
}

void __CGImageProviderAuxInfo_block_invoke()
{
  v3[1] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695F2C8];
  v3[0] = *MEMORY[0x1E695E4D0];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:&v2 count:1];
  v1 = CGImageProviderAuxInfo_auxiliaryInfo;
  CGImageProviderAuxInfo_auxiliaryInfo = v0;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void sub_1B9DFF0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id IFTopLevelAppBundlePlistKeys()
{
  v0 = MEMORY[0x1E695DFD8];
  v1 = +[IFPlistParser topLevelAppBundleIconKeys];
  v2 = [v0 setWithArray:v1];

  return v2;
}

id IFPossibleResourceFilenames(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (v3 && [v3 count])
  {
    v5 = [[IFPlistParser alloc] initWithInfoDictionary:v4];
    v6 = [(IFPlistParser *)v5 catalogAssetNamesReturningPlistExcerpt:0];

    if (v6)
    {
      v7 = [MEMORY[0x1E695DFD8] setWithObject:@"Assets.car"];
    }

    else
    {
      v9 = [(IFPlistParser *)v5 looseFilesNamesReturningPlistExcerpt:0];
      if (v9)
      {
        v10 = [[IFResourceNames alloc] initWithRootNames:v9 variants:&unk_1F37E4D50];
        v11 = [(IFResourceNames *)v10 extrapolateFullNamesForIOS];
        v12 = [(IFResourceNames *)v10 extrapolateFullNamesForMacOS];
        v7 = [v12 setByAddingObjectsFromSet:v11];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid infoDictionary"];
    logAndSetError(v5, -2, a2);
    v7 = 0;
  }

  return v7;
}

void logAndSetError(void *a1, uint64_t a2, void *a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = IFDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    logAndSetError_cold_1(v5, a2, v6);
  }

  if (a3)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", v5, *MEMORY[0x1E696A578]];
    v10[0] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    *a3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.iconServices.assetCapture.error" code:a2 userInfo:v8];
  }
}

uint64_t _appendPlatformInfo(void *a1, void *a2)
{
  v3 = a1;
  v4 = v3;
  if (a2)
  {
    v9 = v3;
    v3 = [v3 platformForICC];
    v4 = v9;
    if (v3)
    {
      v5 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:*a2];
      v6 = +[IFPlatformInfo sharedInstance];
      v7 = [v6 iconPlatformStringFromPlatform:{objc_msgSend(v9, "platformForICC")}];

      [v5 setObject:v7 forKey:@"ISIconPlatform"];
      *a2 = [v5 copy];

      v4 = v9;
    }
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

BOOL _captureCatalogAssets(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a1;
  v10 = a3;
  v11 = [a2 catalogAssetNamesReturningPlistExcerpt:a4];
  if (!v11)
  {
    goto LABEL_7;
  }

  v12 = [v9 assetCatalogURL];

  if (!v12)
  {
    v24 = MEMORY[0x1E696AEC0];
    v25 = [v9 bundleURL];
    v26 = [v24 stringWithFormat:@"Bundle '%@' declared catalog asset but couldn't find catalog", v25];
    logAndSetError(v26, -4, a5);

LABEL_7:
    v18 = 0;
    goto LABEL_8;
  }

  v13 = [v9 assetCatalogURL];
  v14 = [v13 lastPathComponent];
  v15 = [v10 URLByAppendingPathComponent:v14];

  v16 = [v9 assetCatalogURL];
  v17 = [v11 allObjects];
  v28 = 0;
  v18 = CUIGeneratePlaceholderAssetCatalog(v16, v15, v17, &v28);
  v19 = v28;

  if (!v18)
  {
    v20 = MEMORY[0x1E696AEC0];
    v21 = [v9 assetCatalogURL];
    v22 = [v11 allObjects];
    v23 = [v20 stringWithFormat:@"Failed to thin asset catalog %@ to %@ items only. Error: %@", v21, v22, v19];
    logAndSetError(v23, -3, a5);
  }

LABEL_8:
  return v18;
}

uint64_t _captureLooseFileAssets(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v61 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v48 = a3;
  v10 = [a2 looseFilesNamesReturningPlistExcerpt:a4];
  if (v10)
  {
    v11 = [[IFResourceNames alloc] initWithRootNames:v10 variants:&unk_1F37E4D68];
    v12 = [(IFResourceNames *)v11 extrapolateFullNamesForIOS];
    v13 = [(IFResourceNames *)v11 extrapolateFullNamesForMacOS];
    v14 = [v13 setByAddingObjectsFromSet:v12];
    v15 = [v14 allObjects];

    v16 = [v9 URLsForResources:v15];
    v17 = v16;
    if (v16 && [v16 count])
    {
      v46 = v15;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      obj = v17;
      v18 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
      if (v18)
      {
        v19 = v18;
        v40 = v17;
        v41 = a5;
        v42 = v12;
        v43 = v11;
        v44 = v10;
        v45 = v9;
        v20 = 0;
        v21 = *v51;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v51 != v21)
            {
              objc_enumerationMutation(obj);
            }

            v23 = *(*(&v50 + 1) + 8 * i);
            v24 = [v23 lastPathComponent];
            v25 = [v48 URLByAppendingPathComponent:v24];

            v26 = [MEMORY[0x1E696AC08] defaultManager];
            v49 = 0;
            v27 = [v26 copyItemAtURL:v23 toURL:v25 error:&v49];
            v28 = v49;

            if ((v27 & 1) == 0)
            {
              v29 = IFDefaultLog();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                *buf = 138412802;
                v55 = v23;
                v56 = 2112;
                v57 = v25;
                v58 = 2112;
                v59 = v28;
                _os_log_impl(&dword_1B9DEC000, v29, OS_LOG_TYPE_INFO, "Failed to copy file %@ to %@. Error: %@", buf, 0x20u);
              }

              ++v20;
            }
          }

          v19 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
        }

        while (v19);
        v30 = v20;
        v10 = v44;
        v9 = v45;
        v12 = v42;
        v11 = v43;
        a5 = v41;
        v17 = v40;
      }

      else
      {
        v30 = 0;
      }

      v15 = v46;
      if ([obj count] != v30)
      {
        v35 = 1;
        goto LABEL_22;
      }

      v36 = MEMORY[0x1E696AEC0];
      v37 = [v9 bundleURL];
      v38 = [v36 stringWithFormat:@"Failed to retrieve file assets %@ from %@", v46, v37];
      logAndSetError(v38, -5, a5);
    }

    else
    {
      v31 = MEMORY[0x1E696AEC0];
      [v9 bundleURL];
      v33 = v32 = v17;
      v34 = [v31 stringWithFormat:@"File assets %@ were declared but we were unable to find them in %@", v15, v33];
      logAndSetError(v34, -4, a5);

      v17 = v32;
    }

    v35 = 0;
LABEL_22:

    goto LABEL_23;
  }

  v35 = 0;
LABEL_23:

  return v35;
}

uint64_t IFCaptureIconContent(void *a1, void *a2, void *a3, void *a4, NSObject **a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = v9;
  v13 = v10;
  v14 = v11;
  if (v12)
  {
    if (v13)
    {
      v15 = IFDefaultLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v12;
        _os_log_impl(&dword_1B9DEC000, v15, OS_LOG_TYPE_INFO, "Capturing icon content for %@", buf, 0xCu);
      }

      v16 = [(IFBundle *)[IFVariantAgnosticBundle alloc] initWithURL:v12];
      v17 = v16;
      if (!v16 || ![(IFBundle *)v16 bundle])
      {
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create bundle at %@", v12];
        logAndSetError(v19, -1, a5);
        v26 = 0;
LABEL_45:

        goto LABEL_46;
      }

      v18 = [(IFVariantAgnosticBundle *)v17 infoDictionary];
      v19 = v18;
      if (!v18 || ![v18 count])
      {
        v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to read Info.plist at %@", v12];
        logAndSetError(v22, -1, a5);
        v26 = 0;
LABEL_44:

        goto LABEL_45;
      }

      v20 = [IFPlistParser alloc];
      v21 = [(IFVariantAgnosticBundle *)v17 infoDictionary];
      v22 = [(IFPlistParser *)v20 initWithInfoDictionary:v21];

      [(IFPlistParser *)v22 setCaptureAccentColorInfo:1];
      if (v14)
      {
        v23 = [(IFPlistParser *)v22 subDictionaryForAlternateIconName:v14 variants:&unk_1F37E4D80];
        v24 = [[IFPlistParser alloc] initWithInfoDictionary:v23];

        [(IFPlistParser *)v24 setCaptureAccentColorInfo:1];
        v22 = v24;
      }

      if ([(IFPlistParser *)v22 hasGraphicIconReturningPlistExcerpt:a4])
      {
        v25 = IFDefaultLog();
        v26 = 1;
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          *&buf[4] = v12;
          _os_log_impl(&dword_1B9DEC000, v25, OS_LOG_TYPE_INFO, "Graphic icon configuration set for %@", buf, 0xCu);
        }

        goto LABEL_43;
      }

      *buf = 0;
      v30 = _captureCatalogAssets(v17, v22, v13, a4, buf);
      v31 = *buf;
      v32 = v31;
      if (v30)
      {
        _appendPlatformInfo(v17, a4);
        v25 = 0;
        v26 = 1;
LABEL_42:

LABEL_43:
        goto LABEL_44;
      }

      v41 = v31;
      if ([v31 code] == -4)
      {
        if (a4)
        {
          v25 = 0;
          *a4 = 0;
LABEL_27:
          v42 = 0;
          v33 = _captureLooseFileAssets(v17, v22, v13, a4, &v42);
          v34 = v42;
          v40 = v34;
          if (v33)
          {
            _appendPlatformInfo(v17, a4);
            v26 = 1;
            v32 = v41;
          }

          else
          {
            v35 = v34;
            if ([v34 code]== -4)
            {
              v32 = v41;
              if (a4)
              {
                *a4 = 0;
              }
            }

            else
            {
              v36 = v35;
              v32 = v41;
              if (v36)
              {
                if (v25)
                {
                  v36 = v25;
                }

                v37 = v36;

                v25 = v37;
              }
            }

            if (v25)
            {
              if (a5)
              {
                v38 = v25;
                v26 = 0;
                *a5 = v25;
              }

              else
              {
                v26 = 0;
              }
            }

            else
            {
              v26 = 1;
            }
          }

          goto LABEL_42;
        }
      }

      else if (v32)
      {
        v25 = v32;
        goto LABEL_27;
      }

      v25 = 0;
      goto LABEL_27;
    }

    v27 = MEMORY[0x1E696AEC0];
    v28 = @"Invalid destination url";
  }

  else
  {
    v27 = MEMORY[0x1E696AEC0];
    v28 = @"Invalid bundle url";
  }

  v29 = [v27 stringWithFormat:v28];
  logAndSetError(v29, -2, a5);

  v26 = 0;
LABEL_46:

  return v26;
}

void OUTLINED_FUNCTION_0_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 0xCu);
}

id sub_1B9E05D28()
{
  type metadata accessor for ResourceBundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EBBE49D8 = result;
  return result;
}

uint64_t sub_1B9E05D7C()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4B10);
  __swift_project_value_buffer(v0, qword_1EBBE4B10);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1B9E05EA4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4B28);
  __swift_project_value_buffer(v0, qword_1EBBE4B28);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E05F94()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4B40);
  __swift_project_value_buffer(v0, qword_1EBBE4B40);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06084()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4B58);
  __swift_project_value_buffer(v0, qword_1EBBE4B58);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06174()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4B70);
  __swift_project_value_buffer(v0, qword_1EBBE4B70);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06264()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4B88);
  __swift_project_value_buffer(v0, qword_1EBBE4B88);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06354()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4BA0);
  __swift_project_value_buffer(v0, qword_1EBBE4BA0);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06444()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4BB8);
  __swift_project_value_buffer(v0, qword_1EBBE4BB8);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06534()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4BD0);
  __swift_project_value_buffer(v0, qword_1EBBE4BD0);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06624()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4BE8);
  __swift_project_value_buffer(v0, qword_1EBBE4BE8);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06714()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C00);
  __swift_project_value_buffer(v0, qword_1EBBE4C00);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06804()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C18);
  __swift_project_value_buffer(v0, qword_1EBBE4C18);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E068F4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C30);
  __swift_project_value_buffer(v0, qword_1EBBE4C30);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E069E4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C48);
  __swift_project_value_buffer(v0, qword_1EBBE4C48);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06AD4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C60);
  __swift_project_value_buffer(v0, qword_1EBBE4C60);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06BC4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C78);
  __swift_project_value_buffer(v0, qword_1EBBE4C78);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06CB4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4C90);
  __swift_project_value_buffer(v0, qword_1EBBE4C90);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06DA4()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4CA8);
  __swift_project_value_buffer(v0, qword_1EBBE4CA8);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06E94()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4CC0);
  __swift_project_value_buffer(v0, qword_1EBBE4CC0);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E06F84()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4CD8);
  __swift_project_value_buffer(v0, qword_1EBBE4CD8);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07074()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4CF0);
  __swift_project_value_buffer(v0, qword_1EBBE4CF0);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07164()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4D08);
  __swift_project_value_buffer(v0, qword_1EBBE4D08);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07254()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4D20);
  __swift_project_value_buffer(v0, qword_1EBBE4D20);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07344()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4D38);
  __swift_project_value_buffer(v0, qword_1EBBE4D38);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07434()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4D50);
  __swift_project_value_buffer(v0, qword_1EBBE4D50);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07524()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4D68);
  __swift_project_value_buffer(v0, qword_1EBBE4D68);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E07614()
{
  v0 = sub_1B9E25210();
  __swift_allocate_value_buffer(v0, qword_1EBBE4D80);
  __swift_project_value_buffer(v0, qword_1EBBE4D80);
  if (qword_1EBBE49D0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EBBE49D8;
  return sub_1B9E25200();
}

uint64_t sub_1B9E076E0(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_1B9E25210();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_1B9E07758@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1B9E25210();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t __CUISubtypeFromIndex(uint64_t a1, unsigned int a2)
{
  if (a1 == -1)
  {
    if (a2 >= 0x20)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return dword_1B9E3B768[a2];
    }
  }

  else if (a2)
  {
    if (a1 > 3)
    {
      if (a1 == 5)
      {
        if (a2 == 1)
        {
          return 3648;
        }

        goto LABEL_35;
      }

      if (a1 == 4)
      {
        v2 = a2 - 8;
        if (a2 - 8 < 0x18 && ((0xF18063u >> v2) & 1) != 0)
        {
          v3 = &unk_1B9E3B7E8;
          return v3[v2];
        }

LABEL_35:
        __CUISubtypeFromIndex_cold_1(a1);
      }

LABEL_18:
      if (a1 <= 2 && a2 < 0x20 && ((0x713FFEFFu >> (a2 - 1)) & 1) != 0)
      {
        return dword_1B9E3B854[a2 - 1];
      }

      goto LABEL_35;
    }

    if (a1)
    {
      if (a1 == 3)
      {
        v2 = a2 - 5;
        if (a2 - 5 < 3)
        {
          v3 = &unk_1B9E3B848;
          return v3[v2];
        }

        goto LABEL_35;
      }

      goto LABEL_18;
    }

    v4 = 1864;
    if (a2 <= 26)
    {
      if (a2 == 1)
      {
        return v4;
      }

      if (a2 == 26)
      {
        return 1964;
      }

      goto LABEL_35;
    }

    if (a2 == 27)
    {
      return 2234;
    }

    if (a2 == 31)
    {
      return 1665;
    }

    if (a2 != 32)
    {
      goto LABEL_35;
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t CUIValidateIdiomSubtypes(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  result = 1;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if ((a1 - 6) >= 2)
      {
        if (a1 != 8)
        {
          return result;
        }

        if (v9 == 3648)
        {
          v11 = 3648;
          goto LABEL_58;
        }
      }

LABEL_57:
      v11 = 0;
      *a2 = 0;
LABEL_58:
      if (v11 != v9)
      {
        _CUILog(4, "CoreUI: %s passed a device subtype '%d' and idiom '%d':%s that are not a matching pair, subtype is not valid with given idiom. Assuming subtype should be 0 instead.", a3, a4, a5, a6, a7, a8, "_Bool CUIValidateIdiomSubtypes(NSInteger, NSUInteger *)");
        return 0;
      }

      return result;
    }

    if (a1 == 4)
    {
      goto LABEL_57;
    }

    if (v9 <= 483)
    {
      if (((v9 - 384) > 0x3E || ((1 << (v9 + 0x80)) & 0x4000400000000041) == 0) && v9 != 320 && v9 != 340)
      {
        goto LABEL_57;
      }

      return result;
    }

    if ((v9 - 484) > 0x1E)
    {
      goto LABEL_57;
    }

    v12 = 1 << (v9 + 28);
    v13 = 1074008065;
LABEL_42:
    if ((v12 & v13) != 0)
    {
      return result;
    }

    goto LABEL_57;
  }

  if ((a1 - 1) < 2)
  {
    if (v9 <= 2435)
    {
      if (v9 > 2223)
      {
        if (v9 <= 2339)
        {
          if (v9 != 2224 && v9 != 2266)
          {
            goto LABEL_57;
          }
        }

        else if (((v9 - 2340) > 0x30 || ((1 << (v9 - 36)) & 0x1000000100001) == 0) && v9 != 2420)
        {
          goto LABEL_57;
        }
      }

      else if (v9 > 1791)
      {
        if (v9 != 1792 && v9 != 2160)
        {
          goto LABEL_57;
        }
      }

      else if ((v9 - 568) >= 3 && v9 != 163)
      {
        goto LABEL_57;
      }
    }

    else if (v9 > 2751)
    {
      if (v9 <= 2867)
      {
        if ((v9 - 2752) > 0x2C)
        {
          goto LABEL_57;
        }

        v12 = 1 << (v9 + 64);
        v13 = 0x100004000001;
        goto LABEL_42;
      }

      if (v9 != 2868 && v9 != 3024 && v9 != 32401)
      {
        goto LABEL_57;
      }
    }

    else if (v9 <= 2621)
    {
      if (v9 != 2436 && v9 != 2532 && v9 != 2556)
      {
        goto LABEL_57;
      }
    }

    else if (((v9 - 2688) > 0x30 || ((1 << (v9 + 0x80)) & 0x1100000000001) == 0) && v9 != 2622)
    {
      goto LABEL_57;
    }
  }

  else if (!a1 || a1 == 3 && v9 != 720 && v9 != 3840)
  {
    goto LABEL_57;
  }

  return result;
}

uint64_t CUIParseDeploymentTarget(char *a1, int a2)
{
  if ("any")
  {
    v4 = &gThemeDeploymentTargets;
    if (!strcasecmp(a1, "any"))
    {
      return *v4;
    }

    while (1)
    {
      v5 = *(v4 + 5);
      if (!v5)
      {
        break;
      }

      v4 += 6;
      if (!strcasecmp(a1, v5))
      {
        return *v4;
      }
    }
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a1];
  v8 = [v7 componentsSeparatedByString:@"."];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = [objc_msgSend(v8 objectAtIndexedSubscript:{0), "intValue"}];
    if (v10 == 1)
    {
      v12 = 0;
    }

    else
    {
      v12 = [objc_msgSend(v8 objectAtIndexedSubscript:{1), "intValue"}];
    }
  }

  else
  {
    v12 = 0;
    v11 = 0x7FFFFFFF;
  }

  if (a2 <= 1)
  {
    v13 = 1;
  }

  else
  {
    v13 = a2;
  }

  if (v13 <= 4)
  {
    if ((v13 - 1) < 4)
    {
      goto LABEL_16;
    }

LABEL_58:
    fprintf(*MEMORY[0x1E69E9848], "assuming --deployment-target %s == --deployment-target any\n", a1);
    return 0;
  }

  if (v13 == 8)
  {
    if (v11 <= 1)
    {
      v14 = v12 < 1;
LABEL_37:
      v15 = 9;
      goto LABEL_40;
    }

    if (v11 == 2)
    {
      return 11;
    }

    goto LABEL_56;
  }

  if (v13 != 7)
  {
    if (v13 != 5)
    {
      goto LABEL_58;
    }

    if (v11 < 3)
    {
      return 0;
    }

    if (v11 == 3)
    {
      return 1;
    }

    if (v11 < 5)
    {
      return 2;
    }

    if (v11 == 5)
    {
      goto LABEL_39;
    }

    if (v11 < 7)
    {
      return 5;
    }

    if (v11 == 7)
    {
      return 6;
    }

    if (v11 < 9)
    {
      return 7;
    }

    if (v11 == 9)
    {
      return 8;
    }

    if (v11 <= 0xA)
    {
      goto LABEL_54;
    }

    if (v11 == 11)
    {
      return 11;
    }

LABEL_56:
    if (v11 < 0x1B)
    {
      return 12;
    }

    goto LABEL_58;
  }

LABEL_16:
  if (v11 < 10)
  {
    return 0;
  }

  if (v11 == 10)
  {
    return 1;
  }

  if (v11 < 0xC)
  {
    return 2;
  }

  if (v11 != 12)
  {
    if (v11 < 0xE)
    {
      return 5;
    }

    if (v11 == 14)
    {
      return 6;
    }

    if (v11 < 0x10)
    {
      return 7;
    }

    if (v11 == 16)
    {
      return 8;
    }

    if (v11 <= 0x11)
    {
LABEL_54:
      v14 = v12 < 4;
      goto LABEL_37;
    }

    if (v11 != 18)
    {
      goto LABEL_56;
    }

    return 11;
  }

LABEL_39:
  v14 = v12 < 2;
  v15 = 3;
LABEL_40:
  if (v14)
  {
    return v15;
  }

  else
  {
    return v15 + 1;
  }
}

uint64_t CUIWatchSubTypeFallbackOrder(uint64_t result, void *a2)
{
  if (result > 445)
  {
    if (result <= 495)
    {
      if (result == 446)
      {
        v3 = 430;
LABEL_21:
        [a2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", v3)}];
LABEL_22:
        [a2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 340)}];
        goto LABEL_23;
      }

      if (result != 484)
      {
        return result;
      }
    }

    else
    {
      if (result != 496)
      {
        if (result == 514)
        {
          [a2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 502)}];
        }

        else if (result != 502)
        {
          return result;
        }
      }

      [a2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 484)}];
    }

    v3 = 390;
    goto LABEL_21;
  }

  if (result > 389)
  {
    if (result != 390 && result != 430)
    {
      return result;
    }

    goto LABEL_22;
  }

  if (result != 340)
  {
    if (result != 384)
    {
      return result;
    }

    goto LABEL_24;
  }

LABEL_23:
  [a2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInteger:", 384)}];
LABEL_24:
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:320];

  return [a2 addObject:v4];
}

__CFString *OUTLINED_FUNCTION_0_2(uint64_t a1, uint64_t a2)
{

  return CUIPlatformNameForPlatform(a2);
}

__CFString *OUTLINED_FUNCTION_1_1(uint64_t a1, uint64_t a2)
{

  return CUIPlatformNameForPlatform(a2);
}

char *CUIConvertCompressionTypeToString(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E7ED9A08[a1];
  }
}

const char *CUIConvertPixelFormatToString(int a1)
{
  if (a1 > 1246774598)
  {
    if (a1 <= 1380401716)
    {
      if (a1 == 1246774599)
      {
        return "JPEG";
      }

      if (a1 == 1346651680)
      {
        return "PDF";
      }
    }

    else
    {
      switch(a1)
      {
        case 1380401717:
          return "RGB5";
        case 1398163232:
          return "SVG";
        case 1380401751:
          return "RGBW";
      }
    }
  }

  else if (a1 <= 1195454773)
  {
    if (a1 == 1095911234)
    {
      return "ARGB";
    }

    if (a1 == 1145132097)
    {
      return "DATA";
    }
  }

  else
  {
    switch(a1)
    {
      case 1195454774:
        return "GA16";
      case 1195456544:
        return "GA8";
      case 1212500294:
        return "HEIF";
    }
  }

  return "(Unknown)";
}

uint64_t CUILogHandle()
{
  if (__onceToken != -1)
  {
    CUILogHandle_cold_1();
  }

  return __handle;
}

os_log_t __CUILogHandle_block_invoke()
{
  result = os_log_create("com.apple.coreui", "framework");
  __handle = result;
  return result;
}

void _CUILog(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23 = *MEMORY[0x1E69E9840];
  if (_CUILog___onceDefaultToken != -1)
  {
    _CUILog_cold_1();
  }

  if (a1 != 3 || _CUILog___showDebugLogs == 1)
  {
    v11 = objc_autoreleasePoolPush();
    if (__logToStderr == 1)
    {
      *buf = &a9;
      v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a2];
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v12 arguments:&a9];

      if (a1 <= 2)
      {
        if (a1 != 1 && a1 != 2)
        {
          goto LABEL_40;
        }

        goto LABEL_20;
      }

      if (a1 == 3)
      {
LABEL_20:
        fprintf(*MEMORY[0x1E69E9848], "%s\n", [v13 UTF8String]);
        goto LABEL_40;
      }

      if (a1 != 4)
      {
LABEL_40:

        objc_autoreleasePoolPop(v11);
        return;
      }

      fprintf(*MEMORY[0x1E69E9848], "%s\n", [v13 UTF8String]);
LABEL_30:
      qword_1EBBE4728 = [v13 UTF8String];
      goto LABEL_40;
    }

    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:a2];
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v14 arguments:&a9];

    if (a1 > 2)
    {
      if (a1 != 3)
      {
        if (a1 != 4)
        {
          goto LABEL_40;
        }

        if (__onceToken != -1)
        {
          _CUILog_cold_2();
        }

        v18 = __handle;
        if (os_log_type_enabled(__handle, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          *&buf[4] = v13;
          _os_log_impl(&dword_1B9DEC000, v18, OS_LOG_TYPE_ERROR, "%{public}@", buf, 0xCu);
          if (__onceToken != -1)
          {
            _CUILog_cold_2();
          }
        }

        v19 = __handle;
        if (os_log_type_enabled(__handle, OS_LOG_TYPE_FAULT))
        {
          _CUILog_cold_4(v13, v19);
        }

        goto LABEL_30;
      }

      if (__onceToken != -1)
      {
        _CUILog_cold_2();
      }

      v21 = __handle;
      if (!os_log_type_enabled(__handle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_40;
      }

      *buf = 138543362;
      *&buf[4] = v13;
      v16 = v21;
      v17 = OS_LOG_TYPE_DEBUG;
    }

    else if (a1 == 1)
    {
      if (__onceToken != -1)
      {
        _CUILog_cold_2();
      }

      v20 = __handle;
      if (!os_log_type_enabled(__handle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_40;
      }

      *buf = 138543362;
      *&buf[4] = v13;
      v16 = v20;
      v17 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      if (a1 != 2)
      {
        goto LABEL_40;
      }

      if (__onceToken != -1)
      {
        _CUILog_cold_2();
      }

      v15 = __handle;
      if (!os_log_type_enabled(__handle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_40;
      }

      *buf = 138543362;
      *&buf[4] = v13;
      v16 = v15;
      v17 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&dword_1B9DEC000, v16, v17, "%{public}@", buf, 0xCu);
    goto LABEL_40;
  }
}

BOOL __copyBlock(uint64_t a1, uint64_t a2, const char *a3)
{
  NamedBlock = BOMStorageGetNamedBlock(a1, a3);
  if (!NamedBlock)
  {
    return 1;
  }

  v7 = NamedBlock;
  v8 = BOMStorageNewNamedBlock(a2, a3);
  v15 = BOMStorageSizeOfBlock(a1, v7, v9, v10, v11, v12, v13, v14);
  v16 = malloc_type_malloc(v15, 0xE31AF694uLL);
  if (BOMStorageCopyFromBlock(a1, v7, v16, v17, v18, v19, v20, v21))
  {
    free(v16);
    return 0;
  }

  v27 = BOMStorageCopyToBlock(a2, v8, v16, v15, v22, v23, v24, v25);
  free(v16);
  if (v27)
  {
    return 0;
  }

  return BOMStorageCommit(a2) == 0;
}

uint64_t __copyTree(uint64_t a1, uint64_t a2, const char *a3, int a4)
{
  v7 = BOMTreeOpenWithName(a1, a3, 0);
  if (!v7)
  {
    return 1;
  }

  v8 = v7;
  if (BOMTreePageSize(v7) <= 0x400)
  {
    a4 = BOMTreePageSize(v8);
  }

  v9 = BOMTreeUsesNumericKeys(v8);
  v10 = BOMTreeNewWithOptions(a2, 0, a3, a4, v9);
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = BOMTreeIteratorNew(v8, 0, 0, 0);
  if (!v12)
  {
    return 0;
  }

  for (i = v12; !BOMTreeIteratorIsAtEnd(i, v13, v14, v15, v16, v17, v18, v19); BOMTreeIteratorNext(i, v56, v57, v58, v59, v60, v61, v62))
  {
    v28 = BOMTreeIteratorKey(i, v21, v22, v23, v24, v25, v26, v27);
    v36 = BOMTreeIteratorKeySize(i, v29, v30, v31, v32, v33, v34, v35);
    v44 = BOMTreeIteratorValue(i, v37, v38, v39, v40, v41, v42, v43);
    v52 = BOMTreeIteratorValueSize(i, v45, v46, v47, v48, v49, v50, v51);
    BOMTreeSetValue(v11, v28, v36, v44, v52, v53, v54, v55);
  }

  v63 = BOMStorageCommit(a2) == 0;
  BOMTreeIteratorFree(i);
  BOMTreeFree(v11);
  return v63;
}

double CUIEdgeInsetsInsetRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a1 + a6;
  v9 = a3 - (a8 + a6);
  if (v9 <= 0.0)
  {
    return result + v9 * 0.5;
  }

  return result;
}

double CUIEdgeInsetsOutsetRect(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  result = a1 - a6;
  v9 = a3 - (-a6 - a8);
  if (v9 <= 0.0)
  {
    return result + v9 * 0.5;
  }

  return result;
}

unsigned __int16 *CUIFillRenditionKeyForCARKeyArray(unsigned __int16 *result, uint64_t a2, uint64_t a3)
{
  if (!result || !a2)
  {
    CUIFillRenditionKeyForCARKeyArray_cold_1();
  }

  v5 = *(a3 + 8);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    do
    {
      result = CUIRenditionKeySetValueForAttribute(v6, *(a3 + 12 + 4 * v7), *(a2 + 2 * v7), (v5 + 1));
      ++v7;
      v5 = *(a3 + 8);
    }

    while (v5 > v7);
  }

  return result;
}

unsigned __int16 *CUIRenditionKeySetValueForAttribute(unsigned __int16 *result, int a2, int a3, unsigned int a4)
{
  if (result)
  {
    if (!a4)
    {
      CUIRenditionKeySetValueForAttribute_cold_3();
    }

    v4 = *result;
    if (result[1] | v4)
    {
      LODWORD(v5) = 0;
      v6 = result + 3;
      while (v4 != a2)
      {
        LODWORD(v5) = v5 + 1;
        v7 = *v6;
        v4 = *(v6 - 1);
        v6 += 2;
        if (v7)
        {
          v8 = 0;
        }

        else
        {
          v8 = v4 == 0;
        }

        if (v8)
        {
          goto LABEL_11;
        }
      }

      if (a3)
      {
        result[2 * v5 + 1] = a3;
      }

      else
      {
        v11 = 0;
        if (result[1])
        {
          goto LABEL_22;
        }

        while (1)
        {
          v12 = v11;
          if (!result[2 * v11])
          {
            break;
          }

          do
          {
LABEL_22:
            ++v11;
          }

          while (result[2 * v11 + 1]);
        }

        if (a4 <= v11)
        {
          CUIRenditionKeySetValueForAttribute_cold_1();
        }

        if (v11 > v5)
        {
          v5 = v5;
          v13 = &result[2 * v5 + 2];
          do
          {
            *(v13 - 1) = *v13;
            ++v5;
            v13 += 2;
          }

          while (v5 < v12);
        }
      }
    }

    else
    {
LABEL_11:
      if (a3)
      {
        v9 = 0;
        if (result[1])
        {
          goto LABEL_14;
        }

        while (result[2 * v9])
        {
          do
          {
LABEL_14:
            ++v9;
          }

          while (result[2 * v9 + 1]);
        }

        if ((a4 - 1) <= v9)
        {
          CUIRenditionKeySetValueForAttribute_cold_2();
        }

        v10 = &result[2 * v9];
        *v10 = a2;
        v10[1] = a3;
        *(v10 + 1) = 0;
      }
    }
  }

  return result;
}

const char *CUIDefaultThemeRenditionKeyFormat(int a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  switch(a1)
  {
    case 4:
      return "tmfk";
    case 2:
      if (a2 >= 6)
      {
        if (a2 >= 0xB)
        {
          if (a2 == 11)
          {
            return "tmfk";
          }

          else if (a2 >= 0xD)
          {
            if (a2 == 13)
            {
              return "tmfk";
            }

            else if (a2 >= 0xF)
            {
              if (a2 == 15)
              {
                return "tmfk";
              }

              else if (a2 >= 0x11)
              {
                return "tmfk";
              }

              else
              {
                return "tmfk";
              }
            }

            else
            {
              return "tmfk";
            }
          }

          else
          {
            return "tmfk";
          }
        }

        else
        {
          return "tmfk";
        }
      }

      else
      {
        return "tmfk";
      }

    case 1:
      v9 = "tmfk";
      v10 = "tmfk";
      if (a2 < 0xF)
      {
        v10 = "tmfk";
      }

      if (a2 != 13)
      {
        v9 = v10;
      }

      if (a2 >= 0xD)
      {
        return v9;
      }

      else
      {
        return "tmfk";
      }

    default:
      _CUILog(4, "CoreUI: Unable to provide key format for custom theme semantics", a3, a4, a5, a6, a7, a8, v8);
      return 0;
  }
}

uint64_t CUIRenditionKeyIndexForAttribute(unsigned __int16 *a1, int a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v3 = *a1;
  if (!a1[1] && v3 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v6 = a1 + 3;
  while (v3 != a2)
  {
    v7 = *v6;
    v3 = *(v6 - 1);
    result = (result + 1);
    v6 += 2;
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v3 == 0;
    }

    if (v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

uint64_t CUIRenditionKeyTokenCount(uint64_t a1)
{
  v1 = 0;
  if (a1)
  {
    while (1)
    {
      v2 = (a1 + 4 * v1);
      if (!v2[1] && !*v2)
      {
        break;
      }

      ++v1;
    }
  }

  return v1;
}

BOOL CUIRenditionKeyHasIdentifier(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v3 = (a1 + 12);
  for (i = 0xFFFFFFFFLL; ; --i)
  {
    v5 = *v3++;
    if (v5 == a2)
    {
      break;
    }

    if (!--v2)
    {
      return 0;
    }
  }

  return i != 0;
}

uint64_t CUIRenditionKeyFormatRemoveAttribute(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = 0;
    v4 = result + 12;
    while (*(v4 + 4 * v3) != a2)
    {
      if (v2 == ++v3)
      {
        return result;
      }
    }

    if (v3 + 1 < v2)
    {
      do
      {
        *(v4 + 4 * v3) = *(result + 16 + 4 * v3);
        ++v3;
      }

      while (v2 - 1 != v3);
    }

    *(result + 8) = v2 - 1;
  }

  return result;
}

unsigned __int16 *CUIRenditionKeyValueForAttribute(unsigned __int16 *result, int a2)
{
  if (result)
  {
    v2 = *result;
    if (result[1])
    {
      v3 = 0;
    }

    else
    {
      v3 = v2 == 0;
    }

    if (v3)
    {
      return 0;
    }

    else
    {
      v4 = 0;
      v5 = result + 3;
      while (v2 != a2)
      {
        ++v4;
        v6 = *v5;
        v2 = *(v5 - 1);
        v5 += 2;
        if (v6)
        {
          v7 = 0;
        }

        else
        {
          v7 = v2 == 0;
        }

        if (v7)
        {
          return 0;
        }
      }

      return result[2 * v4 + 1];
    }
  }

  return result;
}

uint64_t CUIFillCARKeyArrayForRenditionKey2(uint64_t result, int *a2, uint64_t a3, uint64_t *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!result || !a2)
  {
    CUIFillCARKeyArrayForRenditionKey2_cold_1();
  }

  v5 = a4;
  v6 = result;
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  if (!a4)
  {
    v5 = v13;
    result = CUIRenditionKeyInitializeAttributeIndexWithKeyFormat(v13, a3);
  }

  v7 = *a2;
  if (*a2)
  {
    v10 = *v5;
    v9 = v5 + 1;
    v8 = v10;
    v11 = a2 + 1;
    do
    {
      if ((v8 & (1 << v7)) != 0)
      {
        *(v6 + 2 * *(v9 + v7)) = *(v11 - 1);
      }

      v12 = *v11++;
      LOWORD(v7) = v12;
    }

    while (v12);
  }

  return result;
}

uint64_t CUIRenditionKeyInitializeAttributeIndexWithKeyFormat(uint64_t result, uint64_t a2)
{
  *(result + 192) = 0;
  *(result + 160) = 0u;
  *(result + 176) = 0u;
  *(result + 128) = 0u;
  *(result + 144) = 0u;
  *(result + 96) = 0u;
  *(result + 112) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *result = 0u;
  *(result + 80) = 0u;
  if (*(a2 + 8))
  {
    v2 = 0;
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(a2 + 12 + 4 * v2);
      *(result + 8 + v5) = v2;
      if (v5 <= 0x1C)
      {
        *(result + 80 + 4 * v4++) = v5;
      }

      v3 |= 1 << v5;
      ++v2;
      LODWORD(v5) = *(a2 + 8);
      if (v5 >= 0x40)
      {
        v5 = 64;
      }

      else
      {
        v5 = v5;
      }
    }

    while (v2 < v5);
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  *(result + 76) = v4;
  *result = v3;
  return result;
}

void CUIRenditionKeyStandardize(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  memset(v14, 0, 92);
  v6 = *(a3 + 8);
  if (v6 - 23 > 0xFFFFFFE7)
  {
    v7 = v14;
  }

  else
  {
    v7 = malloc_type_calloc(v6 + 3, 4uLL, 0x100004052888210uLL);
    v6 = *(a3 + 8);
  }

  v8 = v7;
  if (v6)
  {
    v9 = v6;
    v10 = (a3 + 12);
    v8 = v7;
    do
    {
      v12 = *v10++;
      v11 = v12;
      v13 = CUIRenditionKeyValueForAttribute(a2, v12);
      if (v13)
      {
        *v8 = v11;
        *(v8 + 1) = v13;
        v8 += 4;
      }

      --v9;
    }

    while (v9);
  }

  *v8 = 0;
  CUIRenditionKeyCopy(a1, v7, (*(a3 + 8) + 1));
  if (v7 != v14)
  {
    free(v7);
  }
}

void *CUIRenditionKeyCopy(void *a1, char *a2, unsigned int a3)
{
  if (!a1 || !a2)
  {
    CUIRenditionKeyCopy_cold_2();
  }

  for (i = 0; ; i = v4 + 1)
  {
    v4 = i;
    v5 = &a2[4 * i];
    if (!*(v5 + 1) && !*v5)
    {
      break;
    }
  }

  if (v4 >= a3)
  {
    CUIRenditionKeyCopy_cold_1();
  }

  return memmove(a1, a2, 4 * v4 + 4);
}

uint64_t CUICompareRenditionKey(unsigned __int16 *a1, unsigned __int16 *a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  if (!v4)
  {
    return 0;
  }

  v7 = (a3 + 12);
  while (1)
  {
    v8 = *v7;
    v7 += 2;
    v9 = CUIRenditionKeyValueForAttribute(a1, v8);
    v10 = CUIRenditionKeyValueForAttribute(a2, v8);
    v11 = v9 > v10 ? 1 : v3;
    v3 = v9 < v10 ? -1 : v11;
    if (v9 != v10)
    {
      break;
    }

    if (!--v4)
    {
      return 0;
    }
  }

  return v3;
}

uint64_t CUICopyKeySignatureWithPrefix(char *a1, unint64_t a2, int *a3, uint64_t a4, uint64_t *a5, unsigned int a6)
{
  v39 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    CUICopyKeySignatureWithPrefix_cold_1();
  }

  memset(v38, 0, 44);
  v12 = *(a4 + 8);
  if (v12 < 0x16)
  {
    v13 = v38;
  }

  else
  {
    v13 = malloc_type_calloc(v12, 2uLL, 0x1000040BDFB0063uLL);
  }

  CUIFillCARKeyArrayForRenditionKey2(v13, a3, a4, a5);
  if (a2)
  {
    v15 = a1 + 1;
    do
    {
      v16 = a6;
      v14 = v15;
      a6 /= 0xAu;
      *(v15 - 1) = (v16 - 10 * a6) | 0x30;
      if (v16 < 0xA)
      {
        break;
      }

      ++v15;
      --a2;
    }

    while (a2);
  }

  else
  {
    v14 = a1;
  }

  v17 = v14 - a1;
  if ((v14 - a1) >= 2)
  {
    v18 = 1;
    v19 = a1;
    do
    {
      v20 = *v19;
      v21 = (v17 - v18);
      *v19++ = v21[a1];
      v21[a1] = v20;
    }

    while (v17 >> 1 > v18++);
  }

  v23 = _CUICopySortedKeySignature(v14, a2, v13, 2 * *(a4 + 8));
  if (v23 < 0)
  {
    if (v13 != v38)
    {
      free(v13);
    }

    return -1;
  }

  v24 = v23;
  if (v13 != v38)
  {
    free(v13);
  }

  if (a2 - v24 < 0x11)
  {
    return -1;
  }

  if (v24 < 0x61)
  {
    return v24;
  }

  v25 = 0;
  v26 = 0;
  do
  {
    v27 = &a3[v25];
    v28 = *(v27 + 1);
    if (!*(v27 + 1))
    {
      break;
    }

    v29 = *v27;
    if (a5 && (*a5 & (1 << v29)) != 0)
    {
      LODWORD(v30) = *(a5 + v29 + 8);
LABEL_23:
      v31 = 8 * v25;
      if (v30 >= 4)
      {
        v31 = 4 * v25 + 16;
      }

      v32 = (v28 << v31) ^ v26;
      if (v30 <= 0xB)
      {
        v26 = v32;
      }

      goto LABEL_32;
    }

    v33 = *(a4 + 8);
    if (v33)
    {
      v30 = 0;
      while (*(a4 + 12 + 4 * v30) != v29)
      {
        if (v33 == ++v30)
        {
          goto LABEL_32;
        }
      }

      goto LABEL_23;
    }

LABEL_32:
    ++v25;
  }

  while (v25 != 21);
  v24 += 16;
  v34 = &v14[v24];
  v14[v24] = 0;
  v35 = 16;
  do
  {
    if (v26)
    {
      if ((v26 & 0xF) >= 0xA)
      {
        v36 = (v26 & 0xF) + 87;
      }

      else
      {
        v36 = v26 & 0xF | 0x30;
      }

      *--v34 = v36;
      v26 >>= 4;
    }

    else
    {
      *--v34 = 48;
    }

    --v35;
  }

  while (v35);
  return v24;
}

uint64_t CUIMaxScaleForTargetPlatform(uint64_t a1)
{
  if ((a1 - 1) >= 2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t CUIMinScaleForTargetPlatform(uint64_t a1)
{
  if ((a1 & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

double CUIPointSizeForDimensionForVectorGlyph(uint64_t a1, int a2)
{
  if (a1)
  {
    if (a1 == 4)
    {
      return 17.0;
    }

    v2 = &__VectorGlyphDimension2ToPointSizeTableEmbedded;
    if (a1 == 5)
    {
      v2 = &__VectorGlyphDimension2ToPointSizeTableEmbedded;
    }
  }

  else
  {
    v2 = &__VectorGlyphDimension2ToPointSizeTableForMac;
  }

  return v2[a2];
}

uint64_t CUIMaxDimensionForVectorGlyph(uint64_t a1)
{
  if (a1 == 4)
  {
    return 1;
  }

  else
  {
    return 3;
  }
}

uint64_t CUIPreferredVectorGlyphConfigurationsForPlatform(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 < 6)
  {
    return *(&off_1E7EE02F8 + a1);
  }

  _CUILog(4, "CoreUI: CUIPreferredVectorGlyphConfigurationsForPlatform() called with an unknown platform '%d'", a3, a4, a5, a6, a7, a8, a1);
  return 0;
}

__CFString *CUIPlatformNameForPlatform(uint64_t a1)
{
  result = &stru_1F37DEE28;
  if (a1 > 2)
  {
    switch(a1)
    {
      case 3:
        return kCUIPlatformAppleTV;
      case 4:
        return kCUIPlatformWatch;
      case 5:
        return kCUIPlatformVision;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return kCUIPlatformiOS;
    }

    else if (a1 == 2)
    {
      return kCUIPlatformMaciOS;
    }
  }

  else
  {
    return kCUIPlatformMac;
  }

  return result;
}

uint64_t CUIPlatformForPlatformString(void *a1)
{
  if ([a1 isEqualToString:kCUIPlatformMac] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"osx"))
  {
    return 0;
  }

  if ([a1 isEqualToString:kCUIPlatformMaciOS])
  {
    return 2;
  }

  if ([a1 isEqualToString:kCUIPlatformiOS] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @"iphoneos"))
  {
    return 1;
  }

  if ([a1 isEqualToString:kCUIPlatformAppleTV])
  {
    return 3;
  }

  if ([a1 isEqualToString:kCUIPlatformWatch])
  {
    return 4;
  }

  if ([a1 isEqualToString:kCUIPlatformVision])
  {
    return 5;
  }

  if ([a1 isEqualToString:@"xros"])
  {
    return 5;
  }

  return -1;
}

uint64_t CUIRenditionKeyTokenIsBaseKeyOfKeyList(uint64_t a1, unsigned __int16 *a2)
{
  v3 = 0;
  if (a1)
  {
    while (1)
    {
      v4 = (a1 + 4 * v3);
      if (!v4[1] && !*v4)
      {
        break;
      }

      ++v3;
    }
  }

  v5 = 0;
  if (a2)
  {
    while (1)
    {
      v6 = &a2[2 * v5];
      if (!v6[1] && !*v6)
      {
        break;
      }

      ++v5;
    }
  }

  if (v5 < v3)
  {
    return 0;
  }

  if (v3)
  {
    v8 = v3;
    v9 = (a1 + 2);
    v10 = (a1 + 2);
    while (1)
    {
      v12 = *v10;
      v10 += 2;
      v11 = v12;
      if (v12)
      {
        if (v11 != CUIRenditionKeyValueForAttribute(a2, *(v9 - 1)))
        {
          break;
        }
      }

      v9 = v10;
      if (!--v8)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t CUICGBlendModeFromLSRDescription(void *a1)
{
  result = [a1 UTF8String];
  if (result)
  {
    v2 = result;
    v3 = off_1E7EE0048;
    v4 = 28;
    while (strcasecmp(*v3, v2))
    {
      v3 += 3;
      if (!--v4)
      {
        return 0;
      }
    }

    return *(v3 - 2);
  }

  return result;
}

__CFString *CUIBlendModeLSRDescriptionFromCGBlendMode(int a1)
{
  v1 = off_1E7EE0048;
  v2 = 28;
  while (*(v1 - 1) != a1)
  {
    v1 += 3;
    if (!--v2)
    {
      return @"normal";
    }
  }

  return [MEMORY[0x1E696AEC0] stringWithUTF8String:*v1];
}

__CFString *CUIBlendModeDescriptionFromCGBlendMode(int a1)
{
  if (a1)
  {
    v1 = &qword_1E7EE0058;
    v2 = 28;
    while (--v2)
    {
      v3 = v1 + 3;
      v4 = *v1;
      v1 += 3;
      if (v4 == a1)
      {
        v5 = *(v3 - 1);
        return [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      }
    }

    return @"Normal";
  }

  else
  {
    v5 = "Normal";
    return [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
  }
}

const char *CUIThemeAttributeNameToString(int a1)
{
  if ((a1 - 1) > 0x1B)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_1E7EE0328[a1 - 1];
  }
}

void *CUIKeyFormatToArrayString(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  if (*(a1 + 8))
  {
    v3 = 0;
    do
    {
      [v2 addObject:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithUTF8String:", CUIThemeAttributeNameToString(*(a1 + 12 + 4 * v3++)))}];
    }

    while (*(a1 + 8) > v3);
  }

  return v2;
}

void CUISetThemeCleanupQueue(void *a1)
{
  v2 = a1;
  os_unfair_lock_lock(&__themeCleanupQueueLock);
  v3 = __themeCleanupQueue;
  __themeCleanupQueue = a1;
  os_unfair_lock_unlock(&__themeCleanupQueueLock);
}

id CUIGetThemeCleanupQueue()
{
  os_unfair_lock_lock(&__themeCleanupQueueLock);
  v0 = __themeCleanupQueue;
  os_unfair_lock_unlock(&__themeCleanupQueueLock);
  v1 = MEMORY[0x1E69E96A0];
  if (v0)
  {
    v1 = v0;
  }

  v2 = v1;

  return v2;
}

unsigned __int16 *_CUIRenditionKeySetIntegerValueForAttribute(unsigned __int16 *a1, __int16 a2, unint64_t a3)
{
  if (a3 >> 16)
  {
    _CUIRenditionKeySetIntegerValueForAttribute_cold_1(a2);
  }

  return CUIRenditionKeySetValueForAttribute(a1, a2, a3, 0x16u);
}

_DWORD *CUIBitVectorCreate(unsigned int a1)
{
  if (a1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = a1;
  }

  v2 = ((v1 - 1) >> 5) + 1;
  v3 = malloc_type_malloc(4 * v2 + 8, 0xE343BF1CuLL);
  bzero(v3, 4 * v2 + 8);
  __CFSetLastAllocationEventName();
  *v3 = 0;
  v3[1] = v2;
  return v3;
}

void *CUIBitVectorCopy(unsigned int *a1)
{
  v2 = a1[1];
  v3 = malloc_type_malloc(4 * v2 + 8, 0xE343BF1CuLL);
  bzero(v3, 4 * v2 + 8);
  __CFSetLastAllocationEventName();
  *v3 = 0;
  v3[1] = v2;
  v4 = 4 * a1[1] + 8;

  return memcpy(v3, a1, v4);
}

void CUIBitVectorDestroy(os_unfair_lock_s *a1)
{
  if (a1)
  {
    os_unfair_lock_lock(a1);

    free(a1);
  }
}

uint64_t CUIBitVectorSetBit(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  if (a2 >> 5 >= a1[1]._os_unfair_lock_opaque)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
    a1[(a2 >> 5) + 2]._os_unfair_lock_opaque |= 1 << a2;
  }

  os_unfair_lock_unlock(a1);
  return v4;
}

uint64_t CUIBitVectorUnSetBit(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  if (a2 >> 5 >= a1[1]._os_unfair_lock_opaque)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = 1;
    a1[(a2 >> 5) + 2]._os_unfair_lock_opaque &= ~(1 << a2);
  }

  os_unfair_lock_unlock(a1);
  return v4;
}

uint64_t CUIBitVectorIsBitSet(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  if (a2 >> 5 >= a1[1]._os_unfair_lock_opaque)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = (a1[(a2 >> 5) + 2]._os_unfair_lock_opaque >> a2) & 1;
  }

  os_unfair_lock_unlock(a1);
  return v4;
}

uint64_t CUIBitVectorNumberOfBitsSet(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    LODWORD(v3) = 0;
    v4 = a1 + 2;
    do
    {
      v5 = v4->_os_unfair_lock_opaque;
      ++v4;
      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      v3 = (v6.i32[0] + v3);
      --os_unfair_lock_opaque;
    }

    while (os_unfair_lock_opaque);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock(a1);
  return v3;
}

uint64_t CUIBitVectorNumberOfBitsSetInBucket(uint64_t a1, unsigned int a2)
{
  v2 = vcnt_s8(*(a1 + 4 * (a2 >> 5) + 8));
  v2.i16[0] = vaddlv_u8(v2);
  return v2.u32[0];
}

uint64_t CUIBitVectorBucketValue(os_unfair_lock_s *a1, unsigned int a2)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_opaque = a1[(a2 >> 5) + 2]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(a1);
  return os_unfair_lock_opaque;
}

uint64_t CUIBitVectorSetBitRange(os_unfair_lock_s *a1, unsigned int a2, unsigned int a3)
{
  os_unfair_lock_lock(a1);
  if (a2 >= a3)
  {
LABEL_5:
    os_unfair_lock_unlock(a1);
    return 1;
  }

  else
  {
    os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
    while (a2 >> 5 < os_unfair_lock_opaque)
    {
      a1[(a2 >> 5) + 2]._os_unfair_lock_opaque |= 1 << a2;
      if (a3 == ++a2)
      {
        goto LABEL_5;
      }
    }

    os_unfair_lock_unlock(a1);
    return 0xFFFFFFFFLL;
  }
}

_DWORD *CUIBitVectorBitAnd(os_unfair_lock_s *a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_lock(a2);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque == a2[1]._os_unfair_lock_opaque)
  {
    v5 = malloc_type_malloc(4 * os_unfair_lock_opaque + 8, 0xE343BF1CuLL);
    bzero(v5, 4 * os_unfair_lock_opaque + 8);
    __CFSetLastAllocationEventName();
    *v5 = 0;
    v5[1] = os_unfair_lock_opaque;
    if (a1[1]._os_unfair_lock_opaque)
    {
      v6 = 2;
      do
      {
        v5[v6] = a2[v6]._os_unfair_lock_opaque & a1[v6]._os_unfair_lock_opaque;
        v7 = v6++ - 1;
      }

      while (v7 < a1[1]._os_unfair_lock_opaque);
    }
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(a2);
  os_unfair_lock_unlock(a1);
  return v5;
}

_DWORD *CUIBitVectorBitOrForBucket(os_unfair_lock_s *a1, os_unfair_lock_s *a2, int a3)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_lock(a2);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque == a2[1]._os_unfair_lock_opaque)
  {
    v7 = malloc_type_malloc(4 * os_unfair_lock_opaque + 8, 0xE343BF1CuLL);
    bzero(v7, 4 * os_unfair_lock_opaque + 8);
    __CFSetLastAllocationEventName();
    *v7 = 0;
    v7[1] = os_unfair_lock_opaque;
    if (a1[1]._os_unfair_lock_opaque)
    {
      v8 = 0;
      v9 = a1 + 2;
      v10 = v7 + 2;
      do
      {
        if (a3 == v8)
        {
          v10[a3] = a2[a3 + 2]._os_unfair_lock_opaque | v9[a3]._os_unfair_lock_opaque;
        }

        else
        {
          v10[v8] = v9[v8]._os_unfair_lock_opaque;
        }

        ++v8;
      }

      while (v8 < a1[1]._os_unfair_lock_opaque);
    }

    os_unfair_lock_unlock(a2);
  }

  else
  {
    os_unfair_lock_unlock(a2);
    v7 = 0;
  }

  os_unfair_lock_unlock(a1);
  return v7;
}

_DWORD *CUIBitVectorToData(os_unfair_lock_s *a1, size_t *a2)
{
  os_unfair_lock_lock(a1);
  v4 = 4 * a1[1]._os_unfair_lock_opaque + 4;
  *a2 = v4;
  v5 = malloc_type_malloc(v4, 0x66860228uLL);
  v6 = v5;
  *v5 = a1[1]._os_unfair_lock_opaque;
  if (a1[1]._os_unfair_lock_opaque)
  {
    v7 = 0;
    do
    {
      v5[v7 + 1] = a1[v7 + 2]._os_unfair_lock_opaque;
      ++v7;
    }

    while (v7 < a1[1]._os_unfair_lock_opaque);
  }

  __CFSetLastAllocationEventName();
  os_unfair_lock_unlock(a1);
  return v6;
}

_DWORD *CUIBitVectorFromData(unsigned int *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = 4 * v2;
  if (4 * v2 + 4 != a2)
  {
    return 0;
  }

  v5 = malloc_type_malloc(v3 + 8, 0xE343BF1CuLL);
  bzero(v5, v3 + 8);
  __CFSetLastAllocationEventName();
  *v5 = 0;
  v5[1] = v2;
  if (v2)
  {
    v6 = (a1 + 1);
    v7 = 2;
    do
    {
      v8 = *v6++;
      v5[v7++] = v8;
      --v2;
    }

    while (v2);
  }

  return v5;
}

BOOL CUIBitVectorEqual(os_unfair_lock_s *a1, os_unfair_lock_s *a2)
{
  os_unfair_lock_lock(a1);
  os_unfair_lock_lock(a2);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque == a2[1]._os_unfair_lock_opaque)
  {
    if (os_unfair_lock_opaque)
    {
      v5 = a1 + 2;
      v6 = a2 + 2;
      v7 = os_unfair_lock_opaque - 1;
      do
      {
        v9 = v5->_os_unfair_lock_opaque;
        ++v5;
        v8 = v9;
        v11 = v6->_os_unfair_lock_opaque;
        ++v6;
        v10 = v11;
        v13 = v7-- != 0;
        v14 = v8 == v10;
      }

      while (v8 == v10 && v13);
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    v14 = 0;
  }

  os_unfair_lock_unlock(a2);
  os_unfair_lock_unlock(a1);
  return v14;
}

_BYTE *CUIBitVectorToString(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1);
  v2 = (34 * a1[1]._os_unfair_lock_opaque) | 1;
  v3 = malloc_type_calloc((2 * a1[1]._os_unfair_lock_opaque + 32 * a1[1]._os_unfair_lock_opaque) | 1, 1uLL, 0x100004077774924uLL);
  os_unfair_lock_opaque = a1[1]._os_unfair_lock_opaque;
  if (os_unfair_lock_opaque)
  {
    v5 = 0;
    os_unfair_lock_opaque = 0;
    do
    {
      v6 = 0;
      v3[os_unfair_lock_opaque] = 91;
      v7 = (os_unfair_lock_opaque + 1);
      os_unfair_lock_opaque += 2;
      v8 = &v3[v7];
      v9 = v7 << 32;
      do
      {
        if ((a1[v5 + 2]._os_unfair_lock_opaque >> v6))
        {
          v10 = 49;
        }

        else
        {
          v10 = 48;
        }

        v8[v6] = v10;
        ++os_unfair_lock_opaque;
        ++v6;
        v9 += 0x100000000;
      }

      while (v6 != 32);
      v3[v9 >> 32] = 93;
      ++v5;
    }

    while (v5 < a1[1]._os_unfair_lock_opaque);
  }

  if (os_unfair_lock_opaque >= v2)
  {
    CUIBitVectorToString_cold_1();
  }

  __CFSetLastAllocationEventName();
  os_unfair_lock_unlock(a1);
  return v3;
}

BOOL CUIGeneratePlaceholderWhilePreservingAssetCatalog(void *a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v66 = *MEMORY[0x1E69E9840];
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 1;
  v10 = objc_autoreleasePoolPush();
  v59 = 0uLL;
  if (![a3 count])
  {
    *(v61 + 6) = 0;
    goto LABEL_33;
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v11 = -[CUIPlaceholderCUICommonAssetStorage initWithPath:forWriting:]([CUIPlaceholderCUICommonAssetStorage alloc], "initWithPath:forWriting:", [a1 path], 0);
  v12 = -[CUIPlaceholderCUIMutableCommonAssetStorage initWithPath:]([CUIPlaceholderCUIMutableCommonAssetStorage alloc], "initWithPath:", [a2 path]);
  v13 = v12;
  if (v11 && v12)
  {
    v37 = v10;
    if (a4)
    {
      v51 = 0;
      v52 = &v51;
      v53 = 0x2020000000;
      LOBYTE(v54) = 0;
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke;
      v50[3] = &unk_1E7EE09A8;
      v50[5] = a3;
      v50[6] = &v51;
      v50[4] = v11;
      [(CUIPlaceholderCUICommonAssetStorage *)v11 enumerateKeysAndObjectsUsingBlock:v50];
      if (!*(v52 + 24))
      {
        a4 &= ~1uLL;
      }

      v38 = a4;
      _Block_object_dispose(&v51, 8);
    }

    else
    {
      v38 = a4;
    }

    v14 = [(CUIPlaceholderCUICommonAssetStorage *)v11 keyFormat];
    -[CUIPlaceholderCUIMutableCommonAssetStorage setThinningArguments:](v13, "setThinningArguments:", [MEMORY[0x1E696AEC0] stringWithFormat:@"Placeholder '%@' [%@]", objc_msgSend(a3, "componentsJoinedByString:", @", "), -[CUIPlaceholderCUICommonAssetStorage thinningArguments](v11, "thinningArguments")]);
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setAuthoringTool:[(CUIPlaceholderCUICommonAssetStorage *)v11 authoringTool]];
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setDeploymentPlatformVersion:[(CUIPlaceholderCUICommonAssetStorage *)v11 deploymentPlatformVersion]];
    -[CUIPlaceholderCUIMutableCommonAssetStorage setKeyFormatData:](v13, "setKeyFormatData:", [MEMORY[0x1E695DEF0] dataWithBytes:v14 length:4 * (*(v14 + 8) + 3)]);
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setKeySemantics:[(CUIPlaceholderCUICommonAssetStorage *)v11 keySemantics]];
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setDeploymentPlatform:[(CUIPlaceholderCUICommonAssetStorage *)v11 deploymentPlatformString]];
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setDeploymentPlatformVersion:[(CUIPlaceholderCUICommonAssetStorage *)v11 deploymentPlatformVersion]];
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setSchemaVersion:[(CUIPlaceholderCUICommonAssetStorage *)v11 schemaVersion]];
    [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setStorageVersion:[(CUIPlaceholderCUICommonAssetStorage *)v11 storageVersion]];
    v36 = a2;
    v49 = 0u;
    v48 = 0u;
    v47 = 0u;
    v46 = 0u;
    v15 = [(NSDictionary *)[(CUIPlaceholderCUICommonAssetStorage *)v11 appearances] allKeys];
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v46 objects:v65 count:16];
    if (v16)
    {
      v17 = *v47;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v47 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setAppearanceIdentifier:[(CUIPlaceholderCUICommonAssetStorage *)v11 appearanceIdentifierForName:*(*(&v46 + 1) + 8 * i)] forName:*(*(&v46 + 1) + 8 * i)];
        }

        v16 = [(NSArray *)v15 countByEnumeratingWithState:&v46 objects:v65 count:16];
      }

      while (v16);
    }

    v45 = 0u;
    v44 = 0u;
    v43 = 0u;
    v42 = 0u;
    v19 = [-[CUIPlaceholderCUICommonAssetStorage localizations](v11 "localizations")];
    v20 = [v19 countByEnumeratingWithState:&v42 objects:v64 count:16];
    if (v20)
    {
      v21 = *v43;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v43 != v21)
          {
            objc_enumerationMutation(v19);
          }

          [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setLocalizationIdentifier:[(CUIPlaceholderCUICommonAssetStorage *)v11 localizationIdentifierForName:*(*(&v42 + 1) + 8 * j)] forName:*(*(&v42 + 1) + 8 * j)];
        }

        v20 = [v19 countByEnumeratingWithState:&v42 objects:v64 count:16];
      }

      while (v20);
    }

    a2 = v36;
    v23 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_3;
    v40[3] = &unk_1E7EE09D0;
    v40[4] = v23;
    v40[5] = v24;
    v40[6] = v11;
    v40[7] = a3;
    v40[13] = v14;
    v40[14] = v38;
    v41 = v59;
    v40[8] = v13;
    v40[9] = v25;
    v40[10] = v26;
    v40[11] = &v55;
    v40[12] = &v60;
    [(CUIPlaceholderCUICommonAssetStorage *)v11 enumerateKeysAndObjectsUsingBlock:v40];
    v51 = 0;
    v52 = &v51;
    v53 = 0x2020000000;
    v54 = malloc_type_calloc((*(v14 + 8) + 1), 4uLL, 0x100004052888210uLL);
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_5;
    v39[3] = &unk_1E7EE09F8;
    v39[4] = v26;
    v39[5] = v11;
    v39[6] = v23;
    v39[7] = v13;
    v39[8] = v24;
    v39[9] = &v51;
    v39[10] = &v60;
    v39[11] = v14;
    [v25 enumerateObjectsUsingBlock:v39];
    free(v52[3]);

    _Block_object_dispose(&v51, 8);
    v10 = v37;
    goto LABEL_30;
  }

  if (v11)
  {
    if (!v12)
    {
      goto LABEL_29;
    }
  }

  else
  {
    *(v61 + 6) = -2;
    if (!v12)
    {
LABEL_29:
      *(v61 + 6) = -1;
    }
  }

LABEL_30:

  [(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 setRenditionCount:*(v56 + 6)];
  if (![(CUIPlaceholderCUIMutableCommonAssetStorage *)v13 writeToDiskAndCompact:1])
  {
    *(v61 + 6) = -4;
  }

  _Block_object_dispose(&v55, 8);
LABEL_33:
  objc_autoreleasePoolPop(v10);
  if (!a5)
  {
    goto LABEL_48;
  }

  v27 = 0;
  v28 = *(v61 + 6);
  if (v28 <= -3)
  {
    if (v28 == -4)
    {
      v29 = MEMORY[0x1E696ABC0];
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"ERROR saving/compacting to outputfile failed", *MEMORY[0x1E696A588], 0}];
    }

    else
    {
      if (v28 != -3)
      {
        goto LABEL_47;
      }

      v29 = MEMORY[0x1E696ABC0];
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"ERROR saving to outputfile failed", *MEMORY[0x1E696A588], 0}];
    }

LABEL_45:
    v30 = v33;
    v31 = *MEMORY[0x1E696A798];
    v32 = 5;
    goto LABEL_46;
  }

  switch(v28)
  {
    case -2:
      v29 = MEMORY[0x1E696ABC0];
      v33 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"ERROR inputfile not a valid Asset catalog", *MEMORY[0x1E696A588], 0}];
      goto LABEL_45;
    case -1:
      v29 = MEMORY[0x1E696ABC0];
      v32 = *__error();
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"ERROR creating outputfile", *MEMORY[0x1E696A588], 0}];
      v31 = *MEMORY[0x1E696A798];
      goto LABEL_46;
    case 0:
      v29 = MEMORY[0x1E696ABC0];
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{@"Passed Invalid namesToPreserve", *MEMORY[0x1E696A588], 0}];
      v31 = *MEMORY[0x1E696A798];
      v32 = 45;
LABEL_46:
      v27 = [v29 errorWithDomain:v31 code:v32 userInfo:v30];
      break;
  }

LABEL_47:
  *a5 = v27;
LABEL_48:
  v34 = *(v61 + 6);
  if (v34 < 0)
  {
    [objc_msgSend(MEMORY[0x1E696AC08] "defaultManager")];
  }

  _Block_object_dispose(&v60, 8);
  return v34 == 1;
}

void sub_1B9E17104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a68, 8);
  _Block_object_dispose(&a72, 8);
  _Block_object_dispose(&STACK[0x228], 8);
  _Unwind_Resume(a1);
}

uint64_t __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasPrefix:a2];
  if (result)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

void __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_3(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v6 = CUIRenditionKeyValueForAttribute(a2, 1);
  v7 = CUIRenditionKeyValueForAttribute(a2, 17);
  KeyTokenToData = __createKeyTokenToData(a2, *(a1 + 104));
  if (v6 != 9 || v7)
  {
    v9 = [*(a1 + 48) renditionNameForKeyBaseList:a2];
    v10 = *(a1 + 56);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_4;
    v13[3] = &unk_1E7EE0980;
    v13[4] = v9;
    v13[5] = &v14;
    [v10 enumerateObjectsUsingBlock:v13];
    v11 = v15;
    if (*(v15 + 24) == 1)
    {
      if (*(a1 + 112))
      {
        if (v6 == 1010 || (v12 = CUIRenditionKeyValueForAttribute(a2, 2), v11 = v15, v12 == 220))
        {
          *(v11 + 24) = 0;
          goto LABEL_11;
        }

        if ((v15[3] & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      [*(a1 + 64) setRenditionKey:objc_msgSend(*(a1 + 48) hotSpot:"renditionKeyForName:hotSpot:" forName:{objc_msgSend(v9, "UTF8String"), a1 + 120), objc_msgSend(v9, "UTF8String"), *(a1 + 120), *(a1 + 128)}];
      if (![*(a1 + 64) setAsset:a3 forKey:KeyTokenToData])
      {
        *(*(*(a1 + 96) + 8) + 24) = -3;
        goto LABEL_12;
      }

      [*(a1 + 72) addObject:KeyTokenToData];
      [*(a1 + 80) addObject:a3];
      ++*(*(*(a1 + 88) + 8) + 24);
    }
  }

  else
  {
    [*(a1 + 32) addObject:KeyTokenToData];
    [*(a1 + 40) addObject:a3];
  }

LABEL_11:

LABEL_12:
  _Block_object_dispose(&v14, 8);
}

void sub_1B9E17484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __createKeyTokenToData(int *a1, uint64_t a2)
{
  v4 = malloc_type_calloc(*(a2 + 8), 2uLL, 0x1000040BDFB0063uLL);
  CUIFillCARKeyArrayForRenditionKey(v4, a1, a2);
  v5 = objc_alloc(MEMORY[0x1E695DEF0]);
  v6 = 2 * *(a2 + 8);

  return [v5 initWithBytesNoCopy:v4 length:v6 freeWhenDone:1];
}

uint64_t __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) hasPrefix:a2];
  if (result)
  {
    *a4 = 1;
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  return result;
}

uint64_t __CUIGeneratePlaceholderWhilePreservingAssetCatalog_block_invoke_5(uint64_t a1, void *a2)
{
  v4 = [*(a1 + 32) objectAtIndex:?];
  CUIFillRenditionKeyForCARKeyArray(*(*(*(a1 + 72) + 8) + 24), [a2 bytes], *(a1 + 88));
  v10 = -[CUIPlaceholderCUIThemeRendition initWithCSIData:forKey:version:]([CUIPlaceholderCUIThemeRendition alloc], "initWithCSIData:forKey:version:", v4, *(*(*(a1 + 72) + 8) + 24), [*(a1 + 40) distilledInCoreUIVersion]);
  v5 = [(CUIPlaceholderCUIThemeRendition *)v10 isInternalLink];
  v6 = v10;
  if (v5)
  {
    KeyTokenToData = __createKeyTokenToData([-[CUIPlaceholderCUIThemeRendition linkingToRendition](v10 "linkingToRendition")], *(a1 + 88));
    v8 = [*(a1 + 48) indexOfObject:KeyTokenToData];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL && ([*(a1 + 56) setAsset:objc_msgSend(*(a1 + 64) forKey:{"objectAtIndex:", v8), objc_msgSend(*(a1 + 48), "objectAtIndex:", v8)}] & 1) == 0)
    {
      *(*(*(a1 + 80) + 8) + 24) = -3;
    }

    v6 = v10;
  }

  return MEMORY[0x1EEE66BB8](v5, v6);
}

unsigned int *BOMStorageNewWithOptionsAndSys(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v5 = (*(v3 + 2))(*(v3 + 1), a1, 1538, 420);
  if (v5 == -1)
  {
    v8 = __error();
    strerror(*v8);
    _CUILog(4, "%s can't open: '%s' %s", v9, v10, v11, v12, v13, v14, "BOMStorage BOMStorageNewWithOptionsAndSys(const char *, CFDictionaryRef, BomSys *)");
  }

  else
  {
    v6 = v5;
    bzero(v15, 0x470uLL);
    v16 = v6;
    v17 = v3;
    if (!_WriteRootPage(v15))
    {
      (*(v3 + 3))(*(v3 + 1), v6);
      return BOMStorageOpenWithSys(a1, 1, v3);
    }
  }

  return 0;
}

uint64_t _WriteRootPage(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 1120);
  }

  else
  {
    v2 = 0;
  }

  v3 = 1;
  v4 = BOMStreamWithFileAndSys(*(a1 + 1028), 0, 0x200uLL, 1, 0, v2);
  if (v4)
  {
    v11 = v4;
    BOMStreamWriteUInt32(v4, 1112493395, v5, v6, v7, v8, v9, v10);
    BOMStreamWriteUInt32(v11, 1953460837, v12, v13, v14, v15, v16, v17);
    BOMStreamWriteUInt32(v11, 1, v18, v19, v20, v21, v22, v23);
    BOMStreamWriteUInt32(v11, *(a1 + 1056), v24, v25, v26, v27, v28, v29);
    BOMStreamWriteUInt32(v11, *(a1 + 1060), v30, v31, v32, v33, v34, v35);
    BOMStreamWriteUInt32(v11, *(a1 + 1064), v36, v37, v38, v39, v40, v41);
    BOMStreamWriteUInt32(v11, *(a1 + 1096), v42, v43, v44, v45, v46, v47);
    BOMStreamWriteUInt32(v11, *(a1 + 1100), v48, v49, v50, v51, v52, v53);
    v3 = BOMStreamFree(v11, v54, v55, v56, v57, v58, v59, v60);
    if ((*(v2 + 64))(*(v2 + 8), *(a1 + 1028)))
    {
      v61 = __error();
      strerror(*v61);
      _CUILog(4, "%s fsync: '%s'", v62, v63, v64, v65, v66, v67, "int _WriteRootPage(BOMStorage)");
      return 1;
    }
  }

  return v3;
}

unsigned int *BOMStorageOpenWithSys(uint64_t a1, int a2, __int128 *a3)
{
  v3 = a3;
  v221 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v3 = BomSys_default();
  }

  v215 = 0u;
  v216 = 0u;
  v214 = 0u;
  memset(v213, 0, sizeof(v213));
  v6 = (*(v3 + 2))(*(v3 + 1), a1, 2 * (a2 != 0), 420);
  if (v6 != -1)
  {
    v7 = v6;
    if ((*(v3 + 9))(*(v3 + 1), v6, v213) != -1)
    {
      v8 = BOMStreamWithFileAndSys(v7, 0, 0x200uLL, 0, 0, v3);
      if (!v8)
      {
        v121 = __error();
        strerror(*v121);
        v129 = BOMExceptionHandlerMessage("can't read from: '%s' %s", v122, v123, v124, v125, v126, v127, v128, a1);
        v87 = *__error();
        v88 = v129;
        v89 = 287;
        goto LABEL_18;
      }

      v16 = v8;
      if (BOMStreamReadUInt32(v8, v9, v10, v11, v12, v13, v14, v15) == 1112493395 && BOMStreamReadUInt32(v16, v17, v18, v19, v20, v21, v22, v23) == 1953460837)
      {
        if (BOMStreamReadUInt32(v16, v17, v18, v19, v20, v21, v22, v23) == 1)
        {
          v31 = malloc_type_calloc(1uLL, 0x470uLL, 0x10A0040835A29DFuLL);
          if (!v31)
          {
            v132 = __error();
            v133 = strerror(*v132);
            v141 = BOMExceptionHandlerMessage("calloc: %s", v134, v135, v136, v137, v138, v139, v140, v133);
            v142 = __error();
            _BOMExceptionHandlerCall(v141, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 318, *v142);
            BOMStreamFree(v16, v143, v144, v145, v146, v147, v148, v149);
            (*(v3 + 3))(*(v3 + 1), v7);
            return v31;
          }

          __CFSetLastAllocationEventName();
          *(v31 + 140) = v3;
          v31[257] = v7;
          v32 = v214;
          v31[258] = v214;
          v31[259] = v32;
          v31[263] = v31[263] & 0xFFFFFFF6 | a2 & 1;
          v31[264] = BOMStreamReadUInt32(v16, v33, v34, v35, v36, v37, v38, v39);
          v31[265] = BOMStreamReadUInt32(v16, v40, v41, v42, v43, v44, v45, v46);
          v31[266] = BOMStreamReadUInt32(v16, v47, v48, v49, v50, v51, v52, v53);
          v31[274] = BOMStreamReadUInt32(v16, v54, v55, v56, v57, v58, v59, v60);
          v31[275] = BOMStreamReadUInt32(v16, v61, v62, v63, v64, v65, v66, v67);
          v31[263] &= ~4u;
          *(v31 + 141) = 0;
          BOMStreamFree(v16, v68, v69, v70, v71, v72, v73, v74);
          v82 = v31[265];
          v83 = v31[266];
          v84 = __CFADD__(v83, v82);
          v85 = v83 + v82;
          if (v84)
          {
            v86 = BOMExceptionHandlerMessage("%s: stream invalid; overflow of admin offset+size", v75, v76, v77, v78, v79, v80, v81, a1);
            v87 = *__error();
            v88 = v86;
            v89 = 347;
          }

          else
          {
            v150 = v31[258];
            if (v85 <= v150)
            {
              v152 = v31[274];
              v153 = v31[275];
              v84 = __CFADD__(v153, v152);
              v154 = v153 + v152;
              if (v84)
              {
                v155 = BOMExceptionHandlerMessage("%s: stream invalid; overflow of toc offset+size", v75, v150, v77, v78, v79, v80, v81, a1);
                v87 = *__error();
                v88 = v155;
                v89 = 361;
              }

              else
              {
                if (v154 <= v150)
                {
                  if (a2)
                  {
                    if (v150 <= 0x800)
                    {
                      v157 = 2048;
                    }

                    else
                    {
                      v157 = v31[258];
                    }

                    v31[262] = v157;
                    _CreateMapAddress(v31, v157);
                    v158 = *(v31 + 130);
                    if (!v158)
                    {
                      goto LABEL_19;
                    }

                    v31[263] |= 0xAu;
                    v159 = v31[274];
                    if (v159)
                    {
                      v160 = BOMStreamWithFileAndSys(v31[257], v159, v31[275], 0, (v158 + v159), v3);
                      if (!v160)
                      {
                        goto LABEL_19;
                      }

                      BOMStreamFree(v160, v161, v162, v163, v164, v165, v166, v167);
                    }
                  }

                  else
                  {
                    v168 = *(v3 + 12);
                    if (!v168)
                    {
                      goto LABEL_50;
                    }

                    v169 = v168(*(v3 + 1), 0);
                    if (CUILogRenditionLogEnabled())
                    {
                      v170 = CUILogHandle();
                      if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136446466;
                        v218 = a1;
                        v219 = 2050;
                        v220 = v169;
                        _os_log_impl(&dword_1B9DEC000, v170, OS_LOG_TYPE_INFO, "CoreUI %{public}s %{public}p", buf, 0x16u);
                      }
                    }

                    if (v169 == -1)
                    {
LABEL_50:
                      v31[262] = 0;
                      *(v31 + 130) = 0;
                      v31[263] &= ~2u;
                      v174 = __error();
                      strerror(*v174);
                      _CUILog(1, "mmap failed for '%s' using regular file reading '%s'", v175, v176, v177, v178, v179, v180, a1);
                    }

                    else
                    {
                      (*(*(v31 + 140) + 24))(*(*(v31 + 140) + 8), v31[257]);
                      v31[257] = -1;
                      v171 = v31[263];
                      v31[262] = v31[258];
                      *(v31 + 130) = v169;
                      v31[263] = v171 | 0xA;
                      v172 = v31[265];
                      if (v172 && (v171 & 4) == 0)
                      {
                        madvise((v169 + v172), v31[266], 3);
                      }

                      v173 = v31[274];
                      if (v173 && (v31[263] & 4) == 0)
                      {
                        madvise((*(v31 + 130) + v173), v31[275], 3);
                      }
                    }
                  }

                  _CreateBlockTable(v31);
                  v181 = v31[265];
                  if (v181)
                  {
                    if (!a2 && (v31[263] & 2) != 0)
                    {
                      v183 = BOMStreamWithAddress(*(v31 + 130) + v181, v31[266], 0);
                    }

                    else
                    {
                      v182 = malloc_type_calloc(1uLL, v31[266], 0x5DFBE76CuLL);
                      *(v31 + 141) = v182;
                      if (!v182)
                      {
                        v191 = __error();
                        strerror(*v191);
                        _CUILog(4, "%s: malloc: %s", v192, v193, v194, v195, v196, v197, "BOMStorage BOMStorageOpenWithSys(const char *, Boolean, BomSys *)");
                        return 0;
                      }

                      v183 = BOMStreamWithFileAndSys(v7, v31[265], v31[266], 0, v182, v3);
                    }

                    v198 = v183;
                    if (!v183)
                    {
                      v212 = BOMExceptionHandlerMessage("can't read from %s unable to create a BOMStream", v184, v185, v186, v187, v188, v189, v190, a1);
                      v87 = *__error();
                      v88 = v212;
                      v89 = 455;
                      goto LABEL_18;
                    }

                    if (_ReadBlockTable(v31, v183, v185, v186, v187, v188, v189, v190) || _ReadFreeList(v31, v198, v199, v200, v201, v202, v203, v204))
                    {
                      goto LABEL_19;
                    }

                    BOMStreamFree(v198, v205, v206, v207, v208, v209, v210, v211);
                  }

                  else
                  {
                    *(v31 + 136) = _BOMFreeListAllocate();
                  }

                  __strlcpy_chk();
                  return v31;
                }

                v156 = BOMExceptionHandlerMessage("%s: stream invalid; toc range is outside of file", v75, v150, v77, v78, v79, v80, v81, a1);
                v87 = *__error();
                v88 = v156;
                v89 = 368;
              }
            }

            else
            {
              v151 = BOMExceptionHandlerMessage("%s: stream invalid; admin range is outside of file", v75, v150, v77, v78, v79, v80, v81, a1);
              v87 = *__error();
              v88 = v151;
              v89 = 354;
            }
          }

LABEL_18:
          _BOMExceptionHandlerCall(v88, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v89, v87);
          goto LABEL_19;
        }

        v131 = BOMExceptionHandlerMessage("%s has an unknown version: 0x%X", v24, v25, v26, v27, v28, v29, v30, a1);
        v111 = *__error();
        v112 = v131;
        v113 = 308;
      }

      else
      {
        v110 = BOMExceptionHandlerMessage("%s is not a BOMStorage file\n", v17, v18, v19, v20, v21, v22, v23, a1);
        v111 = *__error();
        v112 = v110;
        v113 = 294;
      }

      _BOMExceptionHandlerCall(v112, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v113, v111);
      BOMStreamFree(v16, v114, v115, v116, v117, v118, v119, v120);
LABEL_19:
      (*(v3 + 3))(*(v3 + 1), v7);
      return 0;
    }

    v100 = __error();
    v101 = strerror(*v100);
    v109 = BOMExceptionHandlerMessage("fstat: %s", v102, v103, v104, v105, v106, v107, v108, v101);
    v87 = *__error();
    v88 = v109;
    v89 = 278;
    goto LABEL_18;
  }

  v90 = __error();
  strerror(*v90);
  v98 = BOMExceptionHandlerMessage("can't open: '%s' %s", v91, v92, v93, v94, v95, v96, v97, a1);
  v99 = __error();
  _BOMExceptionHandlerCall(v98, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 271, *v99);
  return 0;
}

void _CreateMapAddress(uint64_t a1, unsigned int a2)
{
  v3 = a2 % *MEMORY[0x1E69E9AC8];
  if (v3)
  {
    v4 = *MEMORY[0x1E69E9AC8] - v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 + a2;
  v6 = (*(*(a1 + 1120) + 96))(*(*(a1 + 1120) + 8), 0, v5, 3, 4098, 0xFFFFFFFFLL, 0);
  *(a1 + 1040) = v6;
  if (v6 == -1)
  {
    v7 = __error();
    strerror(*v7);
    _CUILog(4, "%s can't mmap memory of size '%d' error: '%s'", v8, v9, v10, v11, v12, v13, "int _CreateMapAddress(BOMStorage, unsigned int)");
    *(a1 + 1040) = 0;
  }

  *(a1 + 1048) = v5;
}

void *_CreateBlockTable(void *result)
{
  if (*(result + 1052))
  {
    v1 = result;
    result[134] = malloc_type_calloc(1uLL, 0x800uLL, 0x100004000313F17uLL);
    result = malloc_type_calloc(1uLL, 0x400uLL, 0x1000040BEE6EA24uLL);
    v1[135] = result;
    *(v1 + 267) = 256;
  }

  return result;
}

uint64_t _ReadBlockTable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = BOMStreamReadUInt32(a2, a2, a3, a4, a5, a6, a7, a8);
  if (result)
  {
    v18 = result;
    if (result >> 29 || (v11 = (8 * result), v11 > *(a1 + 1064)))
    {
      v19 = BOMExceptionHandlerMessage("bad value for block table count", v11, v12, v13, v14, v15, v16, v17, v39);
      v20 = __error();
      _BOMExceptionHandlerCall(v19, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1610, *v20);
      return 1;
    }

    else if (*(a1 + 1052))
    {
      _ExpandBlockTable(a1, result);
      v29 = 0;
      v30 = 4 * v18;
      v31 = 4;
      do
      {
        *(*(a1 + 1072) + v31 - 4) = BOMStreamReadUInt32(a2, v22, v23, v24, v25, v26, v27, v28);
        *(*(a1 + 1072) + v31) = BOMStreamReadUInt32(a2, v32, v33, v34, v35, v36, v37, v38);
        *(*(a1 + 1080) + v29) &= ~1u;
        v31 += 8;
        v29 += 4;
      }

      while (v30 != v29);
      return 0;
    }

    else
    {
      DataPointer = BOMStreamGetDataPointer(a2, v11);
      result = 0;
      *(a1 + 1072) = DataPointer;
      *(a1 + 1068) = v18;
    }
  }

  return result;
}

uint64_t _ReadFreeList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((*(a1 + 1052) & 1) == 0)
  {
    v9 = _BOMFreeListAllocate();
    result = 0;
    *(a1 + 1088) = v9;
    return result;
  }

  UInt32 = BOMStreamReadUInt32(a2, a2, a3, a4, a5, a6, a7, a8);
  *(a1 + 1088) = _BOMFreeListAllocate();
  if (!UInt32)
  {
    return 0;
  }

  v20 = (8 * UInt32);
  if (v20 < 1)
  {
    v31 = BOMExceptionHandlerMessage("_ReadFreeList: tring to read %d byte for freelist table.", v13, v14, v15, v16, v17, v18, v19, v20);
    v32 = __error();
    _BOMExceptionHandlerCall(v31, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1755, *v32);
  }

  else
  {
    v21 = malloc_type_malloc(v20, 0x2D95399uLL);
    if (v21)
    {
      v27 = v21;
      BOMStreamReadBuffer(a2, v21, v20, v22, v23, v24, v25, v26);
      v28 = *(a1 + 1088);
      v29 = *(v28 + 16);
      v30 = BOMStreamGetByteOrder(a2) == 1;
      v29(v28, v27, v20, v30);
      free(v27);
      return 0;
    }
  }

  return 1;
}

void *BOMStorageOpenInRAM(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 <= 0x1FF)
  {
    v8 = BOMExceptionHandlerMessage("stream invalid; root page is outside of address range", a2, a3, a4, a5, a6, a7, a8, v164);
    v9 = *__error();
    v10 = v8;
    v11 = 489;
LABEL_14:
    _BOMExceptionHandlerCall(v10, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v11, v9);
    return 0;
  }

  v12 = a3;
  v13 = a2;
  v15 = BOMStreamWithAddress(a1, 512, 0);
  if (!v15)
  {
    v108 = BOMExceptionHandlerMessage("can't read from memory %p", v16, v17, v18, v19, v20, v21, v22, a1);
    v9 = *__error();
    v10 = v108;
    v11 = 497;
    goto LABEL_14;
  }

  v23 = v15;
  if (BOMStreamReadUInt32(v15, v16, v17, v18, v19, v20, v21, v22) == 1112493395 && BOMStreamReadUInt32(v23, v24, v25, v26, v27, v28, v29, v30) == 1953460837)
  {
    UInt32 = BOMStreamReadUInt32(v23, v24, v25, v26, v27, v28, v29, v30);
    if (UInt32 == 1)
    {
      v39 = malloc_type_calloc(1uLL, 0x470uLL, 0x10A0040835A29DFuLL);
      if (!v39)
      {
        v111 = __error();
        strerror(*v111);
        _CUILog(4, "%s: malloc: %s", v112, v113, v114, v115, v116, v117, "BOMStorage BOMStorageOpenInRAM(void *, size_t, Boolean)");
        BOMStreamFree(v23, v118, v119, v120, v121, v122, v123, v124);
        return v39;
      }

      v39[140] = BomSys_default();
      *(v39 + 257) = -1;
      *(v39 + 258) = v13;
      *(v39 + 259) = v13;
      *(v39 + 263) = *(v39 + 263) & 0xFFFFFFF6 | v12 & 1;
      *(v39 + 264) = BOMStreamReadUInt32(v23, v40, v41, v42, v43, v44, v45, v46);
      *(v39 + 265) = BOMStreamReadUInt32(v23, v47, v48, v49, v50, v51, v52, v53);
      *(v39 + 266) = BOMStreamReadUInt32(v23, v54, v55, v56, v57, v58, v59, v60);
      *(v39 + 274) = BOMStreamReadUInt32(v23, v61, v62, v63, v64, v65, v66, v67);
      *(v39 + 275) = BOMStreamReadUInt32(v23, v68, v69, v70, v71, v72, v73, v74);
      *(v39 + 263) |= 6u;
      BOMStreamFree(v23, v75, v76, v77, v78, v79, v80, v81);
      v89 = *(v39 + 265);
      v90 = *(v39 + 266);
      v91 = __CFADD__(v90, v89);
      v92 = v90 + v89;
      if (v91)
      {
        v93 = BOMExceptionHandlerMessage(" <memory>: stream invalid; overflow of admin offset+size", v82, v83, v84, v85, v86, v87, v88, v164);
        v94 = *__error();
        v95 = v93;
        v96 = 552;
      }

      else
      {
        v125 = *(v39 + 258);
        if (v92 <= v125)
        {
          v127 = *(v39 + 274);
          v128 = *(v39 + 275);
          v91 = __CFADD__(v128, v127);
          v129 = v128 + v127;
          if (v91)
          {
            v130 = BOMExceptionHandlerMessage("<memory>: stream invalid; overflow of toc offset+size", v82, v83, v84, v85, v86, v87, v88, v164);
            v94 = *__error();
            v95 = v130;
            v96 = 566;
          }

          else
          {
            if (v129 <= v125)
            {
              *(v39 + 262) = v125;
              v39[130] = a1;
              _CreateBlockTable(v39);
              v132 = *(v39 + 265);
              if (v132)
              {
                v133 = BOMStreamWithAddress(v39[130] + v132, *(v39 + 266), 0);
                if (!v133)
                {
                  v154 = __error();
                  v155 = strerror(*v154);
                  v163 = BOMExceptionHandlerMessage("can't read from <memory>: %s", v156, v157, v158, v159, v160, v161, v162, v155);
                  v94 = *__error();
                  v95 = v163;
                  v96 = 592;
                  goto LABEL_26;
                }

                v140 = v133;
                if (_ReadBlockTable(v39, v133, v134, v135, v136, v137, v138, v139) || _ReadFreeList(v39, v140, v141, v142, v143, v144, v145, v146))
                {
                  goto LABEL_27;
                }

                BOMStreamFree(v140, v147, v148, v149, v150, v151, v152, v153);
              }

              else
              {
                v39[136] = _BOMFreeListAllocate();
              }

              __strlcpy_chk();
              return v39;
            }

            v131 = BOMExceptionHandlerMessage("<memory>: stream invalid; toc range is outside file", v82, v83, v84, v85, v86, v87, v88, v164);
            v94 = *__error();
            v95 = v131;
            v96 = 573;
          }
        }

        else
        {
          v126 = BOMExceptionHandlerMessage("<memory>: stream invalid; admin range is outside of file", v82, v83, v84, v85, v86, v87, v88, v164);
          v94 = *__error();
          v95 = v126;
          v96 = 559;
        }
      }

LABEL_26:
      _BOMExceptionHandlerCall(v95, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v96, v94);
LABEL_27:
      free(v39);
      return 0;
    }

    v110 = BOMExceptionHandlerMessage("<memory> has an unknown version: 0x%X", v32, v33, v34, v35, v36, v37, v38, UInt32);
    v98 = *__error();
    v99 = v110;
    v100 = 517;
  }

  else
  {
    v97 = BOMExceptionHandlerMessage("%s is not a BOMStorage file", v24, v25, v26, v27, v28, v29, v30, "<memory>");
    v98 = *__error();
    v99 = v97;
    v100 = 504;
  }

  _BOMExceptionHandlerCall(v99, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v100, v98);
  BOMStreamFree(v23, v101, v102, v103, v104, v105, v106, v107);
  return 0;
}

uint64_t BOMStorageFree(_BYTE *a1)
{
  if (!a1)
  {
    return 1;
  }

  if ((a1[1052] & 0x10) != 0 && BOMStorageCommit(a1))
  {
    return 1;
  }

  v3 = *(a1 + 134);
  if (v3)
  {
    if (a1[1052])
    {
      free(v3);
      v4 = *(a1 + 135);
      if (v4)
      {
        free(v4);
      }
    }
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    v5[4](*(a1 + 136));
    free(v5);
  }

  if (*(a1 + 130))
  {
    if ((*(a1 + 263) & 8) != 0)
    {
      v6 = *(a1 + 263) & 3;
      v7 = (*(*(a1 + 140) + 104))(*(*(a1 + 140) + 8));
      if (v6 != 2 && v7 == -1)
      {
        v8 = __error();
        _BOMExceptionHandlerCall("munmap failed", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1521, *v8);
      }
    }
  }

  if (*(a1 + 257) != -1)
  {
    (*(*(a1 + 140) + 24))(*(*(a1 + 140) + 8));
  }

  v9 = *(a1 + 141);
  if (v9)
  {
    free(v9);
  }

  free(a1);
  return 0;
}

uint64_t BOMStorageCommit(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  v2 = *(a1 + 1052);
  if ((v2 & 0x10) == 0)
  {
    return 0;
  }

  if (*(a1 + 1028) == -1)
  {
    v3 = 0;
    *(a1 + 1036) = *(a1 + 1032);
    goto LABEL_8;
  }

  _FlushWriteCache(a1);
  if (_AdjustFileSize(a1, 0, 0))
  {
    return 1;
  }

  v5 = *(a1 + 1088);
  v6 = 8 * (*(a1 + 1068) + *(v5 + 8));
  v7 = (v6 + 24);
  if (v6 == -24)
  {
    v8 = 0;
  }

  else
  {
    v8 = (*(v5 + 48))(v5, (v6 + 39) & 0xFFFFFFF0);
    if (!v8)
    {
      v8 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
    }
  }

  v9 = *(a1 + 1060);
  v10 = *(a1 + 1064);
  *(a1 + 1060) = v8;
  *(a1 + 1064) = v7;
  if (v9 && v10)
  {
    (*(*(a1 + 1088) + 40))();
  }

  v11 = v8;
  v3 = 1;
  v12 = BOMStreamWithFile(*(a1 + 1028), v11, v7, 1, 0);
  if (v12)
  {
    v19 = v12;
    v20 = *(a1 + 1068);
    BOMStreamWriteUInt32(v12, v20, v13, v14, v15, v16, v17, v18);
    if (v20)
    {
      v27 = 0;
      v28 = 0;
      do
      {
        if (v28 >= *(a1 + 1068))
        {
          _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v21, v22, v23, v24, v25, v26, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
          v31 = 0xFFFFFFFFLL;
        }

        else
        {
          v29 = *(*(a1 + 1072) + v27);
          v30 = bswap32(v29);
          if (*(a1 + 1052))
          {
            v31 = v29;
          }

          else
          {
            v31 = v30;
          }
        }

        BOMStreamWriteUInt32(v19, v31, v21, v22, v23, v24, v25, v26);
        if (v28 >= *(a1 + 1068))
        {
          _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v32, v33, v34, v35, v36, v37, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
          v40 = 0;
        }

        else
        {
          v38 = *(*(a1 + 1072) + v27 + 4);
          v39 = bswap32(v38);
          if (*(a1 + 1052))
          {
            v40 = v38;
          }

          else
          {
            v40 = v39;
          }
        }

        BOMStreamWriteUInt32(v19, v40, v32, v33, v34, v35, v36, v37);
        ++v28;
        v27 += 8;
      }

      while (8 * v20 != v27);
    }

    BOMStreamWriteUInt32(v19, *(*(a1 + 1088) + 8), v21, v22, v23, v24, v25, v26);
    __len = 0;
    v41 = *(a1 + 1088);
    v42 = *(v41 + 24);
    v43 = BOMStreamGetByteOrder(v19) == 1;
    v44 = v42(v41, v43, &__len);
    BOMStreamWriteBuffer(v19, v44, __len, v45, v46, v47, v48, v49);
    free(v44);
    v57 = BOMStreamFree(v19, v50, v51, v52, v53, v54, v55, v56);
    if (_AdjustFileSize(a1, 0, 0))
    {
      return 1;
    }

    *(a1 + 1036) = *(a1 + 1032);
    v3 = (_WriteRootPage(a1) | v57) != 0;
    v2 = *(a1 + 1052);
LABEL_8:
    *(a1 + 1052) = v2 & 0xFFFFFFEF;
  }

  return v3;
}

uint64_t BOMStorageGetSys(uint64_t result)
{
  if (result)
  {
    return *(result + 1120);
  }

  return result;
}

uint64_t BOMStorageIsOpenForWriting(uint64_t result)
{
  if (result)
  {
    return *(result + 1052) & 1;
  }

  return result;
}

BOOL BOMStorageMemoryMapped(_BOOL8 result)
{
  if (result)
  {
    return (*(result + 1052) & 6) == 2;
  }

  return result;
}

uint64_t BOMStorageInRam(uint64_t result)
{
  if (result)
  {
    return (*(result + 1052) >> 2) & 1;
  }

  return result;
}

uint64_t BOMStorageNewBlock(uint64_t a1)
{
  if (!a1 || (*(a1 + 1052) & 1) == 0)
  {
    return 0;
  }

  v1 = (*(a1 + 1056) + 1);
  *(a1 + 1056) = v1;
  v3 = *(a1 + 1068);
  if (v1 >= v3)
  {
    _ExpandBlockTable(a1, v3 + 8);
  }

  return v1;
}

void _ExpandBlockTable(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1068);
  if (v3 < a2)
  {
    v5 = 8 * a2;
    v6 = reallocf(*(a1 + 1072), v5);
    *(a1 + 1072) = v6;
    bzero(&v6[8 * v3], v5 - 8 * v3);
    v7 = *(a1 + 1068);
    v8 = 4 * a2;
    v9 = reallocf(*(a1 + 1080), v8);
    *(a1 + 1080) = v9;
    if (v8 > 4 * v7)
    {
      bzero(&v9[4 * v7], v8 - 4 * v7);
    }

    *(a1 + 1068) = a2;
  }

  if (!*(a1 + 1072) || !*(a1 + 1080))
  {
    v10 = *__error();

    _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1704, v10);
  }
}

uint64_t BOMStorageNewNamedBlock(uint64_t a1, const char *a2)
{
  v101 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 1052) & 1) == 0)
  {
    return 0;
  }

  if (_tocGet(a1, a2))
  {
    _CUILog(4, "%s: block named '%s' already exists", v4, v5, v6, v7, v8, v9, "BOMBlockID BOMStorageNewNamedBlock(BOMStorage, const char *)");
    return 0;
  }

  v10 = BOMStorageNewBlock(a1);
  v12 = strnlen(a2, 0xFFuLL);
  v19 = v12;
  if (v12 < 0xFF)
  {
    if (*(a1 + 1096))
    {
      v20 = *(a1 + 1100);
    }

    else
    {
      v20 = 4;
    }

    v21 = v12 + v20;
    v22 = v21 + 5;
    if (v21 == -5)
    {
      v23 = 0;
    }

    else
    {
      v23 = (*(*(a1 + 1088) + 48))();
      if (!v23)
      {
        v23 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
      }
    }

    _ExpandMapAddress(a1, v23 + v22);
    v24 = *(a1 + 1096);
    if (v24)
    {
      v25 = BOMStreamWithAddress(*(a1 + 1040) + v24, *(a1 + 1100), 0);
      if (!v25)
      {
        return v10;
      }

      v33 = v25;
      UInt32 = BOMStreamReadUInt32(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    else
    {
      UInt32 = 0;
      v33 = 0;
    }

    v35 = BOMStreamWithAddress(*(a1 + 1040) + v23, v22, 1);
    if (v35)
    {
      v42 = v35;
      BOMStreamWriteUInt32(v35, (UInt32 + 1), v36, v37, v38, v39, v40, v41);
      if (v33)
      {
        for (i = v23; UInt32; --UInt32)
        {
          v50 = BOMStreamReadUInt32(v33, v43, v44, v45, v46, v47, v48, v49);
          UInt8 = BOMStreamReadUInt8(v33, v51, v52, v53, v54, v55, v56, v57);
          BOMStreamReadBuffer(v33, __dst, UInt8, v59, v60, v61, v62, v63);
          BOMStreamWriteUInt32(v42, v50, v64, v65, v66, v67, v68, v69);
          BOMStreamWriteUInt8(v42, UInt8, v70, v71, v72, v73, v74, v75);
          BOMStreamWriteBuffer(v42, __dst, UInt8, v76, v77, v78, v79, v80);
        }

        BOMStreamFree(v33, v43, v44, v45, v46, v47, v48, v49);
        if (*(a1 + 1096))
        {
          v44 = *(a1 + 1100);
          if (v44)
          {
            (*(*(a1 + 1088) + 40))();
          }
        }

        v23 = i;
      }

      BOMStreamWriteUInt32(v42, v10, v44, v45, v46, v47, v48, v49);
      BOMStreamWriteUInt8(v42, v19, v81, v82, v83, v84, v85, v86);
      BOMStreamWriteBuffer(v42, a2, v19, v87, v88, v89, v90, v91);
      BOMStreamFree(v42, v92, v93, v94, v95, v96, v97, v98);
      *(a1 + 1096) = v23;
      *(a1 + 1100) = v22;
      _AdjustFileSize(a1, v23, v22);
      if (*(a1 + 1028) != -1)
      {
        _AddToWriteCache(a1, v23, v22);
      }

      *(a1 + 1052) |= 0x10u;
    }
  }

  else
  {
    _CUILog(4, "%s: name length '%s' is > %d", v13, v14, v15, v16, v17, v18, "void _tocSet(BOMStorage, BOMBlockID, const char *)");
  }

  return v10;
}

uint64_t _tocGet(uint64_t a1, const char *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 1096);
  if (!v4)
  {
    return 0;
  }

  v5 = *(a1 + 1100);
  if (!v5)
  {
    return 0;
  }

  v6 = (*(a1 + 1052) & 2) != 0 ? BOMStreamWithAddress(*(a1 + 1040) + v4, *(a1 + 1100), 0) : BOMStreamWithFile(*(a1 + 1028), v4, v5, 0, 0);
  v14 = v6;
  if (!v6)
  {
    return 0;
  }

  UInt32 = BOMStreamReadUInt32(v6, v7, v8, v9, v10, v11, v12, v13);
  if (UInt32)
  {
    v23 = UInt32;
    while (1)
    {
      v24 = BOMStreamReadUInt32(v14, v16, v17, v18, v19, v20, v21, v22);
      UInt8 = BOMStreamReadUInt8(v14, v25, v26, v27, v28, v29, v30, v31);
      BOMStreamReadBuffer(v14, __s2, UInt8, v33, v34, v35, v36, v37);
      __s2[UInt8] = 0;
      if (!strncmp(a2, __s2, 0xFFuLL))
      {
        break;
      }

      if (!--v23)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v24 = 0;
  }

  BOMStreamFree(v14, v16, v17, v18, v19, v20, v21, v22);
  v44 = *(a1 + 1068);
  if (v24 <= v44)
  {
    v45 = v24;
  }

  else
  {
    v45 = 0;
  }

  v46 = *(a1 + 1052);
  if ((v46 & 2) != 0 && (v46 & 5) == 0 && v45)
  {
    v47 = *(a1 + 1040);
    if (v44 <= v45)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v38, v39, v40, v41, v42, v43, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
      v44 = *(a1 + 1068);
      v48 = 0xFFFFFFFFLL;
    }

    else
    {
      v48 = bswap32(*(*(a1 + 1072) + 8 * v45));
    }

    if (v44 <= v45)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v38, v39, v40, v41, v42, v43, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
      v52 = 0;
    }

    else
    {
      v50 = *(*(a1 + 1072) + 8 * v45 + 4);
      v51 = bswap32(v50);
      if (*(a1 + 1052))
      {
        v52 = v50;
      }

      else
      {
        v52 = v51;
      }
    }

    madvise((v47 + v48), v52, 3);
    return v24;
  }

  return v45;
}

uint64_t BOMStorageSizeOfBlock(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 && a2)
  {
    if (*(a1 + 1056) < a2)
    {
      return 0;
    }

    v11 = *(a1 + 1068);
    if (v11 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
      v11 = *(a1 + 1068);
    }

    else
    {
      v12 = *(*(a1 + 1072) + 8 * a2);
      v13 = bswap32(v12);
      if ((*(a1 + 1052) & 1) == 0)
      {
        v12 = v13;
      }

      if (v12 != -1)
      {
LABEL_16:
        if (v11 > a2)
        {
          v16 = *(*(a1 + 1072) + 8 * a2 + 4);
          v17 = bswap32(v16);
          if (*(a1 + 1052))
          {
            return v16;
          }

          else
          {
            return v17;
          }
        }

        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
        return 0;
      }
    }

    if (v11 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
      v11 = *(a1 + 1068);
    }

    else
    {
      v14 = *(*(a1 + 1072) + 8 * a2 + 4);
      v15 = bswap32(v14);
      if ((*(a1 + 1052) & 1) == 0)
      {
        v14 = v15;
      }

      if (v14 == -1)
      {
        return 0;
      }
    }

    goto LABEL_16;
  }

  return result;
}

double BOMStorageFreeBlock(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 && a2 && *(a1 + 1056) >= a2)
  {
    v10 = *(a1 + 1068);
    if (v10 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
      v10 = *(a1 + 1068);
      v12 = -1;
    }

    else
    {
      v11 = bswap32(*(*(a1 + 1072) + 8 * a2));
      if (*(a1 + 1052))
      {
        v12 = *(*(a1 + 1072) + 8 * a2);
      }

      else
      {
        v12 = v11;
      }
    }

    if (v10 <= a2)
    {
      _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
LABEL_19:
      result = NAN;
      *(*(a1 + 1072) + 8 * a2) = -1;
      return result;
    }

    v14 = bswap32(*(*(a1 + 1072) + 8 * a2 + 4));
    if (*(a1 + 1052))
    {
      v15 = *(*(a1 + 1072) + 8 * a2 + 4);
    }

    else
    {
      v15 = v14;
    }

    if (v12 != -1 || v15 != -1)
    {
      if (v12)
      {
        if (v15)
        {
          (*(*(a1 + 1088) + 40))();
        }
      }

      goto LABEL_19;
    }
  }

  return result;
}

void BOMStorageFreeNamedBlock(uint64_t a1, const char *a2)
{
  v73 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v4 = _tocGet(a1, a2);
      if (v4)
      {
        BOMStorageFreeBlock(a1, v4, v5, v6, v7, v8, v9, v10);
        if (*(a1 + 1096))
        {
          v11 = strlen(a2);
          v12 = *(a1 + 1100);
          if (v12)
          {
            v13 = (*(*(a1 + 1088) + 48))();
            if (!v13)
            {
              v13 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = (v12 - v11 - 5);
          _ExpandMapAddress(a1, v13 + v14);
          v15 = BOMStreamWithAddress(*(a1 + 1040) + *(a1 + 1096), *(a1 + 1100), 0);
          if (v15)
          {
            v16 = v15;
            v17 = BOMStreamWithAddress(*(a1 + 1040) + v13, v14, 1);
            if (v17)
            {
              v25 = v17;
              UInt32 = BOMStreamReadUInt32(v16, v18, v19, v20, v21, v22, v23, v24);
              BOMStreamWriteUInt32(v25, (UInt32 - 1), v27, v28, v29, v30, v31, v32);
              for (; UInt32; --UInt32)
              {
                v40 = BOMStreamReadUInt32(v16, v33, v34, v35, v36, v37, v38, v39);
                UInt8 = BOMStreamReadUInt8(v16, v41, v42, v43, v44, v45, v46, v47);
                BOMStreamReadBuffer(v16, __s1, UInt8, v49, v50, v51, v52, v53);
                __s1[UInt8] = 0;
                if (strcmp(__s1, a2))
                {
                  BOMStreamWriteUInt32(v25, v40, v34, v35, v36, v37, v38, v39);
                  BOMStreamWriteUInt8(v25, UInt8, v54, v55, v56, v57, v58, v59);
                  BOMStreamWriteBuffer(v25, __s1, UInt8, v60, v61, v62, v63, v64);
                }
              }

              BOMStreamFree(v16, v33, v34, v35, v36, v37, v38, v39);
              BOMStreamFree(v25, v65, v66, v67, v68, v69, v70, v71);
              if (*(a1 + 1096) && *(a1 + 1100))
              {
                (*(*(a1 + 1088) + 40))();
              }

              *(a1 + 1096) = v13;
              *(a1 + 1100) = v14;
              _AdjustFileSize(a1, v13, v14);
              if (*(a1 + 1028) != -1)
              {
                _AddToWriteCache(a1, v13, v14);
              }

              *(a1 + 1052) |= 0x10u;
            }
          }
        }
      }
    }
  }
}

uint64_t BOMStorageCopyToBlock(uint64_t a1, uint64_t a2, const void *a3, size_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || *(a1 + 1056) < a2 || (*(a1 + 1052) & 1) == 0)
  {
    return 1;
  }

  if (*(a1 + 1068) <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
    v13 = 0;
  }

  else
  {
    v13 = *(*(a1 + 1072) + 8 * a2 + 4);
  }

  return BOMStorageCopyToBlockRange(a1, a2, a3, a4, 0, v13, a7, a8);
}

uint64_t BOMStorageCopyToBlockRange(uint64_t a1, uint64_t a2, const void *a3, size_t a4, unint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1;
  if (a1)
  {
    v10 = a2;
    if (a2)
    {
      if (*(a1 + 1056) >= a2 && (*(a1 + 1052) & 1) != 0)
      {
        v15 = *(a1 + 1068);
        if (v15 <= a2)
        {
          _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
          v15 = *(a1 + 1068);
          v16 = -1;
        }

        else
        {
          v16 = *(*(a1 + 1072) + 8 * a2);
        }

        if (v15 <= v10)
        {
          _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
          LODWORD(v17) = 0;
        }

        else
        {
          LODWORD(v17) = *(*(a1 + 1072) + 8 * v10 + 4);
          v18 = bswap32(v17);
          if ((*(a1 + 1052) & 1) == 0)
          {
            LODWORD(v17) = v18;
          }
        }

        v19 = a6 + a5;
        v20 = v17;
        v21 = v17 - (a6 + a5);
        if (v17 < a6 + a5)
        {
          v22 = *__error();
          v23 = "BOMStorageCopyToBlockRange: length extends beyond block size";
          v24 = 842;
          goto LABEL_20;
        }

        if (v17 <= a5)
        {
          v17 = a5;
        }

        else
        {
          v17 = v17;
        }

        v25 = v17 + a4;
        if (((v17 + a4) | v17 | a4) >> 32)
        {
          v26 = BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", a2, a3, a4, a5, a6, a7, a8, "BOMStorageCopyToBlockRange");
          v22 = *__error();
          v23 = v26;
          v24 = 859;
          goto LABEL_20;
        }

        __len = v21;
        v27 = v25 - a6;
        if ((v25 - a6) >> 32 || HIDWORD(a6))
        {
          BOMStorageCopyToBlockRange_cold_5();
          return 1;
        }

        v58 = v16;
        if (v20 != v27 || v16 < *(a1 + 1036))
        {
          if (v16 && v20)
          {
            (*(*(a1 + 1088) + 40))();
            v27 = v25 - a6;
          }

          if (v25 == a6)
          {
            v16 = 0;
          }

          else
          {
            v28 = v27;
            v29 = (*(*(a1 + 1088) + 48))();
            v27 = v28;
            v16 = v29;
            if (!v29)
            {
              v16 = (*(a1 + 1032) + 15) & 0xFFFFFFF0;
            }
          }

          v30 = (*(a1 + 1072) + 8 * v10);
          *v30 = v16;
          v30[1] = v27;
        }

        result = 0;
        if (v16 && v25 != a6)
        {
          v56 = v27;
          v31 = v27 + v16;
          if (HIDWORD(v31))
          {
            BOMStorageCopyToBlockRange_cold_4();
            return 1;
          }

          if (_ExpandMapAddress(a1, v31))
          {
            return 1;
          }

          if (a5 && (v38 = *(a1 + 1040)) != 0)
          {
            v39 = v58;
            memmove((v38 + v16), (v38 + v58), a5);
            v40 = a5;
          }

          else
          {
            v40 = 0;
            v39 = v58;
          }

          v41 = v19 + v39;
          v42 = __len;
          if (HIDWORD(v41))
          {
            BOMStorageCopyToBlockRange_cold_3();
            return 1;
          }

          v43 = a5 + a4 + v16;
          if (((a5 + a4) | v43) >> 32)
          {
            v44 = BOMExceptionHandlerMessage("ERROR in %s: %s [%s:%d]", v32, __len, v33, v34, v35, v36, v37, "BOMStorageCopyToBlockRange");
            v22 = *__error();
            v23 = v44;
            v24 = 922;
          }

          else
          {
            if (v20 <= a5 || v16 < v58 || v16 >= v20 + v58)
            {
              if (a4)
              {
                v47 = v40;
                memmove((*(a1 + 1040) + v16 + v40), a3, a4);
                v40 = v47 + a4;
              }

              if (v40 < v56)
              {
                v48 = v56 - v40;
                if (HIDWORD(v48))
                {
                  BOMStorageCopyToBlockRange_cold_2();
                  return 1;
                }

                v49 = v40;
                memmove((*(a1 + 1040) + v16 + v40), (*(a1 + 1040) + v41), v48);
                v40 = v49 + v48;
              }
            }

            else
            {
              if (HIDWORD(__len))
              {
                BOMStorageCopyToBlockRange_cold_1();
                return 1;
              }

              if (v20 != v19)
              {
                v45 = v40;
                memmove((*(a1 + 1040) + v43), (*(a1 + 1040) + v41), __len);
                v40 = v45;
                v42 = __len;
              }

              if (a4)
              {
                v46 = v40;
                memmove((*(a1 + 1040) + v16 + v40), a3, a4);
                v42 = __len;
                v40 = v46 + a4;
              }

              v40 += v42;
            }

            v50 = *(a1 + 1080);
            if (v50)
            {
              *(v50 + 4 * v10) |= 1u;
            }

            else
            {
              v51 = v40;
              v52 = BOMExceptionHandlerMessage("BOM blockShadowTable is null", v32, v42, v33, v34, v35, v36, v37, v55);
              v53 = __error();
              _BOMExceptionHandlerCall(v52, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 973, *v53);
              v40 = v51;
            }

            v54 = v56;
            if (v40 == v56)
            {
              if (*(a1 + 1028) == -1)
              {
                if (v16 + v56 > *(a1 + 1032))
                {
                  *(a1 + 1032) = v16 + v56;
                }
              }

              else
              {
                _AddToWriteCache(a1, v16, v56);
                v54 = v56;
              }

              result = _AdjustFileSize(a1, v16, v54);
              if (!result)
              {
                *(a1 + 1052) |= 0x10u;
                return result;
              }

              return 1;
            }

            v22 = *__error();
            v23 = "BOMStorageCopyToBlockRange: internal consistency error";
            v24 = 978;
          }

LABEL_20:
          _BOMExceptionHandlerCall(v23, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v24, v22);
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t _ExpandMapAddress(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 1048);
  if (v3 < a2)
  {
    if (v3 >= 0x100000)
    {
      LODWORD(v4) = v3 + 0x100000;
    }

    else
    {
      LODWORD(v4) = 2 * v3;
    }

    if (v4 <= a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = v4;
    }

    v5 = v4 % *MEMORY[0x1E69E9AC8];
    v6 = *MEMORY[0x1E69E9AC8] - v5;
    if (!v5)
    {
      v6 = 0;
    }

    v7 = (v6 + v4);
    v8 = (*(*(a1 + 1120) + 96))(*(*(a1 + 1120) + 8), 0, v7, 3, 4098, 0xFFFFFFFFLL, 0);
    if (v8 == -1)
    {
      v13 = *__error();
      v14 = "mmap failed";
      v12 = 1;
      v15 = 1547;
    }

    else
    {
      v9 = v8;
      if (vm_copy(*MEMORY[0x1E69E9A60], *(a1 + 1040), *(a1 + 1048), v8))
      {
        v10 = __error();
        _BOMExceptionHandlerCall("vm_copy failed", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1551, *v10);
      }

      if ((*(*(a1 + 1120) + 104))(*(*(a1 + 1120) + 8), *(a1 + 1040), *(a1 + 1048)) != -1)
      {
        *(a1 + 1040) = v9;
        *(a1 + 1048) = v7;
        if (!v9)
        {
          goto LABEL_17;
        }

        return 0;
      }

      v13 = *__error();
      v14 = "munmap failed";
      v12 = 1;
      v15 = 1554;
    }

    _BOMExceptionHandlerCall(v14, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v15, v13);
    return v12;
  }

  if (!*(a1 + 1040))
  {
LABEL_17:
    v11 = __error();
    _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1567, *v11);
  }

  return 0;
}

void _AddToWriteCache(uint64_t a1, unsigned int a2, int a3)
{
  if (!a2 || !a3)
  {
    return;
  }

  v5 = (a1 + 1104);
  v6 = *(a1 + 1104);
  if (!v6)
  {
    *(a1 + 1104) = _newFreeListEntry(a2, a3);
    v12 = 1;
LABEL_23:
    *(a1 + 1112) = v12;
LABEL_24:
    if (*(a1 + 1112) < 0x10u)
    {
      v15 = *v5;
      if (*v5)
      {
        v16 = 0;
        do
        {
          v17 = *(v15 + 3);
          if (v17 < 0xFFFF)
          {
            v18 = *v15;
            v16 = v15;
          }

          else
          {
            v18 = *v15;
            if (v16)
            {
              v19 = v16;
            }

            else
            {
              v19 = v5;
            }

            *v19 = v18;
            _WriteAddress(a1, *(v15 + 2), v17);
            free(v15);
            --*(a1 + 1112);
          }

          v15 = v18;
        }

        while (v18);
      }
    }

    else
    {

      _FlushWriteCache(a1);
    }

    return;
  }

  v7 = v6[2];
  if (v7 <= a2)
  {
    while (1)
    {
      v8 = v6;
      v6 = *v6;
      if (!v6)
      {
        break;
      }

      v9 = v6[2];
      if (v9 >= a2)
      {
        v11 = v8[3];
        if (v11 + v8[2] != a2)
        {
          goto LABEL_6;
        }

        v8[3] = v11 + a3;
        if (a3 + a2 == v6[2])
        {
          v8[3] = v6[3] + v11 + a3;
          *v8 = *v6;
          free(v6);
          v12 = *(a1 + 1112) - 1;
          goto LABEL_23;
        }

        goto LABEL_24;
      }
    }

    v14 = v8[3];
    if (v14 + v8[2] == a2)
    {
      v8[3] = v14 + a3;
      goto LABEL_24;
    }

    v13 = _newFreeListEntry(a2, a3);
    if (v13)
    {
      *v13 = 0;
      goto LABEL_21;
    }
  }

  else
  {
    v8 = 0;
    v9 = v6[2];
LABEL_6:
    if (a3 + a2 == v9)
    {
      v10 = v6[3] + a3;
      v6[2] = a2;
      v6[3] = v10;
      goto LABEL_24;
    }

    v13 = _newFreeListEntry(a2, a3);
    if (v13)
    {
      *v13 = v6;
      if (v7 <= a2)
      {
LABEL_21:
        *v8 = v13;
      }

      else
      {
        *v5 = v13;
      }

      v12 = *(a1 + 1112) + 1;
      goto LABEL_23;
    }
  }

  v20 = *__error();

  _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 2136, v20);
}

uint64_t _AdjustFileSize(uint64_t a1, int a2, int a3)
{
  if (a2)
  {
    if ((a3 + a2) <= *(a1 + 1032))
    {
      return 0;
    }

    else
    {
      result = 0;
      *(a1 + 1032) = a3 + a2;
    }
  }

  else
  {
    v5 = (*(*(a1 + 1120) + 56))(*(*(a1 + 1120) + 8), *(a1 + 1028), 0, 2);
    if (v5 == -1)
    {
      v7 = __error();
      strerror(*v7);
      _CUILog(4, "%s: lseek: %s", v8, v9, v10, v11, v12, v13, "int _AdjustFileSize(BOMStorage, unsigned int, unsigned int)");
      return 1;
    }

    else
    {
      v6 = v5;
      result = 0;
      *(a1 + 1032) = v6;
    }
  }

  return result;
}

uint64_t BOMStorageCopyFromBlock(uint64_t a1, unsigned int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    if (a1)
    {
      if (!a2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v17 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlock: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1010, *v17);
      if (!a2)
      {
LABEL_13:
        v10 = *__error();
        v11 = "BOMStorageCopyFromBlock: !bid";
        v12 = 1012;
        goto LABEL_14;
      }
    }

    return 1;
  }

  if (*(a1 + 1056) < a2)
  {
    v10 = *__error();
    v11 = "BOMStorageCopyFromBlock: bid > storage->blocks";
    v12 = 1016;
LABEL_14:
    _BOMExceptionHandlerCall(v11, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v12, v10);
    return 1;
  }

  if (*(a1 + 1068) <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
    v16 = 0;
  }

  else
  {
    v14 = *(*(a1 + 1072) + 8 * a2 + 4);
    v15 = bswap32(v14);
    if (*(a1 + 1052))
    {
      v16 = v14;
    }

    else
    {
      v16 = v15;
    }
  }

  return BOMStorageCopyFromBlockRange(a1, a2, 0, v16, a3, a6, a7, a8);
}

uint64_t BOMStorageCopyFromBlockRange(uint64_t a1, unsigned int a2, uint64_t a3, size_t __len, void *__dst, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2 || !__dst)
  {
    if (a1)
    {
      if (a2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v19 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlockRange: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1112, *v19);
      if (a2)
      {
LABEL_8:
        if (!__dst)
        {
          goto LABEL_17;
        }

        return 1;
      }
    }

    v20 = __error();
    _BOMExceptionHandlerCall("BOMStorageCopyFromBlockRange: !bid", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1114, *v20);
    if (!__dst)
    {
LABEL_17:
      v11 = *__error();
      v12 = "BOMStorageCopyFromBlockRange: !data";
      v13 = 1116;
      goto LABEL_43;
    }

    return 1;
  }

  if (*(a1 + 1056) < a2)
  {
    v11 = *__error();
    v12 = "BOMStorageCopyRangeFromBlockRange: bad block (bid > storage->blocks)";
    v13 = 1122;
LABEL_43:
    _BOMExceptionHandlerCall(v12, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v13, v11);
    return 1;
  }

  v16 = *(a1 + 1068);
  if (v16 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, __len, __dst, a6, a7, a8, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
    v16 = *(a1 + 1068);
  }

  else
  {
    v17 = *(*(a1 + 1072) + 8 * a2);
    v18 = bswap32(v17);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v17 = v18;
    }

    if (v17 != -1)
    {
      goto LABEL_25;
    }
  }

  if (v16 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, __len, __dst, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
    v16 = *(a1 + 1068);
  }

  else
  {
    v21 = *(*(a1 + 1072) + 8 * a2 + 4);
    v22 = bswap32(v21);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v21 = v22;
    }

    if (v21 == -1)
    {
      v11 = *__error();
      v12 = "BOMStorageCopyRangeFromBlockRange: reading from free block";
      v13 = 1127;
      goto LABEL_43;
    }
  }

LABEL_25:
  if (v16 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, __len, __dst, a6, a7, a8, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
    v16 = *(a1 + 1068);
    v24 = -1;
  }

  else
  {
    v23 = bswap32(*(*(a1 + 1072) + 8 * a2));
    if (*(a1 + 1052))
    {
      v24 = *(*(a1 + 1072) + 8 * a2);
    }

    else
    {
      v24 = v23;
    }
  }

  if (v16 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, __len, __dst, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
    v25 = 0;
  }

  else
  {
    v25 = *(*(a1 + 1072) + 8 * a2 + 4);
    v26 = bswap32(v25);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v25 = v26;
    }
  }

  if (__CFADD__(v25, v24))
  {
    v11 = *__error();
    v12 = "BOMStorageCopyRangeFromBlockRange: 32-bit overflow with block address+size";
    v13 = 1137;
    goto LABEL_43;
  }

  if (v25 + v24 > *(a1 + 1032))
  {
    v11 = *__error();
    v12 = "BOMStorageCopyRangeFromBlockRange: block extends past end of storage";
    v13 = 1141;
    goto LABEL_43;
  }

  if (__CFADD__(__len, a3))
  {
    BOMStorageCopyFromBlockRange_cold_1();
    return 1;
  }

  if (__len + a3 > v25)
  {
    v11 = *__error();
    v12 = "BOMStorageCopyRangeFromBlockRange: length extends beyond block size";
    v13 = 1156;
    goto LABEL_43;
  }

  if (v25)
  {
    if (!v24)
    {
      v11 = *__error();
      v12 = "BOMStorageCopyRangeFromBlockRange: bad block address";
      v13 = 1164;
      goto LABEL_43;
    }

    v28 = *(a1 + 1080);
    if (v28 && (*(v28 + 4 * a2) & 1) != 0)
    {
      v29 = *(a1 + 1052);
    }

    else
    {
      v29 = *(a1 + 1052);
      if ((v29 & 1) != 0 && *(a1 + 1028) != -1)
      {
        goto LABEL_55;
      }
    }

    if ((v29 & 2) != 0)
    {
      v44 = (*(a1 + 1040) + v24 + a3);
      goto LABEL_64;
    }

LABEL_55:
    v30 = *(a1 + 1028);
    if ((v29 & 2) == 0)
    {
      v31 = BOMStreamWithFile(v30, v24, v25, 0, 0);
      BOMStreamReadBuffer(v31, __dst, __len, v32, v33, v34, v35, v36);
      BOMStreamFree(v31, v37, v38, v39, v40, v41, v42, v43);
      return 0;
    }

    v45 = BOMStreamWithFile(v30, v24, v25, 0, (*(a1 + 1040) + v24));
    if (!v45)
    {
      v11 = *__error();
      v12 = "BOMStorageCopyRangeFromBlockRange: !stream";
      v13 = 1189;
      goto LABEL_43;
    }

    BOMStreamFree(v45, v46, v47, v48, v49, v50, v51, v52);
    v60 = *(a1 + 1080);
    if (v60)
    {
      *(v60 + 4 * a2) |= 1u;
    }

    else
    {
      v61 = BOMExceptionHandlerMessage("BOM blockShadowTable is null", v53, v54, v55, v56, v57, v58, v59, v63);
      v62 = __error();
      _BOMExceptionHandlerCall(v61, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1196, *v62);
    }

    v44 = (*(a1 + 1040) + v24 + a3);
LABEL_64:
    memmove(__dst, v44, __len);
  }

  return 0;
}

uint64_t BOMStorageReadFromBlock(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1 || !a2)
  {
    if (a1)
    {
      if (!a2)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v16 = __error();
      _BOMExceptionHandlerCall("BOMStorageCopyFromBlock: !storage", 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1029, *v16);
      if (!a2)
      {
LABEL_13:
        v10 = *__error();
        v11 = "BOMStorageCopyFromBlock: !bid";
        v12 = 1032;
        goto LABEL_27;
      }
    }

    return 0;
  }

  if (*(a1 + 1056) < a2)
  {
    v10 = *__error();
    v11 = "BOMStorageCopyRangeFromBlockRange: bad block (bid > storage->blocks)";
    v12 = 1039;
LABEL_27:
    _BOMExceptionHandlerCall(v11, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", v12, v10);
    return 0;
  }

  v13 = *(a1 + 1068);
  if (v13 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
    v13 = *(a1 + 1068);
    v15 = -1;
  }

  else
  {
    v14 = bswap32(*(*(a1 + 1072) + 8 * a2));
    if (*(a1 + 1052))
    {
      v15 = *(*(a1 + 1072) + 8 * a2);
    }

    else
    {
      v15 = v14;
    }
  }

  if (v13 <= a2)
  {
    _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", a3, a4, a5, a6, a7, a8, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
    v17 = 0;
  }

  else
  {
    v17 = *(*(a1 + 1072) + 8 * a2 + 4);
    v18 = bswap32(v17);
    if ((*(a1 + 1052) & 1) == 0)
    {
      v17 = v18;
    }

    if (v15 == -1 && v17 == -1)
    {
      v10 = *__error();
      v11 = "BOMStorageCopyRangeFromBlockRange: reading from free block";
      v12 = 1048;
      goto LABEL_27;
    }
  }

  if (__CFADD__(v17, v15))
  {
    v10 = *__error();
    v11 = "BOMStorageCopyRangeFromBlockRange: 32-bit overflow with block address+size";
    v12 = 1054;
    goto LABEL_27;
  }

  if (v17 + v15 > *(a1 + 1032))
  {
    v10 = *__error();
    v11 = "BOMStorageCopyRangeFromBlockRange: block extends past end of storage";
    v12 = 1058;
    goto LABEL_27;
  }

  if (!v17)
  {
    return 0;
  }

  v20 = *(a1 + 1080);
  if (v20 && (*(v20 + 4 * a2) & 1) != 0)
  {
    v21 = *(a1 + 1052);
LABEL_39:
    if ((v21 & 2) == 0)
    {
      return 0;
    }

    return *(a1 + 1040) + v15;
  }

  v21 = *(a1 + 1052);
  if ((v21 & 1) == 0)
  {
    goto LABEL_39;
  }

  v22 = *(a1 + 1028);
  if (v22 == -1)
  {
    goto LABEL_39;
  }

  if ((v21 & 2) == 0)
  {
    return 0;
  }

  v23 = BOMStreamWithFile(v22, v15, v17, 0, (*(a1 + 1040) + v15));
  if (!v23)
  {
    v10 = *__error();
    v11 = "BOMStorageCopyRangeFromBlockRange: !stream";
    v12 = 1086;
    goto LABEL_27;
  }

  BOMStreamFree(v23, v24, v25, v26, v27, v28, v29, v30);
  v38 = *(a1 + 1080);
  if (v38)
  {
    *(v38 + 4 * a2) |= 1u;
  }

  else
  {
    v39 = BOMExceptionHandlerMessage("BOM blockShadowTable is null", v31, v32, v33, v34, v35, v36, v37, v41);
    v40 = __error();
    _BOMExceptionHandlerCall(v39, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1093, *v40);
  }

  return *(a1 + 1040) + v15;
}

void _FlushWriteCache(uint64_t a1)
{
  for (i = *(a1 + 1104); i; i = *(a1 + 1104))
  {
    *(a1 + 1104) = *i;
    _WriteAddress(a1, i[2], i[3]);
    free(i);
  }

  *(a1 + 1112) = 0;
}

uint64_t BOMStorageCompact(uint64_t a1)
{
  v88 = *MEMORY[0x1E69E9840];
  if (!a1 || (*(a1 + 1052) & 1) == 0 || *(a1 + 1028) == -1)
  {
    return 1;
  }

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v77 = 0u;
  v2 = *(a1 + 1120);
  BOMStorageCommit(a1);
  __strlcpy_chk();
  v3 = (*(v2 + 72))(*(v2 + 8), *(a1 + 1028), &v77);
  if (v3 == -1)
  {
    v4 = __error();
    v5 = strerror(*v4);
    v13 = BOMExceptionHandlerMessage("fstat: %s", v6, v7, v8, v9, v10, v11, v12, v5);
    v14 = __error();
    _BOMExceptionHandlerCall(v13, 0, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 1319, *v14);
  }

  __strlcpy_chk();
  v15 = strrchr(__s, 47);
  if (v15)
  {
    *v15 = 0;
  }

  else
  {
    __strlcpy_chk();
  }

  __strlcat_chk();
  if (!mktemp(__s))
  {
    _CUILog(4, "%s: mktemp can't get temp file %s", v17, v18, v19, v20, v21, v22, "int BOMStorageCompact(BOMStorage)");
    return 1;
  }

  v23 = BOMStorageNewWithOptionsAndSys(__s, v16, v2);
  if (!v23)
  {
    goto LABEL_56;
  }

  v24 = v23;
  if (*(a1 + 1056))
  {
    v25 = 1;
    do
    {
      if (v25 != BOMStorageNewBlock(v24))
      {
        _CUILog(4, "%s: unable to reserve block %d", v26, v27, v28, v29, v30, v31, "int BOMStorageCompact(BOMStorage)");
        goto LABEL_56;
      }

      v32 = *(a1 + 1068);
      if (v32 <= v25)
      {
        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v26, v27, v28, v29, v30, v31, "unsigned int _getBlockTableAddr(BOMStorage, BOMBlockID)");
        v32 = *(a1 + 1068);
      }

      else
      {
        v33 = *(*(a1 + 1072) + 8 * v25);
        v34 = bswap32(v33);
        if ((*(a1 + 1052) & 1) == 0)
        {
          v33 = v34;
        }

        if (v33 != -1)
        {
          goto LABEL_26;
        }
      }

      if (v32 <= v25)
      {
        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v26, v27, v28, v29, v30, v31, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
        v32 = *(a1 + 1068);
      }

      else
      {
        v35 = *(*(a1 + 1072) + 8 * v25 + 4);
        v36 = bswap32(v35);
        if ((*(a1 + 1052) & 1) == 0)
        {
          v35 = v36;
        }

        if (v35 == -1)
        {
          BOMStorageFreeBlock(v24, v25, v26, v27, v28, v29, v30, v31);
          goto LABEL_39;
        }
      }

LABEL_26:
      if (v32 <= v25)
      {
        _CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v26, v27, v28, v29, v30, v31, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)");
        v39 = 0;
      }

      else
      {
        v37 = *(*(a1 + 1072) + 8 * v25 + 4);
        v38 = bswap32(v37);
        if (*(a1 + 1052))
        {
          v39 = v37;
        }

        else
        {
          v39 = v38;
        }
      }

      v40 = malloc_type_malloc(v39, 0x2D8649F0uLL);
      if (BOMStorageCopyFromBlock(a1, v25, v40, v41, v42, v43, v44, v45) || (*(a1 + 1068) <= v25 ? (_CUILog(4, "CoreUI: bid %d >= blockTableCount %d", v46, v47, v48, v49, v50, v51, "unsigned int _getBlockTableSize(BOMStorage, BOMBlockID)"), v54 = 0) : (v52 = *(*(a1 + 1072) + 8 * v25 + 4), v53 = bswap32(v52), (*(a1 + 1052) & 1) != 0) ? (v54 = v52) : (v54 = v53), BOMStorageCopyToBlock(v24, v25, v40, v54, v48, v49, v50, v51)))
      {
        _CUILog(4, "%s: unable to copy block %d", v46, v47, v48, v49, v50, v51, "int BOMStorageCompact(BOMStorage)");
        free(v40);
        goto LABEL_56;
      }

      free(v40);
LABEL_39:
      v25 = (v25 + 1);
    }

    while (v25 <= *(a1 + 1056));
  }

  if (*(a1 + 1096))
  {
    v55 = *(a1 + 1100);
    *(v24 + 1100) = v55;
    if (v55)
    {
      v56 = (*(*(v24 + 1088) + 48))();
      if (!v56)
      {
        v56 = (*(v24 + 1032) + 15) & 0xFFFFFFF0;
      }
    }

    else
    {
      v56 = 0;
    }

    *(v24 + 1096) = v56;
    _ExpandMapAddress(v24, v56 + v55);
    memmove((*(v24 + 1040) + *(v24 + 1096)), (*(a1 + 1040) + *(a1 + 1096)), v55);
    _AdjustFileSize(v24, v56, v55);
    if (*(v24 + 1028) != -1)
    {
      _AddToWriteCache(v24, v56, v55);
    }

    *(v24 + 1052) |= 0x10u;
  }

  BOMStorageCommit(v24);
  v57 = malloc_type_malloc(0x470uLL, 0x10A0040835A29DFuLL);
  if (!v57)
  {
    BOMStorageFree(v24);
    v69 = __error();
    strerror(*v69);
    _CUILog(4, "%s: malloc: %s", v70, v71, v72, v73, v74, v75, "int BOMStorageCompact(BOMStorage)");
LABEL_56:
    unlink(__s);
    return 1;
  }

  v58 = v57;
  memcpy(v57, a1, 0x470uLL);
  BOMStorageFree(v58);
  if ((*(v2 + 88))(*(v2 + 8), __s, v87))
  {
    v59 = __error();
    strerror(*v59);
    _CUILog(4, "%s: rename: '%s' '%s' failed %s", v60, v61, v62, v63, v64, v65, "int BOMStorageCompact(BOMStorage)");
    BOMStorageFree(v24);
    v66 = 1;
    v67 = BOMStorageOpenWithSys(v87, 1, v2);
    if (v67)
    {
      v68 = v67;
      memcpy(a1, v67, 0x470uLL);
      free(v68);
    }
  }

  else
  {
    if (v3 != -1)
    {
      (*(v2 + 112))(*(v2 + 8), *(v24 + 1028), WORD2(v77));
      (*(v2 + 120))(*(v2 + 8), *(v24 + 1028), v78, DWORD1(v78));
    }

    memcpy(a1, v24, 0x470uLL);
    __strlcpy_chk();
    free(v24);
    return 0;
  }

  return v66;
}

uint64_t _BOMStoragePrintDiagnostics(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "   # blocks : %d\n", *(result + 1056));
    fprintf(*v2, "   adm size : %d\n", *(v1 + 1064));
    fprintf(*v2, "   bt size  : %d\n", (8 * *(v1 + 1068)) | 4);
    fprintf(*v2, "   fl size  : %d\n", *(*(v1 + 1088) + 8));
    return fprintf(*v2, "   toc size : %d\n", *(v1 + 1100));
  }

  return result;
}

uint64_t BOMStorageDump(uint64_t a1, int a2)
{
  v63 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  v3 = *(a1 + 1096);
  if (!v3)
  {
    return 1;
  }

  v5 = *(a1 + 1100);
  if (!v5)
  {
    return 1;
  }

  v6 = BOMStreamWithAddress(*(a1 + 1040) + v3, v5, 0);
  if (!v6)
  {
    return 2;
  }

  v14 = v6;
  UInt32 = BOMStreamReadUInt32(v6, v7, v8, v9, v10, v11, v12, v13);
  v16 = "read/write";
  v17 = *(a1 + 1052);
  if ((v17 & 1) == 0)
  {
    v16 = "readonly";
  }

  if ((~v17 & 0x11) == 0)
  {
    v16 = "read/write [dirty]";
  }

  v18 = MEMORY[0x1E69E9858];
  fprintf(*MEMORY[0x1E69E9858], "Storage: open %s (%u blocks)\n", v16, *(a1 + 1056));
  fprintf(*v18, "    ToC: %u entries (%u bytes)\n", UInt32, *(a1 + 1100));
  if (!UInt32)
  {
    v58 = 0;
    goto LABEL_65;
  }

  v60 = 0;
  do
  {
    v26 = BOMStreamReadUInt32(v14, v19, v20, v21, v22, v23, v24, v25);
    UInt8 = BOMStreamReadUInt8(v14, v27, v28, v29, v30, v31, v32, v33);
    BOMStreamReadBuffer(v14, &__dst, UInt8, v35, v36, v37, v38, v39);
    *(&__dst + UInt8) = 0;
    BOMStorageSizeOfBlock(a1, v26, v40, v41, v42, v43, v44, v45);
    v46 = *v18;
    if (a2)
    {
      fprintf(v46, "    Bid: 0x%08x (%u) '%s' (%lu bytes)");
    }

    else
    {
      fprintf(v46, "    Bid: '%s' (%lu bytes)");
    }

    if (__dst == 0x6F666E496D6F42 || (__dst == 1752457552 ? (v47 = WORD2(__dst) == 115) : (v47 = 0), v47 || __dst == 0x7865646E494C48 || (__dst == 1684949334 ? (v48 = *(&__dst + 3) == 7890276) : (v48 = 0), v48 || (__dst == 1702521171 ? (v49 = *(&__dst + 3) == 3421797) : (v49 = 0), v49))))
    {
      fwrite(" [BOM]\n", 7uLL, 1uLL, *v18);
    }

    else
    {
      if (__dst == 0x547463656A6F7250 && *(&__dst + 1) == 0x656C6261546761)
      {
        fwrite(" [Metabom]\n", 0xBuLL, 1uLL, *v18);
        v60 |= 0x10u;
        v55 = a2 | 0x210000;
        v56 = a1;
        p_dst = "ProjectTagTable";
      }

      else if (__dst == 0x546567616B636150 && *(&__dst + 1) == 0x656C6261546761)
      {
        fwrite(" [Metabom]\n", 0xBuLL, 1uLL, *v18);
        v60 |= 0x20u;
        v55 = a2 | 0x210000;
        v56 = a1;
        p_dst = "PackageTagTable";
      }

      else if (__dst == 0x5467615468746150 && *(&__dst + 5) == 0x656C6261546761)
      {
        fwrite(" [Metabom]\n", 0xBuLL, 1uLL, *v18);
        v60 |= 0x40u;
        v55 = a2 | 0x210000;
        v56 = a1;
        p_dst = "PathTagTable";
      }

      else if (__dst == 0x547463656A6F7250 && *(&__dst + 1) == 0x657254687461506FLL && v62 == 101)
      {
        fwrite(" [Metabom]\n", 0xBuLL, 1uLL, *v18);
        v60 |= 0x80u;
        v55 = a2 | 0x1310000;
        v56 = a1;
        p_dst = "ProjectToPathTree";
      }

      else
      {
        if ((v60 & 0x20) == 0)
        {
          fputc(10, *v18);
          goto LABEL_50;
        }

        fwrite(" [Package]\n", 0xBuLL, 1uLL, *v18);
        p_dst = &__dst;
        v55 = a2 | 0x230000;
        v56 = a1;
      }

      BOMStorageDumpTree(v56, p_dst, v55);
    }

LABEL_50:
    --UInt32;
  }

  while (UInt32);
  v58 = 0;
  if ((v60 & 0xF0) != 0 && (v60 & 0xF0) != 0xF0)
  {
    fprintf(*MEMORY[0x1E69E9848], "WARNING: file appears to be a corrupt Metabom! (found %04x expected %04x or %04x)\n", v60 & 0xF0, 240, 0);
    v58 = 3;
  }

LABEL_65:
  BOMStreamFree(v14, v19, v20, v21, v22, v23, v24, v25);
  return v58;
}

uint64_t BOMStorageDumpBlock(uint64_t a1, const char *a2, unsigned int a3)
{
  if (a1)
  {
    if (*(a1 + 1096))
    {
      if (*(a1 + 1100))
      {
        v6 = _tocGet(a1, a2);
        if (v6)
        {
          v13 = v6;
          v14 = BOMStorageSizeOfBlock(a1, v6, v7, v8, v9, v10, v11, v12);
          v21 = BOMStorageReadFromBlock(a1, v13, v15, v16, v17, v18, v19, v20);
          fprintf(*MEMORY[0x1E69E9858], "        %s ", a2);
          BOMValueDump(v21, v14, "        ", a3);
        }
      }
    }
  }

  return 1;
}

_DWORD *_newFreeListEntry(int a1, int a2)
{
  v4 = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
  v5 = v4;
  if (v4)
  {
    *v4 = 0;
    v4[2] = a1;
    v4[3] = a2;
  }

  else
  {
    v6 = __error();
    strerror(*v6);
    _CUILog(4, "%s: malloc: %s", v7, v8, v9, v10, v11, v12, "FreeListEntry _newFreeListEntry(unsigned int, unsigned int)");
  }

  return v5;
}

uint64_t (*_WriteAddress(uint64_t a1, unsigned int a2, unsigned int a3))(void *)
{
  v3 = BOMStreamWithFile(*(a1 + 1028), a2, a3, 1, (*(a1 + 1040) + a2));
  if (v3)
  {
    v4 = v3;
    BOMStreamFlush();

    return BOMStreamFree(v4);
  }

  else
  {
    v6 = *__error();

    return _BOMExceptionHandlerCall("Unable to create write stream.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMStorage.c", 2209, v6);
  }
}

uint64_t BomSys_init(void *a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = malloc_type_malloc(0x80uLL, 0x800408754F03FuLL);
  v5 = *&off_1F37DE7F8;
  v4[4] = xmmword_1F37DE7E8;
  v4[5] = v5;
  v6 = *&off_1F37DE818;
  v4[6] = xmmword_1F37DE808;
  v4[7] = v6;
  v7 = *&off_1F37DE7B8;
  *v4 = gDefaultSys;
  v4[1] = v7;
  v8 = *&off_1F37DE7D8;
  v4[2] = xmmword_1F37DE7C8;
  v4[3] = v8;
  *(v4 + 1) = a2;
  *a1 = v4;
  __CFSetLastAllocationEventName();
  return 0;
}

void BomSys_free(void *a1)
{
  if (a1 != &gDefaultNOMMAPSys && a1 != 0 && a1 != &gDefaultSys)
  {
    free(a1);
  }
}

void BomSys_set_open(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "ignoring call to alter shared Sys %s", a3, a4, a5, a6, a7, a8, "void BomSys_set_open(BomSys *, BomSys_open_call)");
  }

  else if (a2)
  {
    *(a1 + 2) = a2;
  }

  else
  {
    *(a1 + 2) = BomSys_open;
  }
}

void BomSys_set_close(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_close(BomSys *, BomSys_close_call)");
  }

  else if (a2)
  {
    *(a1 + 3) = a2;
  }

  else
  {
    *(a1 + 3) = BomSys_close;
  }
}

void BomSys_set_fcntl(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_fcntl(BomSys *, BomSys_fcntl_call)");
  }

  else if (a2)
  {
    *(a1 + 4) = a2;
  }

  else
  {
    *(a1 + 4) = BomSys_fcntl;
  }
}

void BomSys_set_read(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_read(BomSys *, BomSys_read_call)");
  }

  else if (a2)
  {
    *(a1 + 5) = a2;
  }

  else
  {
    *(a1 + 5) = BomSys_read;
  }
}

void BomSys_set_write(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_write(BomSys *, BomSys_write_call)");
  }

  else if (a2)
  {
    *(a1 + 6) = a2;
  }

  else
  {
    *(a1 + 6) = BomSys_write;
  }
}

void BomSys_set_lseek(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_lseek(BomSys *, BomSys_lseek_call)");
  }

  else if (a2)
  {
    *(a1 + 7) = a2;
  }

  else
  {
    *(a1 + 7) = BomSys_lseek;
  }
}

void BomSys_set_fsync(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_fsync(BomSys *, BomSys_fsync_call)");
  }

  else if (a2)
  {
    *(a1 + 8) = a2;
  }

  else
  {
    *(a1 + 8) = BomSys_fsync;
  }
}

void BomSys_set_fstat(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_fstat(BomSys *, BomSys_fstat_call)");
  }

  else if (a2)
  {
    *(a1 + 9) = a2;
  }

  else
  {
    *(a1 + 9) = BomSys_fstat;
  }
}

void BomSys_set_fstatfs(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_fstatfs(BomSys *, BomSys_fstatfs_call)");
  }

  else if (a2)
  {
    *(a1 + 10) = a2;
  }

  else
  {
    *(a1 + 10) = BomSys_fstatfs;
  }
}

void BomSys_set_rename(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_rename(BomSys *, BomSys_rename_call)");
  }

  else if (a2)
  {
    *(a1 + 11) = a2;
  }

  else
  {
    *(a1 + 11) = BomSys_rename;
  }
}

void BomSys_set_mmap(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_mmap(BomSys *, BomSys_mmap_call)");
  }

  else if (a2)
  {
    *(a1 + 12) = a2;
  }

  else
  {
    *(a1 + 12) = BomSys_mmap;
  }
}

void BomSys_set_munmap(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a1 == &gDefaultNOMMAPSys || a1 == 0 || a1 == &gDefaultSys;
  if (v9 || *a1)
  {
    _CUILog(4, "%s ignoring call to alter shared Sys", a3, a4, a5, a6, a7, a8, "void BomSys_set_munmap(BomSys *, BomSys_munmap_call)");
  }

  else if (a2)
  {
    *(a1 + 13) = a2;
  }

  else
  {
    *(a1 + 13) = BomSys_munmap;
  }
}

void **BOMStackNew()
{
  v0 = malloc_type_calloc(1uLL, 0x18uLL, 0x1080040468F112EuLL);
  if (v0)
  {
    __CFSetLastAllocationEventName();
    v0[1] = 1024;
    v1 = malloc_type_calloc(1uLL, 0x2000uLL, 0x80040B8603338uLL);
    *v0 = v1;
    if (!v1)
    {
      BOMStackFree(v0);
      v10 = BOMExceptionHandlerMessage("Allocating BOMStack failed", v3, v4, v5, v6, v7, v8, v9, v12);
      v11 = __error();
      _BOMFatalException(v10, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMStack.c", 40, *v11);
    }
  }

  return v0;
}

void BOMStackFree(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      free(v2);
    }

    free(a1);
  }
}

uint64_t *BOMStackPop(uint64_t *result)
{
  if (result)
  {
    v1 = *result;
    if (*result && (v2 = result[2]) != 0)
    {
      v3 = v2 - 1;
      result[2] = v3;
      result = *(v1 + 8 * v3);
      *(v1 + 8 * v3) = 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *BOMStackPeek(void *result)
{
  if (result)
  {
    if (*result && (v1 = result[2]) != 0)
    {
      return *(*result + 8 * v1 - 8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void BOMStackPush(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    v9 = *a1;
    if (*a1)
    {
      v11 = *(a1 + 8);
      if (*(a1 + 16) + 1 >= v11)
      {
        if (v11 == 0xFFFFFFF)
        {
          v23 = BOMExceptionHandlerMessage("BOMStack is full can't grow anymore", a2, a3, a4, a5, a6, a7, a8, v27);
          v24 = __error();
          _BOMFatalException(v23, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMStack.c", 105, *v24);
        }

        v12 = 2 * v11;
        if (2 * v11 >= 0xFFFFFFF)
        {
          v12 = 0xFFFFFFFLL;
        }

        v13 = 8 * v12;
        *(a1 + 8) = v12;
        v14 = reallocf(v9, 8 * v12);
        *a1 = v14;
        if (!v14)
        {
          v25 = BOMExceptionHandlerMessage("BOMStack got blown", v15, v16, v17, v18, v19, v20, v21, v27);
          v26 = __error();
          _BOMFatalException(v25, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Common/BOMStack.c", 124, *v26);
        }

        v9 = v14;
        if (v13 > 8 * v11)
        {
          bzero(&v14[8 * v11], v13 - 8 * v11);
        }
      }

      v22 = *(a1 + 16);
      *(a1 + 16) = v22 + 1;
      *(v9 + v22) = a2;
    }
  }
}

uint64_t BOMStackCount(uint64_t result)
{
  if (result)
  {
    if (*result)
    {
      return *(result + 16);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void BOMExceptionHandlerSet(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (__BOMExceptionHandlerKey___onceHandler != -1)
  {
    BOMExceptionHandlerSet_cold_1();
  }

  if (pthread_setspecific(__BOMExceptionHandlerKey___key, a1))
  {

    _CUILog(4, "BOMExceptionHandlerSet couldn't pthread_setspecific", v10, v11, v12, v13, v14, v15, a9);
  }
}

void __defaultHandler(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a1 + 24))
  {
    _CUILog(4, "[%s:%u] %s", a3, a4, a5, a6, a7, a8, *(a1 + 16));
  }

  else
  {
    _CUILog(4, "%s", a3, a4, a5, a6, a7, a8, *a1);
  }

  if (*(a1 + 8))
  {
    abort();
  }
}

void _BOMFatalException(void *a1, const char *a2, int a3, int a4)
{
  v8 = __BOMGlobalExceptionHandler();
  if (!a1)
  {
    a1 = __BOMExceptionMessageString();
  }

  v11 = a1;
  v12 = 0;
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = __defaultHandler;
  }

  LOBYTE(v12) = 1;
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = "";
  }

  v13 = v10;
  v14 = a3;
  v15 = a4;
  (v9)(&v11);
  abort();
}

void *__BOMGlobalExceptionHandler()
{
  if (__BOMExceptionHandlerKey___onceHandler != -1)
  {
    BOMExceptionHandlerSet_cold_1();
  }

  v1 = __BOMExceptionHandlerKey___key;

  return pthread_getspecific(v1);
}

void *__BOMExceptionMessageString()
{
  if (__BOMExceptionMessageString___onceMessage != -1)
  {
    __BOMExceptionMessageString_cold_1();
  }

  v0 = pthread_getspecific(__BOMExceptionMessageString___key);
  if (!v0)
  {
    v0 = malloc_type_calloc(0x1000uLL, 1uLL, 0x100004077774924uLL);
    __CFSetLastAllocationEventName();
    if (pthread_setspecific(__BOMExceptionMessageString___key, v0))
    {
      _CUILog(4, "__BOMExceptionMessageString couldn't pthread_setspecific", v1, v2, v3, v4, v5, v6, v8);
    }
  }

  return v0;
}

uint64_t (*_BOMExceptionHandlerCall(void *a1, unsigned __int8 a2, const char *a3, int a4, int a5))(void *)
{
  result = __BOMGlobalExceptionHandler();
  if (result)
  {
    v11 = result;
    if (!a1)
    {
      a1 = __BOMExceptionMessageString();
    }

    v13[0] = a1;
    v12 = "";
    v13[1] = a2;
    if (a3)
    {
      v12 = a3;
    }

    v13[2] = v12;
    v14 = a4;
    v15 = a5;
    return v11(v13);
  }

  return result;
}

char *BOMExceptionHandlerMessage(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v10 = __BOMExceptionMessageString();
  vsnprintf(v10, 0x1000uLL, a1, &a9);
  return v10;
}

void *_BOMFreeListAllocate()
{
  v0 = malloc_type_malloc(0x48uLL, 0x1080040D23F5C74uLL);
  if (v0)
  {
    __CFSetLastAllocationEventName();
    v0[2] = _dense_initialize;
    v0[3] = _dense_serialize;
    v0[4] = _dense_deallocate;
    v0[7] = _dense_clear;
    v0[5] = _dense_addFreeRange;
    v0[6] = _dense_allocateRange;
    v0[8] = _dense_print;
    v1 = malloc_type_malloc(0x18uLL, 0x10A0040DF6760FDuLL);
    if (v1)
    {
      v2 = v1;
      v3 = malloc_type_calloc(0x20uLL, 8uLL, 0x2004093837F09uLL);
      *v2 = v3;
      if (v3)
      {
        v2[1] = 0;
        *(v2 + 4) = 32;
        *v0 = v2;
        *(v0 + 2) = 0;
        return v0;
      }

      free(v0);
      v4 = v2;
    }

    else
    {
      v4 = v0;
    }

    free(v4);
    return 0;
  }

  return v0;
}

uint64_t _dense_initialize(uint64_t result, uint64_t a2, unint64_t a3, int a4)
{
  if ((a3 & 7) == 0 && (a3 >> 3) >= 1)
  {
    v5 = result;
    v6 = (a3 >> 3) & 0x7FFFFFFF;
    v7 = (a2 + 4);
    do
    {
      v8 = *(v7 - 1);
      v9 = bswap32(v8);
      v10 = bswap32(*v7);
      if (a4)
      {
        v11 = v9;
      }

      else
      {
        v11 = v8;
      }

      if (a4)
      {
        v12 = v10;
      }

      else
      {
        v12 = *v7;
      }

      result = (*(v5 + 40))(v5, v11, v12);
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  return result;
}

char *_dense_serialize(uint64_t **a1, int a2, size_t *a3)
{
  v4 = *a1;
  v5 = 8 * *(a1 + 2);
  *a3 = v5;
  result = malloc_type_malloc(v5, 0x8ACBCD47uLL);
  if (result)
  {
    v7 = *(v4 + 4);
    if (v7 < 1)
    {
      v14 = 0;
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = *v4;
      v11 = vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 0), 0x1FuLL));
      do
      {
        v12 = *(v10 + 8 * v8);
        if (v12)
        {
          v13 = &result[8 * v9];
          do
          {
            *v13++ = vbsl_s8(v11, v12[1], vrev32_s8(v12[1]));
            v12 = *v12;
            ++v9;
          }

          while (v12);
          v7 = *(v4 + 4);
        }

        ++v8;
      }

      while (v8 < v7);
      v14 = v9;
    }

    v15 = v4[1];
    if (v15)
    {
      v16 = &result[8 * v14];
      v17 = vcltz_s32(vshl_n_s32(vdup_n_s32(a2 == 0), 0x1FuLL));
      do
      {
        *v16++ = vbsl_s8(v17, v15[1], vrev32_s8(v15[1]));
        v15 = *v15;
      }

      while (v15);
    }
  }

  return result;
}

void _dense_deallocate(uint64_t a1)
{
  v2 = *a1;
  (*(a1 + 56))();
  free(*v2);
  free(v2);
  *a1 = 0;
}

void *_dense_clear(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*v1 + 8 * i);
      *(*v1 + 8 * i) = 0;
      if (v4)
      {
        do
        {
          v5 = *v4;
          free(v4);
          v4 = v5;
        }

        while (v5);
        v2 = *(v1 + 16);
      }
    }
  }

  result = *(v1 + 8);
  *(v1 + 8) = 0;
  if (result)
  {
    do
    {
      v7 = *result;
      free(result);
      result = v7;
    }

    while (v7);
  }

  return result;
}

_DWORD *_dense_addFreeRange(_DWORD *result, int a2, unint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = *result;
    if (a3 < 0x10000)
    {
      v8 = *(v6 + 16);
      if (v8 <= a3)
      {
        v9 = a3 + 1;
        v10 = (8 * (a3 + 1));
        v11 = *v6;
        if (v8 <= a3)
        {
          v12 = malloc_type_realloc(v11, v10, 0x1F9D68D3uLL);
          *v6 = v12;
          bzero(&v12[8 * *(v6 + 16)], 8 * (v9 - v8));
        }

        else
        {
          *v6 = malloc_type_realloc(v11, v10, 0x2AEB1F5BuLL);
        }

        *(v6 + 16) = v9;
        v6 = *v5;
      }

      v13 = *(*v6 + 8 * a3);
      result = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
      result[2] = a2;
      result[3] = a3;
      *result = v13;
      *(*v6 + 8 * a3) = result;
    }

    else
    {
      v7 = *(v6 + 8);
      result = malloc_type_malloc(0x10uLL, 0x1020040EDED9539uLL);
      result[2] = a2;
      result[3] = a3;
      *result = v7;
      *(v6 + 8) = result;
    }

    ++v5[2];
  }

  return result;
}

uint64_t _dense_allocateRange(uint64_t a1, unint64_t a2)
{
  v4 = *a1;
  v5 = *(*a1 + 16);
  if (v5 > a2)
  {
    v6 = *(*v4 + 8 * a2);
    if (v6)
    {
      v7 = v6[2];
      v8 = *v6;
      free(v6);
      *(*v4 + 8 * a2) = v8;
      --*(a1 + 8);
      return v7;
    }
  }

  LODWORD(v9) = 0;
  v10 = a2 + 1;
  while (1)
  {
    v11 = v10 + v9;
    if (v10 + v9 >= v5)
    {
      break;
    }

    v12 = *(*v4 + 8 * v11);
    v9 = (v9 + 1);
    if (v12)
    {
      v7 = v12[2];
      v13 = *v12;
      free(v12);
      *(*v4 + 8 * v11) = v13;
      goto LABEL_19;
    }
  }

  v16 = v4[1];
  v15 = v4 + 1;
  v14 = v16;
  if (!v16)
  {
    return 0;
  }

  v17 = *(v14 + 3);
  if (v17 < a2)
  {
    while (1)
    {
      v18 = v14;
      v14 = *v14;
      if (!v14)
      {
        return 0;
      }

      v17 = *(v14 + 3);
      if (v17 >= a2)
      {
        goto LABEL_15;
      }
    }
  }

  v18 = 0;
LABEL_15:
  v19 = *v14;
  v7 = *(v14 + 2);
  v9 = (v17 - a2);
  free(v14);
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v15;
  }

  *v20 = v19;
LABEL_19:
  --*(a1 + 8);
  (*(a1 + 40))(a1, (v7 + a2), v9);
  return v7;
}

uint64_t _dense_print(uint64_t result, FILE *__stream, int a3)
{
  v5 = *result;
  v6 = *(*result + 16);
  if (v6 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      v8 = *(*v5 + 8 * i);
      if (v8)
      {
        v9 = 0;
        do
        {
          ++v9;
          v8 = *v8;
        }

        while (v8);
        if (v9 == 1)
        {
          v10 = "y";
        }

        else
        {
          v10 = "ies";
        }

        result = fprintf(__stream, "Size %d: %d entr%s\n", i, v9, v10);
        v6 = *(v5 + 16);
      }
    }
  }

  v11 = *(v5 + 8);
  if (v11)
  {
    if (a3)
    {
      fwrite("Large sizes:\n\t", 0xEuLL, 1uLL, __stream);
    }

    v12 = 1;
    if (!a3)
    {
      goto LABEL_17;
    }

    while (1)
    {
      fprintf(__stream, "%d ", *(v11 + 3));
      v11 = *v11;
      if (!v11)
      {
        break;
      }

      while (1)
      {
        ++v12;
        if (a3)
        {
          break;
        }

LABEL_17:
        v11 = *v11;
        if (!v11)
        {
          v13 = "ies";
          if (v12 == 1)
          {
            v13 = "y";
          }

          return fprintf(__stream, "Large sizes: %d entr%s\n", v12, v13);
        }
      }
    }

    return fputc(10, __stream);
  }

  return result;
}

_DWORD *BOMTreeNewWithName(uint64_t a1, const char *a2)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  v4 = BOMStorageNewNamedBlock(a1, a2);
  if (!v4)
  {
    return 0;
  }

  return _BOMTreeNew(a1, a2, v4, 0, 0);
}

_DWORD *_BOMTreeNew(uint64_t a1, const char *a2, unsigned int a3, int a4, char a5)
{
  result = _newBOMTree(a1, a2);
  if (result)
  {
    v11 = result;
    result[4] = a3;
    if ((a4 - 1) >= 0x2F)
    {
      v12 = a4;
    }

    else
    {
      v12 = 48;
    }

    if (!v12)
    {
      v12 = 4096;
    }

    result[76] = v12;
    v13 = v12 - 16;
    result[77] = v13 >> 3;
    result[78] = (v13 >> 3) + 1;
    result[79] = v13 >> 4;
    result[89] = result[89] & 0xFFFFFFFB | (4 * (a5 & 1));
    v14 = _NewPage(result, 0);
    *(v11 + 24) = v14;
    *(v14 + 2) |= 1u;
    *(v11 + 356) |= 1u;
    BOMTreeFree(v11);

    return _BOMTreeOpen(a1, a2, a3, 1);
  }

  return result;
}

_DWORD *BOMTreeNewWithOptions(uint64_t a1, unsigned int a2, const char *a3, int a4, char a5)
{
  if (!a1)
  {
    return 0;
  }

  v8 = a2;
  if (!a2 && !a3)
  {
    return 0;
  }

  if (!a2)
  {
    v8 = BOMStorageNewNamedBlock(a1, a3);
    if (!v8)
    {
      return 0;
    }
  }

  return _BOMTreeNew(a1, a3, v8, a4, a5);
}

uint64_t BOMTreeOpenWithName(uint64_t a1, const char *a2, char a3)
{
  if (!a1)
  {
    return 0;
  }

  if (!a2)
  {
    return 0;
  }

  NamedBlock = BOMStorageGetNamedBlock(a1, a2);
  if (!NamedBlock)
  {
    return 0;
  }

  return _BOMTreeOpen(a1, a2, NamedBlock, a3);
}

uint64_t _BOMTreeOpen(uint64_t a1, const char *a2, unsigned int a3, char a4)
{
  v8 = _newBOMTree(a1, a2);
  v15 = v8;
  if (!v8)
  {
    return v15;
  }

  *v8 = a1;
  v8[4] = a3;
  v22 = BOMStorageSizeOfBlock(a1, a3, v9, v10, v11, v12, v13, v14);
  v23 = *v15;
  if ((*(v15 + 356) & 0x40) != 0)
  {
    v32 = BOMStorageReadFromBlock(v23, a3, v16, v17, v18, v19, v20, v21);
    if (v32)
    {
      v33 = v32;
      v31 = BOMStreamWithAddress(v32, v22, 0);
      if (!BOMStorageInRam(*v15))
      {
        madvise(v33, v22, 3);
        if (!v31)
        {
          goto LABEL_25;
        }

        goto LABEL_8;
      }

      if (v31)
      {
        goto LABEL_8;
      }
    }

LABEL_25:
    BOMTreeFree(v15);
    return 0;
  }

  v31 = BOMStreamWithBlockID(v23, a3, v22, 0);
  if (!v31)
  {
    goto LABEL_25;
  }

LABEL_8:
  if (BOMStreamReadUInt32(v31, v24, v25, v26, v27, v28, v29, v30) != 1953654117)
  {
    if (a2)
    {
      _CUILog(4, "%s: '%s' is not a BOMTree", v35, v36, v37, v38, v39, v40, "BOMTree _BOMTreeOpen(BOMStorage, const char *, BOMBlockID, Boolean)");
    }

    else
    {
      _CUILog(4, "%s: '<Tree %d>' is not a BOMTree", v35, v36, v37, v38, v39, v40, "BOMTree _BOMTreeOpen(BOMStorage, const char *, BOMBlockID, Boolean)");
    }

    goto LABEL_24;
  }

  if (BOMStreamReadUInt32(v31, v34, v35, v36, v37, v38, v39, v40) != 1)
  {
    if (a2)
    {
      _CUILog(4, "%s: BOMTree '%s' has an unknown version: 0x%X", v42, v43, v44, v45, v46, v47, "BOMTree _BOMTreeOpen(BOMStorage, const char *, BOMBlockID, Boolean)");
    }

    else
    {
      _CUILog(4, "%s: BOMTree '<Tree %d>' has an unknown version: 0x%X", v42, v43, v44, v45, v46, v47, "BOMTree _BOMTreeOpen(BOMStorage, const char *, BOMBlockID, Boolean)");
    }

LABEL_24:
    BOMStreamFree(v31, v99, v100, v101, v102, v103, v104, v105);
    goto LABEL_25;
  }

  UInt32 = BOMStreamReadUInt32(v31, v41, v42, v43, v44, v45, v46, v47);
  *(v15 + 304) = BOMStreamReadUInt32(v31, v49, v50, v51, v52, v53, v54, v55);
  *(v15 + 20) = BOMStreamReadUInt32(v31, v56, v57, v58, v59, v60, v61, v62);
  *(v15 + 356) = *(v15 + 356) & 0xFFFFFFFB | (4 * (BOMStreamReadUInt8(v31, v63, v64, v65, v66, v67, v68, v69) & 1));
  if (!BOMStreamAtEOF(v31, v70, v71, v72, v73, v74, v75, v76))
  {
    *(v15 + 348) = BOMStreamReadUInt32(v31, v77, v78, v79, v80, v81, v82, v83);
    if (!BOMStreamAtEOF(v31, v84, v85, v86, v87, v88, v89, v90))
    {
      *(v15 + 352) = BOMStreamReadUInt32(v31, v77, v78, v79, v80, v81, v82, v83);
    }
  }

  BOMStreamFree(v31, v77, v78, v79, v80, v81, v82, v83);
  v91 = *(v15 + 304) - 16;
  *(v15 + 308) = v91 >> 3;
  *(v15 + 312) = (v91 >> 3) + 1;
  *(v15 + 316) = v91 >> 4;
  v92 = _NewPage(v15, UInt32);
  *(v15 + 24) = v92;
  if (!v92 || _ReadPage(v15, v92, v93, v94, v95, v96, v97, v98))
  {
    goto LABEL_25;
  }

  *(v15 + 356) = *(v15 + 356) & 0xFFFFFFFD | (2 * (a4 & 1));
  return v15;
}

uint64_t BOMTreeFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 356) & 1) != 0 && BOMTreeCommit(result))
    {
      return 1;
    }

    else
    {
      v2 = *(v1 + 296);
      if (v2 && CFArrayGetCount(v2))
      {
        _CUILog(4, "%s: BOMTree '%s' still has iterators active", v3, v4, v5, v6, v7, v8, "int BOMTreeFree(BOMTree)");
      }

      for (i = 32; i != 288; i += 8)
      {
        v10 = *(v1 + i);
        if (v10)
        {
          if ((v10[2] & 2) != 0)
          {
            _WritePage(v1, *(v1 + i));
          }

          _FreePage(v1, v10);
          *(v1 + i) = 0;
        }
      }

      _FreePage(v1, *(v1 + 24));
      *(v1 + 24) = 0;
      v11 = *(v1 + 8);
      if (v11 && (*(v1 + 356) & 0x20) != 0)
      {
        free(v11);
        *(v1 + 8) = 0;
      }

      v12 = *(v1 + 296);
      if (v12)
      {
        CFRelease(v12);
        *(v1 + 296) = 0;
      }

      v13 = *(v1 + 336);
      if (v13)
      {
        free(v13);
        *(v1 + 336) = 0;
      }

      v14 = *(v1 + 320);
      if (v14)
      {
        free(v14);
      }

      free(v1);
      return 0;
    }
  }

  return result;
}

uint64_t BOMTreeCommit(uint64_t a1)
{
  if (!a1 || (*(a1 + 356) & 1) == 0)
  {
    return 0;
  }

  for (i = 32; i != 288; i += 8)
  {
    v5 = *(a1 + i);
    if (v5 && (*(v5 + 4) & 2) != 0)
    {
      _WritePage(a1, v5);
    }
  }

  _WritePage(a1, *(a1 + 24));
  v2 = 1;
  v6 = BOMStreamWithBlockID(*a1, *(a1 + 16), 0x1DuLL, 1);
  if (v6)
  {
    v13 = v6;
    BOMStreamWriteUInt32(v6, 1953654117, v7, v8, v9, v10, v11, v12);
    BOMStreamWriteUInt32(v13, 1, v14, v15, v16, v17, v18, v19);
    BOMStreamWriteUInt32(v13, **(a1 + 24), v20, v21, v22, v23, v24, v25);
    BOMStreamWriteUInt32(v13, *(a1 + 304), v26, v27, v28, v29, v30, v31);
    BOMStreamWriteUInt32(v13, *(a1 + 20), v32, v33, v34, v35, v36, v37);
    BOMStreamWriteUInt8(v13, (*(a1 + 356) >> 2) & 1, v38, v39, v40, v41, v42, v43);
    if ((*(a1 + 356) & 4) != 0)
    {
      v50 = 0;
    }

    else
    {
      v50 = *(a1 + 348);
    }

    BOMStreamWriteUInt32(v13, v50, v44, v45, v46, v47, v48, v49);
    BOMStreamWriteUInt32(v13, 0, v51, v52, v53, v54, v55, v56);
    if (!BOMStreamFree(v13, v57, v58, v59, v60, v61, v62, v63))
    {
      v2 = 0;
      *(a1 + 356) &= ~1u;
    }
  }

  return v2;
}

void _FreePage(uint64_t a1, void *a2)
{
  if (a2)
  {
    *a2 = -1;
    *(a2 + 1) = -1;
    *(a2 + 4) = 0;
    if ((*(a1 + 356) & 0x40) == 0)
    {
      free(*(a2 + 3));
    }

    free(a2);
  }
}

uint64_t BOMTreeRemoveAndFree(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    v3 = BOMTreeIteratorNew(result, 0, 0, 0);
    if (v3)
    {
      for (i = v3; !BOMTreeIteratorIsAtEnd(i, v4, v5, v6, v7, v8, v9, v10); BOMTreeIteratorNext(i, v31, v32, v33, v34, v35, v36, v37))
      {
        v19 = BOMTreeIteratorKey(i, v12, v13, v14, v15, v16, v17, v18);
        v27 = BOMTreeIteratorKeySize(i, v20, v21, v22, v23, v24, v25, v26);
        BOMTreeRemoveValue(v1, v19, v27, v28, v29, v30);
      }

      BOMTreeIteratorFree(i);
      BOMStorageFreeBlock(v2, **(v1 + 24), v38, v39, v40, v41, v42, v43);
      _FreePage(v1, *(v1 + 24));
      *(v1 + 24) = 0;
      v50 = *(v1 + 8);
      if (v50)
      {
        BOMStorageFreeNamedBlock(v2, v50);
      }

      else
      {
        BOMStorageFreeBlock(v2, *(v1 + 16), v44, v45, v46, v47, v48, v49);
      }

      v51 = *(v1 + 8);
      if (v51 && (*(v1 + 356) & 0x20) != 0)
      {
        free(v51);
        *(v1 + 8) = 0;
      }

      v52 = *(v1 + 296);
      if (v52)
      {
        CFRelease(v52);
      }

      free(v1);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void *BOMTreeIteratorNew(uint64_t a1, void *a2, unint64_t a3, BOOL *a4)
{
  v8 = malloc_type_calloc(1uLL, 0x40uLL, 0x10A00408C39C337uLL);
  v13 = v8;
  if (!v8)
  {
    return v13;
  }

  *v8 = a1;
  BOMTreeIteratorSet(v8, a2, a3, a4, v9, v10, v11, v12);
  v14 = *(a1 + 296);
  if (!v14)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    *(a1 + 296) = Mutable;
    if (!Mutable)
    {
      v19 = __error();
      _BOMExceptionHandlerCall("Out of memory.", 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 2688, *v19);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v15 = BOMCFArrayMaxRange(v14);
  v17 = v16;
  v21.location = v15;
  v21.length = v17;
  if (!CFArrayContainsValue(*(a1 + 296), v21, v13))
  {
    Mutable = *(a1 + 296);
LABEL_6:
    CFArrayAppendValue(Mutable, v13);
  }

LABEL_8:
  if ((*(*v13 + 356) & 4) == 0)
  {
    v13[3] = malloc_type_malloc(v13[4], 0xE2286860uLL);
  }

  v13[5] = malloc_type_malloc(v13[6], 0x62594550uLL);
  __CFSetLastAllocationEventName();
  return v13;
}

uint64_t BOMTreeIteratorIsAtEnd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    return 1;
  }

  v9 = *(a1 + 57);
  if ((v9 & 8) != 0)
  {
    return 1;
  }

  if ((v9 & 1) != 0 || (v10 = *(a1 + 8)) == 0 || *v10 != *(a1 + 16))
  {
    v11 = _revalidateIterator(a1, a2, a3, a4, a5, a6, a7, a8);
    v9 = *(a1 + 57);
    if (!v11)
    {
      v9 |= 8u;
      *(a1 + 57) = v9;
    }
  }

  return (v9 >> 3) & 1;
}

uint64_t BOMTreeIteratorKey(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if ((*(result + 57) & 8) != 0)
    {
      return 0;
    }

    if (((*(result + 57) & 1) != 0 || (v9 = *(result + 8)) == 0 || *v9 != *(result + 16)) && !_revalidateIterator(result, a2, a3, a4, a5, a6, a7, a8))
    {
      result = 0;
      *(v8 + 57) |= 8u;
      return result;
    }

    v10 = *v8;
    v11 = *(*v8 + 356);
    if ((v11 & 4) == 0)
    {
      if ((*(v8 + 57) & 2) != 0)
      {
        return *(v8 + 24);
      }

      if ((v11 & 0x40) != 0)
      {
        v15 = *(v10 + 348);
        if (v15 >= 1)
        {
LABEL_18:
          v16 = *(v8 + 32);
          if (v15 > v16)
          {
            v17 = *(v8 + 24);
            if (v17)
            {
              free(v17);
              *(v8 + 24) = 0;
              v16 = *(v8 + 32);
            }

            if (v15 <= 2 * v16)
            {
              v18 = 2 * v16;
            }

            else
            {
              v18 = v15;
            }

            *(v8 + 32) = v18;
            *(v8 + 24) = malloc_type_malloc(v18, 0xCCA19725uLL);
          }

          v19 = *v8;
          if ((*(*v8 + 356) & 0x40) == 0)
          {
            v20 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4);
            goto LABEL_31;
          }

          v21 = *(v19 + 348);
          v22 = *(v8 + 8);
          if (v21 < 1)
          {
            v20 = bswap32(*(*(v22 + 24) + 8 * *(v8 + 20) + 4));
LABEL_31:
            if (BOMStorageCopyFromBlock(*v19, v20, *(v8 + 24), a4, a5, a6, a7, a8))
            {
              return 0;
            }

            goto LABEL_34;
          }

          v23 = *(v22 + 32);
          if (v23)
          {
            memcpy(*(v8 + 24), (v23 + *(v8 + 20) * v21), v21);
LABEL_34:
            *(v8 + 57) |= 2u;
            return *(v8 + 24);
          }

          return 0;
        }

        v12 = bswap32(*(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4));
      }

      else
      {
        v12 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4);
      }

      v15 = BOMStorageSizeOfBlock(*v10, v12, a3, a4, a5, a6, a7, a8);
      goto LABEL_18;
    }

    v13 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4);
    v14 = bswap32(v13);
    if ((v11 & 0x40) != 0)
    {
      return v14;
    }

    else
    {
      return v13;
    }
  }

  return result;
}

uint64_t BOMTreeIteratorKeySize(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if ((*(result + 57) & 8) != 0)
    {
      return 0;
    }

    if (((*(result + 57) & 1) != 0 || (v9 = *(result + 8)) == 0 || *v9 != *(result + 16)) && !_revalidateIterator(result, a2, a3, a4, a5, a6, a7, a8))
    {
      result = 0;
      *(v8 + 57) |= 8u;
      return result;
    }

    v10 = *v8;
    v11 = *(*v8 + 356);
    if ((v11 & 4) != 0)
    {
      return 0;
    }

    if ((v11 & 0x40) != 0)
    {
      result = *(v10 + 348);
      if (result >= 1)
      {
        return result;
      }

      v12 = bswap32(*(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4));
    }

    else
    {
      v12 = *(*(*(v8 + 8) + 24) + 8 * *(v8 + 20) + 4);
    }

    v13 = *v10;

    return BOMStorageSizeOfBlock(v13, v12, a3, a4, a5, a6, a7, a8);
  }

  return result;
}

uint64_t BOMTreeRemoveValue(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      v8 = *(a1 + 356);
      if (a3 || (v8 & 4) != 0)
      {
        if ((v8 & 2) != 0)
        {
          v9 = *(a1 + 24);
          result = _findRemove(a1, &v9, 0, 0, 0, 0, a2, a3, 0);
          if (!result)
          {
            --*(a1 + 20);
            *(a1 + 356) |= 1u;
          }
        }

        else
        {
          _CUILog(4, "%s BOMTree '%s' is read-only can't remove value", a3, a4, a5, a6, a2, a3, "int BOMTreeRemoveValue(BOMTree, void *, size_t)");
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t BOMTreeIteratorNext(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (result)
  {
    v8 = result;
    if ((*(result + 57) & 8) == 0)
    {
      if ((*(result + 57) & 1) == 0 && (v9 = *(result + 8)) != 0 && *v9 == *(result + 16) || (result = _revalidateIterator(result, a2, a3, a4, a5, a6, a7, a8), result))
      {
        if (*(v8 + 56))
        {
          v10 = *(v8 + 20) + 1;
          *(v8 + 20) = v10;
          v11 = *(v8 + 8);
          if (v10 >= *(v11 + 16))
          {
            *(v8 + 20) = 0;
            v12 = *(v11 + 8);
            if (!v12 || (*(v8 + 16) = v12, result = _findPage(*v8, v12, a3, a4, a5, a6, a7, a8), (*(v8 + 8) = result) == 0))
            {
              *(v8 + 57) |= 8u;
            }
          }
        }

        else
        {
          *(v8 + 56) = 1;
        }

        v13 = *(v8 + 57) & 0xF9;
      }

      else
      {
        v13 = *(v8 + 57) | 8;
      }

      *(v8 + 57) = v13;
    }
  }

  return result;
}

void BOMTreeIteratorFree(_BYTE *a1)
{
  if (a1)
  {
    v2 = a1[57];
    a1[56] = 0;
    v3 = v2 | 9;
    a1[57] = v3;
    v4 = *(a1 + 3);
    if (v4 && (*(*a1 + 356) & 4) == 0)
    {
      free(v4);
      *(a1 + 3) = 0;
      v3 = a1[57];
    }

    v5 = v3 & 0xFD;
    a1[57] = v5;
    v6 = *(a1 + 5);
    if (v6)
    {
      free(v6);
      *(a1 + 5) = 0;
      v5 = a1[57];
    }

    a1[57] = v5 & 0xFB;
    *(a1 + 4) = -1;
    *(a1 + 1) = 0;
    v7 = *a1;
    v8 = *(*a1 + 296);
    if (v8)
    {
      v9 = BOMCFArrayMaxRange(v8);
      v11 = v10;
      v14.location = v9;
      v14.length = v11;
      FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(v7 + 296), v14, a1);
      if (FirstIndexOfValue != -1)
      {
        CFArrayRemoveValueAtIndex(*(v7 + 296), FirstIndexOfValue);
        if (!CFArrayGetCount(*(v7 + 296)))
        {
          CFRelease(*(v7 + 296));
          *(v7 + 296) = 0;
        }
      }
    }

    free(a1);
  }
}

uint64_t (*_WritePage(uint64_t a1, uint64_t a2))(void *)
{
  v4 = *(a1 + 304);
  if ((*(a1 + 356) & 4) == 0)
  {
    v5 = *(a1 + 348);
    if (v5 >= 1)
    {
      v4 += v5 * *(a2 + 16);
    }
  }

  result = BOMStreamWithBlockID(*a1, *a2, v4, 1);
  if (result)
  {
    v13 = result;
    BOMStreamWriteUInt16(result, *(a2 + 4) & 1, v7, v8, v9, v10, v11, v12);
    BOMStreamWriteUInt16(v13, *(a2 + 16), v14, v15, v16, v17, v18, v19);
    BOMStreamWriteUInt32(v13, *(a2 + 8), v20, v21, v22, v23, v24, v25);
    BOMStreamWriteUInt32(v13, *(a2 + 12), v26, v27, v28, v29, v30, v31);
    if (*(a2 + 16))
    {
      v38 = 0;
      v39 = 0;
      do
      {
        BOMStreamWriteUInt32(v13, *(*(a2 + 24) + v38), v32, v33, v34, v35, v36, v37);
        BOMStreamWriteUInt32(v13, *(*(a2 + 24) + v38 + 4), v40, v41, v42, v43, v44, v45);
        ++v39;
        v46 = *(a2 + 16);
        v38 += 8;
      }

      while (v39 < v46);
    }

    else
    {
      v46 = 0;
    }

    BOMStreamWriteUInt32(v13, *(*(a2 + 24) + 8 * v46), v32, v33, v34, v35, v36, v37);
    if ((*(a1 + 356) & 4) == 0)
    {
      v54 = *(a1 + 348);
      if (v54 >= 1)
      {
        v61 = malloc_type_malloc(v54, 0xED7B97B4uLL);
        if (*(a2 + 16))
        {
          v62 = 0;
          v63 = 4;
          do
          {
            if (BOMStorageSizeOfBlock(*a1, *(*(a2 + 24) + v63), v55, v56, v57, v58, v59, v60) != *(a1 + 348))
            {
              v76 = BOMExceptionHandlerMessage("%s blockSize %d != tree->keySize %d", v64, v65, v66, v67, v68, v69, v70, "_WritePage");
              v77 = __error();
              _BOMFatalException(v76, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 1417, *v77);
            }

            BOMStorageCopyFromBlock(*a1, *(*(a2 + 24) + v63), v61, v66, v67, v68, v69, v70);
            BOMStreamWriteBuffer(v13, v61, *(a1 + 348), v71, v72, v73, v74, v75);
            ++v62;
            v63 += 8;
          }

          while (v62 < *(a2 + 16));
        }

        free(v61);
      }
    }

    result = BOMStreamFree(v13, v47, v48, v49, v50, v51, v52, v53);
    *(a2 + 4) &= ~2u;
  }

  return result;
}

uint64_t BOMTreeStorage(uint64_t result)
{
  if (result)
  {
    return *result;
  }

  return result;
}

uint64_t BOMTreeSetValue(uint64_t a1, void *a2, unint64_t a3, const void *a4, size_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42 = 0;
  v8 = 1;
  if (a1)
  {
    if (a2)
    {
      v14 = *(a1 + 356);
      if (a3 || (v14 & 4) != 0)
      {
        if ((v14 & 2) == 0)
        {
          _CUILog(4, "%s: BOMTree '%s' is read-only tree can't update values", a3, a4, a5, a6, a7, a8, "int BOMTreeSetValue(BOMTree, void *, size_t, void *, size_t)");
          return v8;
        }

        v15 = BOMStackNew();
        if (!_findPagesForKey(a1, v15, a2, a3, v16, v17, v18, v19))
        {
          BOMStackFree(v15);
          return v8;
        }

        if (v15)
        {
          if ((*(a1 + 356) & 4) != 0)
          {
            v31 = a2;
          }

          else
          {
            v20 = BOMStackPeek(v15);
            if (!v20)
            {
              v33 = 0;
              goto LABEL_27;
            }

            v24 = v20;
            IndexForKey = _findIndexForKey(a1, v20, a2, a3, &v42, v21, v22, v23);
            if (v42)
            {
              v30 = (v24[3] + 8 * IndexForKey);
              v32 = *v30;
              v31 = v30[1];
              if (v32)
              {
LABEL_17:
                if (!BOMStorageCopyToBlock(*a1, v32, a4, a5, v26, v27, v28, v29) && !_PageSetValue(a1, v15, a2, a3, v31, v32))
                {
                  if (!v42)
                  {
                    ++*(a1 + 20);
                  }

                  v8 = 0;
                  *(a1 + 356) |= 1u;
                  v33 = 1;
LABEL_27:
                  while (!BOMStackIsEmpty(v15))
                  {
                    v39 = BOMStackPop(v15);
                    *(v39 + 2) &= ~8u;
                  }

                  BOMStackFree(v15);
                  if (v33)
                  {
                    if ((*(a1 + 356) & 4) == 0)
                    {
                      v40 = *(a1 + 348);
                      if (v40 != -1)
                      {
                        if (!v40)
                        {
                          v8 = 0;
                          *(a1 + 348) = a3;
                          return v8;
                        }

                        if (v40 != a3)
                        {
                          v8 = 0;
                          *(a1 + 348) = -1;
                          return v8;
                        }
                      }
                    }

                    return 0;
                  }

                  return v8;
                }

LABEL_25:
                v33 = 0;
                v8 = 1;
                goto LABEL_27;
              }
            }

            else
            {
              v34 = BOMStorageNewBlock(*a1);
              if (!v34)
              {
                goto LABEL_25;
              }

              v31 = v34;
              if (BOMStorageCopyToBlock(*a1, v34, a2, a3, v35, v36, v37, v38))
              {
                goto LABEL_25;
              }
            }
          }

          v32 = BOMStorageNewBlock(*a1);
          if (!v32)
          {
            goto LABEL_25;
          }

          goto LABEL_17;
        }
      }
    }
  }

  return v8;
}

uint64_t _findIndexForKey(uint64_t a1, uint64_t a2, void *__s1, unint64_t a4, BOOL *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a2 + 16))
  {
    v12 = 0;
    v13 = *(a2 + 16) - 1;
    while (1)
    {
      v14 = v12 + ((v13 - v12) >> 1);
      v15 = *(*(a2 + 24) + 8 * v14 + 4);
      v16 = *(a1 + 356);
      v17 = bswap32(v15);
      if ((v16 & 0x40) != 0)
      {
        v18 = v17;
      }

      else
      {
        v18 = *(*(a2 + 24) + 8 * v14 + 4);
      }

      if (!v18)
      {
        v21 = 0;
        v19 = 0;
        goto LABEL_28;
      }

      if ((v16 & 4) != 0)
      {
        v19 = 0;
        if ((v16 & 0x40) != 0)
        {
          v21 = v17;
        }

        else
        {
          v21 = v15;
        }

        goto LABEL_28;
      }

      if ((v16 & 0x40) == 0)
      {
        goto LABEL_11;
      }

      v19 = *(a1 + 348);
      if (v19 < 1)
      {
        break;
      }

LABEL_12:
      v20 = *(a1 + 344);
      v21 = *(a1 + 336);
      if (v19 > v20)
      {
        v22 = (2 * v20);
        if (v19 > v22)
        {
          LODWORD(v22) = v19;
        }

        *(a1 + 344) = v22;
        if (v21)
        {
          free(v21);
          *(a1 + 336) = 0;
          LODWORD(v22) = *(a1 + 344);
        }

        v21 = malloc_type_malloc(v22, 0x67B7B83AuLL);
        *(a1 + 336) = v21;
      }

      if ((*(a1 + 356) & 0x40) != 0)
      {
        v24 = *(a1 + 348);
        if (v24 >= 1)
        {
          memcpy(v21, (*(a2 + 32) + v24 * v14), v24);
          goto LABEL_28;
        }

        v23 = bswap32(*(*(a2 + 24) + 8 * v14 + 4));
      }

      else
      {
        v23 = *(*(a2 + 24) + 8 * v14 + 4);
      }

      BOMStorageCopyFromBlock(*a1, v23, v21, a4, a5, a6, a7, a8);
LABEL_28:
      if ((*(a1 + 356) & 4) != 0)
      {
        if (v21 <= __s1)
        {
          v27 = 0;
        }

        else
        {
          v27 = -1;
        }

        if (v21 < __s1)
        {
          v26 = 1;
        }

        else
        {
          v26 = v27;
        }

        goto LABEL_44;
      }

      if (v21 == __s1)
      {
        if (!a5)
        {
          return v14;
        }

        v26 = 0;
        v28 = 1;
        goto LABEL_48;
      }

      if (__s1)
      {
        if (!v21)
        {
          v26 = 1;
          goto LABEL_44;
        }

        if (a4 >= v19)
        {
          v25 = v19;
        }

        else
        {
          v25 = a4;
        }

        v26 = memcmp(__s1, v21, v25);
        if (v26)
        {
          goto LABEL_44;
        }

        if (v19 <= a4)
        {
          v26 = v19 < a4;
          goto LABEL_44;
        }
      }

      v26 = -1;
LABEL_44:
      if (!a5)
      {
        goto LABEL_49;
      }

      v28 = v26 == 0;
LABEL_48:
      *a5 = v28;
LABEL_49:
      if (v13 == v12)
      {
        if (v26 <= 0)
        {
          return v14;
        }

        else
        {
          return (v14 + 1);
        }
      }

      if (v26 >= 1)
      {
        if (v14 == v13)
        {
          v12 += (v13 - v12) >> 1;
        }

        else
        {
          v12 = v14 + 1;
        }
      }

      else
      {
        if ((v26 & 0x80000000) == 0)
        {
          return v14;
        }

        v13 = v14 - ((v13 - v12) > 1);
      }
    }

    v15 = v17;
LABEL_11:
    v19 = BOMStorageSizeOfBlock(*a1, v15, __s1, a4, a5, a6, a7, a8);
    goto LABEL_12;
  }

  v14 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  return v14;
}

uint64_t _PageSetValue(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4, int a5, int a6)
{
  v62 = 0;
  v6 = 1;
  if (a5)
  {
    if (a6)
    {
      v13 = BOMStackPop(a2);
      if (v13)
      {
        v14 = v13;
        v15 = (*(v13 + 2) & 1) == 0;
        _invalidateIteratorsForPageID(a1, *v13);
        IndexForKey = _findIndexForKey(a1, v14, a3, a4, &v62, v16, v17, v18);
        v20 = *(v14 + 24);
        if (v62)
        {
          v21 = *(v14 + 16);
        }

        else
        {
          if (*(v20 + 8 * IndexForKey + 4))
          {
            v22 = *(a1 + 356);
            if ((v22 & 8) != 0)
            {
              *(a1 + 356) = v22 & 0xFFFFFFF7;
              v20 = *(v14 + 24);
            }

            v23 = *(v14 + 16);
            v24 = v23 - IndexForKey;
            if (v23 != IndexForKey)
            {
              v25 = v23 + v15;
              v26 = *(v14 + 16);
              do
              {
                v27 = v20 + 8 * v26--;
                v28 = 8 * v25--;
                v29 = *(v20 + 8 * v25);
                *(v27 + 4) = *(v20 + 8 * v26 + 4);
                *(v20 + v28) = v29;
                --v24;
              }

              while (v24);
            }
          }

          else
          {
            LOWORD(v23) = *(v14 + 16);
          }

          *(v20 + 8 * IndexForKey + 4) = a5;
          v21 = v23 + 1;
          *(v14 + 16) = v23 + 1;
        }

        *(v20 + 8 * (IndexForKey + v15)) = a6;
        *(v14 + 4) |= 2u;
        if (*(a1 + 308) >= v21)
        {
          v6 = 0;
        }

        else
        {
          v30 = _NewPage(a1, 0);
          if (v30)
          {
            v37 = v30;
            *(v30 + 2) = *(v30 + 2) & 0xFFFC | *(v14 + 4) & 1 | 2;
            if ((*(v14 + 4) & 1) == 0 || (v38 = *v30, v39 = *v14, *(v30 + 2) = *(v14 + 8), *(v14 + 8) = v38, *(v30 + 3) = v39, (v40 = *(v30 + 2)) == 0))
            {
LABEL_22:
              if ((*(a1 + 356) & 8) != 0)
              {
                LODWORD(v43) = *(a1 + 308) - 1;
                v42 = *(v14 + 16);
              }

              else
              {
                v42 = *(v14 + 16);
                LODWORD(v43) = v42 >> 1;
              }

              v44 = *(v14 + 24);
              v45 = *(v37 + 3);
              if (v43 + 1 >= v42)
              {
                v47 = *(v37 + 8);
                v43 = v43;
                v49 = v42;
              }

              else
              {
                v43 = v43;
                v46 = v43 + 1;
                v47 = *(v37 + 8);
                do
                {
                  v48 = (v44 + 8 * v46);
                  *(v45 + 8 * v47++) = *v48;
                  *(v37 + 8) = v47;
                  *v48 = 0;
                  ++v46;
                  v49 = *(v14 + 16);
                }

                while (v46 < v49);
                LOWORD(v42) = *(v14 + 16);
              }

              v50 = 8 * v49;
              *(v45 + 8 * v47) = *(v44 + v50);
              *(v44 + v50) = 0;
              *(v14 + 16) = v42 - v47;
              v51 = v44 + 8 * v43;
              v54 = *(v51 + 4);
              v52 = (v51 + 4);
              v53 = v54;
              if ((*(v14 + 4) & 1) == 0)
              {
                *v52 = 0;
                *(v14 + 16) = v42 - v47 - 1;
              }

              _addPageToCache(a1, v37);
              if (BOMStackIsEmpty(a2))
              {
                v55 = _NewPage(a1, 0);
                v6 = 1;
                if (v55)
                {
                  v56 = v55;
                  v57 = v55[3];
                  *v57 = *v14;
                  v57[1] = v53;
                  v57[2] = *v37;
                  *(v55 + 8) = 1;
                  *(v55 + 2) |= 2u;
                  _addPageToCache(a1, v14);
                  v6 = 0;
                  *(a1 + 24) = v56;
                }
              }

              else
              {
                v6 = _PageSetValue(a1, a2, a3, a4, v53, *v37);
              }

              goto LABEL_41;
            }

            Page = _findPage(a1, v40, v31, v32, v33, v34, v35, v36);
            if (Page)
            {
              if (*(Page + 3) == *v14)
              {
                *(Page + 3) = *v37;
                *(Page + 2) |= 2u;
                goto LABEL_22;
              }

              v58 = *__error();
              v59 = "internal btree error";
              v6 = 1;
              v60 = 2210;
            }

            else
            {
              v58 = *__error();
              v59 = "missing tree page";
              v6 = 1;
              v60 = 2206;
            }

            _BOMExceptionHandlerCall(v59, 1u, "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", v60, v58);
          }

          else
          {
            v6 = 1;
          }
        }

LABEL_41:
        *(v14 + 4) &= ~8u;
      }
    }
  }

  return v6;
}

uint64_t BOMTreeGetValueSize(uint64_t a1, void *a2, unint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 1;
  if (a1 && a2 && a4 && (a3 || (*(a1 + 356) & 4) != 0))
  {
    PagesForKey = _findPagesForKey(a1, 0, a2, a3, a5, a6, a7, a8);
    if (PagesForKey && (v17 = PagesForKey, v28 = 0, IndexForKey = _findIndexForKey(a1, PagesForKey, a2, a3, &v28, v14, v15, v16), v28))
    {
      v25 = bswap32(*(*(v17 + 24) + 8 * IndexForKey));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v26 = v25;
      }

      else
      {
        v26 = *(*(v17 + 24) + 8 * IndexForKey);
      }

      v27 = BOMStorageSizeOfBlock(*a1, v26, v19, v20, v21, v22, v23, v24);
      result = 0;
      *a4 = v27;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t BOMTreeValueExists(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  v15 = 0;
  if (a1 && a2)
  {
    if (a3 || (*(a1 + 356) & 4) != 0)
    {
      result = _findPagesForKey(a1, 0, a2, a3, a5, a6, a7, a8);
      if (result)
      {
        _findIndexForKey(a1, result, a2, a3, &v15, v12, v13, v14);
        return v15;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t BOMTreeGetValue(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  v37 = 0;
  if (a1 && a2)
  {
    if (!a3 && (*(a1 + 356) & 4) == 0)
    {
      return 0;
    }

    result = _findPagesForKey(a1, 0, a2, a3, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    v15 = result;
    IndexForKey = _findIndexForKey(a1, result, a2, a3, &v37, v12, v13, v14);
    if (!v37)
    {
      return 0;
    }

    v23 = IndexForKey;
    v24 = bswap32(*(*(v15 + 24) + 8 * IndexForKey));
    v25 = (*(a1 + 356) & 0x40) != 0 ? v24 : *(*(v15 + 24) + 8 * IndexForKey);
    result = BOMStorageSizeOfBlock(*a1, v25, v17, v18, v19, v20, v21, v22);
    if (result)
    {
      v31 = result;
      v32 = *(a1 + 320);
      if (v32)
      {
        if (result <= *(a1 + 328))
        {
          goto LABEL_19;
        }

        free(*(a1 + 320));
        *(a1 + 320) = 0;
        v33 = (2 * *(a1 + 328));
        if (v31 <= v33)
        {
          result = v33;
        }

        else
        {
          result = v31;
        }

        *(a1 + 328) = result;
        v34 = 4263778202;
      }

      else
      {
        *(a1 + 328) = result;
        result = result;
        v34 = 1261575674;
      }

      v32 = malloc_type_malloc(result, v34);
      *(a1 + 320) = v32;
LABEL_19:
      v35 = bswap32(*(*(v15 + 24) + 8 * v23));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v36 = v35;
      }

      else
      {
        v36 = *(*(v15 + 24) + 8 * v23);
      }

      if (!BOMStorageCopyFromBlock(*a1, v36, v32, v26, v27, v28, v29, v30))
      {
        return *(a1 + 320);
      }

      return 0;
    }
  }

  return result;
}

uint64_t BOMTreeReadValue(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  v25 = 0;
  if (a1 && a2)
  {
    if (!a3 && (*(a1 + 356) & 4) == 0)
    {
      return 0;
    }

    result = _findPagesForKey(a1, 0, a2, a3, a5, a6, a7, a8);
    if (!result)
    {
      return result;
    }

    v15 = result;
    IndexForKey = _findIndexForKey(a1, result, a2, a3, &v25, v12, v13, v14);
    if (v25)
    {
      v23 = bswap32(*(*(v15 + 24) + 8 * IndexForKey));
      if ((*(a1 + 356) & 0x40) != 0)
      {
        v24 = v23;
      }

      else
      {
        v24 = *(*(v15 + 24) + 8 * IndexForKey);
      }

      return BOMStorageReadFromBlock(*a1, v24, v17, v18, v19, v20, v21, v22);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _findRemove(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8, char *a9)
{
  v13 = a2;
  v15 = a9;
  v101 = 0;
  v16 = *a2;
  v100 = 0;
  v99 = 0;
  if (!a9)
  {
    v15 = &v99;
  }

  v98 = v15;
  IndexForKey = _findIndexForKey(a1, v16, a7, a8, &v101, a6, a7, a8);
  v24 = IndexForKey;
  *(v16 + 20) = IndexForKey;
  if (*(v16 + 4))
  {
    if (!v101)
    {
      return 1;
    }

    goto LABEL_43;
  }

  if (IndexForKey)
  {
    Page = _findPage(a1, *(*(v16 + 24) + 8 * (IndexForKey - 1)), v18, v19, v20, v21, v22, v23);
    v26 = *(Page + 2);
    if ((v26 & 8) == 0)
    {
      v93 = v16;
LABEL_12:
      v94 = 0;
      *(Page + 2) = v26 | 8;
      goto LABEL_16;
    }

    v94 = 1;
    v93 = v16;
  }

  else if (a3)
  {
    Page = _findPage(a1, *(*(a3 + 24) + 8 * *(a3 + 16)), v18, v19, v20, v21, v22, v23);
    v26 = *(Page + 2);
    if ((v26 & 8) == 0)
    {
      v93 = a5;
      goto LABEL_12;
    }

    v94 = 1;
    v93 = a5;
  }

  else
  {
    v93 = 0;
    Page = 0;
    v94 = 1;
  }

LABEL_16:
  v95 = a4;
  if (v24 == *(v16 + 16))
  {
    if (a4)
    {
      a4 = _findPage(a1, **(a4 + 24), v18, v19, v20, v21, v22, v23);
      v28 = *(a4 + 4);
      if ((v28 & 8) == 0)
      {
        v29 = a6;
LABEL_22:
        v92 = 0;
        *(a4 + 4) = v28 | 8;
        goto LABEL_26;
      }

      v92 = 1;
      v29 = a6;
    }

    else
    {
      v29 = 0;
      v92 = 1;
    }
  }

  else
  {
    a4 = _findPage(a1, *(*(v16 + 24) + 8 * (v24 + 1)), v18, v19, v20, v21, v22, v23);
    v28 = *(a4 + 4);
    if ((v28 & 8) == 0)
    {
      v29 = v16;
      goto LABEL_22;
    }

    v92 = 1;
    v29 = v16;
  }

LABEL_26:
  v90 = v13;
  v30 = _findPage(a1, *(*(v16 + 24) + 8 * v24), v18, v19, v20, v21, v22, v23);
  v100 = v30;
  if (!v30)
  {
    v88 = __error();
    _BOMFatalException("BOMTree in invalid state - nextNode is NULL!", "/Library/Caches/com.apple.xbs/Sources/CoreUI/Bom/Storage/BOMTree.c", 1819, *v88);
  }

  v31 = *(v30 + 2);
  if ((v31 & 8) == 0)
  {
    *(v30 + 2) = v31 | 8;
  }

  if (a3)
  {
    *(a3 + 4) &= ~4u;
  }

  if (v95)
  {
    *(v95 + 4) &= ~4u;
  }

  *(v30 + 2) &= ~4u;
  result = _findRemove(a1, &v100, Page, a4, v93, v29, a7, a8, v98);
  if ((v94 & 1) == 0)
  {
    *(Page + 2) &= ~8u;
  }

  if ((v92 & 1) == 0)
  {
    *(a4 + 4) &= ~8u;
  }

  if ((v31 & 8) == 0 && v100)
  {
    *(v100 + 2) &= ~8u;
  }

  if (!result)
  {
    a4 = v95;
    v13 = v90;
    if ((*(v16 + 4) & 1) == 0 || !v101)
    {
      if (!*v98)
      {
        return 0;
      }

      goto LABEL_44;
    }

LABEL_43:
    _invalidateIteratorsForPageID(a1, *v16);
LABEL_44:
    v38 = *(v16 + 16);
    v39 = *(v16 + 24);
    v40 = v38 - v24;
    if (v38 == v24)
    {
      v41 = 0;
      v42 = 0;
      *(v39 + 8 * (v24 - 1) + 4) = 0;
    }

    else
    {
      v43 = (v39 + 8 * v24);
      v42 = *v43;
      v41 = v43[1];
      v44 = v24;
      do
      {
        *(v39 + 8 * v44) = *(v39 + 8 * (v44 + 1));
        ++v44;
        --v40;
      }

      while (v40);
    }

    *(v39 + 8 * v38) = 0;
    *(v16 + 16) = v38 - 1;
    if (*(v16 + 4))
    {
      if ((*(a1 + 356) & 4) == 0 && v41)
      {
        BOMStorageFreeBlock(*a1, v41, v32, v33, v34, v35, v36, v37);
      }

      if (v42)
      {
        BOMStorageFreeBlock(*a1, v42, v32, v33, v34, v35, v36, v37);
      }
    }

    v45 = *(v16 + 4);
    *(v16 + 4) = v45 | 2;
    v46 = *(v16 + 16);
    if (v45)
    {
      v47 = a6;
      if (a6 && v24 == v46)
      {
        *(*(a6 + 24) + 8 * *(a6 + 20) + 4) = *(*(v16 + 24) + 8 * (v24 - 1) + 4);
        *(a6 + 4) |= 2u;
        v46 = *(v16 + 16);
      }
    }

    else
    {
      v47 = a6;
    }

    v48 = *(a1 + 316);
    if (v48 <= v46)
    {
      result = 0;
      *v98 = 0;
      return result;
    }

    v49 = *(a1 + 24);
    if (v16 != v49)
    {
      v50 = *v13;
      if (!(a3 | a4))
      {
LABEL_112:
        result = 0;
        *v13 = v50;
        return result;
      }

      if (a3)
      {
        v51 = a3;
      }

      else
      {
        v51 = a4;
      }

      v52 = a5;
      if (!a3)
      {
        v52 = v47;
      }

      v53 = a3;
      if (a4)
      {
        v54 = a3 != 0;
      }

      else
      {
        v54 = 0;
      }

      v89 = v53;
      v91 = v13;
      if (v54)
      {
        v55 = *(v53 + 16);
        v56 = *(a4 + 16);
        if (v55 >= v56)
        {
          if (v55 <= v56)
          {
            v81 = *(*(v47 + 24) + 8 * *(v47 + 20));
            if (*v50 == v81)
            {
              v51 = a4;
            }

            else
            {
              v51 = v53;
            }

            if (*v50 != v81)
            {
              v47 = a5;
            }
          }

          else
          {
            v51 = v53;
            v47 = a5;
          }
        }

        else
        {
          v51 = a4;
        }
      }

      else
      {
        v47 = v52;
      }

      v65 = *(v51 + 16);
      v66 = a4;
      v67 = v51 == a4;
      v68 = v51 == a4;
      if (v67)
      {
        v69 = v50;
      }

      else
      {
        v69 = v51;
      }

      if (v50[2])
      {
        v70 = v47;
        _invalidateIteratorsForPageID(a1, *v51);
        v47 = v70;
      }

      v71 = *(v47 + 20) - (v51 != v66);
      if ((v69[2] & 1) == 0)
      {
        v72 = v69[8];
        *(*(v69 + 3) + 8 * v72 + 4) = *(*(v47 + 24) + 8 * v71 + 4);
        v69[8] = v72 + 1;
        v69[2] |= 2u;
      }

      if (v48 < v65)
      {
        v73 = a1;
        v74 = v47;
        _shiftKeysAndValues(v73, v50, v51, v68);
        v75 = *(*(v69 + 3) + 8 * v69[8] - 4);
        v76 = *(v74 + 24) + 8 * v71;
        v78 = *(v76 + 4);
        v77 = (v76 + 4);
        v13 = v91;
        if (v78 != v75)
        {
          *v77 = v75;
          *(v74 + 4) |= 2u;
        }

        v79 = 0;
        if ((v69[2] & 1) == 0)
        {
          v80 = v69[8] - 1;
          v69[8] = v80;
          *(*(v69 + 3) + 8 * v80 + 4) = 0;
          v69[2] |= 2u;
        }

        goto LABEL_111;
      }

      _shiftKeysAndValues(a1, v51, v50, v51 != v66);
      v13 = v91;
      if (v54)
      {
        *(v89 + 8) = *v66;
        *(v66 + 12) = *v89;
        *(v89 + 4) |= 2u;
      }

      else if (v89)
      {
        *(v89 + 8) = 0;
        v66 = v89;
      }

      else
      {
        if (!v66)
        {
LABEL_110:
          v50[2] &= ~8u;
          _removePageFromCache(a1, v50);
          BOMStorageFreeBlock(*a1, *v50, v82, v83, v84, v85, v86, v87);
          _FreePage(a1, v50);
          v50 = 0;
          v79 = 1;
LABEL_111:
          *v98 = v79;
          goto LABEL_112;
        }

        *(v66 + 12) = 0;
      }

      *(v66 + 4) |= 2u;
      goto LABEL_110;
    }

    if ((*(v49 + 4) & 1) == 0 && !*(v49 + 16))
    {
      v57 = **(v49 + 24);
      if (v57)
      {
        v58 = _findPage(a1, v57, v32, v33, v34, v35, v36, v37);
        v58[2] &= ~8u;
        _removePageFromCache(a1, v58);
        *(a1 + 24) = v58;
        BOMStorageFreeBlock(*a1, *v49, v59, v60, v61, v62, v63, v64);
        _FreePage(a1, v49);
      }
    }

    return 0;
  }

  return result;
}
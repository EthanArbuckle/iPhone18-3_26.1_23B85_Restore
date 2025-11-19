@interface IXPlaceholder
+ (BOOL)_setEntitlementsFromBundleExecutableURL:(id)a3 withBundleID:(id)a4 client:(unint64_t)a5 onPlaceholder:(id)a6 location:(id)a7 error:(id *)a8;
+ (id)_iconContentForBundleAtURL:(id)a3 infoPlistIconContent:(id *)a4 withStagingPath:(id)a5 error:(id *)a6;
+ (id)_iconDataForBundle:(__CFBundle *)a3 atURL:(id)a4 isFromSerializedPlaceholder:(BOOL)a5 error:(id *)a6;
+ (id)_infoPlistLocalizationDictionaryForBundleURL:(id)a3 error:(id *)a4;
+ (id)_placeholderForBundle:(id)a3 client:(unint64_t)a4 withParent:(id)a5 installType:(unint64_t)a6 metadata:(id)a7 placeholderType:(unint64_t)a8 mayBeDeltaPackage:(BOOL)a9 isFromSerializedPlaceholder:(BOOL)a10 location:(id)a11 error:(id *)a12;
+ (id)_placeholderForInstallable:(id)a3 client:(unint64_t)a4 installType:(unint64_t)a5 metadata:(id)a6 isFromSerializedPlaceholder:(BOOL)a7 location:(id)a8 error:(id *)a9;
+ (id)_pngDataForCGImage:(CGImage *)a3 error:(id *)a4;
+ (id)placeholderForInstallable:(id)a3 client:(unint64_t)a4 installType:(unint64_t)a5 metadata:(id)a6 error:(id *)a7;
+ (id)placeholderForRemovableSystemAppWithBundleID:(id)a3 client:(unint64_t)a4 installType:(unint64_t)a5 error:(id *)a6;
+ (id)placeholderFromSerializedPlaceholder:(id)a3 client:(unint64_t)a4 installType:(unint64_t)a5 error:(id *)a6;
+ (id)placeholderFromSerializedPlaceholder:(id)a3 client:(unint64_t)a4 installType:(unint64_t)a5 location:(id)a6 error:(id *)a7;
- (BOOL)_doInitWithSpecification:(id)a3 error:(id *)a4;
- (BOOL)hasEntitlementsPromise;
- (BOOL)hasIconPromise;
- (BOOL)hasIconResourcesPromise;
- (BOOL)hasInfoPlistLoctablePromise;
- (BOOL)hasPlugInPlaceholderPromises;
- (BOOL)launchProhibited:(BOOL *)a3 error:(id *)a4;
- (BOOL)setAppExtensionPlaceholderPromises:(id)a3 error:(id *)a4;
- (BOOL)setConfigurationCompleteWithError:(id *)a3;
- (BOOL)setEntitlementsPromise:(id)a3 error:(id *)a4;
- (BOOL)setIconPromise:(id)a3 error:(id *)a4;
- (BOOL)setIconResourcesPromise:(id)a3 withInfoPlistContent:(id)a4 error:(id *)a5;
- (BOOL)setInfoPlistLocalizations:(id)a3 error:(id *)a4;
- (BOOL)setInfoPlistLoctablePromise:(id)a3 error:(id *)a4;
- (BOOL)setMetadata:(id)a3 error:(id *)a4;
- (BOOL)setPlaceholderAttributes:(id)a3 error:(id *)a4;
- (BOOL)setSinfData:(id)a3 error:(id *)a4;
- (IXPlaceholder)initWithCoder:(id)a3;
- (IXPlaceholder)initWithSeed:(id)a3;
- (IXPlaceholder)initWithSpecification:(id)a3 error:(id *)a4;
- (MIStoreMetadata)metadata;
- (NSString)bundleDirectoryName;
- (NSString)bundleID;
- (NSString)bundleName;
- (id)_initAppExtensionPlaceholderWithBundleURL:(id)a3 bundleName:(id)a4 bundleID:(id)a5 parentPlaceholder:(id)a6 client:(unint64_t)a7 location:(id)a8 error:(id *)a9;
- (id)appExtensionPlaceholderPromisesWithError:(id *)a3;
- (id)entitlementsPromiseWithError:(id *)a3;
- (id)iconPromiseWithError:(id *)a3;
- (id)iconResourcesPromiseWithInfoPlistContent:(id *)a3 error:(id *)a4;
- (id)infoPlistLocalizationsWithError:(id *)a3;
- (id)infoPlistLoctablePromiseWithError:(id *)a3;
- (id)initAppPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 installType:(unint64_t)a5 client:(unint64_t)a6;
- (id)initAppPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 installType:(unint64_t)a5 client:(unint64_t)a6 error:(id *)a7;
- (id)initAppPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 installType:(unint64_t)a5 client:(unint64_t)a6 location:(id)a7 error:(id *)a8;
- (id)initExtensionKitPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 parentPlaceholder:(id)a5 client:(unint64_t)a6 error:(id *)a7;
- (id)initExtensionKitPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 parentPlaceholder:(id)a5 client:(unint64_t)a6 location:(id)a7 error:(id *)a8;
- (id)initPlugInPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 parentPlaceholder:(id)a5 client:(unint64_t)a6 error:(id *)a7;
- (id)initPlugInPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 parentPlaceholder:(id)a5 client:(unint64_t)a6 location:(id)a7 error:(id *)a8;
- (id)metadataWithError:(id *)a3;
- (id)placeholderAttributesWithError:(id *)a3;
- (id)sinfDataWithError:(id *)a3;
- (unint64_t)installType;
- (unint64_t)placeholderType;
- (void)encodeWithCoder:(id)a3;
- (void)setMetadata:(id)a3;
@end

@implementation IXPlaceholder

+ (id)placeholderForRemovableSystemAppWithBundleID:(id)a3 client:(unint64_t)a4 installType:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v21 = 0;
  v11 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifierOfSystemPlaceholder:v10 error:&v21];
  v12 = v21;
  if (v11 && ([v11 isPlaceholder] & 1) != 0)
  {
    v13 = [v11 URL];
    v14 = objc_opt_new();
    v15 = [a1 placeholderForInstallable:v13 client:a4 installType:a5 metadata:0 location:v14 error:a6];

    v16 = v12;
  }

  else
  {
    v17 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      +[IXPlaceholder placeholderForRemovableSystemAppWithBundleID:client:installType:error:];
    }

    v16 = _CreateError("+[IXPlaceholder placeholderForRemovableSystemAppWithBundleID:client:installType:error:]", 74, @"IXErrorDomain", 0xBuLL, v12, 0, @"Failed to get system app placeholder location from LaunchServices for %@", v18, v10);

    if (a6)
    {
      v19 = v16;
      v15 = 0;
      *a6 = v16;
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

+ (id)_pngDataForCGImage:(CGImage *)a3 error:(id *)a4
{
  v6 = [MEMORY[0x1E695DF88] data];
  v7 = [*MEMORY[0x1E6982F28] identifier];
  v8 = CGImageDestinationCreateWithData(v6, v7, 1uLL, 0);

  if (v8)
  {
    CGImageDestinationAddImage(v8, a3, 0);
    if (CGImageDestinationFinalize(v8))
    {
      v9 = [(__CFData *)v6 copy];
      v10 = 0;
    }

    else
    {
      v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        +[IXPlaceholder _pngDataForCGImage:error:];
      }

      v10 = _CreateError("+[IXPlaceholder _pngDataForCGImage:error:]", 105, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to finalize image", v14, v17);
      v9 = 0;
    }

    CFRelease(v8);
    if (a4)
    {
LABEL_12:
      if (!v9)
      {
        v15 = v10;
        *a4 = v10;
      }
    }
  }

  else
  {
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[IXPlaceholder _pngDataForCGImage:error:];
    }

    v10 = _CreateError("+[IXPlaceholder _pngDataForCGImage:error:]", 98, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to create CGImageDestination", v12, v17);
    v9 = 0;
    if (a4)
    {
      goto LABEL_12;
    }
  }

  return v9;
}

+ (id)_iconDataForBundle:(__CFBundle *)a3 atURL:(id)a4 isFromSerializedPlaceholder:(BOOL)a5 error:(id *)a6
{
  v7 = a5;
  v88 = *MEMORY[0x1E69E9840];
  v10 = a4;
  if (v7)
  {
    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(a3, @"CF_MIPlaceholderConstructorVersion");
    if (ValueForInfoDictionaryKey)
    {
      v12 = ValueForInfoDictionaryKey;
      v13 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v83 = "_BundleHasMalformedIconKeys";
        v84 = 2112;
        v85 = v12;
        _os_log_impl(&dword_1DA47A000, v13, OS_LOG_TYPE_DEFAULT, "%s: Using placeholder generated by OS version %@", buf, 0x16u);
      }

      goto LABEL_32;
    }

    v14 = CFBundleGetValueForInfoDictionaryKey(a3, *MEMORY[0x1E695E4E8]);
    objc_opt_class();
    v13 = v14;
    if (objc_opt_isKindOfClass())
    {
      if (v13 && [v13 isEqualToString:@"Executable"])
      {
        v15 = CFBundleGetValueForInfoDictionaryKey(a3, *MEMORY[0x1E695E130]);
        objc_opt_class();
        v16 = v15;
        if (objc_opt_isKindOfClass())
        {
          if (v16 && ([v16 isEqualToString:@"Icon"] & 1) != 0)
          {
            v17 = CFBundleGetValueForInfoDictionaryKey(a3, @"CFBundleIcons");

            if (!v17)
            {
              goto LABEL_33;
            }

            v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v83 = "+[IXPlaceholder _iconDataForBundle:atURL:isFromSerializedPlaceholder:error:]";
              v84 = 2112;
              v85 = a3;
              _os_log_impl(&dword_1DA47A000, v18, OS_LOG_TYPE_DEFAULT, "%s: Attempting malformed icon key fixup for %@", buf, 0x16u);
            }

            v19 = _CFBundleCopyInfoPlistURL();
            if (!v19)
            {
              v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v83 = "_UpdateBundleWithCorrectedIconKeys";
                v84 = 2112;
                v85 = a3;
                _os_log_impl(&dword_1DA47A000, v21, OS_LOG_TYPE_DEFAULT, "%s: Failed to get Info.plist URL from %@", buf, 0x16u);
              }

              goto LABEL_68;
            }

            v74 = 0;
            v20 = [MEMORY[0x1E695DF20] IX_dictionaryWithContentsOfURL:v19 options:0 error:&v74];
            v21 = v74;
            v22 = [v20 mutableCopy];

            if (!v22)
            {
              v60 = IXGetLoggingHandle(kIXLoggingSubsystem);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                v61 = [v19 path];
                *buf = 136315650;
                v83 = "_UpdateBundleWithCorrectedIconKeys";
                v84 = 2112;
                v85 = v61;
                v86 = 2112;
                v87 = v21;
                _os_log_impl(&dword_1DA47A000, v60, OS_LOG_TYPE_DEFAULT, "%s: Failed to fetch info plist from %@ : %@", buf, 0x20u);
              }

              goto LABEL_68;
            }

            v67 = a1;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v23 = [MEMORY[0x1E695DFD8] setWithObjects:{@"CFBundleIcons~iphone", @"CFBundleIcons~ipad", 0}];
            v24 = [v23 countByEnumeratingWithState:&v70 objects:buf count:16];
            if (v24)
            {
              v25 = v24;
              v64 = v21;
              v65 = v19;
              v66 = a6;
              v26 = 0;
              v27 = *v71;
              do
              {
                for (i = 0; i != v25; ++i)
                {
                  if (*v71 != v27)
                  {
                    objc_enumerationMutation(v23);
                  }

                  v29 = *(*(&v70 + 1) + 8 * i);
                  v30 = [v22 objectForKeyedSubscript:v29];

                  if (v30)
                  {
                    [v22 setObject:0 forKeyedSubscript:v29];
                    v26 = 1;
                  }
                }

                v25 = [v23 countByEnumeratingWithState:&v70 objects:buf count:16];
              }

              while (v25);

              v19 = v65;
              a6 = v66;
              v21 = v64;
              if (v26)
              {
                v69 = v64;
                v31 = [v22 IX_writeToURL:v65 format:200 options:268435457 error:&v69];
                v32 = v69;

                if (v31)
                {
                  _CFBundleFlushBundleCaches();
                  v33 = IXGetLoggingHandle(kIXLoggingSubsystem);
                  a1 = v67;
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    *v76 = 136315394;
                    v77 = "_UpdateBundleWithCorrectedIconKeys";
                    v78 = 2112;
                    v79 = a3;
                    _os_log_impl(&dword_1DA47A000, v33, OS_LOG_TYPE_DEFAULT, "%s: Fixed up malformed icon keys in %@", v76, 0x16u);
                  }
                }

                else
                {
                  v33 = IXGetLoggingHandle(kIXLoggingSubsystem);
                  a1 = v67;
                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    v63 = [v65 path];
                    *v76 = 136315650;
                    v77 = "_UpdateBundleWithCorrectedIconKeys";
                    v78 = 2112;
                    v79 = v63;
                    v80 = 2112;
                    v81 = v32;
                    _os_log_impl(&dword_1DA47A000, v33, OS_LOG_TYPE_DEFAULT, "%s: Failed to write updated Info.plist to %@ : %@", v76, 0x20u);
                  }
                }

                v21 = v32;
LABEL_68:

                goto LABEL_33;
              }
            }

            else
            {
            }

            v62 = IXGetLoggingHandle(kIXLoggingSubsystem);
            if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
            {
              *v76 = 136315394;
              v77 = "_UpdateBundleWithCorrectedIconKeys";
              v78 = 2112;
              v79 = a3;
              _os_log_impl(&dword_1DA47A000, v62, OS_LOG_TYPE_DEFAULT, "%s: No offending keys found; skipping icon fixup for %@", v76, 0x16u);
            }

            a1 = v67;
            goto LABEL_68;
          }
        }

        else
        {

          v16 = 0;
        }
      }
    }

    else
    {

      v13 = 0;
    }

LABEL_32:
  }

LABEL_33:
  v34 = objc_autoreleasePoolPush();
  v35 = CFBundleGetIdentifier(a3);
  v36 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithURL:v10];
  if (!v36)
  {
    v50 = [v10 path];
    _CreateError("+[IXPlaceholder _iconDataForBundle:atURL:isFromSerializedPlaceholder:error:]", 230, @"IXErrorDomain", 0xCuLL, 0, 0, @"Failed to initialize an icon for bundle at %@ ", v53, v50);
    v48 = LABEL_45:;
    v39 = 0;
LABEL_46:
    v42 = 0;
    goto LABEL_47;
  }

  v37 = *MEMORY[0x1E69A8A78];
  v38 = [MEMORY[0x1E69A8A30] imageDescriptorNamed:*MEMORY[0x1E69A8A78]];
  if (!v38)
  {
    v50 = [v10 path];
    _CreateError("+[IXPlaceholder _iconDataForBundle:atURL:isFromSerializedPlaceholder:error:]", 236, @"IXErrorDomain", 0xCuLL, 0, 0, @"Failed to create image descriptor with name %@ while creating an icon for bundle at %@", v54, v37);
    goto LABEL_45;
  }

  v39 = v38;
  [v38 setShouldApplyMask:0];
  v75 = v39;
  v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v75 count:1];
  [v36 prepareImagesForImageDescriptors:v40];

  v41 = [v36 prepareImageForDescriptor:v39];
  if (!v41)
  {
    v50 = [v10 path];
    v48 = _CreateError("+[IXPlaceholder _iconDataForBundle:atURL:isFromSerializedPlaceholder:error:]", 247, @"IXErrorDomain", 0xCuLL, 0, 0, @"Failed to create image with descriptor %@ for bundle at %@", v58, v39);
    goto LABEL_46;
  }

  v42 = v41;
  if ([v41 placeholder])
  {
    v43 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      [v10 path];
      v45 = v44 = a6;
      *buf = 136315650;
      v83 = "+[IXPlaceholder _iconDataForBundle:atURL:isFromSerializedPlaceholder:error:]";
      v84 = 2112;
      v85 = v35;
      v86 = 2112;
      v87 = v45;
      _os_log_impl(&dword_1DA47A000, v43, OS_LOG_TYPE_DEFAULT, "%s: IconServices returned a placeholder icon for bundle with identifer %@ located at %@", buf, 0x20u);

      a6 = v44;
    }
  }

  v46 = [v42 CGImage];
  if (!v46)
  {
    v50 = [v10 path];
    v48 = _CreateError("+[IXPlaceholder _iconDataForBundle:atURL:isFromSerializedPlaceholder:error:]", 257, @"IXErrorDomain", 0xCuLL, 0, 0, @"Failed to get CGImageRef from ISImage %@ for bundle at %@", v59, v42);
    goto LABEL_47;
  }

  v68 = 0;
  v47 = [a1 _pngDataForCGImage:v46 error:&v68];
  v48 = v68;
  if (!v47)
  {
    v49 = a6;
    v50 = [v10 path];
    v52 = _CreateError("+[IXPlaceholder _iconDataForBundle:atURL:isFromSerializedPlaceholder:error:]", 263, @"IXErrorDomain", 0xCuLL, v48, 0, @"Failed to create PNG data when constructing icon for bundle at %@", v51, v50);

    v48 = v52;
    a6 = v49;
LABEL_47:

    v47 = 0;
  }

  objc_autoreleasePoolPop(v34);
  if (a6 && !v47)
  {
    v55 = v48;
    *a6 = v48;
  }

  v56 = *MEMORY[0x1E69E9840];

  return v47;
}

+ (id)_iconContentForBundleAtURL:(id)a3 infoPlistIconContent:(id *)a4 withStagingPath:(id)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a5;
  v11 = +[IXFileManager defaultManager];
  v28 = 0;
  v12 = [v11 createTemporaryDirectoryInDirectoryURL:v10 error:&v28];

  v13 = v28;
  v14 = v13;
  if (!v12)
  {
    v16 = 0;
    if (a6)
    {
LABEL_14:
      v24 = v14;
      v21 = 0;
      *a6 = v14;
      goto LABEL_15;
    }

LABEL_8:
    v21 = 0;
LABEL_15:
    v17 = v14;
    goto LABEL_16;
  }

  v27 = v13;
  v15 = IFCaptureIconContent();
  v16 = 0;
  v17 = v27;

  if ((v15 & 1) == 0)
  {
    if (v17)
    {
      v22 = [v9 path];
      v14 = _CreateError("+[IXPlaceholder _iconContentForBundleAtURL:infoPlistIconContent:withStagingPath:error:]", 295, @"IXErrorDomain", 0xCuLL, v17, 0, @"Failed to capture icon content for placeholder from bundle at %@", v23, v22);
    }

    else
    {
      v14 = _CreateError("+[IXPlaceholder _iconContentForBundleAtURL:infoPlistIconContent:withStagingPath:error:]", 293, @"IXErrorDomain", 0x17uLL, 0, 0, @"Bundle has no icon", v18, v26);
    }

LABEL_13:
    [v11 removeItemAtURL:v12 error:0];
    if (a6)
    {
      goto LABEL_14;
    }

    goto LABEL_8;
  }

  if (![v16 count])
  {
    v14 = _CreateError("+[IXPlaceholder _iconContentForBundleAtURL:infoPlistIconContent:withStagingPath:error:]", 302, @"IXErrorDomain", 0x17uLL, 0, 0, @"Bundle has no icon", v19, v26);

    goto LABEL_13;
  }

  if (a4)
  {
    v20 = v16;
    *a4 = v16;
  }

  v21 = v12;
LABEL_16:

  return v21;
}

+ (id)_infoPlistLocalizationDictionaryForBundleURL:(id)a3 error:(id *)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_opt_new();
  v7 = +[IXFileManager defaultManager];
  v43 = 0;
  v8 = [v7 urlsForItemsInDirectoryAtURL:v5 ignoringSymlinks:1 error:&v43];
  v9 = v43;

  if (v8)
  {
    v33 = a4;
    v34 = v5;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v32 = v8;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
    if (!v10)
    {
      goto LABEL_21;
    }

    v11 = v10;
    v12 = *v40;
    v36 = *MEMORY[0x1E696A250];
    v35 = v6;
    while (1)
    {
      v13 = 0;
      v14 = v9;
      do
      {
        if (*v40 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v39 + 1) + 8 * v13);
        v16 = [v15 pathExtension];
        v17 = [v16 isEqualToString:@"lproj"];

        if (!v17)
        {
          v9 = v14;
          goto LABEL_19;
        }

        v18 = [v15 URLByAppendingPathComponent:@"InfoPlist.strings" isDirectory:0];
        v19 = [v15 lastPathComponent];
        v20 = [v19 stringByDeletingPathExtension];

        v38 = v14;
        v21 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v18 error:&v38];
        v9 = v38;

        v22 = v21;
        if (!v21)
        {
          v23 = [v9 domain];
          if (![v23 isEqualToString:v36])
          {

LABEL_15:
            v26 = IXGetLoggingHandle(kIXLoggingSubsystem);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v18 path];
              *buf = 136315650;
              v45 = "+[IXPlaceholder _infoPlistLocalizationDictionaryForBundleURL:error:]";
              v46 = 2112;
              v47 = v27;
              v48 = 2112;
              v49 = v9;
              _os_log_impl(&dword_1DA47A000, v26, OS_LOG_TYPE_DEFAULT, "%s: Failed to read %@: %@", buf, 0x20u);

              v6 = v35;
            }

            v22 = MEMORY[0x1E695E0F8];
            goto LABEL_18;
          }

          v24 = [v9 code];

          v22 = MEMORY[0x1E695E0F8];
          v25 = v24 == 260;
          v6 = v35;
          if (!v25)
          {
            goto LABEL_15;
          }
        }

LABEL_18:
        [v6 setObject:v22 forKeyedSubscript:v20];

        v14 = v9;
LABEL_19:
        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v39 objects:v50 count:16];
      if (!v11)
      {
LABEL_21:

        v28 = [v6 copy];
        a4 = v33;
        v5 = v34;
        v8 = v32;
        if (!v33)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }
  }

  v28 = 0;
  if (!a4)
  {
    goto LABEL_26;
  }

LABEL_24:
  if (!v28)
  {
    v29 = v9;
    *a4 = v9;
  }

LABEL_26:

  v30 = *MEMORY[0x1E69E9840];

  return v28;
}

+ (id)placeholderForInstallable:(id)a3 client:(unint64_t)a4 installType:(unint64_t)a5 metadata:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a3;
  v14 = objc_opt_new();
  v15 = [a1 placeholderForInstallable:v13 client:a4 installType:a5 metadata:v12 location:v14 error:a7];

  return v15;
}

+ (id)_placeholderForInstallable:(id)a3 client:(unint64_t)a4 installType:(unint64_t)a5 metadata:(id)a6 isFromSerializedPlaceholder:(BOOL)a7 location:(id)a8 error:(id *)a9
{
  v81 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v17 = v14;
  v18 = v15;
  v69 = 0;
  v19 = +[IXFileManager defaultManager];
  v68 = 0;
  LODWORD(v14) = [v19 itemExistsAtURL:v17 isDirectory:&v69 error:&v68];
  v20 = v68;
  if (!v14)
  {
    v25 = 0;
    v21 = 0;
    v24 = v18;
    v26 = v17;
    v27 = a9;
    if (!a9)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v62 = v16;
  if ((v69 & 1) == 0)
  {
    v28 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder _placeholderForInstallable:v17 client:? installType:? metadata:? isFromSerializedPlaceholder:? location:? error:?];
    }

    v29 = [v17 path];
    v23 = _CreateError("+[IXPlaceholder _placeholderForInstallable:client:installType:metadata:isFromSerializedPlaceholder:location:error:]", 419, @"IXErrorDomain", 4uLL, 0, 0, @"Item at %@ is unexpectedly a file", v30, v29);

    v25 = 0;
    v21 = 0;
    goto LABEL_12;
  }

  v60 = a1;
  v21 = [v17 URLByAppendingPathComponent:@"Payload" isDirectory:1];
  v67 = v20;
  v22 = [v19 itemExistsAtURL:v21 isDirectory:&v69 error:&v67];
  v23 = v67;

  if (v22)
  {
    if (v69 == 1)
    {
      v57 = a4;
      if (v18)
      {
        v56 = a5;
        v24 = v18;
        goto LABEL_34;
      }

      v20 = [v17 URLByAppendingPathComponent:@"iTunesMetadata.plist" isDirectory:0];
      v66 = v23;
      v40 = [v19 itemExistsAtURL:v20 error:&v66];
      v41 = v66;

      if (v40)
      {
        v65 = v41;
        v25 = [MEMORY[0x1E69A8DB8] metadataFromPlistAtURL:v20 error:&v65];
        v23 = v65;

        if (v25)
        {
          v56 = a5;
          v41 = v23;
LABEL_33:

          v23 = v41;
          v24 = v25;
LABEL_34:
          v26 = v17;
          v44 = +[IXFileManager defaultManager];
          v74 = 0;
          v45 = [v44 urlsForItemsInDirectoryAtURL:v26 ignoringSymlinks:1 error:&v74];
          v55 = v74;

          if (v45)
          {
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            obj = v45;
            v46 = [obj countByEnumeratingWithState:&v70 objects:buf count:16];
            if (v46)
            {
              v47 = v46;
              v54 = v45;
              v59 = *v71;
              while (2)
              {
                for (i = 0; i != v47; ++i)
                {
                  if (*v71 != v59)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v49 = [*(*(&v70 + 1) + 8 * i) lastPathComponent];
                  if ([v49 hasPrefix:@"com.apple.deltainstallcommands."] & 1) != 0 || (objc_msgSend(v49, "hasPrefix:", @"com.apple.parallelpatchinfo.") & 1) != 0 || (objc_msgSend(v49, "hasPrefix:", @"com.apple.parallelpatcharchive."))
                  {

                    v35 = 1;
                    goto LABEL_47;
                  }
                }

                v47 = [obj countByEnumeratingWithState:&v70 objects:buf count:16];
                if (v47)
                {
                  continue;
                }

                break;
              }

              v35 = 0;
LABEL_47:
              v45 = v54;
            }

            else
            {
              v35 = 0;
            }

            v50 = obj;
          }

          else
          {
            v50 = IXGetLoggingHandle(kIXLoggingSubsystem);
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              [v26 path];
              v52 = v51 = v50;
              *buf = 136315650;
              v76 = "_DirectoryContainsDeltaManifest";
              v77 = 2112;
              v78 = v52;
              v79 = 2112;
              v80 = v55;
              _os_log_impl(&dword_1DA47A000, v51, OS_LOG_TYPE_DEFAULT, "%s: Failed to get contents of %@ : %@", buf, 0x20u);

              v50 = v51;
            }

            v35 = 0;
          }

          v64 = v23;
          v25 = AppURLFromExtractedPayloadDir(v21, &v64);
          v20 = v64;

          if (v25)
          {

            v23 = v20;
            v26 = v25;
            goto LABEL_55;
          }

LABEL_56:
          v16 = v62;
          v27 = a9;
          if (!a9)
          {
            goto LABEL_17;
          }

          goto LABEL_15;
        }

        v24 = 0;
      }

      else
      {
        v42 = [v41 domain];
        if ([v42 isEqualToString:*MEMORY[0x1E696A798]])
        {
          v56 = a5;
          v43 = [v41 code];

          v25 = 0;
          if (v43 == 2)
          {
            goto LABEL_33;
          }

          v23 = v41;
          v24 = 0;
        }

        else
        {

          v25 = 0;
          v24 = 0;
          v23 = v41;
        }
      }

LABEL_13:
      v26 = v17;
      goto LABEL_14;
    }

    v36 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder _placeholderForInstallable:v21 client:? installType:? metadata:? isFromSerializedPlaceholder:? location:? error:?];
    }

    v37 = [v21 path];
    v39 = _CreateError("+[IXPlaceholder _placeholderForInstallable:client:installType:metadata:isFromSerializedPlaceholder:location:error:]", 451, @"IXErrorDomain", 4uLL, 0, 0, @"Item at %@ is a file", v38, v37);

    v25 = 0;
    v20 = v23;
    v23 = v39;
LABEL_12:
    v24 = v18;
    goto LABEL_13;
  }

  v20 = [v23 domain];
  if (![v20 isEqualToString:*MEMORY[0x1E696A798]])
  {
    v25 = 0;
    goto LABEL_12;
  }

  v34 = [v23 code];

  if (v34 != 2)
  {
    v25 = 0;
    v20 = v23;
    v24 = v18;
    v26 = v17;
    goto LABEL_56;
  }

  v56 = a5;
  v57 = a4;
  v35 = 0;
  v24 = v18;
  v26 = v17;
  v20 = v23;
LABEL_55:
  v63 = v23;
  BYTE1(v53) = a7;
  LOBYTE(v53) = v35;
  v25 = [v60 _placeholderForBundle:v26 client:v57 withParent:0 installType:v56 metadata:v24 placeholderType:1 mayBeDeltaPackage:v53 isFromSerializedPlaceholder:v62 location:&v63 error:?];
  v23 = v63;
LABEL_14:
  v27 = a9;

  v20 = v23;
  v16 = v62;
  if (!a9)
  {
    goto LABEL_17;
  }

LABEL_15:
  if (!v25)
  {
    v31 = v20;
    *v27 = v20;
  }

LABEL_17:

  v32 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)placeholderFromSerializedPlaceholder:(id)a3 client:(unint64_t)a4 installType:(unint64_t)a5 error:(id *)a6
{
  v10 = a3;
  v11 = objc_opt_new();
  v12 = [a1 placeholderFromSerializedPlaceholder:v10 client:a4 installType:a5 location:v11 error:a6];

  return v12;
}

+ (id)placeholderFromSerializedPlaceholder:(id)a3 client:(unint64_t)a4 installType:(unint64_t)a5 location:(id)a6 error:(id *)a7
{
  v51 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  v13 = +[IXFileManager defaultManager];
  v42 = 0;
  v41 = 0;
  v14 = [v13 itemExistsAtURL:v11 isDirectory:&v42 error:&v41];
  v15 = v41;
  v16 = v15;
  if (!v14)
  {
    goto LABEL_13;
  }

  if (v42 == 1)
  {
    v17 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder placeholderFromSerializedPlaceholder:v11 client:? installType:? location:? error:?];
    }

    v18 = [v11 path];
    v20 = _CreateError("+[IXPlaceholder placeholderFromSerializedPlaceholder:client:installType:location:error:]", 484, @"IXErrorDomain", 0x2AuLL, 0, 0, @"Expected the serialized placeholder at %@ to be an IPA", v19, v18);

    v21 = 0;
    v22 = 0;
    v16 = v20;
    if (!a7)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (!v22)
    {
      v31 = v16;
      *a7 = v16;
    }

    goto LABEL_21;
  }

  v40 = v15;
  v21 = [v13 createTemporaryExtractionDirectoryWithError:&v40];
  v23 = v40;

  if (!v21)
  {
    v26 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      +[IXPlaceholder placeholderFromSerializedPlaceholder:client:installType:location:error:];
    }

    v16 = _CreateError("+[IXPlaceholder placeholderFromSerializedPlaceholder:client:installType:location:error:]", 490, @"IXErrorDomain", 0x2AuLL, v23, 0, @"Failed to create directory for extraction", v27, v36);

LABEL_13:
    v21 = 0;
    v22 = 0;
    if (!a7)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v39 = v23;
  v24 = [MEMORY[0x1E69B1980] extractZipArchiveAtURL:v11 toURL:v21 withError:&v39];
  v25 = v39;

  if (v24)
  {
    v38 = v25;
    v22 = [IXPlaceholder _placeholderForInstallable:v21 client:a4 installType:a5 metadata:0 isFromSerializedPlaceholder:1 location:v12 error:&v38];
    v16 = v38;
  }

  else
  {
    v28 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v34 = [v11 path];
      v35 = [v21 path];
      *buf = 136315906;
      v44 = "+[IXPlaceholder placeholderFromSerializedPlaceholder:client:installType:location:error:]";
      v45 = 2112;
      v46 = v34;
      v47 = 2112;
      v48 = v35;
      v49 = 2112;
      v50 = v25;
      _os_log_error_impl(&dword_1DA47A000, v28, OS_LOG_TYPE_ERROR, "%s: Failed to extract %@ to %@ : %@", buf, 0x2Au);
    }

    v29 = [v11 path];
    v37 = [v21 path];
    v16 = _CreateError("+[IXPlaceholder placeholderFromSerializedPlaceholder:client:installType:location:error:]", 496, @"IXErrorDomain", 0x2AuLL, v25, 0, @"Failed to extract %@ to %@", v30, v29);

    v22 = 0;
  }

  [v13 removeItemAtURL:v21 error:0];
  if (a7)
  {
    goto LABEL_19;
  }

LABEL_21:

  v32 = *MEMORY[0x1E69E9840];

  return v22;
}

+ (BOOL)_setEntitlementsFromBundleExecutableURL:(id)a3 withBundleID:(id)a4 client:(unint64_t)a5 onPlaceholder:(id)a6 location:(id)a7 error:(id *)a8
{
  v63 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = v12;
  *staticCode = 0;
  information = 0;
  if (SecStaticCodeCreateWithPath(v16, 0, staticCode))
  {
    v17 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder _setEntitlementsFromBundleExecutableURL:v16 withBundleID:? client:? onPlaceholder:? location:? error:?];
    }

    v18 = [v16 path];
    _CreateError("_IXCopyEntitlementsForPath", 614, @"IXErrorDomain", 0x2BuLL, 0, 0, @"Failed to construct SecStaticCode for %@ : %d", v19, v18);
    v22 = LABEL_9:;

    Copy = 0;
    goto LABEL_10;
  }

  if (SecCodeCopySigningInformation(*staticCode, 4u, &information))
  {
    v20 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder _setEntitlementsFromBundleExecutableURL:v16 withBundleID:? client:? onPlaceholder:? location:? error:?];
    }

    v18 = [v16 path];
    _CreateError("_IXCopyEntitlementsForPath", 620, @"IXErrorDomain", 0x2BuLL, 0, 0, @"SecCodeCopySigningInformation for %@ returned error %d", v21, v18);
    goto LABEL_9;
  }

  Value = CFDictionaryGetValue(information, *MEMORY[0x1E697B068]);
  if (Value)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], Value);
  }

  else
  {
    Copy = CFDictionaryCreate(0, 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v44 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [IXPlaceholder _setEntitlementsFromBundleExecutableURL:v16 withBundleID:v44 client:? onPlaceholder:? location:? error:?];
    }
  }

  v22 = 0;
LABEL_10:
  if (*staticCode)
  {
    CFRelease(*staticCode);
    *staticCode = 0;
  }

  if (information)
  {
    CFRelease(information);
    information = 0;
  }

  if (Copy)
  {
    v24 = 0;
  }

  else
  {
    v25 = v22;
    v24 = v22;
  }

  v26 = v24;
  if (!Copy)
  {
    v34 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = [v16 path];
      *staticCode = 136315906;
      *&staticCode[4] = "+[IXPlaceholder _setEntitlementsFromBundleExecutableURL:withBundleID:client:onPlaceholder:location:error:]";
      v57 = 2112;
      v58 = v13;
      v59 = 2112;
      v60 = v35;
      v61 = 2112;
      v62 = v26;
      _os_log_error_impl(&dword_1DA47A000, v34, OS_LOG_TYPE_ERROR, "%s: Failed to fetch entitlements for %@ from %@ : %@", staticCode, 0x2Au);
    }

    goto LABEL_26;
  }

  if (![(__CFDictionary *)Copy count])
  {
    v34 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *staticCode = 136315650;
      *&staticCode[4] = "+[IXPlaceholder _setEntitlementsFromBundleExecutableURL:withBundleID:client:onPlaceholder:location:error:]";
      v57 = 2112;
      v58 = v13;
      v59 = 2112;
      v60 = v16;
      _os_log_impl(&dword_1DA47A000, v34, OS_LOG_TYPE_DEFAULT, "%s: Executable for %@ at %@ had no entitlements", staticCode, 0x20u);
    }

LABEL_26:

    v29 = 0;
    v33 = 1;
    goto LABEL_46;
  }

  v27 = [IXPromisedInMemoryDictionary alloc];
  v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entitlements Promise for %@", v13];
  v29 = [(IXPromisedInMemoryDictionary *)v27 initWithName:v28 client:a5 dictionary:Copy location:v15];

  if (v29)
  {
    v50 = v15;
    v52 = v26;
    v30 = v14;
    v31 = [v14 setEntitlementsPromise:v29 error:&v52];
    v32 = v52;

    if (v31)
    {

      v29 = 0;
      v33 = 1;
      v26 = v32;
      v14 = v30;
      v15 = v50;
      goto LABEL_46;
    }

    v41 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      +[IXPlaceholder _setEntitlementsFromBundleExecutableURL:withBundleID:client:onPlaceholder:location:error:];
    }

    v38 = _CreateError("+[IXPlaceholder _setEntitlementsFromBundleExecutableURL:withBundleID:client:onPlaceholder:location:error:]", 685, @"IXErrorDomain", 2uLL, v32, 0, @"Failed to set alternative entitlements promise for %@", v42, v13);

    v39 = a8;
    if (v38)
    {
      v54 = *MEMORY[0x1E696AA08];
      v55 = v38;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    }

    else
    {
      v26 = 0;
    }

    v14 = v30;
    v45 = _CreateError("+[IXPlaceholder _setEntitlementsFromBundleExecutableURL:withBundleID:client:onPlaceholder:location:error:]", 699, @"IXErrorDomain", 1uLL, 0, v26, @"An error occurred before the entitlements promise could be set on the placeholder.", v43, v49);
    [(IXDataPromise *)v29 cancelForReason:v45 client:15 error:0];

    v15 = v50;
  }

  else
  {
    v36 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      +[IXPlaceholder _setEntitlementsFromBundleExecutableURL:withBundleID:client:onPlaceholder:location:error:];
    }

    v38 = _CreateError("+[IXPlaceholder _setEntitlementsFromBundleExecutableURL:withBundleID:client:onPlaceholder:location:error:]", 680, @"IXErrorDomain", 2uLL, 0, 0, @"Failed to create IXPromisedInMemoryDictionary for entitlements for %@", v37, v13);
    v39 = a8;
  }

  if (v39)
  {
    v46 = v38;
    v33 = 0;
    *v39 = v38;
  }

  else
  {
    v33 = 0;
  }

  v26 = v38;
LABEL_46:

  v47 = *MEMORY[0x1E69E9840];
  return v33;
}

+ (id)_placeholderForBundle:(id)a3 client:(unint64_t)a4 withParent:(id)a5 installType:(unint64_t)a6 metadata:(id)a7 placeholderType:(unint64_t)a8 mayBeDeltaPackage:(BOOL)a9 isFromSerializedPlaceholder:(BOOL)a10 location:(id)a11 error:(id *)a12
{
  v271 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v213 = a5;
  v16 = a7;
  v17 = a11;
  v18 = objc_opt_new();
  v19 = +[IXFileManager defaultManager];
  v20 = *MEMORY[0x1E695E480];
  Unique = _CFBundleCreateUnique();
  v214 = v15;
  if (Unique)
  {
    v22 = Unique;
    v23 = CFBundleGetIdentifier(Unique);
    v24 = v23;
    if (!v23)
    {
      cf = v22;
      v35 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        [IXPlaceholder _placeholderForBundle:v15 client:? withParent:? installType:? metadata:? placeholderType:? mayBeDeltaPackage:? isFromSerializedPlaceholder:? location:? error:?];
      }

      v36 = [v15 path];
      v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 752, @"IXErrorDomain", 0xDuLL, 0, 0, @"Failed to get bundle ID from %@", v37, v36);

      v38 = 0;
      v219 = 0;
      v221 = 0;
      v34 = 0;
      v210 = 0;
      v211 = 0;
      v216 = 0;
      v218 = 0;
      v33 = 0;
      v212 = 0;
      v24 = 0;
      goto LABEL_22;
    }

    if ([v23 containsString:@"/"])
    {
      cf = v22;
      v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
      }

      _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 757, @"IXErrorDomain", 0x2CuLL, 0, 0, @"Bundle identifier %@ contains /, which is not allowed", v26, v24);
      v30 = LABEL_21:;
      v38 = 0;
      v219 = 0;
      v221 = 0;
      v34 = 0;
      v210 = 0;
      v211 = 0;
      v216 = 0;
      v218 = 0;
      v33 = 0;
      v212 = 0;
LABEL_22:
      v32 = 0;
      goto LABEL_23;
    }

    if (![v24 length])
    {
      cf = v22;
      v43 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
      }

      _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 762, @"IXErrorDomain", 0x2CuLL, 0, 0, @"Bundle identifier is an empty string, which is not allowed", v44, v190);
      goto LABEL_21;
    }

    v197 = v19;
    v208 = v24;
    if (a9)
    {
      v257 = 0;
      v39 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v24 allowPlaceholder:0 error:&v257];
      v40 = v257;
      if (v39)
      {
        CFRelease(v22);
        v15 = [v39 URL];

        v41 = _CFBundleCreateUnique();
        if (v41)
        {
          v22 = v41;
          v42 = v17;
          v196 = v16;

          goto LABEL_40;
        }

        v84 = v17;
        v85 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          [IXPlaceholder _placeholderForBundle:v15 client:? withParent:? installType:? metadata:? placeholderType:? mayBeDeltaPackage:? isFromSerializedPlaceholder:? location:? error:?];
        }

        v86 = [v15 path];
        v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 774, @"IXErrorDomain", 0xAuLL, 0, 0, @"Failed to create CFBundle from %@", v87, v86);

        cf = 0;
        v214 = v15;
        v17 = v84;
      }

      else
      {
        cf = v22;
        v68 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
        {
          +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
        }

        v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 779, @"IXErrorDomain", 0x39uLL, v40, 0, @"Failed to find an existing app for delta package with bundle ID %@", v69, v208);
      }

      v32 = 0;
      v211 = 0;
      v212 = 0;
      v210 = 0;
      v33 = 0;
      v34 = 0;
      v221 = 0;
      v38 = 0;
LABEL_76:
      v19 = v197;
      v24 = v208;
      goto LABEL_77;
    }

    v42 = v17;
    v196 = v16;
    v40 = 0;
LABEL_40:
    v256 = v40;
    v58 = [[IXPlaceholderAttributes alloc] initWithInfoPlistFromBundle:v22 error:&v256];
    v59 = v256;

    v214 = v15;
    v207 = v58;
    cf = v22;
    if (!v58)
    {
      v62 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
      }

      v63 = [v15 path];
      v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 787, @"IXErrorDomain", 2uLL, v59, 0, @"Failed create placeholder attributes from %@", v64, v63);

      v38 = 0;
      v219 = 0;
      v221 = 0;
      v34 = 0;
      v210 = 0;
      v211 = 0;
      v216 = 0;
      v218 = 0;
      v33 = 0;
      v212 = 0;
      v16 = v196;
      v17 = v42;
      v32 = 0;
      goto LABEL_46;
    }

    ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v22, *MEMORY[0x1E695E120]);
    objc_opt_class();
    v61 = ValueForInfoDictionaryKey;
    if (objc_opt_isKindOfClass())
    {
      v34 = v61;
    }

    else
    {
      v34 = 0;
    }

    v17 = v42;

    if (!v34 || ![v34 length])
    {
      v65 = CFBundleGetValueForInfoDictionaryKey(v22, *MEMORY[0x1E695E4F8]);
      objc_opt_class();
      v66 = v65;
      if (objc_opt_isKindOfClass())
      {
        v67 = v66;
      }

      else
      {
        v67 = 0;
      }

      if (v67 && [v67 length])
      {
        v34 = v67;
      }

      else
      {
        v70 = [v15 URLByDeletingPathExtension];
        v34 = [v70 lastPathComponent];
      }

      v17 = v42;
    }

    v19 = v197;
    if (v213)
    {
      v253 = v59;
      v190 = &v253;
      v71 = v15;
      v72 = [[IXPlaceholder alloc] _initAppExtensionPlaceholderWithBundleURL:v15 bundleName:v34 bundleID:v208 parentPlaceholder:v213 client:a4 location:v17 error:?];
      v30 = v253;

      if (!v72)
      {
        v38 = 0;
        v219 = 0;
        v221 = 0;
        v210 = 0;
        v211 = 0;
        v216 = 0;
        v218 = 0;
        v212 = 0;
        v32 = 0;
        v16 = v196;
LABEL_85:
        v33 = v207;
        v24 = v208;
        goto LABEL_23;
      }

      v33 = v207;
      [(IXPlaceholderAttributes *)v207 setLaunchProhibited:0];
LABEL_67:
      v252 = v30;
      v78 = [(IXPlaceholder *)v72 setPlaceholderAttributes:v33 error:&v252];
      v79 = v252;

      v221 = v72;
      if (!v78)
      {
        v88 = IXGetLoggingHandle(kIXLoggingSubsystem);
        v24 = v208;
        if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
        {
          +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
        }

        v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 834, @"IXErrorDomain", 2uLL, v79, 0, @"Failed to set placeholder attributes %@", v89, v208);

        v38 = 0;
        v210 = 0;
        v211 = 0;
        v218 = 0;
        v219 = 0;
        v216 = 0;
        v212 = 0;
        v32 = 0;
        v16 = v196;
        goto LABEL_82;
      }

      v80 = cf;
      v81 = CFBundleCopyExecutableURL(cf);
      v82 = [v71 URLByAppendingPathComponent:@"PlaceholderEntitlements.plist" isDirectory:0];
      v211 = v81;
      v212 = v82;
      if (v81 && [v197 itemExistsAtURL:v81])
      {
        v251 = v79;
        v83 = [a1 _setEntitlementsFromBundleExecutableURL:v81 withBundleID:v208 client:a4 onPlaceholder:v72 location:v17 error:&v251];
        v30 = v251;

        if ((v83 & 1) == 0)
        {
          v38 = 0;
          v218 = 0;
          v219 = 0;
          v216 = 0;
          v210 = 0;
          v32 = 0;
          v16 = v196;
          goto LABEL_46;
        }

        v205 = v17;
        v79 = v30;
        v80 = cf;
LABEL_104:
        v105 = [MEMORY[0x1E69A8D40] fullFidelityIconsEnabled];
        v106 = IXGetLoggingHandle(kIXLoggingSubsystem);
        v107 = os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT);
        v201 = v34;
        if (v105)
        {
          if (v107)
          {
            v108 = [v71 path];
            *buf = 136315650;
            v264 = "+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]";
            v265 = 2112;
            v266 = v208;
            v267 = 2112;
            v268 = v108;
            _os_log_impl(&dword_1DA47A000, v106, OS_LOG_TYPE_DEFAULT, "%s: Using full fidelity icons for %@ at %@", buf, 0x20u);
          }

          v109 = v71;

          v110 = [IXPromisedTransferToPath alloc];
          v190 = v208;
          v111 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Icon resources for %@"];
          v247 = v79;
          v17 = v205;
          v32 = [(IXPromisedTransferToPath *)v110 initWithName:v111 client:a4 transferPath:0 diskSpaceNeeded:0 location:v205 error:&v247];
          v112 = v247;

          if (v32)
          {
            v246 = 0;
            v113 = [(IXOwnedDataPromise *)v32 stagingBaseDir];
            v245 = v112;
            v114 = [a1 _iconContentForBundleAtURL:v109 infoPlistIconContent:&v246 withStagingPath:v113 error:&v245];
            v115 = v246;
            v116 = v245;

            if (v114)
            {
              [(IXPromisedTransferToPath *)v32 setTransferPath:v114];
              [(IXPromisedTransferToPath *)v32 setComplete:1];
              v244 = v116;
              v117 = [(IXPlaceholder *)v72 setIconResourcesPromise:v32 withInfoPlistContent:v115 error:&v244];
              v118 = v244;

              if (!v117)
              {
                v119 = IXGetLoggingHandle(kIXLoggingSubsystem);
                v17 = v205;
                if (os_log_type_enabled(v119, OS_LOG_TYPE_ERROR))
                {
                  +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
                }

                v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 896, @"IXErrorDomain", 2uLL, v118, 0, @"Failed to set icon resources promise for %@", v120, v208);

                v24 = v208;
                v38 = 0;
                v218 = 0;
                v219 = 0;
                v216 = 0;
                v210 = 0;
                v32 = 0;
                v16 = v196;
                v19 = v197;
                goto LABEL_137;
              }

              goto LABEL_143;
            }

            v130 = [(IXPromisedTransferToPath *)v116 domain];
            if ([v130 isEqualToString:@"IXErrorDomain"])
            {
              v131 = [(IXPromisedTransferToPath *)v116 code];

              v132 = v214;
              if (v131 == 23)
              {
                v133 = [v214 path];
                _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 901, @"IXErrorDomain", 1uLL, 0, 0, @"No icon found for bundle %@ at %@; skipping icon resources promise", v134, v208);
                v140 = LABEL_141:;

                v243 = v140;
                [(IXDataPromise *)v32 cancelForReason:v140 client:15 error:&v243];
                v141 = v243;

LABEL_142:
                v118 = 0;
LABEL_143:

                v19 = v197;
                goto LABEL_144;
              }
            }

            else
            {

              v132 = v109;
            }

            v133 = [v132 path];
            _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 903, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to get icon content for bundle with identifier %@ at %@ : %@; skipping icon resources promise", v139, v208);
            goto LABEL_141;
          }

          v30 = v112;
          v38 = 0;
          v218 = 0;
          v219 = 0;
          v216 = 0;
          v210 = 0;
          v16 = v196;
          v19 = v197;
        }

        else
        {
          if (v107)
          {
            v121 = [v71 path];
            *buf = 136315650;
            v264 = "+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]";
            v265 = 2112;
            v266 = v208;
            v267 = 2112;
            v268 = v121;
            _os_log_impl(&dword_1DA47A000, v106, OS_LOG_TYPE_DEFAULT, "%s: Using single PNG icon for %@ at %@", buf, 0x20u);
          }

          v242 = v79;
          v115 = [a1 _iconDataForBundle:v80 atURL:v71 isFromSerializedPlaceholder:a10 error:&v242];
          v122 = v71;
          v32 = v242;

          if (!v115)
          {
            v114 = IXGetLoggingHandle(kIXLoggingSubsystem);
            if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
            {
              v127 = [v122 path];
              *buf = 136315906;
              v264 = "+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]";
              v265 = 2112;
              v266 = v208;
              v267 = 2112;
              v268 = v127;
              v269 = 2112;
              v270 = v32;
              _os_log_error_impl(&dword_1DA47A000, v114, OS_LOG_TYPE_ERROR, "%s: Failed to get icon data for bundle with identifier %@ at %@ : %@", buf, 0x2Au);
            }

            goto LABEL_142;
          }

          v123 = [IXPromisedInMemoryData alloc];
          v190 = v208;
          v124 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Icon for %@"];
          v125 = [(IXPromisedInMemoryData *)v123 initWithName:v124 client:a4 data:v115 location:v205];

          v219 = v125;
          if (v125)
          {
            v241 = v32;
            v126 = [(IXPlaceholder *)v72 setIconPromise:v125 error:&v241];
            v118 = v241;

            v19 = v197;
            if (v126)
            {
              v32 = v219;
LABEL_144:

              v32 = [v214 URLByAppendingPathComponent:@"InfoPlist.loctable" isDirectory:0];
              if (![v19 itemExistsAtURL:v32])
              {
                v17 = v205;
                goto LABEL_149;
              }

              v142 = [v19 diskUsageForURL:v32];
              v143 = [IXPromisedTransferToPath alloc];
              v144 = MEMORY[0x1E696AEC0];
              v190 = [v214 path];
              v145 = [v144 stringWithFormat:@"Loctable Promise for %@"];
              v240 = v118;
              v146 = [(IXPromisedTransferToPath *)v143 initWithName:v145 client:a4 transferPath:v32 diskSpaceNeeded:v142 location:v205 error:&v240];
              v30 = v240;

              if (v146)
              {
                [(IXPromisedTransferToPath *)v146 setShouldCopy:1];
                [(IXPromisedTransferToPath *)v146 setComplete:1];
                v239 = v30;
                v147 = [(IXPlaceholder *)v72 setInfoPlistLoctablePromise:v146 error:&v239];
                v118 = v239;

                if (v147)
                {

                  v17 = v205;
                  v19 = v197;
LABEL_149:
                  v33 = v207;
                  v238 = v118;
                  v148 = [a1 _infoPlistLocalizationDictionaryForBundleURL:v214 error:&v238];
                  v149 = v238;

                  v150 = v148;
                  v16 = v196;
                  if (v150)
                  {
                    v237 = v149;
                    v210 = v150;
                    v151 = [(IXPlaceholder *)v221 setInfoPlistLocalizations:v150 error:&v237];
                    v30 = v237;

                    if (v151)
                    {
                      if (!v213)
                      {
                        v199 = v32;
                        v235 = 0u;
                        v236 = 0u;
                        v233 = 0u;
                        v234 = 0u;
                        v159 = v214;
                        v192 = [&unk_1F56076D0 countByEnumeratingWithState:&v233 objects:v262 count:16];
                        if (v192)
                        {
                          v193 = *v234;
                          v160 = v197;
                          v206 = v17;
                          while (2)
                          {
                            v161 = 0;
                            do
                            {
                              if (*v234 != v193)
                              {
                                objc_enumerationMutation(&unk_1F56076D0);
                              }

                              v194 = v161;
                              v162 = [*(*(&v233 + 1) + 8 * v161) unsignedIntegerValue];
                              if (v162 == 3)
                              {
                                v163 = @"Extensions";
                              }

                              else
                              {
                                v163 = 0;
                              }

                              v220 = v162;
                              if (v162 == 2)
                              {
                                v164 = @"PlugIns";
                              }

                              else
                              {
                                v164 = v163;
                              }

                              v165 = [v159 URLByAppendingPathComponent:v164 isDirectory:1];
                              buf[0] = 0;
                              if ([v160 itemExistsAtURL:v165 isDirectory:buf error:0] && buf[0] == 1)
                              {
                                v232 = v30;
                                v166 = [v160 urlsForItemsInDirectoryAtURL:v165 ignoringSymlinks:1 error:&v232];
                                v167 = v232;

                                v191 = v165;
                                if (!v166)
                                {
                                  v188 = IXGetLoggingHandle(kIXLoggingSubsystem);
                                  if (os_log_type_enabled(v188, OS_LOG_TYPE_ERROR))
                                  {
                                    +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
                                  }

                                  v185 = [v165 path];
                                  v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 973, @"IXErrorDomain", 2uLL, v167, 0, @"Failed to get URLs of items at %@", v189, v185);
LABEL_202:
                                  v17 = v206;
                                  v19 = v197;

                                  v38 = 0;
                                  v24 = v208;
                                  goto LABEL_203;
                                }

                                v230 = 0u;
                                v231 = 0u;
                                v228 = 0u;
                                v229 = 0u;
                                obj = v166;
                                v168 = [(IXPromisedTransferToPath *)obj countByEnumeratingWithState:&v228 objects:v261 count:16];
                                if (v168)
                                {
                                  v169 = v168;
                                  v170 = *v229;
                                  while (2)
                                  {
                                    for (i = 0; i != v169; ++i)
                                    {
                                      if (*v229 != v170)
                                      {
                                        objc_enumerationMutation(obj);
                                      }

                                      v172 = *(*(&v228 + 1) + 8 * i);
                                      v173 = [v172 pathExtension];
                                      v174 = [v173 isEqualToString:@"appex"];

                                      if (v174)
                                      {
                                        v227[1] = v167;
                                        BYTE1(v190) = a10;
                                        LOBYTE(v190) = 0;
                                        v175 = [a1 _placeholderForBundle:v172 client:a4 withParent:v221 installType:0 metadata:0 placeholderType:v220 mayBeDeltaPackage:? isFromSerializedPlaceholder:? location:? error:?];
                                        v176 = v167;

                                        if (!v175)
                                        {
                                          v182 = IXGetLoggingHandle(kIXLoggingSubsystem);
                                          if (os_log_type_enabled(v182, OS_LOG_TYPE_ERROR))
                                          {
                                            +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
                                          }

                                          v183 = [v172 path];
                                          v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 994, @"IXErrorDomain", 2uLL, v176, 0, @"Failed to create app extension placeholder for %@", v184, v183);

                                          v185 = obj;
                                          v167 = obj;
                                          goto LABEL_202;
                                        }

                                        [v18 addObject:v175];

                                        v167 = v176;
                                      }

                                      v159 = v214;
                                    }

                                    v169 = [(IXPromisedTransferToPath *)obj countByEnumeratingWithState:&v228 objects:v261 count:16];
                                    if (v169)
                                    {
                                      continue;
                                    }

                                    break;
                                  }
                                }

                                v30 = v167;
                                v17 = v206;
                                v160 = v197;
                                v165 = v191;
                              }

                              v161 = v194 + 1;
                            }

                            while (v194 + 1 != v192);
                            v192 = [&unk_1F56076D0 countByEnumeratingWithState:&v233 objects:v262 count:16];
                            if (v192)
                            {
                              continue;
                            }

                            break;
                          }
                        }

                        if ([v18 count])
                        {
                          v227[0] = v30;
                          v177 = [(IXPlaceholder *)v221 setAppExtensionPlaceholderPromises:v18 error:v227];
                          v178 = v227[0];

                          if (!v177)
                          {
                            v186 = IXGetLoggingHandle(kIXLoggingSubsystem);
                            if (os_log_type_enabled(v186, OS_LOG_TYPE_ERROR))
                            {
                              +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
                            }

                            v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 1004, @"IXErrorDomain", 2uLL, v178, 0, @"Failed to set app extension placeholders for %@", v187, v208);

                            v24 = v208;
                            v38 = 0;
                            v19 = v197;
LABEL_203:
                            v33 = v207;
                            v32 = v199;
                            v34 = v201;
                            goto LABEL_77;
                          }

                          v30 = v178;
                        }

                        v18 = 0;
                        v33 = v207;
                        v32 = v199;
                        v34 = v201;
                      }

                      v152 = v30;
                      v226 = v30;
                      v153 = [(IXPlaceholder *)v221 setConfigurationCompleteWithError:&v226];
                      v30 = v226;

                      if (v153)
                      {
                        v38 = v221;
                        v221 = v38;
                        goto LABEL_76;
                      }

                      v179 = IXGetLoggingHandle(kIXLoggingSubsystem);
                      v19 = v197;
                      if (os_log_type_enabled(v179, OS_LOG_TYPE_ERROR))
                      {
                        +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
                      }

                      v181 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 1011, @"IXErrorDomain", 2uLL, v30, 0, @"Failed to set configuration complete for %@", v180, v208);

                      v38 = 0;
                      v30 = v181;
                      v24 = v208;
                      v33 = v207;
LABEL_77:
                      v218 = 0;
                      v219 = 0;
                      v216 = 0;
                      if (!cf)
                      {
LABEL_24:
                        if (v38)
                        {
                          goto LABEL_38;
                        }

                        goto LABEL_25;
                      }

LABEL_23:
                      CFRelease(cf);
                      goto LABEL_24;
                    }

                    v38 = 0;
                    v218 = 0;
                    v219 = 0;
                    v216 = 0;
LABEL_46:
                    v19 = v197;
                    v24 = v208;
                    goto LABEL_23;
                  }

                  v154 = IXGetLoggingHandle(kIXLoggingSubsystem);
                  if (os_log_type_enabled(v154, OS_LOG_TYPE_ERROR))
                  {
                    +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
                  }

                  v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 955, @"IXErrorDomain", 2uLL, v149, 0, @"Failed to set localization dictionary for %@", v155, v208);

                  v24 = v208;
                  v38 = 0;
                  v218 = 0;
                  v219 = 0;
                  v216 = 0;
                  v210 = 0;
LABEL_83:
                  v33 = v207;
                  goto LABEL_23;
                }

                v216 = v146;
                v156 = IXGetLoggingHandle(kIXLoggingSubsystem);
                v16 = v196;
                v17 = v205;
                v24 = v208;
                if (os_log_type_enabled(v156, OS_LOG_TYPE_ERROR))
                {
                  +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
                }

                v157 = [(IXPromisedTransferToPath *)v32 path];
                v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 945, @"IXErrorDomain", 2uLL, v118, 0, @"Failed to set loctable promise for %@", v158, v157);

                v38 = 0;
                v218 = 0;
                v219 = 0;
                v210 = 0;
LABEL_82:
                v19 = v197;
                goto LABEL_83;
              }

              v38 = 0;
              v218 = 0;
              v219 = 0;
              v216 = 0;
              v210 = 0;
              goto LABEL_164;
            }

            v137 = IXGetLoggingHandle(kIXLoggingSubsystem);
            v17 = v205;
            if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
            {
              +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
            }

            v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 922, @"IXErrorDomain", 2uLL, v118, 0, @"Failed to set icon promise for %@", v138, v208);
            v32 = v118;
            v16 = v196;
          }

          else
          {
            v135 = IXGetLoggingHandle(kIXLoggingSubsystem);
            v19 = v197;
            if (os_log_type_enabled(v135, OS_LOG_TYPE_ERROR))
            {
              +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
            }

            v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 917, @"IXErrorDomain", 2uLL, 0, 0, @"Failed to create IXPromisedInMemoryData for icon for %@", v136, v208);
            v16 = v196;
            v17 = v205;
          }

          v38 = 0;
          v216 = 0;
          v218 = 0;
          v210 = 0;
          v32 = 0;
        }

        v24 = v208;
LABEL_137:
        v33 = v207;
        goto LABEL_138;
      }

      v205 = v17;
      if ([v197 itemExistsAtURL:v82])
      {
        v90 = [v197 diskUsageForURL:v82];
        v91 = [IXPromisedTransferToPath alloc];
        v190 = v208;
        v92 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Entitlements Promise for %@"];
        v93 = v17;
        v94 = v92;
        v250 = v79;
        v95 = [(IXPromisedTransferToPath *)v91 initWithName:v92 client:a4 transferPath:v82 diskSpaceNeeded:v90 location:v93 error:&v250];
        v30 = v250;

        if (v95)
        {
          [(IXPromisedTransferToPath *)v95 setShouldCopy:1];
          [(IXPromisedTransferToPath *)v95 setComplete:1];
          v249 = v30;
          v96 = [(IXPlaceholder *)v72 setEntitlementsPromise:v95 error:&v249];
          v79 = v249;

          if (!v96)
          {
            v218 = v95;
            v128 = IXGetLoggingHandle(kIXLoggingSubsystem);
            v16 = v196;
            v24 = v208;
            if (os_log_type_enabled(v128, OS_LOG_TYPE_ERROR))
            {
              +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
            }

            v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 857, @"IXErrorDomain", 2uLL, v79, 0, @"Failed to set entitlements promise for %@", v129, v208);

            v38 = 0;
            v219 = 0;
            v216 = 0;
            v210 = 0;
            v32 = 0;
            v17 = v205;
            goto LABEL_82;
          }

          v80 = cf;
          goto LABEL_103;
        }

LABEL_163:
        v38 = 0;
        v218 = 0;
        v219 = 0;
        v216 = 0;
        v210 = 0;
        v32 = 0;
LABEL_164:
        v16 = v196;
        v19 = v197;
        v17 = v205;
        goto LABEL_85;
      }

      if (v213)
      {
        goto LABEL_104;
      }

      v102 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v208 allowPlaceholder:0 error:0];
      v95 = v102;
      if (!v102)
      {
        goto LABEL_103;
      }

      v103 = [(IXPromisedTransferToPath *)v102 executableURL];
      if (v103)
      {
        v248 = v79;
        v104 = [a1 _setEntitlementsFromBundleExecutableURL:v103 withBundleID:v208 client:a4 onPlaceholder:v72 location:v17 error:&v248];
        v30 = v248;

        if (!v104)
        {

          goto LABEL_163;
        }

        v79 = v30;
        v80 = cf;
      }

LABEL_103:
      goto LABEL_104;
    }

    v201 = v34;
    v204 = v17;
    v73 = [[IXPlaceholderSpecification alloc] initWithLocalizedBundleName:v34 bundleID:v208 type:1 client:a4 location:v17];
    v74 = [v15 URLByDeletingPathExtension];
    v75 = [v74 lastPathComponent];
    [(IXPlaceholderSpecification *)v73 setBundleDirectoryName:v75];

    [(IXPlaceholderSpecification *)v73 setInstallType:a6];
    v255 = v59;
    v72 = [[IXPlaceholder alloc] initWithSpecification:v73 error:&v255];
    v76 = v255;

    if (v72)
    {
      v254 = v76;
      v77 = [(IXPlaceholder *)v72 setMetadata:v196 error:&v254];
      v30 = v254;

      if (v77)
      {
        v33 = v207;
        [(IXPlaceholderAttributes *)v207 setExtensionDictionary:0];
        [(IXPlaceholderAttributes *)v207 setExAppExtensionAttributes:0];

        v17 = v204;
        v71 = v15;
        goto LABEL_67;
      }

      v221 = v72;
      v100 = IXGetLoggingHandle(kIXLoggingSubsystem);
      v33 = v207;
      if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
      {
        +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
      }

      v24 = v208;
      v99 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 814, @"IXErrorDomain", 2uLL, v30, 0, @"Failed to set metadata for %@", v101, v208);
      v76 = v30;
      v16 = v196;
    }

    else
    {
      v221 = 0;
      v97 = IXGetLoggingHandle(kIXLoggingSubsystem);
      v24 = v208;
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        +[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:];
      }

      v99 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 809, @"IXErrorDomain", 2uLL, v76, 0, @"Failed to create IXPlaceholder for app bundle ID %@", v98, v208);
      v16 = v196;
      v33 = v207;
    }

    v38 = 0;
    v210 = 0;
    v211 = 0;
    v218 = 0;
    v219 = 0;
    v216 = 0;
    v212 = 0;
    v32 = 0;
    v30 = v99;
    v17 = v204;
    v19 = v197;
LABEL_138:
    v34 = v201;
    goto LABEL_23;
  }

  v27 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [IXPlaceholder _placeholderForBundle:v15 client:? withParent:? installType:? metadata:? placeholderType:? mayBeDeltaPackage:? isFromSerializedPlaceholder:? location:? error:?];
  }

  v28 = [v15 path];
  v30 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 746, @"IXErrorDomain", 0xAuLL, 0, 0, @"Failed to create CFBundle from %@", v29, v28);

  v32 = 0;
  v211 = 0;
  v212 = 0;
  v210 = 0;
  v33 = 0;
  v216 = 0;
  v218 = 0;
  v219 = 0;
  v221 = 0;
  v34 = 0;
  v24 = 0;
LABEL_25:
  v200 = v34;
  v203 = v17;
  v209 = v24;
  if (a12)
  {
    v45 = v30;
    *a12 = v30;
  }

  v198 = v32;
  v46 = v19;
  if (v30)
  {
    v47 = v16;
    v259 = *MEMORY[0x1E696AA08];
    v48 = v30;
    v260 = v30;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v260 forKeys:&v259 count:1];
  }

  else
  {
    v48 = 0;
    v47 = v16;
    v49 = 0;
  }

  v50 = _CreateError("+[IXPlaceholder _placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:]", 1029, @"IXErrorDomain", 1uLL, 0, v49, @"Canceling because an error occurred during creation of the IXPlaceholder", v31, v190);
  [(IXDataPromise *)v221 cancelForReason:v50 client:15 error:0];
  [(IXDataPromise *)v218 cancelForReason:v50 client:15 error:0];
  [(IXDataPromise *)v219 cancelForReason:v50 client:15 error:0];
  [(IXDataPromise *)v216 cancelForReason:v50 client:15 error:0];
  v222 = 0u;
  v223 = 0u;
  v224 = 0u;
  v225 = 0u;
  v18 = v18;
  v51 = [v18 countByEnumeratingWithState:&v222 objects:v258 count:16];
  if (v51)
  {
    v52 = v51;
    v53 = *v223;
    do
    {
      for (j = 0; j != v52; ++j)
      {
        if (*v223 != v53)
        {
          objc_enumerationMutation(v18);
        }

        [*(*(&v222 + 1) + 8 * j) cancelForReason:v50 client:15 error:0];
      }

      v52 = [v18 countByEnumeratingWithState:&v222 objects:v258 count:16];
    }

    while (v52);
  }

  v38 = 0;
  v16 = v47;
  v17 = v203;
  v19 = v46;
  v24 = v209;
  v30 = v48;
  v32 = v198;
  v34 = v200;
LABEL_38:
  v55 = v38;

  v56 = *MEMORY[0x1E69E9840];
  return v38;
}

- (id)initAppPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 installType:(unint64_t)a5 client:(unint64_t)a6 error:(id *)a7
{
  v12 = a4;
  v13 = a3;
  v14 = objc_opt_new();
  v15 = [(IXPlaceholder *)self initAppPlaceholderWithBundleName:v13 bundleID:v12 installType:a5 client:a6 location:v14 error:a7];

  return v15;
}

- (id)_initAppExtensionPlaceholderWithBundleURL:(id)a3 bundleName:(id)a4 bundleID:(id)a5 parentPlaceholder:(id)a6 client:(unint64_t)a7 location:(id)a8 error:(id *)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = [v15 URLByDeletingLastPathComponent];
  v21 = [v20 lastPathComponent];
  if ([v21 isEqualToString:@"PlugIns"])
  {
    v35 = v20;
    v22 = v18;
    v23 = 2;
LABEL_5:
    v24 = [[IXPlaceholderSpecification alloc] initWithLocalizedBundleName:v16 bundleID:v17 type:v23 client:a7 location:v19];
    v25 = [v15 URLByDeletingPathExtension];
    [v25 lastPathComponent];
    v26 = v17;
    v28 = v27 = v16;
    [(IXPlaceholderSpecification *)v24 setBundleDirectoryName:v28];

    v16 = v27;
    v17 = v26;

    v18 = v22;
    [(IXPlaceholderSpecification *)v24 setParentPlaceholder:v22];
    self = [(IXPlaceholder *)self initWithSpecification:v24 error:a9];
    v29 = self;
    v20 = v35;
    goto LABEL_6;
  }

  if ([v21 isEqualToString:@"Extensions"])
  {
    v35 = v20;
    v22 = v18;
    v23 = 3;
    goto LABEL_5;
  }

  v31 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    [IXPlaceholder _initAppExtensionPlaceholderWithBundleURL:bundleName:bundleID:parentPlaceholder:client:location:error:];
  }

  v33 = _CreateError("[IXPlaceholder _initAppExtensionPlaceholderWithBundleURL:bundleName:bundleID:parentPlaceholder:client:location:error:]", 1058, @"IXErrorDomain", 2uLL, 0, 0, @"Unable to determine IXPlaceholder type for this app extension bundle at %@", v32, v15);
  v24 = v33;
  if (a9)
  {
    v34 = v33;
    v29 = 0;
    *a9 = v24;
  }

  else
  {
    v29 = 0;
  }

LABEL_6:

  return v29;
}

- (id)initExtensionKitPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 parentPlaceholder:(id)a5 client:(unint64_t)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_opt_new();
  v16 = [(IXPlaceholder *)self initExtensionKitPlaceholderWithBundleName:v14 bundleID:v13 parentPlaceholder:v12 client:a6 location:v15 error:a7];

  return v16;
}

- (id)initPlugInPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 parentPlaceholder:(id)a5 client:(unint64_t)a6 error:(id *)a7
{
  v12 = a5;
  v13 = a4;
  v14 = a3;
  v15 = objc_opt_new();
  v16 = [(IXPlaceholder *)self initPlugInPlaceholderWithBundleName:v14 bundleID:v13 parentPlaceholder:v12 client:a6 location:v15 error:a7];

  return v16;
}

- (id)initAppPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 installType:(unint64_t)a5 client:(unint64_t)a6 location:(id)a7 error:(id *)a8
{
  v14 = a7;
  v15 = a4;
  v16 = a3;
  v17 = [[IXPlaceholderSpecification alloc] initWithLocalizedBundleName:v16 bundleID:v15 type:1 client:a6 location:v14];
  [(IXPlaceholderSpecification *)v17 setInstallType:a5];
  v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"App Placeholder: %@ (%@)", v16, v15];

  v22.receiver = self;
  v22.super_class = IXPlaceholder;
  v19 = [(IXOwnedDataPromise *)&v22 initWithName:v18 client:a6 diskSpaceNeeded:0 location:v14];

  if (v19 && ![(IXPlaceholder *)v19 _doInitWithSpecification:v17 error:a8])
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  return v20;
}

- (id)initExtensionKitPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 parentPlaceholder:(id)a5 client:(unint64_t)a6 location:(id)a7 error:(id *)a8
{
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [[IXPlaceholderSpecification alloc] initWithLocalizedBundleName:v17 bundleID:v16 type:3 client:a6 location:v14];
  [(IXPlaceholderSpecification *)v18 setParentPlaceholder:v15];

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ExtensionKit app extension Placeholder: %@ (%@)", v17, v16];

  v23.receiver = self;
  v23.super_class = IXPlaceholder;
  v20 = [(IXOwnedDataPromise *)&v23 initWithName:v19 client:a6 diskSpaceNeeded:0 location:v14];

  if (v20 && ![(IXPlaceholder *)v20 _doInitWithSpecification:v18 error:a8])
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  return v21;
}

- (id)initPlugInPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 parentPlaceholder:(id)a5 client:(unint64_t)a6 location:(id)a7 error:(id *)a8
{
  v14 = a7;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = [[IXPlaceholderSpecification alloc] initWithLocalizedBundleName:v17 bundleID:v16 type:2 client:a6 location:v14];
  [(IXPlaceholderSpecification *)v18 setParentPlaceholder:v15];

  v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PluginKit app extension Placeholder: %@ (%@)", v17, v16];

  v23.receiver = self;
  v23.super_class = IXPlaceholder;
  v20 = [(IXOwnedDataPromise *)&v23 initWithName:v19 client:a6 diskSpaceNeeded:0 location:v14];

  if (v20 && ![(IXPlaceholder *)v20 _doInitWithSpecification:v18 error:a8])
  {
    v21 = 0;
  }

  else
  {
    v21 = v20;
  }

  return v21;
}

- (id)initAppPlaceholderWithBundleName:(id)a3 bundleID:(id)a4 installType:(unint64_t)a5 client:(unint64_t)a6
{
  v10 = a4;
  v11 = a3;
  v12 = objc_opt_new();
  v13 = [(IXPlaceholder *)self initAppPlaceholderWithBundleName:v11 bundleID:v10 installType:a5 client:a6 location:v12 error:0];

  return v13;
}

- (BOOL)_doInitWithSpecification:(id)a3 error:(id *)a4
{
  v70 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy__7;
  v60 = __Block_byref_object_dispose__7;
  v61 = 0;
  v7 = [v6 bundleID];
  v8 = [v6 parentPlaceholder];
  v9 = [v6 placeholderType];
  v10 = [v6 localizedBundleName];
  v11 = [v6 bundleDirectoryName];
  v12 = [v6 installType];
  v13 = IXIsAppExtensionForPlaceholderType(v9);
  if ((v9 - 4) <= 0xFFFFFFFFFFFFFFFCLL)
  {
    v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder _doInitWithSpecification:error:];
    }

    v16 = _CreateError("[IXPlaceholder _doInitWithSpecification:error:]", 1153, @"IXErrorDomain", 0x35uLL, 0, 0, @"Invalid placeholder type %lu", v15, v9);
LABEL_31:
    v29 = 0;
    v30 = 0;
    v31 = v57[5];
    v57[5] = v16;
    goto LABEL_32;
  }

  v17 = v13;
  if ([v7 containsEmbeddedNULLCharacter])
  {
    v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder _doInitWithSpecification:error:];
    }

    v16 = _CreateError("[IXPlaceholder _doInitWithSpecification:error:]", 1158, @"IXErrorDomain", 0x35uLL, 0, 0, @"Bundle identifier %@ contained an embedded NULL character this is not allowed", v19, v7);;
    goto LABEL_31;
  }

  if (v11 && [v11 containsEmbeddedNULLCharacter])
  {
    v20 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder _doInitWithSpecification:error:];
    }

    v16 = _CreateError("[IXPlaceholder _doInitWithSpecification:error:]", 1163, @"IXErrorDomain", 0x35uLL, 0, 0, @"Bundle directory name %@ contained an embedded NULL character this is not allowed", v21, v11);;
    goto LABEL_31;
  }

  if ([v10 containsEmbeddedNULLCharacter])
  {
    v22 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder _doInitWithSpecification:error:];
    }

    v16 = _CreateError("[IXPlaceholder _doInitWithSpecification:error:]", 1168, @"IXErrorDomain", 0x35uLL, 0, 0, @"Localized bundle name %@ contained an embedded NULL character this is not allowed", v23, v10);;
    goto LABEL_31;
  }

  if (v8)
  {
    if (!v17)
    {
      v34 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        [IXPlaceholder _doInitWithSpecification:error:];
      }

      v16 = _CreateError("[IXPlaceholder _doInitWithSpecification:error:]", 1174, @"IXErrorDomain", 0x35uLL, 0, 0, @"App placeholder %@ specified parent placeholder this is not allowed.", v35, v7);;
      goto LABEL_31;
    }

    v24 = [v8 seed];
    v52 = [v24 isAppExtension];

    if (v52)
    {
      v25 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v49 = [v8 seed];
        v50 = [v49 bundleID];
        *buf = 136315906;
        v63 = "[IXPlaceholder _doInitWithSpecification:error:]";
        v64 = 2112;
        v65 = v7;
        v66 = 2112;
        v67 = v50;
        v68 = 2112;
        v69 = 0;
        _os_log_error_impl(&dword_1DA47A000, v25, OS_LOG_TYPE_ERROR, "%s: App extension placeholder for %@ specified another app extension, %@, as its parent. App extension placeholders must have an app placeholder as their parent. : %@", buf, 0x2Au);
      }

      v26 = [v8 seed];
      v51 = [v26 bundleID];
      v28 = _CreateError("[IXPlaceholder _doInitWithSpecification:error:]", 1179, @"IXErrorDomain", 0x35uLL, 0, 0, @"App extension placeholder for %@ specified another app extension, %@, as its parent. App extension placeholders must have an app placeholder as their parent.", v27, v7);

      v29 = 0;
      v30 = 0;
      v31 = v57[5];
      v57[5] = v28;
LABEL_32:

      if (!a4)
      {
        goto LABEL_35;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (v17)
    {
      v32 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [IXPlaceholder _doInitWithSpecification:error:];
      }

      v16 = _CreateError("[IXPlaceholder _doInitWithSpecification:error:]", 1184, @"IXErrorDomain", 0x35uLL, 0, 0, @"App extension placeholder %@ did not specify a parent placeholder this is not allowed.", v33, v7);;
      goto LABEL_31;
    }

    if (!v12)
    {
      v46 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        [IXPlaceholder _doInitWithSpecification:error:];
      }

      v16 = _CreateError("[IXPlaceholder _doInitWithSpecification:error:]", 1190, @"IXErrorDomain", 0x35uLL, 0, 0, @"No install type was specified for placeholder %@. This value is required.", v47, v7);
      goto LABEL_31;
    }
  }

  v38 = [(IXDataPromise *)self seed];
  [v38 setBundleName:v10];

  v39 = [(IXDataPromise *)self seed];
  [v39 setBundleDirectoryName:v11];

  v40 = [(IXDataPromise *)self seed];
  [v40 setBundleID:v7];

  v41 = [(IXDataPromise *)self seed];
  [v41 setInstallType:v12];

  v42 = [(IXDataPromise *)self seed];
  [v42 setPlaceholderType:v9];

  v43 = +[IXServerConnection sharedConnection];
  v55[0] = MEMORY[0x1E69E9820];
  v55[1] = 3221225472;
  v55[2] = __48__IXPlaceholder__doInitWithSpecification_error___block_invoke;
  v55[3] = &unk_1E85C5560;
  v55[4] = &v56;
  v29 = [v43 synchronousRemoteObjectProxyWithErrorHandler:v55];

  if (v29)
  {
    v44 = [(IXDataPromise *)self seed];
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 3221225472;
    v54[2] = __48__IXPlaceholder__doInitWithSpecification_error___block_invoke_226;
    v54[3] = &unk_1E85C62B0;
    v54[4] = self;
    v54[5] = &v56;
    [v29 _remote_createPlaceholderDataPromiseWithSeed:v44 completion:v54];

    v45 = v57;
    if (!v57[5])
    {
      v53 = 0;
      v30 = [(IXOwnedDataPromise *)self consumeSandboxExtensionWithError:&v53];
      v48 = v53;
      v31 = v45[5];
      v45[5] = v48;
      goto LABEL_32;
    }
  }

  v30 = 0;
  if (!a4)
  {
    goto LABEL_35;
  }

LABEL_33:
  if (!v30)
  {
    *a4 = v57[5];
  }

LABEL_35:

  _Block_object_dispose(&v56, 8);
  v36 = *MEMORY[0x1E69E9840];
  return v30;
}

void __48__IXPlaceholder__doInitWithSpecification_error___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[IXPlaceholder _doInitWithSpecification:error:]_block_invoke";
    v10 = 2112;
    v11 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to contact daemon: %@", &v8, 0x16u);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v3;

  v7 = *MEMORY[0x1E69E9840];
}

void __48__IXPlaceholder__doInitWithSpecification_error___block_invoke_226(uint64_t a1, uint64_t a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "[IXPlaceholder _doInitWithSpecification:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      _os_log_impl(&dword_1DA47A000, v7, OS_LOG_TYPE_DEFAULT, "%s: Daemon returned error from setting up placeholder promise: %@", &v9, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
  }

  else
  {
    [*(a1 + 32) _updateInitWithSeed:a2 notifyDaemon:0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (IXPlaceholder)initWithSpecification:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = [v5 bundleID];
  v7 = IXStringForPlaceholderType([v5 placeholderType]);
  v8 = v6;
  v9 = [v5 localizedBundleName];
  v10 = [v5 bundleDirectoryName];
  v11 = v10;
  v12 = v9;
  if (v9 || (v12 = v10, v13 = v8, v10))
  {
    v13 = v12;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Placeholder: %@ (%@)", v7, v13, v8];
  v15 = [v5 client];
  v16 = [v5 location];
  v24.receiver = self;
  v24.super_class = IXPlaceholder;
  v17 = [(IXOwnedDataPromise *)&v24 initWithName:v14 client:v15 diskSpaceNeeded:0 location:v16];

  if (v17)
  {
    v23 = 0;
    v18 = [(IXPlaceholder *)v17 _doInitWithSpecification:v5 error:&v23];
    v19 = v23;
    if (v18)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v19 = 0;
  }

  if (a4)
  {
    v20 = v19;
    v17 = 0;
    *a4 = v19;
  }

  else
  {
    v17 = 0;
  }

LABEL_11:

  return v17;
}

- (IXPlaceholder)initWithCoder:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPlaceholder;
  return [(IXOwnedDataPromise *)&v4 initWithCoder:a3];
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = IXPlaceholder;
  [(IXDataPromise *)&v3 encodeWithCoder:a3];
}

- (BOOL)setIconPromise:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __38__IXPlaceholder_setIconPromise_error___block_invoke;
  v21[3] = &unk_1E85C5920;
  v8 = v6;
  v22 = v8;
  v23 = self;
  v24 = &v25;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v10 = [(IXDataPromise *)self uniqueIdentifier];
  v11 = [v8 uniqueIdentifier];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __38__IXPlaceholder_setIconPromise_error___block_invoke_235;
  v17[3] = &unk_1E85C5920;
  v12 = v8;
  v18 = v12;
  v19 = self;
  v20 = &v25;
  [v9 _remote_IXSPlaceholder:v10 setIconPromiseUUID:v11 completion:v17];

  v13 = v26;
  if (a4)
  {
    v14 = v26[5];
    if (v14)
    {
      *a4 = v14;
      v13 = v26;
    }
  }

  v15 = v13[5] == 0;

  _Block_object_dispose(&v25, 8);
  return v15;
}

void __38__IXPlaceholder_setIconPromise_error___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXPlaceholder setIconPromise:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set icon promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __38__IXPlaceholder_setIconPromise_error___block_invoke_235(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXPlaceholder setIconPromise:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set icon promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)iconPromiseWithError:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __38__IXPlaceholder_iconPromiseWithError___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v13;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __38__IXPlaceholder_iconPromiseWithError___block_invoke_236;
  v11[3] = &unk_1E85C5970;
  v11[4] = &v13;
  v11[5] = &v19;
  [v6 _remote_IXSPlaceholder:v7 getIconPromise:v11];

  v8 = v20[5];
  if (a3 && !v8)
  {
    *a3 = v14[5];
    v8 = v20[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __38__IXPlaceholder_iconPromiseWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPlaceholder iconPromiseWithError:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to get icon promise: %@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __38__IXPlaceholder_iconPromiseWithError___block_invoke_236(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (!v7)
  {
    if (v5)
    {
      v9 = [v5 clientPromiseClass];
      v10 = [[v9 alloc] initWithSeed:v5];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_17;
        }

        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = 0;

        v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __38__IXPlaceholder_iconPromiseWithError___block_invoke_236_cold_1();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXPlaceholder iconPromiseWithError:]_block_invoke", 1339, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for an owned data promise subclass but was instead for class %@", v17, v5);
      }

      else
      {
        v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __38__IXPlaceholder_iconPromiseWithError___block_invoke_236_cold_2();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXPlaceholder iconPromiseWithError:]_block_invoke", 1336, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ with seed %@", v22, v16);
      }
      v23 = ;

      v24 = *(*(a1 + 32) + 8);
      v20 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    else
    {
      v18 = _CreateError("[IXPlaceholder iconPromiseWithError:]_block_invoke", 1331, @"IXErrorDomain", 0x17uLL, 0, 0, @"An icon promise is not currently set.", v6, v26);
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    goto LABEL_17;
  }

  v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[IXPlaceholder iconPromiseWithError:]_block_invoke";
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get icon promise: %@", buf, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasIconPromise
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __31__IXPlaceholder_hasIconPromise__block_invoke;
  v8[3] = &unk_1E85C5998;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v5 = [(IXDataPromise *)self uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__IXPlaceholder_hasIconPromise__block_invoke_248;
  v7[3] = &unk_1E85C59C0;
  v7[4] = self;
  v7[5] = &v9;
  [v4 _remote_IXSPlaceholder:v5 hasIconPromise:v7];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __31__IXPlaceholder_hasIconPromise__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[IXPlaceholder hasIconPromise]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has an icon promise: %@", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __31__IXPlaceholder_hasIconPromise__block_invoke_248(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXPlaceholder hasIconPromise]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has an icon promise: %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)setIconResourcesPromise:(id)a3 withInfoPlistContent:(id)a4 error:(id *)a5
{
  v30 = a3;
  v8 = a4;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__7;
  v43 = __Block_byref_object_dispose__7;
  v44 = 0;
  if (!IXDictionaryContainsOnlyPlistContent(v8))
  {
    v23 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder setIconResourcesPromise:withInfoPlistContent:error:];
    }

    v25 = _CreateError("[IXPlaceholder setIconResourcesPromise:withInfoPlistContent:error:]", 1375, @"IXErrorDomain", 0x1CuLL, 0, 0, @"Info.plist content dictionary contains content that cannot be contained in a property list.", v24, v29);
    goto LABEL_10;
  }

  v9 = [IXPromisedInMemoryDictionary alloc];
  v10 = MEMORY[0x1E696AEC0];
  v11 = [(IXPlaceholder *)self bundleID];
  v12 = [v10 stringWithFormat:@"Info.plist icon content for %@", v11];
  v13 = [(IXDataPromise *)self creatorIdentifier];
  v14 = [(IXOwnedDataPromise *)self location];
  v15 = [(IXPromisedInMemoryDictionary *)v9 initWithName:v12 client:v13 dictionary:v8 location:v14];

  if (!v15)
  {
    v26 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder setIconResourcesPromise:withInfoPlistContent:error:];
    }

    v25 = _CreateError("[IXPlaceholder setIconResourcesPromise:withInfoPlistContent:error:]", 1381, @"IXErrorDomain", 2uLL, 0, 0, @"Failed to create dictionary promise for Info.plist icon content for %@", v27, self);
LABEL_10:
    v22 = 0;
    v15 = v40[5];
    v40[5] = v25;
    goto LABEL_11;
  }

  v16 = +[IXServerConnection sharedConnection];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __68__IXPlaceholder_setIconResourcesPromise_withInfoPlistContent_error___block_invoke;
  v35[3] = &unk_1E85C5920;
  v17 = v30;
  v36 = v17;
  v37 = self;
  v38 = &v39;
  v18 = [v16 synchronousRemoteObjectProxyWithErrorHandler:v35];
  v19 = [(IXDataPromise *)self uniqueIdentifier];
  v20 = [v17 uniqueIdentifier];
  v21 = [(IXDataPromise *)v15 uniqueIdentifier];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __68__IXPlaceholder_setIconResourcesPromise_withInfoPlistContent_error___block_invoke_259;
  v31[3] = &unk_1E85C5920;
  v32 = v17;
  v33 = self;
  v34 = &v39;
  [v18 _remote_IXSPlaceholder:v19 setIconResourcesPromiseUUID:v20 withInfoPlistIconContentPromiseUUID:v21 completion:v31];

  v22 = v40[5] == 0;
LABEL_11:

  if (a5 && !v22)
  {
    *a5 = v40[5];
  }

  _Block_object_dispose(&v39, 8);

  return v22;
}

void __68__IXPlaceholder_setIconResourcesPromise_withInfoPlistContent_error___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXPlaceholder setIconResourcesPromise:withInfoPlistContent:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set icon resources promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __68__IXPlaceholder_setIconResourcesPromise_withInfoPlistContent_error___block_invoke_259(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXPlaceholder setIconResourcesPromise:withInfoPlistContent:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set icon resources promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)iconResourcesPromiseWithInfoPlistContent:(id *)a3 error:(id *)a4
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__7;
  v31 = __Block_byref_object_dispose__7;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__7;
  v25 = __Block_byref_object_dispose__7;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  v20 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __64__IXPlaceholder_iconResourcesPromiseWithInfoPlistContent_error___block_invoke;
  v14[3] = &unk_1E85C5560;
  v14[4] = &v27;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v9 = [(IXDataPromise *)self uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__IXPlaceholder_iconResourcesPromiseWithInfoPlistContent_error___block_invoke_260;
  v13[3] = &unk_1E85C62D8;
  v13[4] = &v27;
  v13[5] = &v21;
  v13[6] = &v15;
  [v8 _remote_IXSPlaceholder:v9 getIconResourcesPromiseAndInfoPlistContentPromise:v13];

  v10 = v22[5];
  if (a3 && v10)
  {
    *a3 = v16[5];
    v10 = v22[5];
  }

  if (a4 && !v10)
  {
    *a4 = v28[5];
    v10 = v22[5];
  }

  v11 = v10;
  _Block_object_dispose(&v15, 8);

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v11;
}

void __64__IXPlaceholder_iconResourcesPromiseWithInfoPlistContent_error___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPlaceholder iconResourcesPromiseWithInfoPlistContent:error:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to get icon resources promise: %@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __64__IXPlaceholder_iconResourcesPromiseWithInfoPlistContent_error___block_invoke_260(void *a1, void *a2, void *a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v10 = a4;
  if (v10)
  {
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v33 = "[IXPlaceholder iconResourcesPromiseWithInfoPlistContent:error:]_block_invoke";
      v34 = 2112;
      v35 = v10;
      _os_log_impl(&dword_1DA47A000, v11, OS_LOG_TYPE_DEFAULT, "%s: Failed to get icon resources promise: %@", buf, 0x16u);
    }

    v12 = (*(a1[4] + 8) + 40);
    v13 = a4;
    goto LABEL_5;
  }

  if (!v7 || !v8)
  {
    v18 = _CreateError("[IXPlaceholder iconResourcesPromiseWithInfoPlistContent:error:]_block_invoke", 1427, @"IXErrorDomain", 0x17uLL, 0, 0, @"An icon resources promise is not currently set.", v9, v31);
    v19 = *(a1[4] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
LABEL_19:

    goto LABEL_20;
  }

  v14 = [v7 clientPromiseClass];
  v15 = [[v14 alloc] initWithSeed:v7];
  v16 = *(a1[5] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  if (!*(*(a1[5] + 8) + 40))
  {
    v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      __64__IXPlaceholder_iconResourcesPromiseWithInfoPlistContent_error___block_invoke_260_cold_2();
    }

    v22 = NSStringFromClass(v14);
    _CreateError("[IXPlaceholder iconResourcesPromiseWithInfoPlistContent:error:]_block_invoke", 1432, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ with seed %@", v23, v22);
    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v24 = *(a1[5] + 8);
    v25 = *(v24 + 40);
    *(v24 + 40) = 0;

    v26 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __64__IXPlaceholder_iconResourcesPromiseWithInfoPlistContent_error___block_invoke_260_cold_1();
    }

    v22 = NSStringFromClass(v14);
    _CreateError("[IXPlaceholder iconResourcesPromiseWithInfoPlistContent:error:]_block_invoke", 1435, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for IXPromisedTransferToPath but was instead for class %@", v27, v7);
    v28 = LABEL_18:;

    v29 = *(a1[4] + 8);
    v20 = *(v29 + 40);
    *(v29 + 40) = v28;
    goto LABEL_19;
  }

  v12 = (*(a1[6] + 8) + 40);
  v13 = a3;
LABEL_5:
  objc_storeStrong(v12, v13);
LABEL_20:

  v30 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasIconResourcesPromise
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__IXPlaceholder_hasIconResourcesPromise__block_invoke;
  v8[3] = &unk_1E85C5998;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v5 = [(IXDataPromise *)self uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __40__IXPlaceholder_hasIconResourcesPromise__block_invoke_268;
  v7[3] = &unk_1E85C59C0;
  v7[4] = self;
  v7[5] = &v9;
  [v4 _remote_IXSPlaceholder:v5 hasIconResourcesPromise:v7];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __40__IXPlaceholder_hasIconResourcesPromise__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[IXPlaceholder hasIconResourcesPromise]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has an icon resources promise: %@", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __40__IXPlaceholder_hasIconResourcesPromise__block_invoke_268(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXPlaceholder hasIconResourcesPromise]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has an icon resources promise: %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)setInfoPlistLocalizations:(id)a3 error:(id *)a4
{
  v6 = a3;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__7;
  v36 = __Block_byref_object_dispose__7;
  v37 = 0;
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  if ((IXDictionaryContainsOnlyClassesCheckingValueTypes(v6, v7, v8, v9, v10) & 1) == 0)
  {
    v23 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder setInfoPlistLocalizations:error:];
    }

    v25 = _CreateError("[IXPlaceholder setInfoPlistLocalizations:error:]", 1477, @"IXErrorDomain", 0x1CuLL, 0, 0, @"Localizations dictionary contains objects other than those expected.", v24, v29);
    goto LABEL_10;
  }

  v11 = [IXPromisedInMemoryDictionary alloc];
  v12 = MEMORY[0x1E696AEC0];
  v13 = [(IXPlaceholder *)self bundleID];
  v14 = [v12 stringWithFormat:@"Localizations for %@", v13];
  v15 = [(IXDataPromise *)self creatorIdentifier];
  v16 = [(IXOwnedDataPromise *)self location];
  v17 = [(IXPromisedInMemoryDictionary *)v11 initWithName:v14 client:v15 dictionary:v6 location:v16];

  if (!v17)
  {
    v26 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder setInfoPlistLocalizations:error:];
    }

    v25 = _CreateError("[IXPlaceholder setInfoPlistLocalizations:error:]", 1483, @"IXErrorDomain", 2uLL, 0, 0, @"Failed to create dictionary promise for localizations for %@", v27, self);
LABEL_10:
    v22 = 0;
    v17 = v33[5];
    v33[5] = v25;
    goto LABEL_11;
  }

  v18 = +[IXServerConnection sharedConnection];
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __49__IXPlaceholder_setInfoPlistLocalizations_error___block_invoke;
  v31[3] = &unk_1E85C58D0;
  v31[4] = self;
  v31[5] = &v32;
  v19 = [v18 synchronousRemoteObjectProxyWithErrorHandler:v31];
  v20 = [(IXDataPromise *)self uniqueIdentifier];
  v21 = [(IXDataPromise *)v17 uniqueIdentifier];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __49__IXPlaceholder_setInfoPlistLocalizations_error___block_invoke_279;
  v30[3] = &unk_1E85C58D0;
  v30[4] = self;
  v30[5] = &v32;
  [v19 _remote_IXSPlaceholder:v20 setLocalizationPromiseUUID:v21 completion:v30];

  v22 = v33[5] == 0;
LABEL_11:

  if (a4 && !v22)
  {
    *a4 = v33[5];
  }

  _Block_object_dispose(&v32, 8);

  return v22;
}

void __49__IXPlaceholder_setInfoPlistLocalizations_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[IXPlaceholder setInfoPlistLocalizations:error:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set Info plist localizations on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __49__IXPlaceholder_setInfoPlistLocalizations_error___block_invoke_279(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[IXPlaceholder setInfoPlistLocalizations:error:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set Info plist localizations on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)infoPlistLocalizationsWithError:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__IXPlaceholder_infoPlistLocalizationsWithError___block_invoke;
  v12[3] = &unk_1E85C58D0;
  v12[4] = self;
  v12[5] = &v19;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__IXPlaceholder_infoPlistLocalizationsWithError___block_invoke_280;
  v11[3] = &unk_1E85C6300;
  v11[4] = self;
  v11[5] = &v19;
  v11[6] = &v13;
  [v6 _remote_IXSPlaceholder:v7 getLocalizationDictionary:v11];

  v8 = v14[5];
  if (a3 && !v8)
  {
    *a3 = v20[5];
    v8 = v14[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __49__IXPlaceholder_infoPlistLocalizationsWithError___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[IXPlaceholder infoPlistLocalizationsWithError:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set Info plist localizations on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __49__IXPlaceholder_infoPlistLocalizationsWithError___block_invoke_280(void *a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = a1[4];
      *v17 = 136315650;
      *&v17[4] = "[IXPlaceholder infoPlistLocalizationsWithError:]_block_invoke";
      v18 = 2112;
      v19 = v10;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to set Info plist localizations on %@ : %@", v17, 0x20u);
    }

    v11 = (*(a1[5] + 8) + 40);
    v12 = a3;
  }

  else
  {
    if (!v6)
    {
      v14 = _CreateError("[IXPlaceholder infoPlistLocalizationsWithError:]_block_invoke", 1528, @"IXErrorDomain", 0x17uLL, 0, 0, @"A localization dictionary is not currently set.", v7, *v17);
      v15 = *(a1[5] + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      goto LABEL_8;
    }

    v11 = (*(a1[6] + 8) + 40);
    v12 = a2;
  }

  objc_storeStrong(v11, v12);
LABEL_8:

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)setEntitlementsPromise:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __46__IXPlaceholder_setEntitlementsPromise_error___block_invoke;
  v21[3] = &unk_1E85C5920;
  v8 = v6;
  v22 = v8;
  v23 = self;
  v24 = &v25;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v10 = [(IXDataPromise *)self uniqueIdentifier];
  v11 = [v8 uniqueIdentifier];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __46__IXPlaceholder_setEntitlementsPromise_error___block_invoke_285;
  v17[3] = &unk_1E85C5920;
  v12 = v8;
  v18 = v12;
  v19 = self;
  v20 = &v25;
  [v9 _remote_IXSPlaceholder:v10 setEntitlementsPromiseUUID:v11 completion:v17];

  v13 = v26;
  if (a4)
  {
    v14 = v26[5];
    if (v14)
    {
      *a4 = v14;
      v13 = v26;
    }
  }

  v15 = v13[5] == 0;

  _Block_object_dispose(&v25, 8);
  return v15;
}

void __46__IXPlaceholder_setEntitlementsPromise_error___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXPlaceholder setEntitlementsPromise:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set entitlements promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __46__IXPlaceholder_setEntitlementsPromise_error___block_invoke_285(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXPlaceholder setEntitlementsPromise:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set entitlements promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)entitlementsPromiseWithError:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __46__IXPlaceholder_entitlementsPromiseWithError___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v13;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __46__IXPlaceholder_entitlementsPromiseWithError___block_invoke_286;
  v11[3] = &unk_1E85C5970;
  v11[4] = &v13;
  v11[5] = &v19;
  [v6 _remote_IXSPlaceholder:v7 getEntitlementsPromise:v11];

  v8 = v20[5];
  if (a3 && !v8)
  {
    *a3 = v14[5];
    v8 = v20[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __46__IXPlaceholder_entitlementsPromiseWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPlaceholder entitlementsPromiseWithError:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to get entitlements promise: %@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __46__IXPlaceholder_entitlementsPromiseWithError___block_invoke_286(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (!v7)
  {
    if (v5)
    {
      v9 = [v5 clientPromiseClass];
      v10 = [[v9 alloc] initWithSeed:v5];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_17;
        }

        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = 0;

        v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __46__IXPlaceholder_entitlementsPromiseWithError___block_invoke_286_cold_1();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXPlaceholder entitlementsPromiseWithError:]_block_invoke", 1586, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for an owned data promise subclass but was instead for class %@", v17, v5);
      }

      else
      {
        v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __46__IXPlaceholder_entitlementsPromiseWithError___block_invoke_286_cold_2();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXPlaceholder entitlementsPromiseWithError:]_block_invoke", 1583, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ with seed %@", v22, v16);
      }
      v23 = ;

      v24 = *(*(a1 + 32) + 8);
      v20 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    else
    {
      v18 = _CreateError("[IXPlaceholder entitlementsPromiseWithError:]_block_invoke", 1578, @"IXErrorDomain", 0x17uLL, 0, 0, @"An entitlements promise is not currently set.", v6, v26);
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    goto LABEL_17;
  }

  v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[IXPlaceholder entitlementsPromiseWithError:]_block_invoke";
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get entitlements promise: %@", buf, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasEntitlementsPromise
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__IXPlaceholder_hasEntitlementsPromise__block_invoke;
  v8[3] = &unk_1E85C5998;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v5 = [(IXDataPromise *)self uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__IXPlaceholder_hasEntitlementsPromise__block_invoke_290;
  v7[3] = &unk_1E85C59C0;
  v7[4] = self;
  v7[5] = &v9;
  [v4 _remote_IXSPlaceholder:v5 hasEntitlementsPromise:v7];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __39__IXPlaceholder_hasEntitlementsPromise__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[IXPlaceholder hasEntitlementsPromise]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has an entitlements promise: %@", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __39__IXPlaceholder_hasEntitlementsPromise__block_invoke_290(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXPlaceholder hasEntitlementsPromise]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has an entitlements promise: %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)setInfoPlistLoctablePromise:(id)a3 error:(id *)a4
{
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__7;
  v29 = __Block_byref_object_dispose__7;
  v30 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __51__IXPlaceholder_setInfoPlistLoctablePromise_error___block_invoke;
  v21[3] = &unk_1E85C5920;
  v8 = v6;
  v22 = v8;
  v23 = self;
  v24 = &v25;
  v9 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v21];
  v10 = [(IXDataPromise *)self uniqueIdentifier];
  v11 = [v8 uniqueIdentifier];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __51__IXPlaceholder_setInfoPlistLoctablePromise_error___block_invoke_291;
  v17[3] = &unk_1E85C5920;
  v12 = v8;
  v18 = v12;
  v19 = self;
  v20 = &v25;
  [v9 _remote_IXSPlaceholder:v10 setInfoPlistLoctablePromiseUUID:v11 completion:v17];

  v13 = v26;
  if (a4)
  {
    v14 = v26[5];
    if (v14)
    {
      *a4 = v14;
      v13 = v26;
    }
  }

  v15 = v13[5] == 0;

  _Block_object_dispose(&v25, 8);
  return v15;
}

void __51__IXPlaceholder_setInfoPlistLoctablePromise_error___block_invoke(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXPlaceholder setInfoPlistLoctablePromise:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set loctable promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __51__IXPlaceholder_setInfoPlistLoctablePromise_error___block_invoke_291(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = a1[4];
      v7 = a1[5];
      v9 = 136315906;
      v10 = "[IXPlaceholder setInfoPlistLoctablePromise:error:]_block_invoke";
      v11 = 2112;
      v12 = v6;
      v13 = 2112;
      v14 = v7;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set loctable promise %@ on %@ : %@", &v9, 0x2Au);
    }

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (id)infoPlistLoctablePromiseWithError:(id *)a3
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__7;
  v23 = __Block_byref_object_dispose__7;
  v24 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__7;
  v17 = __Block_byref_object_dispose__7;
  v18 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__IXPlaceholder_infoPlistLoctablePromiseWithError___block_invoke;
  v12[3] = &unk_1E85C5560;
  v12[4] = &v13;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__IXPlaceholder_infoPlistLoctablePromiseWithError___block_invoke_292;
  v11[3] = &unk_1E85C5970;
  v11[4] = &v13;
  v11[5] = &v19;
  [v6 _remote_IXSPlaceholder:v7 getInfoPlistLoctablePromise:v11];

  v8 = v20[5];
  if (a3 && !v8)
  {
    *a3 = v14[5];
    v8 = v20[5];
  }

  v9 = v8;
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __51__IXPlaceholder_infoPlistLoctablePromiseWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPlaceholder infoPlistLoctablePromiseWithError:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to get loctable promise: %@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __51__IXPlaceholder_infoPlistLoctablePromiseWithError___block_invoke_292(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v7 = a3;
  if (!v7)
  {
    if (v5)
    {
      v9 = [v5 clientPromiseClass];
      v10 = [[v9 alloc] initWithSeed:v5];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (*(*(*(a1 + 40) + 8) + 40))
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          goto LABEL_17;
        }

        v13 = *(*(a1 + 40) + 8);
        v14 = *(v13 + 40);
        *(v13 + 40) = 0;

        v15 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          __51__IXPlaceholder_infoPlistLoctablePromiseWithError___block_invoke_292_cold_1();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXPlaceholder infoPlistLoctablePromiseWithError:]_block_invoke", 1660, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for an owned data promise subclass but was instead for class %@", v17, v5);
      }

      else
      {
        v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          __51__IXPlaceholder_infoPlistLoctablePromiseWithError___block_invoke_292_cold_2();
        }

        v16 = NSStringFromClass(v9);
        _CreateError("[IXPlaceholder infoPlistLoctablePromiseWithError:]_block_invoke", 1657, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ with seed %@", v22, v16);
      }
      v23 = ;

      v24 = *(*(a1 + 32) + 8);
      v20 = *(v24 + 40);
      *(v24 + 40) = v23;
    }

    else
    {
      v18 = _CreateError("[IXPlaceholder infoPlistLoctablePromiseWithError:]_block_invoke", 1652, @"IXErrorDomain", 0x17uLL, 0, 0, @"A loctable promise is not currently set.", v6, v26);
      v19 = *(*(a1 + 32) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    goto LABEL_17;
  }

  v8 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[IXPlaceholder infoPlistLoctablePromiseWithError:]_block_invoke";
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_1DA47A000, v8, OS_LOG_TYPE_DEFAULT, "%s: Failed to get loctable promise: %@", buf, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
LABEL_17:

  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasInfoPlistLoctablePromise
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__IXPlaceholder_hasInfoPlistLoctablePromise__block_invoke;
  v8[3] = &unk_1E85C5998;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v5 = [(IXDataPromise *)self uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__IXPlaceholder_hasInfoPlistLoctablePromise__block_invoke_296;
  v7[3] = &unk_1E85C59C0;
  v7[4] = self;
  v7[5] = &v9;
  [v4 _remote_IXSPlaceholder:v5 hasInfoPlistLoctablePromise:v7];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __44__IXPlaceholder_hasInfoPlistLoctablePromise__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[IXPlaceholder hasInfoPlistLoctablePromise]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has a loctable promise: %@", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __44__IXPlaceholder_hasInfoPlistLoctablePromise__block_invoke_296(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXPlaceholder hasInfoPlistLoctablePromise]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has a loctable promise: %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)setAppExtensionPlaceholderPromises:(id)a3 error:(id *)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy__7;
  v47 = __Block_byref_object_dispose__7;
  v48 = 0;
  v6 = objc_opt_new();
  v7 = MEMORY[0x1E696AEC0];
  v8 = [(IXPlaceholder *)self bundleID];
  v9 = [v7 stringWithFormat:@"%@.", v8];

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v39 objects:v50 count:16];
  if (v11)
  {
    v12 = *v40;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v40 != v12)
      {
        objc_enumerationMutation(v10);
      }

      v14 = *(*(&v39 + 1) + 8 * v13);
      v15 = [v14 bundleID];
      v16 = [v15 hasPrefix:v9];

      if ((v16 & 1) == 0)
      {
        break;
      }

      v17 = [v14 seed];
      v18 = [v17 isAppExtension];

      if ((v18 & 1) == 0)
      {
        v28 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [IXPlaceholder setAppExtensionPlaceholderPromises:error:];
        }

        v27 = _CreateError("[IXPlaceholder setAppExtensionPlaceholderPromises:error:]", 1707, @"IXErrorDomain", 4uLL, 0, 0, @"Attempt made to set an app placeholder as an app extension placeholder: %@", v29, v14);
LABEL_17:
        v30 = v44[5];
        v44[5] = v27;

        goto LABEL_18;
      }

      v19 = [v14 uniqueIdentifier];
      [v6 addObject:v19];

      if (v11 == ++v13)
      {
        v11 = [v10 countByEnumeratingWithState:&v39 objects:v50 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }

    v23 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [v14 bundleID];
      [(IXPlaceholder *)v24 setAppExtensionPlaceholderPromises:v9 error:v49];
    }

    v25 = [v14 bundleID];
    v27 = _CreateError("[IXPlaceholder setAppExtensionPlaceholderPromises:error:]", 1702, @"IXErrorDomain", 8uLL, 0, 0, @"Attempted to set app extension placeholder promise with bundle ID %@ that does not match required prefix of %@ for parent", v26, v25);

    goto LABEL_17;
  }

LABEL_10:

  v20 = +[IXServerConnection sharedConnection];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __58__IXPlaceholder_setAppExtensionPlaceholderPromises_error___block_invoke;
  v38[3] = &unk_1E85C58D0;
  v38[4] = self;
  v38[5] = &v43;
  v21 = [v20 synchronousRemoteObjectProxyWithErrorHandler:v38];
  v22 = [(IXDataPromise *)self uniqueIdentifier];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __58__IXPlaceholder_setAppExtensionPlaceholderPromises_error___block_invoke_306;
  v37[3] = &unk_1E85C58D0;
  v37[4] = self;
  v37[5] = &v43;
  [v21 _remote_IXSPlaceholder:v22 setAppExtensionPlaceholderPromiseUUIDs:v6 completion:v37];

LABEL_18:
  v31 = v44;
  if (a4)
  {
    v32 = v44[5];
    if (v32)
    {
      *a4 = v32;
      v31 = v44;
    }
  }

  v33 = v31[5] == 0;

  _Block_object_dispose(&v43, 8);
  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

void __58__IXPlaceholder_setAppExtensionPlaceholderPromises_error___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[IXPlaceholder setAppExtensionPlaceholderPromises:error:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set app extension placeholder promises on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __58__IXPlaceholder_setAppExtensionPlaceholderPromises_error___block_invoke_306(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[IXPlaceholder setAppExtensionPlaceholderPromises:error:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set app extension placeholder promises on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)appExtensionPlaceholderPromisesWithError:(id *)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__7;
  v46 = __Block_byref_object_dispose__7;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = __Block_byref_object_copy__7;
  v40 = __Block_byref_object_dispose__7;
  v41 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __58__IXPlaceholder_appExtensionPlaceholderPromisesWithError___block_invoke;
  v35[3] = &unk_1E85C5560;
  v35[4] = &v36;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v35];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __58__IXPlaceholder_appExtensionPlaceholderPromisesWithError___block_invoke_307;
  v34[3] = &unk_1E85C5588;
  v34[4] = &v36;
  v34[5] = &v42;
  [v6 _remote_IXSPlaceholder:v7 getAppExtensionPlaceholderPromises:v34];

  if (v37[5])
  {
    v8 = 0;
LABEL_21:
    v16 = 0;
    if (!a3)
    {
      goto LABEL_24;
    }

LABEL_22:
    if (!v16)
    {
      *a3 = v37[5];
    }

    goto LABEL_24;
  }

  v8 = objc_opt_new();
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v43[5];
  v10 = [v9 countByEnumeratingWithState:&v30 objects:v49 count:16];
  if (!v10)
  {
    goto LABEL_12;
  }

  v11 = *v31;
  while (2)
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v31 != v11)
      {
        objc_enumerationMutation(v9);
      }

      v13 = *(*(&v30 + 1) + 8 * i);
      v14 = [v13 clientPromiseClass];
      v15 = [[v14 alloc] initWithSeed:v13];
      if (!v15)
      {
        v17 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = NSStringFromClass(v14);
          [(IXPlaceholder *)v18 appExtensionPlaceholderPromisesWithError:v13, v48];
        }

        v19 = NSStringFromClass(v14);
        v21 = _CreateError("[IXPlaceholder appExtensionPlaceholderPromisesWithError:]", 1773, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to initialize promise class %@ with seed %@", v20, v19);
        goto LABEL_20;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v22 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          v23 = NSStringFromClass(v14);
          [(IXPlaceholder *)v13 appExtensionPlaceholderPromisesWithError:v23, v48];
        }

        v19 = NSStringFromClass(v14);
        v21 = _CreateError("[IXPlaceholder appExtensionPlaceholderPromisesWithError:]", 1776, @"IXErrorDomain", 1uLL, 0, 0, @"Seed object %@ should have been for a placeholder promise but was instead for class %@", v24, v13);
LABEL_20:
        v25 = v21;

        v26 = v37[5];
        v37[5] = v25;

        goto LABEL_21;
      }

      [v8 addObject:v15];
    }

    v10 = [v9 countByEnumeratingWithState:&v30 objects:v49 count:16];
    if (v10)
    {
      continue;
    }

    break;
  }

LABEL_12:

  v16 = [v8 copy];
  if (a3)
  {
    goto LABEL_22;
  }

LABEL_24:
  v27 = v16;
  _Block_object_dispose(&v36, 8);

  _Block_object_dispose(&v42, 8);
  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

void __58__IXPlaceholder_appExtensionPlaceholderPromisesWithError___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[IXPlaceholder appExtensionPlaceholderPromisesWithError:]_block_invoke";
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to get app extension placeholder promises: %@", &v7, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __58__IXPlaceholder_appExtensionPlaceholderPromisesWithError___block_invoke_307(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v8 = a3;
  if (v8)
  {
    v9 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 136315394;
      *&v16[4] = "[IXPlaceholder appExtensionPlaceholderPromisesWithError:]_block_invoke";
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_1DA47A000, v9, OS_LOG_TYPE_DEFAULT, "%s: Failed to get app extension placeholder promises: %@", v16, 0x16u);
    }

    v10 = (*(*(a1 + 32) + 8) + 40);
    v11 = a3;
  }

  else
  {
    if (!v6)
    {
      v13 = _CreateError("[IXPlaceholder appExtensionPlaceholderPromisesWithError:]_block_invoke", 1757, @"IXErrorDomain", 0x17uLL, 0, 0, @"No app extension placeholder promises are currently set.", v7, *v16);
      v14 = *(*(a1 + 32) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      goto LABEL_8;
    }

    v10 = (*(*(a1 + 40) + 8) + 40);
    v11 = a2;
  }

  objc_storeStrong(v10, v11);
LABEL_8:

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasPlugInPlaceholderPromises
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v3 = +[IXServerConnection sharedConnection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__IXPlaceholder_hasPlugInPlaceholderPromises__block_invoke;
  v8[3] = &unk_1E85C5998;
  v8[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v8];
  v5 = [(IXDataPromise *)self uniqueIdentifier];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__IXPlaceholder_hasPlugInPlaceholderPromises__block_invoke_315;
  v7[3] = &unk_1E85C59C0;
  v7[4] = self;
  v7[5] = &v9;
  [v4 _remote_IXSPlaceholder:v5 hasAppExtensionPlaceholderPromises:v7];

  LOBYTE(v3) = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v3;
}

void __45__IXPlaceholder_hasPlugInPlaceholderPromises__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[IXPlaceholder hasPlugInPlaceholderPromises]_block_invoke";
      v9 = 2112;
      v10 = v5;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has an icon promise: %@", &v7, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __45__IXPlaceholder_hasPlugInPlaceholderPromises__block_invoke_315(uint64_t a1, char a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXPlaceholder hasPlugInPlaceholderPromises]_block_invoke";
      v11 = 2112;
      v12 = v7;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to check if %@ has app extension placeholder promises: %@", &v9, 0x20u);
    }
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)setConfigurationCompleteWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__7;
  v18 = __Block_byref_object_dispose__7;
  v19 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__IXPlaceholder_setConfigurationCompleteWithError___block_invoke;
  v13[3] = &unk_1E85C58D0;
  v13[4] = self;
  v13[5] = &v14;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__IXPlaceholder_setConfigurationCompleteWithError___block_invoke_316;
  v12[3] = &unk_1E85C58D0;
  v12[4] = self;
  v12[5] = &v14;
  [v6 _remote_IXSPlaceholder:v7 setConfigurationCompleteWithCompletion:v12];

  v8 = v15;
  if (a3)
  {
    v9 = v15[5];
    if (v9)
    {
      *a3 = v9;
      v8 = v15;
    }
  }

  v10 = v8[5] == 0;
  _Block_object_dispose(&v14, 8);

  return v10;
}

void __51__IXPlaceholder_setConfigurationCompleteWithError___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[IXPlaceholder setConfigurationCompleteWithError:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set app extension placeholder promises on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __51__IXPlaceholder_setConfigurationCompleteWithError___block_invoke_316(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v8 = 136315650;
      v9 = "[IXPlaceholder setConfigurationCompleteWithError:]_block_invoke";
      v10 = 2112;
      v11 = v6;
      v12 = 2112;
      v13 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to set configuration complete on %@ : %@", &v8, 0x20u);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (IXPlaceholder)initWithSeed:(id)a3
{
  v4.receiver = self;
  v4.super_class = IXPlaceholder;
  return [(IXOwnedDataPromise *)&v4 initWithSeed:a3];
}

- (NSString)bundleName
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 bundleName];

  return v3;
}

- (NSString)bundleDirectoryName
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 bundleDirectoryName];

  return v3;
}

- (NSString)bundleID
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 bundleID];

  return v3;
}

- (unint64_t)placeholderType
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 placeholderType];

  return v3;
}

- (unint64_t)installType
{
  v2 = [(IXDataPromise *)self seed];
  v3 = [v2 installType];

  return v3;
}

- (MIStoreMetadata)metadata
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v3 = [(IXPlaceholder *)self metadataWithError:&v8];
  v4 = v8;
  if (v4)
  {
    v5 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = "[IXPlaceholder metadata]";
      v11 = 2112;
      v12 = self;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_1DA47A000, v5, OS_LOG_TYPE_DEFAULT, "%s: Failed to get metadata for %@: %@", buf, 0x20u);
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setMetadata:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v8 = 0;
  v4 = [(IXPlaceholder *)self setMetadata:a3 error:&v8];
  v5 = v8;
  if (!v4)
  {
    v6 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v10 = "[IXPlaceholder setMetadata:]";
      v11 = 2112;
      v12 = self;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_1DA47A000, v6, OS_LOG_TYPE_DEFAULT, "%s: Failed to set metadata for %@: %@", buf, 0x20u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)setMetadata:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = v6;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__7;
  v31 = __Block_byref_object_dispose__7;
  v32 = 0;
  if (!v6)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  obj = 0;
  v8 = IXEncodeRootObject(v6, &obj);
  objc_storeStrong(&v32, obj);
  if (!v8)
  {
LABEL_12:

    v11 = 0;
    goto LABEL_13;
  }

  v9 = [IXPromisedInMemoryData alloc];
  v10 = [(IXOwnedDataPromise *)self location];
  v11 = [(IXPromisedInMemoryData *)v9 initWithName:@"MIStoreMetadata data" client:15 data:v8 location:v10];

  if (!v11)
  {
    v16 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [IXPlaceholder setMetadata:error:];
    }

    v18 = _CreateError("[IXPlaceholder setMetadata:error:]", 1913, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to create data promise for serialized metadata", v17, v23);
    v19 = v28[5];
    v28[5] = v18;

    goto LABEL_12;
  }

  v12 = [(IXDataPromise *)v11 uniqueIdentifier];
LABEL_6:
  v13 = +[IXServerConnection sharedConnection];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __35__IXPlaceholder_setMetadata_error___block_invoke;
  v25[3] = &unk_1E85C58D0;
  v25[4] = self;
  v25[5] = &v27;
  v14 = [v13 synchronousRemoteObjectProxyWithErrorHandler:v25];
  v15 = [(IXDataPromise *)self uniqueIdentifier];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __35__IXPlaceholder_setMetadata_error___block_invoke_326;
  v24[3] = &unk_1E85C58D0;
  v24[4] = self;
  v24[5] = &v27;
  [v14 _remote_IXSPlaceholder:v15 setMetadataPromiseUUID:v12 completion:v24];

  if (v28[5] && v11)
  {
    [IXDataPromise cancelForReason:v11 client:"cancelForReason:client:error:" error:?];
  }

LABEL_13:
  v20 = v28[5];
  if (a4 && v20)
  {
    *a4 = v20;
    v20 = v28[5];
  }

  v21 = v20 == 0;

  _Block_object_dispose(&v27, 8);
  return v21;
}

void __35__IXPlaceholder_setMetadata_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXPlaceholder setMetadata:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get remote proxy for setting metadata promise on %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __35__IXPlaceholder_setMetadata_error___block_invoke_326(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXPlaceholder setMetadata:error:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set metadata promise UUID on %@ : %@", &v9, 0x20u);
    }
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

- (id)metadataWithError:(id *)a3
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__IXPlaceholder_metadataWithError___block_invoke;
  v16[3] = &unk_1E85C5560;
  v16[4] = &v17;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__IXPlaceholder_metadataWithError___block_invoke_2;
  v15[3] = &unk_1E85C6328;
  v15[4] = &v23;
  v15[5] = &v17;
  [v6 _remote_IXSPlaceholder:v7 getMetadataWithCompletion:v15];

  v9 = v24[5];
  if (!v9)
  {
    if (v18[5])
    {
      v9 = 0;
      if (!a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = _CreateError("[IXPlaceholder metadataWithError:]", 1957, @"IXErrorDomain", 0x17uLL, 0, 0, @"Metadata is not currently set.", v8, v14);
      v11 = v18[5];
      v18[5] = v10;

      v9 = v24[5];
      if (!a3)
      {
        goto LABEL_8;
      }
    }

    if (!v9)
    {
      *a3 = v18[5];
      v9 = v24[5];
    }
  }

LABEL_8:
  v12 = v9;
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v12;
}

void __35__IXPlaceholder_metadataWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)setSinfData:(id)a3 error:(id *)a4
{
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__7;
  v28 = __Block_byref_object_dispose__7;
  v29 = 0;
  if (v6)
  {
    v7 = [IXPromisedInMemoryData alloc];
    v8 = [(IXOwnedDataPromise *)self location];
    v9 = [(IXPromisedInMemoryData *)v7 initWithName:@"Placeholder Sinf Data" client:15 data:v6 location:v8];

    if (!v9)
    {
      v10 = IXGetLoggingHandle(kIXLoggingSubsystem);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [IXPlaceholder setSinfData:error:];
      }

      v12 = _CreateError("[IXPlaceholder setSinfData:error:]", 1977, @"IXErrorDomain", 1uLL, 0, 0, @"Failed to create data promise for sinf data", v11, v22[0]);
      v13 = v25[5];
      v25[5] = v12;

      v9 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v9 = 0;
  }

  v14 = [(IXDataPromise *)v9 uniqueIdentifier];
  v15 = +[IXServerConnection sharedConnection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __35__IXPlaceholder_setSinfData_error___block_invoke;
  v23[3] = &unk_1E85C58D0;
  v23[4] = self;
  v23[5] = &v24;
  v16 = [v15 synchronousRemoteObjectProxyWithErrorHandler:v23];
  v17 = [(IXDataPromise *)self uniqueIdentifier];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __35__IXPlaceholder_setSinfData_error___block_invoke_337;
  v22[3] = &unk_1E85C58D0;
  v22[4] = self;
  v22[5] = &v24;
  [v16 _remote_IXSPlaceholder:v17 setSinfPromiseUUID:v14 completion:v22];

  if (v9)
  {
    v18 = v25[5];
    if (v18)
    {
      [(IXDataPromise *)v9 cancelForReason:v18 client:15 error:0];
    }
  }

LABEL_10:
  v19 = v25[5];
  if (a4 && v19)
  {
    *a4 = v19;
    v19 = v25[5];
  }

  v20 = v19 == 0;

  _Block_object_dispose(&v24, 8);
  return v20;
}

void __35__IXPlaceholder_setSinfData_error___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v9 = 136315650;
    v10 = "[IXPlaceholder setSinfData:error:]_block_invoke";
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to get remote proxy for setting sinf promise on %@ : %@", &v9, 0x20u);
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

void __35__IXPlaceholder_setSinfData_error___block_invoke_337(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v9 = 136315650;
      v10 = "[IXPlaceholder setSinfData:error:]_block_invoke";
      v11 = 2112;
      v12 = v5;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_1DA47A000, v4, OS_LOG_TYPE_DEFAULT, "%s: Failed to set sinf promise UUID on %@ : %@", &v9, 0x20u);
    }
  }

  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v3;

  v8 = *MEMORY[0x1E69E9840];
}

- (id)sinfDataWithError:(id *)a3
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __35__IXPlaceholder_sinfDataWithError___block_invoke;
  v16[3] = &unk_1E85C5560;
  v16[4] = &v17;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __35__IXPlaceholder_sinfDataWithError___block_invoke_2;
  v15[3] = &unk_1E85C6350;
  v15[4] = &v23;
  v15[5] = &v17;
  [v6 _remote_IXSPlaceholder:v7 getSinfDataWithCompletion:v15];

  v9 = v24[5];
  if (!v9)
  {
    if (v18[5])
    {
      v9 = 0;
      if (!a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = _CreateError("[IXPlaceholder sinfDataWithError:]", 2021, @"IXErrorDomain", 0x17uLL, 0, 0, @"Sinf data is not currently set.", v8, v14);
      v11 = v18[5];
      v18[5] = v10;

      v9 = v24[5];
      if (!a3)
      {
        goto LABEL_8;
      }
    }

    if (!v9)
    {
      *a3 = v18[5];
      v9 = v24[5];
    }
  }

LABEL_8:
  v12 = v9;
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v12;
}

void __35__IXPlaceholder_sinfDataWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)launchProhibited:(BOOL *)a3 error:(id *)a4
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__7;
  v19 = __Block_byref_object_dispose__7;
  v20 = 0;
  v7 = +[IXServerConnection sharedConnection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __40__IXPlaceholder_launchProhibited_error___block_invoke;
  v14[3] = &unk_1E85C5560;
  v14[4] = &v15;
  v8 = [v7 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v9 = [(IXDataPromise *)self uniqueIdentifier];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__IXPlaceholder_launchProhibited_error___block_invoke_2;
  v13[3] = &unk_1E85C59E8;
  v13[4] = &v15;
  v13[5] = a3;
  [v8 _remote_IXSPlaceholder:v9 getLaunchProhibitedWithCompletion:v13];

  v10 = v16[5];
  if (a4 && v10)
  {
    *a4 = v10;
    v10 = v16[5];
  }

  v11 = v10 == 0;
  _Block_object_dispose(&v15, 8);

  return v11;
}

uint64_t __40__IXPlaceholder_launchProhibited_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      *v6 = a2;
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)setPlaceholderAttributes:(id)a3 error:(id *)a4
{
  v6 = a3;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__7;
  v48 = __Block_byref_object_dispose__7;
  v49 = 0;
  v7 = [(IXPlaceholder *)self placeholderType];
  v8 = v7;
  switch(v7)
  {
    case 1uLL:
      v20 = [v6 extensionDictionary];

      if (v20)
      {
        v21 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          [IXPlaceholder setPlaceholderAttributes:error:];
        }

        v14 = _CreateError("[IXPlaceholder setPlaceholderAttributes:error:]", 2079, @"IXErrorDomain", 0x11uLL, 0, 0, @"extensionDictionary does not make sense as an attribute of an app placeholder", v22, v41);
        goto LABEL_34;
      }

      v25 = [v6 exAppExtensionAttributes];

      if (v25)
      {
        v26 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          [IXPlaceholder setPlaceholderAttributes:error:];
        }

        v14 = _CreateError("[IXPlaceholder setPlaceholderAttributes:error:]", 2084, @"IXErrorDomain", 0x11uLL, 0, 0, @"exAppExtensionAttributes does not make sense as an attribute of an app placeholder", v27, v41);
        goto LABEL_34;
      }

      goto LABEL_26;
    case 2uLL:
      v15 = [v6 extensionDictionary];

      if (!v15)
      {
        v23 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          [IXPlaceholder setPlaceholderAttributes:error:];
        }

        v14 = _CreateError("[IXPlaceholder setPlaceholderAttributes:error:]", 2092, @"IXErrorDomain", 0x11uLL, 0, 0, @"extensionDictionary must be set in placeholder attributes for an app extension placeholder", v24, v41);
        goto LABEL_34;
      }

      v16 = [v6 extensionDictionary];
      v17 = [v16 objectForKeyedSubscript:@"NSExtensionPointIdentifier"];

      if (!v17)
      {
        v18 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          [IXPlaceholder setPlaceholderAttributes:error:];
        }

        v14 = _CreateError("[IXPlaceholder setPlaceholderAttributes:error:]", 2095, @"IXErrorDomain", 0x11uLL, 0, 0, @"extensionDictionary must have the NSExtensionPointIdentifier key set to a valid extension point identifier string", v19, v41);
        goto LABEL_34;
      }

      goto LABEL_26;
    case 3uLL:
      v9 = [v6 exAppExtensionAttributes];

      if (!v9)
      {
        v30 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [IXPlaceholder setPlaceholderAttributes:error:];
        }

        v14 = _CreateError("[IXPlaceholder setPlaceholderAttributes:error:]", 2103, @"IXErrorDomain", 0x11uLL, 0, 0, @"exAppExtensionAttributes must be set in placeholder attributes for an ExtensionKit app extension placeholder", v31, v41);
        goto LABEL_34;
      }

      v10 = [v6 exAppExtensionAttributes];
      v11 = [v10 objectForKeyedSubscript:@"EXExtensionPointIdentifier"];

      if (!v11)
      {
        v12 = IXGetLoggingHandle(kIXLoggingSubsystem);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          [IXPlaceholder setPlaceholderAttributes:error:];
        }

        v14 = _CreateError("[IXPlaceholder setPlaceholderAttributes:error:]", 2106, @"IXErrorDomain", 0x11uLL, 0, 0, @"exAppExtensionAttributes must have the EXExtensionPointIdentifier key set to a valid extension point identifier string", v13, v41);
LABEL_34:
        v32 = v45[5];
        v45[5] = v14;
LABEL_37:

        goto LABEL_38;
      }

LABEL_26:
      if (IXIsAppExtensionForPlaceholderType(v8))
      {
        if ([v6 launchProhibited])
        {
          v28 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            [IXPlaceholder setPlaceholderAttributes:error:];
          }

          v14 = _CreateError("[IXPlaceholder setPlaceholderAttributes:error:]", 2119, @"IXErrorDomain", 0x11uLL, 0, 0, @"launchProhibited = YES does not make sense as an attribute of an app extension placeholder", v29, v41);
          goto LABEL_34;
        }

        v33 = [v6 bundleVersion];

        if (!v33)
        {
          v39 = IXGetLoggingHandle(kIXLoggingSubsystem);
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            [IXPlaceholder setPlaceholderAttributes:error:];
          }

          v14 = _CreateError("[IXPlaceholder setPlaceholderAttributes:error:]", 2122, @"IXErrorDomain", 0x11uLL, 0, 0, @"bundleVersion must be set in placeholder attributes for an app extension placeholder", v40, v41);
          goto LABEL_34;
        }
      }

      v32 = +[IXServerConnection sharedConnection];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __48__IXPlaceholder_setPlaceholderAttributes_error___block_invoke;
      v43[3] = &unk_1E85C5560;
      v43[4] = &v44;
      v34 = [v32 synchronousRemoteObjectProxyWithErrorHandler:v43];
      v35 = [(IXDataPromise *)self uniqueIdentifier];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __48__IXPlaceholder_setPlaceholderAttributes_error___block_invoke_2;
      v42[3] = &unk_1E85C5560;
      v42[4] = &v44;
      [v34 _remote_IXSPlaceholder:v35 setAttributes:v6 completion:v42];

      goto LABEL_37;
  }

  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:{@"Unknown placeholder type: %lu", v7}];
LABEL_38:
  v36 = v45[5];
  if (a4 && v36)
  {
    *a4 = v36;
    v36 = v45[5];
  }

  v37 = v36 == 0;
  _Block_object_dispose(&v44, 8);

  return v37;
}

- (id)placeholderAttributesWithError:(id *)a3
{
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__7;
  v27 = __Block_byref_object_dispose__7;
  v28 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__7;
  v21 = __Block_byref_object_dispose__7;
  v22 = 0;
  v5 = +[IXServerConnection sharedConnection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __48__IXPlaceholder_placeholderAttributesWithError___block_invoke;
  v16[3] = &unk_1E85C5560;
  v16[4] = &v17;
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v16];
  v7 = [(IXDataPromise *)self uniqueIdentifier];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __48__IXPlaceholder_placeholderAttributesWithError___block_invoke_2;
  v15[3] = &unk_1E85C6378;
  v15[4] = &v23;
  v15[5] = &v17;
  [v6 _remote_IXSPlaceholder:v7 getAttributesWithCompletion:v15];

  v9 = v24[5];
  if (!v9)
  {
    if (v18[5])
    {
      v9 = 0;
      if (!a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v10 = _CreateError("[IXPlaceholder placeholderAttributesWithError:]", 2154, @"IXErrorDomain", 0x17uLL, 0, 0, @"Placeholder attributes are not currently set.", v8, v14);
      v11 = v18[5];
      v18[5] = v10;

      v9 = v24[5];
      if (!a3)
      {
        goto LABEL_8;
      }
    }

    if (!v9)
    {
      *a3 = v18[5];
      v9 = v24[5];
    }
  }

LABEL_8:
  v12 = v9;
  _Block_object_dispose(&v17, 8);

  _Block_object_dispose(&v23, 8);

  return v12;
}

void __48__IXPlaceholder_placeholderAttributesWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

+ (void)placeholderForRemovableSystemAppWithBundleID:client:installType:error:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to get system app placeholder location from LaunchServices for %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_pngDataForCGImage:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_pngDataForCGImage:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForInstallable:(void *)a1 client:installType:metadata:isFromSerializedPlaceholder:location:error:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForInstallable:(void *)a1 client:installType:metadata:isFromSerializedPlaceholder:location:error:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)placeholderFromSerializedPlaceholder:client:installType:location:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)placeholderFromSerializedPlaceholder:(void *)a1 client:installType:location:error:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_setEntitlementsFromBundleExecutableURL:(void *)a1 withBundleID:client:onPlaceholder:location:error:.cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_setEntitlementsFromBundleExecutableURL:(void *)a1 withBundleID:client:onPlaceholder:location:error:.cold.2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_setEntitlementsFromBundleExecutableURL:(void *)a1 withBundleID:(NSObject *)a2 client:onPlaceholder:location:error:.cold.3(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 path];
  v5[0] = 136315394;
  OUTLINED_FUNCTION_0_1();
  _os_log_debug_impl(&dword_1DA47A000, a2, OS_LOG_TYPE_DEBUG, "%s: Failed to get entitlements dictionary for %@", v5, 0x16u);

  v4 = *MEMORY[0x1E69E9840];
}

+ (void)_setEntitlementsFromBundleExecutableURL:withBundleID:client:onPlaceholder:location:error:.cold.4()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to set alternative entitlements promise for %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_setEntitlementsFromBundleExecutableURL:withBundleID:client:onPlaceholder:location:error:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.1()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to set metadata for %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to set placeholder attributes %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.3()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to set entitlements promise for %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.4()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to set icon promise for %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.6()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to set icon resources promise for %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.7()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 path];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.8()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 path];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.9()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 path];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.10()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to set app extension placeholders for %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.11()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to set configuration complete for %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.12()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to set localization dictionary for %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.13()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to create IXPlaceholder for app bundle ID %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.14()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [v0 path];
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:(void *)a1 client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.15(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.16()
{
  v4 = *MEMORY[0x1E69E9840];
  v3 = 136315650;
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_6_0(&dword_1DA47A000, v0, v1, "%s: Failed to find an existing app for delta package with bundle ID %@ : %@", v3);
  v2 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.17()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.18()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_placeholderForBundle:(void *)a1 client:withParent:installType:metadata:placeholderType:mayBeDeltaPackage:isFromSerializedPlaceholder:location:error:.cold.19(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 path];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_initAppExtensionPlaceholderWithBundleURL:bundleName:bundleID:parentPlaceholder:client:location:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_doInitWithSpecification:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_doInitWithSpecification:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_doInitWithSpecification:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_doInitWithSpecification:error:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_doInitWithSpecification:error:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_doInitWithSpecification:error:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_doInitWithSpecification:error:.cold.7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __38__IXPlaceholder_iconPromiseWithError___block_invoke_236_cold_1()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17(v0, *MEMORY[0x1E69E9840]);
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __38__IXPlaceholder_iconPromiseWithError___block_invoke_236_cold_2()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setIconResourcesPromise:withInfoPlistContent:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setIconResourcesPromise:withInfoPlistContent:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __64__IXPlaceholder_iconResourcesPromiseWithInfoPlistContent_error___block_invoke_260_cold_1()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17(v0, *MEMORY[0x1E69E9840]);
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __64__IXPlaceholder_iconResourcesPromiseWithInfoPlistContent_error___block_invoke_260_cold_2()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setInfoPlistLocalizations:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setInfoPlistLocalizations:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void __46__IXPlaceholder_entitlementsPromiseWithError___block_invoke_286_cold_1()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17(v0, *MEMORY[0x1E69E9840]);
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __46__IXPlaceholder_entitlementsPromiseWithError___block_invoke_286_cold_2()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x1E69E9840];
}

void __51__IXPlaceholder_infoPlistLoctablePromiseWithError___block_invoke_292_cold_1()
{
  OUTLINED_FUNCTION_16();
  v1 = OUTLINED_FUNCTION_17(v0, *MEMORY[0x1E69E9840]);
  v2 = NSStringFromClass(v1);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x2Au);

  v8 = *MEMORY[0x1E69E9840];
}

void __51__IXPlaceholder_infoPlistLoctablePromiseWithError___block_invoke_292_cold_2()
{
  OUTLINED_FUNCTION_15();
  v8 = *MEMORY[0x1E69E9840];
  v1 = NSStringFromClass(v0);
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_6();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x2Au);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setAppExtensionPlaceholderPromises:(_DWORD *)a3 error:.cold.1(void *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 136315906;
  OUTLINED_FUNCTION_5_0(a1, a2, a3);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Attempted to set app extension placeholder promise with bundle ID %@ that does not match required prefix of %@ for parent : %@", v4, v5);
}

- (void)setAppExtensionPlaceholderPromises:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_5();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)appExtensionPlaceholderPromisesWithError:(_DWORD *)a3 .cold.1(uint64_t a1, void *a2, _DWORD *a3)
{
  *a3 = 136315906;
  OUTLINED_FUNCTION_5_0(a1, a2, a3);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Seed object %@ should have been for a placeholder promise but was instead for class %@ : %@", v4, v5);
}

- (void)appExtensionPlaceholderPromisesWithError:(_DWORD *)a3 .cold.2(void *a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 136315906;
  OUTLINED_FUNCTION_5_0(a1, a2, a3);
  OUTLINED_FUNCTION_10(&dword_1DA47A000, "%s: Failed to initialize promise class %@ with seed %@ : %@", v4, v5);
}

- (void)setMetadata:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setSinfData:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPlaceholderAttributes:error:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPlaceholderAttributes:error:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPlaceholderAttributes:error:.cold.3()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPlaceholderAttributes:error:.cold.4()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPlaceholderAttributes:error:.cold.5()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPlaceholderAttributes:error:.cold.6()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPlaceholderAttributes:error:.cold.7()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPlaceholderAttributes:error:.cold.8()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

@end
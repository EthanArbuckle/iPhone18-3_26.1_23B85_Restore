uint64_t MobileSafariUIMain(int a1, char *const *a2)
{
  v95 = *MEMORY[0x277D85DE8];
  MEMORY[0x28223BE20]();
  v6 = (&v80 - v5);
  if (v4 >= 0x200)
  {
    v7 = 512;
  }

  else
  {
    v7 = v4;
  }

  bzero(&v80 - v5, v7);
  v8 = *a2;
  v87 = (a2 - 1);
  v88 = v6;
  *v6 = v8;
  *MEMORY[0x277D85E70] = 0;
  v81 = objc_autoreleasePoolPush();
  v84 = 0;
  v85 = 0;
  *&v83[8] = 0;
  v86 = 0;
  *v83 = (a1 - 1);
  LODWORD(v9) = 1;
  v10 = MEMORY[0x277D85E68];
  *&v11 = 138543362;
  v82 = v11;
  do
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v12 = v9;
            v13 = getopt_long_only(a1, a2, "P:T:U:", &longopts, 0);
            if (v13 <= 127)
            {
              break;
            }

            if (v13 <= 129)
            {
              if (v13 == 128)
              {
                if (![MEMORY[0x277D49A08] isInternalInstall])
                {

                  goto LABEL_53;
                }

                if (sandbox_extension_consume() == -1)
                {
                  v26 = WBS_LOG_CHANNEL_PREFIXTest();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    MobileSafariUIMain_cold_1(v91, v26, v92);
                  }
                }
              }

              else if ([MEMORY[0x277D49A08] isInternalInstall])
              {
                v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:*v10];

                v24 = WBS_LOG_CHANNEL_PREFIXTest();
                v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG);
                v86 = v23;
                if (v25)
                {
                  *buf = v82;
                  v94 = v23;
                  _os_log_debug_impl(&dword_215819000, v24, OS_LOG_TYPE_DEBUG, "Test type is %{public}@", buf, 0xCu);
                  v86 = v23;
                }
              }
            }

            else
            {
              switch(v13)
              {
                case 0x82:
                  if ([MEMORY[0x277D49A08] isInternalInstall])
                  {
                    v32 = v85;
                    if (!v85)
                    {
                      v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
                    }

                    v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:*v10];
                    v34 = [v33 componentsSeparatedByString:{@", "}];
                    v35 = v32;
                    v36 = v34;
                    v85 = v35;
                    [v35 addObjectsFromArray:v34];

                    v37 = WBS_LOG_CHANNEL_PREFIXTest();
                    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = v82;
                      v94 = v85;
                      _os_log_debug_impl(&dword_215819000, v37, OS_LOG_TYPE_DEBUG, "Test bundle names are %{public}@", buf, 0xCu);
                    }
                  }

                  break;
                case 0x83:
                  if ([MEMORY[0x277D49A08] isInternalInstall])
                  {
                    v27 = MEMORY[0x277CBEBC0];
                    v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:*v10];
                    v29 = [v27 fileURLWithPath:v28];

                    v30 = WBS_LOG_CHANNEL_PREFIXTest();
                    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
                    v84 = v29;
                    if (v31)
                    {
                      *buf = v82;
                      v94 = v29;
                      _os_log_debug_impl(&dword_215819000, v30, OS_LOG_TYPE_DEBUG, "Test suite URL is %{public}@", buf, 0xCu);
                      v84 = v29;
                    }
                  }

                  break;
                case 0x84:
                  if ([MEMORY[0x277D49A08] isInternalInstall])
                  {
                    v14 = MEMORY[0x277CBEBC0];
                    v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:*v10];
                    v16 = [v14 fileURLWithPath:v15];

                    v17 = WBS_LOG_CHANNEL_PREFIXTest();
                    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
                    *&v83[4] = v16;
                    if (v18)
                    {
                      *buf = v82;
                      v94 = v16;
                      _os_log_debug_impl(&dword_215819000, v17, OS_LOG_TYPE_DEBUG, "Test output URL is %{public}@", buf, 0xCu);
                      *&v83[4] = v16;
                    }
                  }

                  break;
              }
            }
          }

          if (v13 <= 79)
          {
            break;
          }

          if ((v13 - 84) < 2 || v13 == 80)
          {
            [Application commandLineTestOption:v13 arg:*v10];
          }
        }

        if (v13 != 1)
        {
          break;
        }

        v88[v9] = v87[*MEMORY[0x277D85E78]];
        LODWORD(v9) = v9 + 1;
      }

      if (v13 != 63)
      {
        break;
      }

      v19 = MEMORY[0x277D85E78];
      v20 = v87[*MEMORY[0x277D85E78]];
      v88[v9] = v20;
      v9 = v9 + 1;
      NSLog(@"Unknown command-line switch: %s", v20);
      v21 = *v19;
      if (v21 < *v83)
      {
        v22 = a2[v21];
        if (*v22 != 45)
        {
          v88[v9] = v22;
          LODWORD(v9) = v12 + 2;
          *MEMORY[0x277D85E78] = v21 + 1;
        }
      }
    }
  }

  while (v13 != -1);
  v88[v9] = 0;
  v38 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v39 = [v38 objectAtIndex:0];

  v40 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v89[0] = *MEMORY[0x277D7B818];
  v41 = [v39 stringByAppendingPathComponent:@"WebKit/Databases"];
  v90[0] = v41;
  v89[1] = *MEMORY[0x277D7B828];
  v87 = v39;
  v42 = [v39 stringByAppendingPathComponent:@"WebKit/LocalStorage"];
  v43 = MEMORY[0x277CBEC38];
  v90[1] = v42;
  v90[2] = MEMORY[0x277CBEC38];
  v89[2] = @"CloudTabsEnabled";
  v89[3] = @"FontAutoSizeSetting";
  v44 = [MEMORY[0x277CCABB0] numberWithInt:_SFDeviceIsPad() ^ 1];
  v90[3] = v44;
  v90[4] = &unk_2827FBF80;
  v89[4] = @"LayoutInterval";
  v89[5] = @"MemoryWarningSleepInterval";
  v90[5] = &unk_2827FC680;
  v90[6] = &unk_2827FC690;
  v89[6] = @"SearchEngineSpamInterval";
  v89[7] = @"SpeculativeLoading";
  v45 = *MEMORY[0x277D49BE8];
  v90[7] = v43;
  v90[8] = v43;
  v46 = *MEMORY[0x277D4A478];
  v89[8] = v45;
  v89[9] = v46;
  v47 = *MEMORY[0x277D49CD8];
  v89[10] = *MEMORY[0x277D49BF8];
  v89[11] = v47;
  v90[9] = v43;
  v90[10] = v43;
  v48 = *MEMORY[0x277D4A490];
  v90[11] = MEMORY[0x277CBEC28];
  v90[12] = v43;
  v49 = *MEMORY[0x277D7B5C8];
  v89[12] = v48;
  v89[13] = v49;
  v90[13] = v43;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:14];
  [v40 registerDefaults:v50];

  [v40 safari_registerMobileSafariDefaults];
  v52 = v85;
  v51 = v86;
  v54 = *&v83[4];
  v53 = v84;
  if (!v86)
  {
LABEL_44:

    objc_autoreleasePoolPop(v81);
    WBSSetUpAccessToAppDataContainerWithIdentifier();
    UIApplicationMain(v12, v88, @"Application", @"Application");
    return 0;
  }

  if (v84)
  {
    if (*&v83[4])
    {
      if ([Application prepareTestControllerWithType:v86 suiteURL:v84 bundleNames:v85 outputURL:*&v83[4]])
      {
        goto LABEL_44;
      }

      v72 = WBS_LOG_CHANNEL_PREFIXTest();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        MobileSafariUIMain_cold_2(v72, v73, v74, v75, v76, v77, v78, v79);
      }
    }

    else
    {
      v64 = WBS_LOG_CHANNEL_PREFIXTest();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        MobileSafariUIMain_cold_3(v64, v65, v66, v67, v68, v69, v70, v71);
      }
    }
  }

  else
  {
    v56 = WBS_LOG_CHANNEL_PREFIXTest();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      MobileSafariUIMain_cold_4(v56, v57, v58, v59, v60, v61, v62, v63);
    }
  }

LABEL_53:
  objc_autoreleasePoolPop(v81);
  return 1;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSignposts()
{
  if (WBS_LOG_CHANNEL_PREFIXSignposts_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSignposts_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSignposts_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXExtensions()
{
  if (WBS_LOG_CHANNEL_PREFIXExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXExtensions_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXContentBlockers()
{
  if (WBS_LOG_CHANNEL_PREFIXContentBlockers_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXContentBlockers_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXContentBlockers_log;
}

void sub_21581DC14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXTabs()
{
  if (WBS_LOG_CHANNEL_PREFIXTabs_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTabs_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTabs_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXLayout()
{
  if (WBS_LOG_CHANNEL_PREFIXLayout_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXLayout_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXLayout_log;
}

__CFString *stringForCurrentCapsuleLayoutPreference()
{
  v0 = [MEMORY[0x277D28C70] sharedFeatureManager];
  v1 = [v0 preferredCapsuleLayoutStyle];

  v2 = @"Top";
  if (v1 == 1)
  {
    v2 = @"BottomWithToolbar";
  }

  if (v1 == 3)
  {
    return @"Minibar";
  }

  else
  {
    return v2;
  }
}

void sub_21581E9F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v5 + 32));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

id SafariThumbnailCacheDirectoryPath()
{
  v0 = SafariThumbnailCacheDirectoryPath_path;
  if (!SafariThumbnailCacheDirectoryPath_path)
  {
    v1 = SafariSettingsDirectoryPath();
    v2 = [v1 stringByAppendingPathComponent:@"Thumbnails"];
    v3 = SafariThumbnailCacheDirectoryPath_path;
    SafariThumbnailCacheDirectoryPath_path = v2;

    v4 = [MEMORY[0x277CCAA00] defaultManager];
    [v4 _web_createDirectoryAtPathWithIntermediateDirectories:SafariThumbnailCacheDirectoryPath_path attributes:0];

    v0 = SafariThumbnailCacheDirectoryPath_path;
  }

  return v0;
}

id SafariSettingsDirectoryPath()
{
  v0 = SafariSettingsDirectoryPath_path;
  if (!SafariSettingsDirectoryPath_path)
  {
    v1 = SafariLibraryPath();
    v2 = [v1 stringByAppendingPathComponent:@"Safari"];
    v3 = SafariSettingsDirectoryPath_path;
    SafariSettingsDirectoryPath_path = v2;

    v4 = [MEMORY[0x277CCAA00] defaultManager];
    [v4 _web_createDirectoryAtPathWithIntermediateDirectories:SafariSettingsDirectoryPath_path attributes:0];

    v0 = SafariSettingsDirectoryPath_path;
  }

  return v0;
}

void __SafariLibraryPath_block_invoke()
{
  v0 = _SFSafariContainerPath();
  v3 = v0;
  if (v0)
  {
    [v0 stringByAppendingPathComponent:@"Library"];
  }

  else
  {
    SafariNonContaineredLibraryPath();
  }
  v1 = ;
  v2 = SafariLibraryPath_path;
  SafariLibraryPath_path = v1;
}

id sub_21581ECEC()
{
  v1 = v0;
  v2 = sub_215A6F910();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20]();
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v1[OBJC_IVAR___BackgroundTaskExpirationObserver_shouldPrepareBackgroundTaskExpiration] = 0;
  v6 = OBJC_IVAR___BackgroundTaskExpirationObserver_startTime;
  sub_215A6F8F0();
  sub_215A6F8A0();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  *&v1[v6] = v8;
  v16.receiver = v1;
  v16.super_class = BackgroundTaskExpirationObserver;
  v9 = objc_msgSendSuper2(&v16, sel_init);
  v10 = objc_opt_self();
  v11 = v9;
  v12 = [v10 defaultCenter];
  [v12 addObserver:v11 selector:sel_willEnterForeground name:*MEMORY[0x277D76758] object:0];

  v13 = [v10 defaultCenter];
  [v13 addObserver:v11 selector:sel_didEnterBackground name:*MEMORY[0x277D76660] object:0];

  v14 = [v10 defaultCenter];
  [v14 addObserver:v11 selector:sel_backgroundTaskWillExpire name:*MEMORY[0x277D772F8] object:0];

  return v11;
}

void sub_21581F1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21581F3D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2158202C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SafariLibraryPath()
{
  if (SafariLibraryPath_onceToken != -1)
  {
    SafariLibraryPath_cold_1();
  }

  v1 = SafariLibraryPath_path;

  return v1;
}

void sub_2158213A0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_92(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, OS_LOG_TYPE_DEFAULT, a4, (v5 - 144), 0x16u);
}

void sub_2158224F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id extensionOverridenStartPageURLForTab(void *a1)
{
  v1 = [a1 webExtensionsController];
  v2 = [v1 extensionOverriddenStartPageURL];

  return v2;
}

void OUTLINED_FUNCTION_75(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, v5, OS_LOG_TYPE_DEFAULT, a4, a5, 0xCu);
}

void performBlockForBrowserControllers(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = +[Application sharedApplication];
  v3 = [v2 browserControllers];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v1[2](v1, *(*(&v8 + 1) + 8 * v7++));
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

uint64_t WBS_LOG_CHANNEL_PREFIXCloudTabs()
{
  if (WBS_LOG_CHANNEL_PREFIXCloudTabs_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCloudTabs_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCloudTabs_log;
}

uint64_t OUTLINED_FUNCTION_1_0(uint64_t result, uint64_t a2, float a3)
{
  *a2 = a3;
  *(a2 + 4) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  return [v38 countByEnumeratingWithState:&a27 objects:&a38 count:16];
}

void OUTLINED_FUNCTION_8(id a1)
{
}

void sub_215824FA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id sub_21582529C()
{
  result = [objc_allocWithZone(FallbackTabSnapshotCacheProvider) init];
  qword_2811A2790 = result;
  return result;
}

uint64_t sub_215825500()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_215825650()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21582568C(uint64_t a1, int a2, void *aBlock, uint64_t a4, void *a5, uint64_t a6)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = (a1 + *a5);
  *v11 = a6;
  v11[1] = v10;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCycler()
{
  if (WBS_LOG_CHANNEL_PREFIXCycler_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCycler_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCycler_log;
}

id sub_2158261F4(void *a1)
{
  *&v1[OBJC_IVAR___BrowserSplitViewController____lazy_storage___sidebarButtonItem] = 0;
  *&v1[OBJC_IVAR___BrowserSplitViewController____lazy_storage___newTabGroupButtonItem] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectUnownedInit();
  v8.receiver = v1;
  v8.super_class = BrowserSplitViewController;
  v3 = objc_msgSendSuper2(&v8, sel_initWithStyle_, 1);
  [v3 setDelegate_];
  result = [a1 rootViewController];
  if (result)
  {
    v5 = result;
    v6 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

    [v6 setNavigationBarHidden:1 animated:0];
    v7 = v6;
    [v3 setViewController:v7 forColumn:2];
    [v3 setViewController:v7 forColumn:3];

    if ([v3 showsSidebarByDefault])
    {
      [v3 setUpSidebarContentIfNeeded];
    }

    [v3 setDisplayModeButtonVisibility_];
    [v3 setMinimumPrimaryColumnWidth_];
    [v3 setMaximumPrimaryColumnWidth_];
    [v3 setMinimumSecondaryColumnWidth_];
    [v3 currentSidebarWidth];
    [v3 setPreferredPrimaryColumnWidth_];
    [v3 setPresentsWithGesture_];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall BrowserSplitViewController.viewDidLoad()()
{
  v1 = v0;
  v2 = sub_215A700D0();
  MEMORY[0x28223BE20](v2);
  v18.receiver = v0;
  v18.super_class = BrowserSplitViewController;
  objc_msgSendSuper2(&v18, sel_viewDidLoad);
  v3 = [v0 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = v3;
  v5 = [objc_opt_self() clearColor];
  [v4 setBackgroundColor_];

  v6 = [v1 view];
  if (!v6)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v7 = v6;
  [v6 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v19.origin.x = v9;
  v19.origin.y = v11;
  v19.size.width = v13;
  v19.size.height = v15;
  CGRectGetWidth(v19);
  _SFSizeClassForWidth();
  sub_215A70970();
  sub_215A700C0();
  sub_215A70980();
  v16 = [v1 view];
  if (v16)
  {
    v17 = v16;
    [v16 layoutIfNeeded];

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t WBS_LOG_CHANNEL_PREFIXUserInteraction()
{
  if (WBS_LOG_CHANNEL_PREFIXUserInteraction_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXUserInteraction_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXUserInteraction_log;
}

void sub_215826C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void setPrimaryWindowEntityFromBrowserController(BrowserController *a1)
{
  obj = a1;
  v1 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained(&setPrimaryWindowEntityFromBrowserController(BrowserController *)::currentPrimaryBrowserController);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[33] view];
    [v4 safari_updateWithPrimaryState:0];
  }

  objc_storeWeak(&setPrimaryWindowEntityFromBrowserController(BrowserController *)::currentPrimaryBrowserController, obj);

  objc_autoreleasePoolPop(v1);
  v5 = obj;
  if (obj)
  {
    v6 = [(BrowserRootViewController *)obj->_rootViewController view];
    [v6 safari_updateWithPrimaryState:1];

    v5 = obj;
  }
}

void sub_2158278B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215827E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2158282B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_2158283F4(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  sub_215A70E20();
  MEMORY[0x216073910](a2);
  v6 = sub_215A70E50();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_2158284EC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_2158284EC(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_21582890C();
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_215A53374();
      a2 = v7;
      goto LABEL_12;
    }

    sub_215828648();
  }

  v8 = *v3;
  sub_215A70E20();
  MEMORY[0x216073910](a1);
  v9 = sub_215A70E50();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for _SFBarItem(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = a1;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_215A70DC0();
  __break(1u);
}

uint64_t sub_215828648()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE58);
  result = sub_215A70BF0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      sub_215A70E20();
      MEMORY[0x216073910](v15);
      result = sub_215A70E50();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v0;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_2158288C4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21582890C()
{
  v1 = v0;
  v2 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EE58);
  result = sub_215A70BF0();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      sub_215A70E20();
      MEMORY[0x216073910](v16);
      result = sub_215A70E50();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    v1 = v0;
    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_215828C20(uint64_t a1)
{
  v3 = *v1;
  sub_215A70E20();
  MEMORY[0x216073910](a1);
  v4 = sub_215A70E50();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_215A53374();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_215828D2C(v6);
  result = v11;
  *v1 = v12;
  return result;
}

unint64_t sub_215828D2C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_215A70BA0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_215A70E20();
        MEMORY[0x216073910](v10);
        v11 = sub_215A70E50() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

BOOL sub_215828ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_215828F0C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_215A70E20();
  MEMORY[0x216073910](a1);
  v4 = sub_215A70E50();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTabView()
{
  if (WBS_LOG_CHANNEL_PREFIXTabView_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTabView_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTabView_log;
}

void sub_21582A5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_21582ACCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21582B58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_21582BED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v16 = v14;

  _Unwind_Resume(a1);
}

void sub_21582D1F8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 136));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_215830800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXPageLoading()
{
  if (WBS_LOG_CHANNEL_PREFIXPageLoading_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPageLoading_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPageLoading_log;
}

void sub_2158317E4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXContinuity()
{
  if (WBS_LOG_CHANNEL_PREFIXContinuity_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXContinuity_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXContinuity_log;
}

void sub_215835C28(uint64_t a1)
{
  v3 = [v1 browserController];
  v4 = [v3 rootViewController];

  if (!v4)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = [v4 view];

  if (!v5)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    return;
  }

  [v5 setNeedsLayout];

  if ((a1 - 4) >= 0xFFFFFFFFFFFFFFFELL && ([v1 isCollapsed] & 1) == 0)
  {
    [v1 setUpSidebarContentIfNeeded];
  }

  [v1 updateAdditionalSafeAreaInsetsFor:a1 isCollapsed:{objc_msgSend(v1, sel_isCollapsed)}];
  v6 = [v1 browserController];
  v7 = [v6 rootViewController];

  if (!v7)
  {
    goto LABEL_17;
  }

  v10 = [v7 tabSwitcherViewController];

  if (v10)
  {
    v8 = [v1 isCollapsed] ^ 1;
    if (a1 == 2)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    [v10 setShowsSidebarToggle_];
  }
}

id LibraryContentController.init(configuration:)(void *a1)
{
  *&v1[OBJC_IVAR___LibraryContentController____lazy_storage___libraryViewController] = 0;
  *&v1[OBJC_IVAR___LibraryContentController____lazy_storage___navigationController] = 0;
  *&v1[OBJC_IVAR___LibraryContentController_expandedTabGroupUUIDs] = MEMORY[0x277D84FA0];
  *&v1[OBJC_IVAR___LibraryContentController_cloudTabsSection] = [objc_allocWithZone(type metadata accessor for CloudTabsLibrarySectionController()) initWithConfiguration_];
  v3 = [objc_allocWithZone(MainLibrarySectionController) initWithConfiguration_];
  *&v1[OBJC_IVAR___LibraryContentController_savedSection] = v3;
  v7.receiver = v1;
  v7.super_class = LibraryContentController;
  v4 = objc_msgSendSuper2(&v7, sel_initWithConfiguration_, a1);
  [v4 setUpTabGroupExpansionStateHandlers];
  v5 = [objc_opt_self() defaultCenter];
  [v5 addObserver:v4 selector:sel_reloadCloudTabsSection name:*MEMORY[0x277D4A930] object:0];

  return v4;
}

{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration_];

  return v2;
}

char *sub_2158365B4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR___BookmarksLibraryItemController____lazy_storage___rootViewController] = 0;
  swift_unknownObjectWeakInit();
  *&v4[OBJC_IVAR___BookmarksLibraryItemController_rootFolder] = a2;
  *&v4[OBJC_IVAR___BookmarksLibraryItemController_bookmarkCollection] = a3;
  sub_2159F7DA8(0, &unk_2811A2530);
  v8 = a2;
  v9 = a3;
  v10 = [v9 readingListFolder];
  LOBYTE(a3) = sub_215A70A80();

  if (a3)
  {
    v11 = 4;
  }

  else
  {
    v11 = -1;
  }

  objc_allocWithZone(type metadata accessor for BookmarksViewContentProvider());
  v12 = v9;
  *&v4[OBJC_IVAR___BookmarksLibraryItemController_contentProvider] = sub_215A2A9C4(v12, v11);
  v26.receiver = v4;
  v26.super_class = BookmarksLibraryItemController;
  v13 = objc_msgSendSuper2(&v26, sel_initWithConfiguration_, a1);
  v14 = OBJC_IVAR___BookmarksLibraryItemController_contentProvider;
  *(*&v13[OBJC_IVAR___BookmarksLibraryItemController_contentProvider] + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_delegate + 8) = &off_2827BC258;
  swift_unknownObjectWeakAssign();
  v15 = *&v13[v14];
  v16 = v13;
  v17 = v15;
  v18 = [a1 navigationIntentHandler];
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  v19 = *&v13[v14];
  v20 = [a1 tabGroupProvider];
  swift_unknownObjectWeakAssign();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong registerTabGroupManagerObserver_];
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  v22 = *&v13[v14];
  v23 = [a1 linkPreviewProvider];
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  v24 = [a1 bookmarksNavigationControllerDelegate];

  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v16;
}

unint64_t sub_2158368B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7EA30);
    v3 = sub_215A70D10();
    v4 = a1 + 32;

    while (1)
    {
      sub_215A07074(v4, &v13, &qword_27CA7EB60);
      v5 = v13;
      v6 = v14;
      result = sub_215A39A1C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_215A07368(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2158369E0()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_bookmarksDidUpdate name:*MEMORY[0x277D7B608] object:0];
  [v1 addObserver:v0 selector:sel_bookmarksDidUpdate name:*MEMORY[0x277D7B618] object:0];
  [v1 addObserver:v0 selector:sel_bookmarksDidUpdate name:*MEMORY[0x277D29058] object:0];
  if ((*(v0 + OBJC_IVAR____TtC14MobileSafariUI28BookmarksViewContentProvider_loadingOptions) & 6) != 0)
  {
    [v1 addObserver:v0 selector:sel_readingListDidUpdate name:@"ReadingListBookmarkDidUpdateNotification" object:0];
    [v1 addObserver:v0 selector:sel_readingListDidUpdate name:@"ReadingListBookmarkAddedNotification" object:0];
    [v1 addObserver:v0 selector:sel_readingListItemDidUpdate_ name:@"ReadingListBookmarkMetadataDidUpdateNotification" object:0];
  }
}

id sub_215836BEC(uint64_t a1)
{
  v2 = objc_opt_self();
  result = [v2 mainBookmarkCollection];
  if (result)
  {
    v4 = result;
    v5 = [result readingListFolder];

    result = [v2 mainBookmarkCollection];
    if (result)
    {
      v6 = result;
      v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConfiguration:a1 folder:v5 collection:result];

      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_215836D04()
{
  v1 = [v0 configuration];
  v2 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v11 = sub_21583EDBC;
  v12 = v2;
  v7 = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = sub_21583EDC4;
  v10 = &block_descriptor_3;
  v3 = _Block_copy(&v7);

  [v1 setIsTabGroupExpanded_];
  _Block_release(v3);

  v4 = [v0 configuration];
  v5 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v11 = sub_215A03394;
  v12 = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = 1107296256;
  v9 = sub_215A01020;
  v10 = &block_descriptor_7;
  v6 = _Block_copy(&v7);

  [v4 setSetTabGroupExpanded_];
  _Block_release(v6);
}

char *sub_215836F6C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_215A96980;
  v3 = [a1 configuration];
  v4 = [objc_allocWithZone(TabGroupLibrarySectionController) initWithConfiguration:v3 forNamedGroups:0];

  *(v2 + 32) = v4;
  v5 = [a1 configuration];
  v6 = [objc_allocWithZone(TabGroupLibrarySectionController) initWithConfiguration:v5 forNamedGroups:1];

  *(v2 + 40) = v6;
  v7 = [a1 cloudTabsSection];
  MEMORY[0x2160730A0]();
  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215A70640();
  }

  sub_215A70660();
  v8 = [a1 savedSection];
  MEMORY[0x2160730A0]();
  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_215A70640();
  }

  sub_215A70660();
  v9 = [a1 configuration];
  v10 = objc_allocWithZone(type metadata accessor for LibraryContentViewController());
  v11 = sub_215837314(v9, v2);
  [a1 updateProfilePickerFor_];
  v12 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v13 = &v11[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_selectedItemProvider];
  *v13 = sub_21583C860;
  v13[1] = v12;

  v14 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v15 = &v11[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_didUpdateEditingHandler];
  *v15 = sub_215A03464;
  v15[1] = v14;

  return v11;
}

uint64_t sub_215837234()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

char *sub_21583726C()
{
  v1 = OBJC_IVAR___LibraryContentController____lazy_storage___libraryViewController;
  v2 = *&v0[OBJC_IVAR___LibraryContentController____lazy_storage___libraryViewController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___LibraryContentController____lazy_storage___libraryViewController];
  }

  else
  {
    v4 = sub_215836F6C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_215837314(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView] = 0;
  v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_isSelectingItem] = 0;
  *&v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags] = 0;
  v5 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabUUIDToIconRegistration;
  *&v2[v5] = sub_215837490(MEMORY[0x277D84F90]);
  v6 = &v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_didUpdateEditingHandler];
  *v6 = CGSizeMake;
  v6[1] = 0;
  v7 = &v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_selectedItemProvider];
  *v7 = sub_215A0BE7C;
  v7[1] = 0;
  *&v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionDataSource] = 0;
  *&v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionLayout] = 0;
  v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_needsUpdateSelection] = 0;
  v8 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_hoverRecognizer;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x277D755A0]) init];
  v9 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController;
  *&v2[v9] = [objc_allocWithZone(MEMORY[0x277D28D88]) init];
  v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewSnapshotsNeedUpdate] = 0;
  *&v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_displayedProfile] = 0;
  *&v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_profilePickerMenu] = 0;
  *&v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_configuration] = a1;
  *&v2[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_sections] = a2;
  v11.receiver = v2;
  v11.super_class = type metadata accessor for LibraryContentViewController();
  return objc_msgSendSuper2(&v11, sel_initWithNibName_bundle_, 0, 0);
}

unint64_t sub_215837490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EB98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EB80);
    v7 = sub_215A70D10();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_215A07074(v9, v5, &qword_27CA7EB98);
      result = sub_215A39A94(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_215A6F960();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_2158376E0(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 configuration];
  v5 = [v4 tabGroupProvider];

  if (v5)
  {
    if ([v5 hasMultipleProfiles])
    {
      v6 = [v5 activeProfile];
      v7 = [v5 menuForSwitchingProfiles];
      v8 = *(a1 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_profilePickerMenu);
      *(a1 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_profilePickerMenu) = v7;
      v9 = v7;

      sub_215837894();
      v13 = *(a1 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_displayedProfile);
      *(a1 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_displayedProfile) = v6;
      v10 = v6;
      sub_215837A94(v13);
      swift_unknownObjectRelease();
    }

    else
    {
      v11 = *(a1 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_profilePickerMenu);
      *(a1 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_profilePickerMenu) = 0;

      sub_215837894();
      v12 = *(a1 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_displayedProfile);
      *(a1 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_displayedProfile) = 0;
      v13 = v12;
      sub_215837A94(v12);
      swift_unknownObjectRelease();
    }
  }
}

void sub_215837894()
{
  if (![v0 isViewLoaded])
  {
    return;
  }

  [v0 loadViewIfNeeded];
  v1 = *&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
  if (!v1)
  {
    goto LABEL_21;
  }

  v2 = v1;
  v3 = sub_215A70500();
  v4 = [v2 visibleSupplementaryViewsOfKind_];

  sub_2159F7DA8(0, &qword_27CA7E2C0);
  v5 = sub_215A705E0();

  if (v5 >> 62)
  {
    if (sub_215A70CD0())
    {
      goto LABEL_5;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v5 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x216073710](0, v5);
      goto LABEL_8;
    }

    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v6 = *(v5 + 32);
LABEL_8:
      v13 = v6;

      _s17ProfilePickerCellCMa();
      v7 = swift_dynamicCastClass();
      if (v7)
      {
        v8 = *&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_profilePickerMenu];
        v9 = *(v7 + OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_menu);
        *(v7 + OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_menu) = v8;
        v10 = v7;
        v12 = v8;

        [v10 setNeedsUpdateConfiguration];
        v11 = v12;
      }

      else
      {
        v11 = v13;
      }

      return;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }
}

void sub_215837A94(uint64_t a1)
{
  if ([v1 isViewLoaded])
  {
    v3 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_displayedProfile;
    if ((*&v1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_displayedProfile] == 0) == (a1 == 0))
    {
      v7 = sub_215A0DDDC();
      if (!v7)
      {
        return;
      }

      v4 = v7;
      v8 = *&v1[v3];
      v9 = *&v7[OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_profile];
      *&v7[OBJC_IVAR____TtCC14MobileSafariUI28LibraryContentViewController17ProfilePickerCell_profile] = v8;
      v10 = v8;

      [v4 setNeedsUpdateConfiguration];
    }

    else
    {
      v4 = sub_21583D9A8();
      v10 = [objc_allocWithZone(MEMORY[0x277D752C0]) init];
      if (*&v1[v3])
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
        v5 = swift_allocObject();
        *(v5 + 16) = xmmword_215A96990;
        *(v5 + 32) = sub_215A0D320();
        sub_2159F7DA8(0, &qword_27CA7E2D8);
        v6 = sub_215A705D0();

        [v10 setBoundarySupplementaryItems_];
      }

      [v4 setConfiguration_];
    }
  }
}

id sub_215837CAC()
{
  v1 = sub_215A700D0();
  MEMORY[0x28223BE20](v1);
  v2 = OBJC_IVAR___LibraryContentController____lazy_storage___navigationController;
  v3 = *&v0[OBJC_IVAR___LibraryContentController____lazy_storage___navigationController];
  if (v3)
  {
    v4 = *&v0[OBJC_IVAR___LibraryContentController____lazy_storage___navigationController];
  }

  else
  {
    v5 = [v0 libraryViewController];
    v6 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

    [v6 _setClipUnderlapWhileTransitioning_];
    [v6 setDelegate_];
    v7 = v6;
    v8 = v0;
    sub_215A70970();
    sub_215A700A0();
    sub_215A70980();

    v9 = *&v0[v2];
    *&v8[v2] = v7;
    v4 = v7;

    v3 = 0;
  }

  v10 = v3;
  return v4;
}

void sub_215838644(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_215839880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a38, 8);
  _Unwind_Resume(a1);
}

void sub_21583BDBC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_21583C554()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF78);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v22 - v3;
  v5 = sub_215A6FA10();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([v0 isEditing] & 1) == 0)
  {
    v9 = *&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_selectedItemProvider];

    v11 = v9(v10);

    if (!v11)
    {
LABEL_5:
      [v1 loadViewIfNeeded];
      v13 = *&v1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
      if (v13)
      {
        [v13 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
        return;
      }

      __break(1u);
      goto LABEL_15;
    }

    v12 = sub_21583D558();
    v22[1] = v11;
    sub_215A702D0();

    if ((*(v6 + 48))(v4, 1, v5) == 1)
    {

      sub_21583F14C(v4, &qword_27CA7DF78);
      goto LABEL_5;
    }

    (*(v6 + 32))(v8, v4, v5);
    [v1 loadViewIfNeeded];
    v14 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView;
    v15 = *&v1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
    if (!v15)
    {
LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    v16 = [v15 indexPathsForSelectedItems];
    if (v16)
    {
      v17 = v16;
      v18 = sub_215A705E0();

      LOBYTE(v17) = sub_21583FE24(v8, v18);

      if (v17)
      {
        (*(v6 + 8))(v8, v5);

        return;
      }
    }

    [v1 loadViewIfNeeded];
    v19 = *&v1[v14];
    if (!v19)
    {
      goto LABEL_16;
    }

    v20 = v19;
    v21 = sub_215A6F9B0();
    [v20 selectItemAtIndexPath:v21 animated:0 scrollPosition:0];

    (*(v6 + 8))(v8, v5);
  }
}

id sub_21583C868()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = [Strong configuration];

  v2 = [v1 libraryItemOpenHandler];
  if (!v2)
  {
    return 0;
  }

  v3 = swift_unknownObjectUnownedLoadStrong();
  v4 = [v3 configuration];

  v5 = [v4 tabGroupProvider];
  if (!v5)
  {
LABEL_22:
    swift_unknownObjectRelease();
    return 0;
  }

  v6 = [v2 activeLibraryType];
  if (v6)
  {
    v7 = sub_215A70540();
    v9 = v8;
    if (v7 == sub_215A70540() && v9 == v10)
    {

LABEL_9:
      v12 = swift_unknownObjectUnownedLoadStrong();
      v13 = [v12 configuration];

      v14 = [objc_allocWithZone(SharedWithYouLibraryItemController) initWithConfiguration_];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v14;
    }

    v11 = sub_215A70D90();

    if (v11)
    {
      goto LABEL_9;
    }

    v16 = sub_215A70540();
    v18 = v17;
    if (v16 == sub_215A70540() && v18 == v19)
    {

LABEL_14:
      v21 = [v2 deviceIDForActiveCloudTabsLibrary];
      if (v21)
      {
        v22 = v21;
        v23 = sub_215A70540();
        v25 = v24;

        v26 = swift_unknownObjectUnownedLoadStrong();
        v27 = [v26 cloudTabsSection];

        v28 = sub_215A035FC(v23, v25);

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v28;
      }

      swift_unknownObjectRelease();

      goto LABEL_22;
    }

    v20 = sub_215A70D90();

    if (v20)
    {
      goto LABEL_14;
    }
  }

  v29 = [v5 activeTabGroup];
  if (!v29)
  {
LABEL_21:

    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v30 = v29;
  v31 = swift_unknownObjectUnownedLoadStrong();
  v32 = [v31 configuration];

  v33 = [v32 activeTabProvider];
  if (!v33)
  {

    goto LABEL_21;
  }

  v44 = v33[2](v33);
  _Block_release(v33);
  v34 = swift_unknownObjectUnownedLoadStrong();
  v35 = [v34 expandedTabGroupUUIDs];

  v36 = sub_215A70740();
  v37 = [v30 uuid];
  v38 = sub_215A70540();
  v40 = v39;

  LOBYTE(v37) = sub_21583CECC(v38, v40, v36);

  v41 = swift_unknownObjectUnownedLoadStrong();
  v42 = [v41 &selRef_contentFilterListsAllowURL_];

  if (v37)
  {
    v43 = [objc_allocWithZone(TabLibraryItemController) initWithConfiguration:v42 tabGroup:v30 tab:v44];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v43 = [objc_allocWithZone(TabGroupLibraryItemController) initWithConfiguration:v42 tabGroup:v30];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v43;
}

uint64_t sub_21583CECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_215A70E20();
  sub_215A70580();
  v6 = sub_215A70E50();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_215A70D90() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

id sub_21583CFC4(char *a1)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E2E8);
  v2 = *(v32 - 8);
  v3 = MEMORY[0x28223BE20](v32);
  v29 = v4;
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E2F0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_2159F7DA8(0, &qword_2811A2708);
  sub_2159F7DA8(0, &qword_2811A2570);
  sub_215A70930();
  result = [a1 loadViewIfNeeded];
  v14 = *&a1[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
  if (v14)
  {
    swift_unknownObjectUnownedInit();
    v15 = v14;
    swift_unknownObjectUnownedDestroy();
    (*(v7 + 16))(v10, v12, v6);
    v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v17 = swift_allocObject();
    (*(v7 + 32))(v17 + v16, v10, v6);
    v18 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E300));
    v19 = sub_215A70230();
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    v20 = sub_215A70290();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E308);
    v28 = v6;
    sub_215A70270();
    v27 = v12;
    v20(v33, 0);
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    v21 = sub_215A70290();
    sub_215A70280();
    v21(v33, 0);
    swift_allocObject();
    swift_unknownObjectUnownedInit();
    _s17ProfilePickerCellCMa();
    v22 = v31;
    sub_215A70940();
    swift_unknownObjectUnownedInit();
    v23 = v30;
    v24 = v32;
    (*(v2 + 16))(v30, v22, v32);
    v25 = (*(v2 + 80) + 16) & ~*(v2 + 80);
    v26 = swift_allocObject();
    (*(v2 + 32))(v26 + v25, v23, v24);
    sub_215A70240();
    swift_unknownObjectUnownedDestroy();
    (*(v2 + 8))(v22, v24);
    (*(v7 + 8))(v27, v28);
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_21583D4F8()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21583D558()
{
  v1 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionDataSource;
  v2 = *&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionDataSource];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionDataSource];
  }

  else
  {
    v4 = sub_21583CFC4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_21583D628()
{
  v31.receiver = v0;
  v31.super_class = type metadata accessor for LibraryContentViewController();
  objc_msgSendSuper2(&v31, sel_viewDidLoad);
  v1 = [v0 navigationItem];
  [v1 setLargeTitleDisplayMode_];

  v2 = [v0 view];
  if (!v2)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = v2;
  [v2 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = sub_21583D9A8();
  v13 = [objc_allocWithZone(MEMORY[0x277D752A0]) initWithFrame:v12 collectionViewLayout:{v5, v7, v9, v11}];

  v14 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView;
  v15 = *&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView];
  *&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController__collectionView] = v13;

  [v0 loadViewIfNeeded];
  v16 = *&v0[v14];
  if (!v16)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  [v16 setAllowsFocus_];
  [v0 loadViewIfNeeded];
  v17 = *&v0[v14];
  if (!v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v17 setAllowsMultipleSelectionDuringEditing_];
  [v0 loadViewIfNeeded];
  v18 = *&v0[v14];
  if (!v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v18 setAutoresizingMask_];
  [v0 loadViewIfNeeded];
  v19 = *&v0[v14];
  if (!v19)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v19 setDelegate_];
  [v0 loadViewIfNeeded];
  v20 = *&v0[v14];
  if (!v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v20 setDragDelegate_];
  [v0 loadViewIfNeeded];
  v21 = *&v0[v14];
  if (!v21)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v21 setDropDelegate_];
  [v0 loadViewIfNeeded];
  v22 = *&v0[v14];
  if (!v22)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v22 setSpringLoaded_];
  [v0 loadViewIfNeeded];
  v23 = *&v0[v14];
  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v23 setSelectionFollowsFocus_];
  v24 = [v0 view];
  if (!v24)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v25 = v24;
  [v0 loadViewIfNeeded];
  if (!*&v0[v14])
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v25 addSubview_];

  v26 = *&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_hoverRecognizer];
  [v26 addTarget:v0 action:sel_hover];
  [v0 loadViewIfNeeded];
  v27 = *&v0[v14];
  if (!v27)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v27 addGestureRecognizer_];
  [*&v0[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_tabHoverPreviewController] setHoverRecognizer_];
  [v0 loadViewIfNeeded];
  v28 = *&v0[v14];
  if (v28)
  {
    v29 = v28;
    v30 = sub_215A70500();
    [v29 setAccessibilityIdentifier_];

    sub_21583DBA4(1, 0);
    return;
  }

LABEL_27:
  __break(1u);
}

id sub_21583D9A8()
{
  v1 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionLayout;
  v2 = *(v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionLayout);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionLayout);
  }

  else
  {
    v4 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v5 = objc_allocWithZone(MEMORY[0x277D752C0]);

    v6 = [v5 init];
    if (*(v0 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_displayedProfile))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_215A96990;
      *(v7 + 32) = sub_215A0D320();
      sub_2159F7DA8(0, &qword_27CA7E2D8);
      v8 = sub_215A705D0();

      [v6 setBoundarySupplementaryItems_];
    }

    v9 = objc_allocWithZone(MEMORY[0x277D752B8]);
    v15[4] = sub_21583F228;
    v15[5] = v4;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_21583F1AC;
    v15[3] = &block_descriptor_5;
    v10 = _Block_copy(v15);
    v11 = [v9 initWithSectionProvider:v10 configuration:v6];

    _Block_release(v10);

    v12 = *(v0 + v1);
    *(v0 + v1) = v11;
    v3 = v11;

    v2 = 0;
  }

  v13 = v2;
  return v3;
}

void sub_21583DBA4(int a1, char a2)
{
  v3 = v2;
  v35 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E2C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E318);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v32 = v3;
  if (a2)
  {
    v13 = sub_21583D558();
    sub_2159F7DA8(0, &qword_27CA7E320);
    sub_2159F7DA8(0, &qword_2811A2570);
    sub_215A12438(&qword_27CA7E328, &qword_27CA7E320);
    sub_215A12438(&unk_2811A26F0, &qword_2811A2570);
    v3 = v32;
    sub_215A70200();
    sub_215A702A0();

    (*(v10 + 8))(v12, v9);
  }

  v14 = *&v3[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_sections];
  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_5;
    }

LABEL_17:
    sub_21583C554();
    return;
  }

  v15 = sub_215A70CD0();
  if (!v15)
  {
    goto LABEL_17;
  }

LABEL_5:
  if (v15 >= 1)
  {
    v16 = 0;
    v17 = v14 & 0xC000000000000001;
    v33 = (v6 + 8);
    v18 = &selRef_isAllowFavoritesInFrequentlyVisitedEnabled;
    v31 = xmmword_215A96990;
    v34 = v15;
    do
    {
      if (v17)
      {
        v19 = MEMORY[0x216073710](v16, v14);
      }

      else
      {
        v19 = *(v14 + 8 * v16 + 32);
      }

      v20 = v19;
      if ([v3 v18[282]])
      {
        v21 = v14;
        sub_2159F7DA8(0, &qword_2811A2570);
        sub_215A12438(&unk_2811A26F0, &qword_2811A2570);
        sub_215A70310();
        v22 = [v20 headerItemController];
        v23 = v5;
        if (v22)
        {
          v24 = v22;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
          v25 = swift_allocObject();
          *(v25 + 16) = v31;
          *(v25 + 32) = v24;
          v36 = 0;
          v26 = v24;
          sub_215A702E0();
          v3 = v32;
        }

        v27 = [v20 itemControllers];
        v28 = sub_215A705E0();

        v29 = [v20 headerItemController];
        sub_21583E4BC(v28, v29);

        v30 = sub_21583D558();
        v36 = v20;
        sub_215A702B0();

        (*v33)(v8, v23);
        v5 = v23;
        v14 = v21;
        v15 = v34;
        v18 = &selRef_isAllowFavoritesInFrequentlyVisitedEnabled;
      }

      else
      {
      }

      ++v16;
    }

    while (v15 != v16);
    goto LABEL_17;
  }

  __break(1u);
}

void sub_21583E4BC(unint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7E2C8);
  sub_215A702E0();
  if (a2)
  {
    v4 = a2;
    v5 = [v4 isExpanded];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_215A96990;
    *(v6 + 32) = v4;
    v7 = v4;
    if (v5)
    {
      sub_215A702F0();
    }

    else
    {
      sub_215A70300();
    }
  }

  if (a1 >> 62)
  {
    v8 = sub_215A70CD0();
    if (!v8)
    {
      return;
    }
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v8; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x216073710](i, a1);
      }

      else
      {
        v10 = *(a1 + 8 * i + 32);
      }

      v11 = v10;
      v12 = [v10 subitems];
      sub_2159F7DA8(0, &qword_2811A2570);
      v13 = sub_215A705E0();

      if (v13 >> 62)
      {
        v14 = sub_215A70CD0();
      }

      else
      {
        v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v14)
      {
        v15 = [v11 subitems];
        v16 = sub_215A705E0();

        v17 = v11;
        sub_21583E4BC(v16, v11);
      }
    }
  }
}

id sub_21583EA48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR___TabLibraryItemController____lazy_storage___multiSelectAccessory) = 0;
  *(v3 + OBJC_IVAR___TabLibraryItemController____lazy_storage___pinnedAccessory) = 0;
  *(v3 + OBJC_IVAR___TabLibraryItemController____lazy_storage___participantsView) = 0;
  *(v3 + OBJC_IVAR___TabLibraryItemController____lazy_storage___participantsAccessory) = 0;
  *(v3 + OBJC_IVAR___TabLibraryItemController____lazy_storage___unreadAccessory) = 0;
  *(v3 + OBJC_IVAR___TabLibraryItemController_tabGroup) = a2;
  *(v3 + OBJC_IVAR___TabLibraryItemController_tab) = a3;
  return objc_msgSendSuper2(&v5, sel_initWithConfiguration_, a1);
}

uint64_t sub_21583EDC4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_21583EE1C(void *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = [Strong expandedTabGroupUUIDs];

  v4 = sub_215A70740();
  v5 = [a1 uuid];
  v6 = sub_215A70540();
  v8 = v7;

  LOBYTE(v5) = sub_21583CECC(v6, v8, v4);

  return v5 & 1;
}

uint64_t TabLibraryItemController.isEqual(_:)(uint64_t a1)
{
  v2 = sub_215A07074(a1, v16, &qword_27CA7E2E0);
  if (!v17)
  {
    sub_21583F14C(v16, &qword_27CA7E2E0);
    goto LABEL_7;
  }

  type metadata accessor for TabLibraryItemController(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v13 = 0;
    return v13 & 1;
  }

  v3 = [v1 tab];
  v4 = [v3 uuid];

  v5 = sub_215A70540();
  v7 = v6;

  v8 = [v15 tab];
  v9 = [v8 uuid];

  v10 = sub_215A70540();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_215A70D90();
  }

  return v13 & 1;
}

uint64_t sub_21583F14C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_21583F1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void *sub_21583F230(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26[2] = a2;
  v4 = sub_215A70340();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_215A70330();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_215A70370();
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26[1] = a3;
  Strong = swift_unknownObjectUnownedLoadStrong();
  v16 = sub_21583D558();

  sub_215A70260();
  v17 = v29;
  if (!v29)
  {
    return 0;
  }

  (*(v9 + 104))(v11, *MEMORY[0x277D74D70], v8);
  sub_215A70350();
  v18 = [v17 headerItemController];
  if (v18)
  {

    v19 = MEMORY[0x277D74D98];
  }

  else
  {
    v19 = MEMORY[0x277D74DA0];
  }

  (*(v5 + 104))(v7, *v19, v4);
  sub_215A70360();
  swift_allocObject();
  v21 = swift_unknownObjectUnownedLoadStrong();
  swift_unknownObjectUnownedInit();

  sub_215A70320();
  sub_2159F7DA8(0, &qword_2811A2700);
  v20 = sub_215A70A30();
  v22 = [v17 itemControllers];
  sub_2159F7DA8(0, &qword_2811A2570);
  v23 = sub_215A705E0();

  if (v23 >> 62)
  {
    v24 = sub_215A70CD0();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v24)
  {
    (*(v27 + 8))(v14, v28);
  }

  else
  {
    [v20 setContentInsets_];

    (*(v27 + 8))(v14, v28);
  }

  return v20;
}

void *sub_21583F878()
{
  result = *&v0[OBJC_IVAR____TtC14MobileSafariUI33CloudTabsLibrarySectionController_recentsStore];
  if (!result)
  {
    goto LABEL_15;
  }

  v2 = v0;
  v3 = [result availableDevices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DFB8);
  v4 = sub_215A705E0();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

LABEL_12:

    return MEMORY[0x277D84F90];
  }

  v5 = sub_215A70CD0();
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_4:
  v12 = MEMORY[0x277D84F90];
  result = sub_215A70C80();
  if (v5 < 0)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  v6 = 0;
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x216073710](v6, v4);
    }

    else
    {
      v7 = *(v4 + 8 * v6 + 32);
      swift_unknownObjectRetain();
    }

    ++v6;
    v8 = [v2 configuration];
    v9 = type metadata accessor for CloudDeviceLibraryItemController();
    v10 = objc_allocWithZone(v9);
    *&v10[OBJC_IVAR____TtC14MobileSafariUI32CloudDeviceLibraryItemController_device] = v7;
    v11.receiver = v10;
    v11.super_class = v9;
    objc_msgSendSuper2(&v11, sel_initWithConfiguration_, v8);

    sub_215A70C60();
    sub_215A70C90();
    sub_215A70CA0();
    sub_215A70C70();
  }

  while (v5 != v6);

  return v12;
}

unint64_t sub_21583FA4C()
{
  result = qword_2811A2570;
  if (!qword_2811A2570)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2811A2570);
  }

  return result;
}

BOOL HeaderLibraryItemController.isEqual(_:)(uint64_t a1)
{
  v2 = sub_21583FD1C(a1, v7);
  if (v8)
  {
    type metadata accessor for HeaderLibraryItemController(v2);
    if (swift_dynamicCast())
    {
      v3 = [v1 headerType];
      v4 = [v6 headerType];

      return v3 == v4;
    }
  }

  else
  {
    sub_21583FDA0(v7);
  }

  return 0;
}

uint64_t sub_21583FD1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E2E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21583FDA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E2E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _sSo24LibraryContentControllerC14MobileSafariUIE32setNeedsReloadSectionControllers8animatedySb_tF_0()
{
  v5 = [v0 libraryViewController];
  if ([v5 isViewLoaded])
  {
    v1 = &v5[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags];
    v2 = v5[OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController_reloadFlags + 1];
    *v1 = 1;
    v1[1] = v2;
    v3 = [v5 view];
    if (!v3)
    {
      __break(1u);
      return;
    }

    v4 = v3;
    [v3 setNeedsLayout];
  }
}

void sub_215840698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

id SafariFrequentlyVisitedSitesBannedURLStoreURLForProfileWithIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && ![v1 isEqualToString:*MEMORY[0x277D49BD8]])
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v4 = [v8 safari_profileDirectoryURLWithID:v2 createIfNeeded:0];

    if (v4)
    {
      v7 = [v4 URLByAppendingPathComponent:@"FrequentlyVisitedSitesBannedURLStore.plist" isDirectory:0];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v3 = MEMORY[0x277CBEBC0];
    v4 = SafariSettingsDirectoryPath();
    v5 = [v4 stringByAppendingPathComponent:@"FrequentlyVisitedSitesBannedURLStore.plist"];
    v6 = [v5 stringByResolvingSymlinksInPath];
    v7 = [v3 fileURLWithPath:v6];
  }

  return v7;
}

void sub_21584207C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215842480(_Unwind_Exception *a1)
{
  objc_destroyWeak((v9 + 32));
  objc_destroyWeak((v7 + 32));
  objc_destroyWeak((v6 + 32));

  objc_destroyWeak((v8 + 32));
  objc_destroyWeak((v10 - 136));

  _Unwind_Resume(a1);
}

void sub_215843490(_Unwind_Exception *a1)
{
  v8 = v3;
  objc_destroyWeak((v5 + 32));

  objc_destroyWeak((v6 + 32));
  objc_destroyWeak((v7 - 104));

  _Unwind_Resume(a1);
}

id SafariCloudBookmarksMigrationCoordinatorDirectoryURL()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = SafariSettingsDirectoryPath();
  v2 = [v1 stringByAppendingPathComponent:@"CloudBookmarksMigrationCoordinator"];
  v3 = [v0 fileURLWithPath:v2 isDirectory:1];

  return v3;
}

id SafariCloudBookmarksMigrationCoordinatorLogsDirectoryURL()
{
  v0 = SafariCloudBookmarksMigrationCoordinatorDirectoryURL();
  v1 = [v0 URLByAppendingPathComponent:@"Logs" isDirectory:1];

  return v1;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

id sub_215843A68()
{
  result = [objc_allocWithZone(FolderSuggestionManager) init];
  qword_2811A2918 = result;
  return result;
}

id FolderSuggestionManager.init()()
{
  *(v0 + OBJC_IVAR___FolderSuggestionManager_lastSelectedFolderValidityPeriod) = 0x40DC200000000000;
  v2.super_class = FolderSuggestionManager;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void *__Block_byref_object_copy__11(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

__n128 __Block_byref_object_copy__12(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__15(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__17(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t WBS_LOG_CHANNEL_PREFIXBookmarks()
{
  if (WBS_LOG_CHANNEL_PREFIXBookmarks_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXBookmarks_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXBookmarks_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXHistory()
{
  if (WBS_LOG_CHANNEL_PREFIXHistory_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXHistory_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXHistory_log;
}

id webViewToTabDocumentMap(void)
{
  v0 = webViewToTabDocumentMap(void)::map;
  if (!webViewToTabDocumentMap(void)::map)
  {
    v1 = [MEMORY[0x277CCAB00] weakToWeakObjectsMapTable];
    v2 = webViewToTabDocumentMap(void)::map;
    webViewToTabDocumentMap(void)::map = v1;

    v0 = webViewToTabDocumentMap(void)::map;
  }

  return v0;
}

void OUTLINED_FUNCTION_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_215847398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

Swift::Void __swiftcall LibraryContentController.reconfigureTabCell(withUUIDString:)(Swift::String withUUIDString)
{
  v2 = [v1 libraryViewController];
  v3 = sub_215A70500();
  v4 = [v1 itemForTabWith_];

  sub_215848110(v4);
}

uint64_t sub_215848110(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E318);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7DF78);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  v11 = sub_21583D558();
  v19[1] = a1;
  sub_215A702D0();

  v12 = sub_215A6FA10();
  LODWORD(v11) = (*(*(v12 - 8) + 48))(v10, 1, v12);
  result = sub_21583F14C(v10, &qword_27CA7DF78);
  if (v11 != 1)
  {
    v14 = OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionDataSource;
    v15 = *(v2 + OBJC_IVAR____TtC14MobileSafariUI28LibraryContentViewController____lazy_storage___collectionDataSource);
    sub_215A702C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA7DCF0);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_215A96990;
    *(v16 + 32) = a1;
    v17 = a1;
    sub_215A701E0();

    v18 = *(v2 + v14);
    sub_215A702A0();

    return (*(v5 + 8))(v7, v4);
  }

  return result;
}

void sub_215848498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

Swift::Void __swiftcall LibraryContentController.reconfigureTabGroupCell(withUUIDString:)(Swift::String withUUIDString)
{
  v2 = [v1 configuration];
  v3 = objc_allocWithZone(MEMORY[0x277D7B578]);
  v4 = sub_215A70500();
  v5 = sub_215A70500();
  v6 = [v3 initWithTitle:v4 uuid:v5 deviceIdentifier:0];

  v7 = [objc_allocWithZone(TabGroupLibraryItemController) initWithConfiguration:v2 tabGroup:v6];
  v8 = [v1 libraryViewController];
  sub_215848110(v7);
}

void sub_215849CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXURLAutocomplete()
{
  if (WBS_LOG_CHANNEL_PREFIXURLAutocomplete_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXURLAutocomplete_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXURLAutocomplete_log;
}

void sub_21584A6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = TabDocument;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_0_2(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

void OUTLINED_FUNCTION_0_7(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

_DWORD *sub_21584B960@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *sub_21584B9B8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_21584B9CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_215A70540();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_21584BA0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_21584BA1C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BA54()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BA8C()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584BACC()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BB0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BB44()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BB80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584BBC0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BBF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584BC38()
{
  MEMORY[0x216075770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BC74()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BCAC()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BD0C()
{
  MEMORY[0x216075770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BD44()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BD7C()
{
  MEMORY[0x216075770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BDB4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_21584BE00()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_21584BE50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E0B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_21584BEF0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BF28()
{
  MEMORY[0x216075770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584BF60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584BF98()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584BFE8()
{
  MEMORY[0x216075770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584C020()
{
  v1 = sub_215A6F960();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_21584C100()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584C13C()
{
  MEMORY[0x216075770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584C174()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584C1B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584C1F4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584C230()
{
  MEMORY[0x216075770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584C268()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584C2A8()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584C2F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E4F8);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_21584C368(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7E4F8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_21584C3F4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584C438()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584C478()
{
  MEMORY[0x216075770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584C4B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584C4F4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584C63C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584C69C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584C6EC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21584C734()
{
  MEMORY[0x216075770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584C770()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584C7A8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21584C7E0()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_21584C818()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584C868()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584C8C4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CA7EAB0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_215A6FE20();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_21584C9EC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21584CA34()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21584CA84()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_21584CAD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21584CB18()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584CB50()
{

  v1 = *(v0 + 48);
  if (v1 >> 60 != 15)
  {
    sub_215A41884(*(v0 + 40), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_21584CBB0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21584CBF0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21584CC30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584CCE0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584CD18()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21584CD60()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584CD98()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21584CDFC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21584CE44@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 bookmarksNavigationControllerDelegate];
  *a2 = result;
  return result;
}

id sub_21584CE94@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 linkPreviewProvider];
  *a2 = result;
  return result;
}

id sub_21584CEE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 navigationIntentHandler];
  *a2 = result;
  return result;
}

id sub_21584CF34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tabGroupProvider];
  *a2 = result;
  return result;
}

uint64_t sub_21584CF84()
{
  MEMORY[0x216075770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584CFBC()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584CFFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584D034()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584D06C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584D0A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21584D0E4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21584D144()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584D18C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584D23C()
{
  swift_unknownObjectUnownedDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584D274()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_21584D2B4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 tabGroupProvider];
  *a2 = result;
  return result;
}

id sub_21584D304@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 toastObscuredEdgeInsets];
  *a2 = v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

id sub_21584D354@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 toastPlacement];
  *a2 = result;
  return result;
}

uint64_t sub_21584D39C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584D3DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_21584D41C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_21584D464()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_21584D4B4()
{
  MEMORY[0x216075770](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_21584D4EC()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id customActivities(void *a1, uint64_t a2, void *a3, id *a4)
{
  v62 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = +[FeatureManager sharedFeatureManager];
  v11 = v10;
  if (a2 == 1)
  {
    v52 = v10;
    v53 = v8;
    if (a4)
    {
      v12 = [*a4 mutableCopy];
      v13 = [v12 indexOfObject:@"SafariActivityTypeWebExtension"];
      v14 = [MEMORY[0x277CCAB58] indexSet];
      v15 = [v12 objectAtIndexedSubscript:v13 - 1];
      v16 = [v15 hasPrefix:@"com.apple.mobilesafari.webextension"];

      if (v16)
      {
        v17 = v13 - 2;
        do
        {
          [v14 addIndex:v17 + 1];
          v18 = [v12 objectAtIndexedSubscript:v17];
          v19 = [v18 hasPrefix:@"com.apple.mobilesafari.webextension"];

          --v17;
        }

        while ((v19 & 1) != 0);
      }

      [v12 removeObjectsAtIndexes:v14];
    }

    else
    {
      v12 = 0;
    }

    v35 = [v7 webExtensionsController];
    v36 = [v35 enabledExtensionsWithPrivateBrowsingEnabled:{objc_msgSend(v7, "isPrivate")}];
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __customActivities_block_invoke;
    v58[3] = &unk_2781D4C38;
    v37 = v35;
    v59 = v37;
    v60 = v7;
    v38 = [v36 safari_mapAndFilterObjectsUsingBlock:v58];
    v39 = [v38 sortedArrayUsingComparator:&__block_literal_global_189];

    [v9 addObjectsFromArray:v39];
    if (a4)
    {
      v49 = v37;
      v50 = v36;
      v51 = a4;
      v40 = [v12 indexOfObject:@"SafariActivityTypeWebExtension"];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v41 = [v39 reverseObjectEnumerator];
      v42 = [v41 countByEnumeratingWithState:&v54 objects:v61 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v55;
        do
        {
          for (i = 0; i != v43; ++i)
          {
            if (*v55 != v44)
            {
              objc_enumerationMutation(v41);
            }

            v46 = [*(*(&v54 + 1) + 8 * i) activityType];
            [v12 insertObject:v46 atIndex:v40];
          }

          v43 = [v41 countByEnumeratingWithState:&v54 objects:v61 count:16];
        }

        while (v43);
      }

      v36 = v50;
      *v51 = [v12 copy];
      v37 = v49;
    }

    v47 = objc_alloc_init(ManageWebExtensionsActivity);
    [(UIActivity *)v47 setActivitySectionIdentifier:@"ManageWebExtensionActivities"];
    [v9 addObject:v47];

    v11 = v52;
    v8 = v53;
  }

  else
  {
    if ([v10 isBookmarksAvailable])
    {
      if ([MEMORY[0x277D49A08] isSaveForLaterEnabled])
      {
        v20 = objc_alloc_init(SaveForLaterUIActivity);
        [v9 addObject:v20];
      }

      v21 = objc_alloc_init(AddBookmarkUIActivity);
      [(_SFActivity *)v21 setDelegate:v8];
      v22 = objc_alloc_init(AddToFavoritesUIActivity);
      [(_SFActivity *)v22 setDelegate:v8];
      v23 = objc_alloc_init(AddToFavoritesUIActivity);
      [(AddToFavoritesUIActivity *)v23 setIsForPerTabGroupFavorites:1];
      [(_SFActivity *)v23 setDelegate:v8];
      [v9 addObject:v21];
      [v9 addObject:v23];
      [v9 addObject:v22];
    }

    v24 = objc_alloc_init(AddToQuickNoteActivity);
    [v9 addObject:v24];
    v25 = objc_alloc(MEMORY[0x277CDB7C0]);
    v26 = [v7 activeWebView];
    v27 = [v25 initWithWebView:v26];
    [v9 addObject:v27];

    v28 = objc_alloc(MEMORY[0x277CDB730]);
    v29 = [v7 webView];
    v30 = [v28 initWithWebView:v29];
    [v9 addObject:v30];

    v31 = [AddToNewsUIActivity activityWithTabDocument:v7 error:0];
    if (v31)
    {
      [v9 addObject:v31];
    }

    if ([v7 isDisplayingStandaloneMedia])
    {
      v32 = objc_alloc(MEMORY[0x277CDB798]);
      v33 = [v7 webView];
      v34 = [v32 initWithWebView:v33];

      if (v34)
      {
        [v9 addObject:v34];
      }
    }
  }

  return v9;
}

id itemProviderCollection(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [v3 webView];
  v5 = [v3 cachedCanonicalURLOrURLForSharing];
  v6 = [objc_alloc(MEMORY[0x277CDB718]) initWithWebView:v4];
  v7 = [[TabDocumentActivityItemProvider alloc] initWithTabDocument:v3];
  [v6 setDocumentProvider:v7];

  if (a2 != 1)
  {
    [v6 setDisplayingDigitalHealthLockoutView:{objc_msgSend(v3, "shouldObscureForDigitalHealth")}];
    [v6 setDisplayingStandaloneImage:{objc_msgSend(v3, "isDisplayingStandaloneImage")}];
    [v6 setDisplayingStandaloneMedia:{objc_msgSend(v3, "isDisplayingStandaloneMedia")}];
    objc_initWeak(&location, v3);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __itemProviderCollection_block_invoke;
    aBlock[3] = &unk_2781D4B88;
    objc_copyWeak(&v29, &location);
    v8 = _Block_copy(aBlock);
    v9 = [v3 activityItemProvider];
    v10 = v9;
    if (v9)
    {
      [v9 setThumbnailHandler:v8];
      [v6 setLinkProvider:v10];
    }

    if (([v3 shouldObscureForDigitalHealth] & 1) == 0)
    {
      v11 = objc_alloc(MEMORY[0x277CDB860]);
      v12 = [v3 printController];
      v13 = [v11 initWithPrintController:v12 webView:v4];
      [v6 setPrintProvider:v13];
    }

    if (([v3 isShowingErrorPage] & 1) == 0)
    {
      objc_initWeak(&from, v3);
      v14 = MEMORY[0x277CDB720];
      v22 = MEMORY[0x277D85DD0];
      v23 = 3221225472;
      v24 = __itemProviderCollection_block_invoke_2;
      v25 = &unk_2781D4BB0;
      objc_copyWeak(&v26, &from);
      v15 = [v14 activeWebPageExtensionItemForURL:v5 withPreviewImageHandler:&v22];
      v16 = [ActionPanelWebPageExtensionItemProvider alloc];
      v17 = [(ActionPanelWebPageExtensionItemProvider *)v16 initWithExtensionItem:v15 tabDocument:v3, v22, v23, v24, v25];
      [v6 setJavaScriptExtensionProvider:v17];

      objc_destroyWeak(&v26);
      objc_destroyWeak(&from);
    }

    v18 = objc_alloc(MEMORY[0x277CDB790]);
    v19 = [v3 quickLookDocument];
    v20 = [v18 initWithQuickLookDocument:v19 URL:v5 webView:v4];

    if (v20)
    {
      [v20 setThumbnailHandler:v8];
      [v6 setDownloadProvider:v20];
    }

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v6;
}

void sub_21584E1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&a20);
  _Unwind_Resume(a1);
}

void sub_21584E820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id __itemProviderCollection_block_invoke(uint64_t a1, void *a2, double a3, double a4)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isLoading])
  {
    v9 = [MEMORY[0x277D28F48] precompositedDefaultIcon];
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy_;
    v16 = __Block_byref_object_dispose_;
    v17 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __itemProviderCollection_block_invoke_168;
    v11[3] = &unk_2781D4B60;
    v11[4] = &v12;
    [WeakRetained snapshotWithSize:1 options:v11 completion:{a3, a4}];
    v9 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  return v9;
}

void sub_21584F064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __itemProviderCollection_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy_;
  v14 = __Block_byref_object_dispose_;
  v15 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __itemProviderCollection_block_invoke_3;
  v9[3] = &unk_2781D4B60;
  v9[4] = &v10;
  [WeakRetained snapshotWithSize:1 options:v9 completion:{84.0, 79.0}];
  v6[2](v6, v11[5], 0);

  _Block_object_dispose(&v10, 8);
}

void sub_21584F1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSLComposeViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SocialLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SocialLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781D4BF8;
    v6 = 0;
    SocialLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SocialLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SLComposeViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSLComposeViewControllerClass_block_invoke_cold_1();
  }

  getSLComposeViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SocialLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SocialLibraryCore_frameworkLibrary = result;
  return result;
}

id __customActivities_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) webExtensionForExtension:a2];
  v4 = [v3 toolbarItem];

  v5 = [v4 activityForTab:*(a1 + 40)];
  [v5 setActivitySectionIdentifier:@"WebExtensionActivities"];

  return v5;
}

uint64_t __customActivities_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 activityTitle];
  v6 = [v4 activityTitle];

  v7 = [v5 localizedCompare:v6];
  return v7;
}

void sub_215852040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void deviceDidLock()
{
  v0 = +[Application sharedApplication];
  [v0 lockPrivateBrowsing];
}

void _quickWebsiteSearchProvidersChanged()
{
  v0 = [MEMORY[0x277D4A028] sharedController];
  [v0 noteProvidersAreStale];
}

void siriSuggestionsStateDidChange()
{
  v0 = [MEMORY[0x277CCAB98] defaultCenter];
  [v0 postNotificationName:*MEMORY[0x277D4A208] object:0];
  [v0 postNotificationName:*MEMORY[0x277D4A498] object:0];
}

void safariSettingsChangedExtensionSettings()
{
  v0 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_215819000, v0, OS_LOG_TYPE_INFO, "Safari Settings has updated Extensions.plist", v2, 2u);
  }

  v1 = +[Application sharedApplication];
  [v1 notifyExtensionControllersThatSettingsWereUpdatedExternallyFromSettingsApp];
}

void contentBlockerDidChange()
{
  v0 = +[Application sharedApplication];
  [v0 reloadContentBlockers];
}

void sub_215856F30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

id tabDocumentForDownload(void *a1)
{
  v1 = a1;
  v2 = [v1 navigatedWebView];
  if (v2)
  {
    v3 = [TabDocument tabDocumentForWKWebView:v2];
  }

  else
  {
    v4 = [v1 wkDownload];
    v5 = [v4 webView];
    v3 = [TabDocument tabDocumentForWKWebView:v5];
  }

  return v3;
}

void sub_2158588B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215859110(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21585AAE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

id browserControllerWithEntityIdentifier(void *a1)
{
  v1 = a1;
  v2 = +[Application sharedApplication];
  v3 = [v2 browserControllers];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __browserControllerWithEntityIdentifier_block_invoke;
  v7[3] = &unk_2781D4E70;
  v8 = v1;
  v4 = v1;
  v5 = [v3 safari_firstObjectPassingTest:v7];

  return v5;
}

id windowEntityForBrowserController(void *a1)
{
  v1 = MEMORY[0x277D4A8B8];
  v2 = a1;
  v3 = [v1 alloc];
  v4 = entityIdentifierForBrowserController(v2);
  v5 = [v2 scene];
  v6 = [v5 title];
  v7 = [v2 isPrivateBrowsingEnabled];

  v8 = [v3 initWithIdentifier:v4 title:v6 isPrivate:v7];

  return v8;
}

id entityIdentifierForBrowserController(void *a1)
{
  v1 = [a1 windowState];
  v2 = [v1 sceneID];

  return v2;
}

void __useUIResponderMethodsForModifierFlags_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  useUIResponderMethodsForModifierFlags_flag = [v0 BOOLForKey:@"UseUIResponderMethodsForModifierFlags"];
}

void ___localeChanged_block_invoke()
{
  v0 = CFLocaleCopyCurrent();
  [History localeChanged:v0];
  v1 = [MEMORY[0x277CDB8A8] sharedInstance];
  [v1 reloadSearchEngines];

  v2 = [MEMORY[0x277D7B5A8] mainBookmarkCollection];
  [v2 localeSettingsChanged];

  CFRelease(v0);
}

void *__getDMGetUserDataDispositionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataMigrationLibrary();
  result = dlsym(v2, "DMGetUserDataDisposition");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDMGetUserDataDispositionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t DataMigrationLibrary()
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!DataMigrationLibraryCore_frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = __DataMigrationLibraryCore_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2781D5560;
    v5 = 0;
    DataMigrationLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = DataMigrationLibraryCore_frameworkLibrary;
  v1 = v3[0];
  if (!DataMigrationLibraryCore_frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t __DataMigrationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  DataMigrationLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getDMGetPreviousBuildVersionSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = DataMigrationLibrary();
  result = dlsym(v2, "DMGetPreviousBuildVersion");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getDMGetPreviousBuildVersionSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

Class __getCKContextClientClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ContextKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ContextKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781D5578;
    v6 = 0;
    ContextKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ContextKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CKContextClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKContextClientClass_block_invoke_cold_1();
  }

  getCKContextClientClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContextKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  ContextKitLibraryCore_frameworkLibrary = result;
  return result;
}

uint64_t __browserControllerWithEntityIdentifier_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 windowState];
  v4 = [v3 sceneID];
  v5 = [v4 isEqualToString:*(a1 + 32)];

  return v5;
}

void sub_215863A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v17 - 80), 8);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__323(uint64_t a1, uint64_t a2)
{
  result = _Block_copy(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_2158643F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getRPTTestRunnerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getRPTTestRunnerClass_softClass;
  v7 = getRPTTestRunnerClass_softClass;
  if (!getRPTTestRunnerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getRPTTestRunnerClass_block_invoke;
    v3[3] = &unk_2781D4BD8;
    v3[4] = &v4;
    __getRPTTestRunnerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_215865408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215865550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215866D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose((v20 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_2158680B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42)
{
  _Block_object_dispose(&a36, 8);
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose((v42 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_2158692E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21586A100(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRPTTestRunnerClass_block_invoke(uint64_t a1)
{
  RecapPerformanceTestingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RPTTestRunner");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRPTTestRunnerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRPTTestRunnerClass_block_invoke_cold_1();
    RecapPerformanceTestingLibrary();
  }
}

void RecapPerformanceTestingLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!RecapPerformanceTestingLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __RecapPerformanceTestingLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2781D5AC0;
    v3 = 0;
    RecapPerformanceTestingLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!RecapPerformanceTestingLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __RecapPerformanceTestingLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  RecapPerformanceTestingLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getRPTScrollViewTestParametersClass_block_invoke(uint64_t a1)
{
  RecapPerformanceTestingLibrary();
  result = objc_getClass("RPTScrollViewTestParameters");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRPTScrollViewTestParametersClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRPTScrollViewTestParametersClass_block_invoke_cold_1();
    return __rebaseHistoryVisitTimesOfDatabaseAt_block_invoke(v3);
  }

  return result;
}

void __rebaseHistoryVisitTimesOfDatabaseAt_block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v2 openWithAccessType:2 error:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(a1[5] + 8) + 24) = v4;
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    v5 = a1[4];
    v6 = *(a1[6] + 8);
    v12 = *(v6 + 40);
    v7 = [v5 executeQuery:@"UPDATE history_visits SET visit_time = visit_time + (SELECT strftime('%s' error:{'now', 'utc') - strftime('%s', datetime(max(visit_time) + 978307200, 'unixepoch', 'utc')) FROM history_visits);", &v12}];
    objc_storeStrong((v6 + 40), v12);
    *(*(a1[5] + 8) + 24) = v7;
    v8 = a1[4];
    if (*(*(a1[5] + 8) + 24) == 1)
    {
      v9 = *(a1[6] + 8);
      v11 = *(v9 + 40);
      v10 = [v8 executeQuery:@"VACUUM" error:&v11];
      objc_storeStrong((v9 + 40), v11);
      *(*(a1[5] + 8) + 24) = v10;
      v8 = a1[4];
    }

    [v8 close];
  }
}

uint64_t __waitUntilHistoryFinishLoading_block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __waitUntilHistoryFinishLoading_block_invoke_2;
  v3[3] = &unk_2781D4BD8;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 closeWithCompletionHandler:v3];
}

void __getRPTResizeTestParametersClass_block_invoke(uint64_t a1)
{
  RecapPerformanceTestingLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RPTResizeTestParameters");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRPTResizeTestParametersClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = __getRPTResizeTestParametersClass_block_invoke_cold_1();
    OUTLINED_FUNCTION_2_0(v2, v3, v4, v5);
  }
}

void OUTLINED_FUNCTION_2_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_21586C1CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21586D390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21586D504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21586DD80(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak(v1);
  objc_destroyWeak((v3 - 88));
  _Unwind_Resume(a1);
}

void sub_21586FA20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21586FE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215870178(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21587E748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21587ECE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_21587F830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215880AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215880E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = BrowserController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

id observableWebKitFeaturesByDefaultsKey(void)
{
  v0 = observableWebKitFeaturesByDefaultsKey(void)::dictionary;
  if (!observableWebKitFeaturesByDefaultsKey(void)::dictionary)
  {
    v1 = [MEMORY[0x277CE3818] _features];
    v2 = [v1 safari_dictionaryByMappingObjectsToKeysUsingBlock:&__block_literal_global_2945];
    v3 = observableWebKitFeaturesByDefaultsKey(void)::dictionary;
    observableWebKitFeaturesByDefaultsKey(void)::dictionary = v2;

    v0 = observableWebKitFeaturesByDefaultsKey(void)::dictionary;
  }

  return v0;
}

void sub_21588139C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  objc_destroyWeak((v14 + 40));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v15 - 56));
  _Unwind_Resume(a1);
}

void sub_2158815C8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_215881E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id WBSLocalizedStringWithValue(NSString *a1, NSString *a2)
{
  v2 = _WBSLocalizedString();

  return v2;
}

void sub_215882964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2158842D0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21588446C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 40));

  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void sub_215884F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2158855EC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_215886C70(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_215889EA0(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c89_ZTSZ77__BrowserController_prepareForTabDocumentWebViewFullscreenMayReturnToInline__E3__0(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c89_ZTSZ77__BrowserController_prepareForTabDocumentWebViewFullscreenMayReturnToInline__E3__0(uint64_t a1)
{
  v2 = *(a1 + 32);
}

void sub_21588A834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_21588B164(_Unwind_Exception *a1)
{
  v5 = v3;

  _Unwind_Resume(a1);
}

void sub_21588B3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_21588B6AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_21588F9DC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_215890B30(_Unwind_Exception *a1)
{
  v6 = v2;

  _Unwind_Resume(a1);
}

id googleSearchEngine(void)
{
  {
    v2 = [MEMORY[0x277CDB8A8] sharedInstance];
    googleSearchEngine(void)::engine = [v2 engineInfoFor:@"Google"];
  }

  v0 = googleSearchEngine(void)::engine;

  return v0;
}

void sub_215891A20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_215891E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2158922AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215892890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2158929A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2158931B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16)
{
  v22 = v20;

  _Unwind_Resume(a1);
}

void sub_215893AB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_215893BF0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_215894450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_215898B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_21589A30C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_21589AC5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_21589B110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_21589CDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_21589D4EC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_21589DC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_21589ED54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  objc_destroyWeak(va);

  objc_destroyWeak((v6 - 24));
  _Unwind_Resume(a1);
}

void sub_21589EE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2158A0C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2158A0E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2158A1280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2158A1A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2158A2D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_2158A315C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v4 + 40));
  objc_destroyWeak((v4 + 32));
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v5 - 80));
  objc_destroyWeak((v5 - 72));

  _Unwind_Resume(a1);
}

void sub_2158A3338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2158A3568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak((v23 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2158A5940(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, id location, id a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  objc_destroyWeak((v37 + 48));
  objc_destroyWeak((v37 + 40));

  objc_destroyWeak(&location);
  objc_destroyWeak(&a25);

  objc_destroyWeak(&a30);
  objc_destroyWeak(&a35);

  objc_destroyWeak((v42 - 136));
  objc_destroyWeak((v42 - 128));

  _Unwind_Resume(a1);
}

void sub_2158A6398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  objc_destroyWeak((v42 + 32));

  _Unwind_Resume(a1);
}

void sub_2158A6F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_2158A70F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v18 = v16;

  _Unwind_Resume(a1);
}

id __copy_helper_block_ea8_32c45_ZTSKZ32__BrowserController_closeWindow_E3__1(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  *(a1 + 32) = result;
  return result;
}

void sub_2158A7C6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2158A8B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2158A94A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2158AACD4(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_2158ABA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2158AC7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v17 - 40));

  _Unwind_Resume(a1);
}

void sub_2158ACA84(_Unwind_Exception *a1)
{
  v3 = v1;

  _Unwind_Resume(a1);
}

void sub_2158ACC08(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_2158ACF10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_2158AD2F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
{
  objc_destroyWeak((v31 + 32));
  objc_destroyWeak(&location);
  objc_destroyWeak((v30 + 32));

  objc_destroyWeak((v29 + 40));
  objc_destroyWeak((v28 + 32));
  objc_destroyWeak((v32 - 104));

  _Unwind_Resume(a1);
}

void sub_2158AD4FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  objc_destroyWeak((v16 + 40));

  _Unwind_Resume(a1);
}

void sub_2158AD608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2158AD718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2158ADBA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_2158AF7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, void *a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, void *a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, void *a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose((v74 - 240), 8);
  _Block_object_dispose((v74 - 208), 8);

  _Unwind_Resume(a1);
}

void sub_2158B0DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2158B0F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2158B1A84(_Unwind_Exception *a1)
{
  v7 = v4;
  objc_destroyWeak(v7);

  objc_destroyWeak((v6 - 104));
  _Unwind_Resume(a1);
}

void sub_2158B2754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2158B2B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v21 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2158B3A00(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2158B3D90(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2158B42D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2158B453C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v15 = v13;

  _Unwind_Resume(a1);
}

void sub_2158B874C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_2158BA9DC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_2158BB328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2158BC8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, id a9)
{
  [BrowserController windowScene:performActionForShortcutItem:completionHandler:]::$_3::~$_3(&a9);

  _Unwind_Resume(a1);
}

void sub_2158BD210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2158BD43C(_Unwind_Exception *a1)
{
  v6 = v3;

  _Unwind_Resume(a1);
}

void sub_2158BD5DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v10;

  _Unwind_Resume(a1);
}

void sub_2158BD980(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);

  _Unwind_Resume(a1);
}

void sub_2158BE220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2158BE798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak((v16 - 40));
  _Unwind_Resume(a1);
}

void sub_2158BF4BC(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2158BFB64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2158BFC80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

id getSiriReaderConnectionClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSiriReaderConnectionClass(void)::softClass;
  v7 = getSiriReaderConnectionClass(void)::softClass;
  if (!getSiriReaderConnectionClass(void)::softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = ___ZL28getSiriReaderConnectionClassv_block_invoke;
    v3[3] = &unk_2781D60E0;
    v3[4] = &v4;
    ___ZL28getSiriReaderConnectionClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2158C0498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2158C1874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id ___ZL37observableWebKitFeaturesByDefaultsKeyv_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([MEMORY[0x277CBEBD0] safari_shouldObserveWebKitFeature:v2])
  {
    v3 = [MEMORY[0x277CBEBD0] safari_keyForWebKitFeature:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

Class ___ZL34get_SWCollaborationButtonViewClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SharedWithYouLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL24SharedWithYouLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781D72F0;
    v6 = 0;
    SharedWithYouLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SharedWithYouLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("_SWCollaborationButtonView");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL34get_SWCollaborationButtonViewClassv_block_invoke_cold_1();
  }

  get_SWCollaborationButtonViewClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL24SharedWithYouLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  SharedWithYouLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

id __copy_helper_block_ea8_32c56_ZTSKZ43__BrowserController_scene_openURLContexts__E3__2(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = *(a2 + 32);
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_ea8_32c56_ZTSKZ43__BrowserController_scene_openURLContexts__E3__2(uint64_t a1)
{
  v2 = *(a1 + 32);
}

uint64_t ___ZZ80__BrowserController_windowScene_performActionForShortcutItem_completionHandler__ENK3__3cvU13block_pointerFvvEEv_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 896);
  v3 = [*(a1 + 40) type];
  [v2 handleShortcutItemWithType:v3];

  v4 = *(*(a1 + 48) + 16);

  return v4();
}

void *__copy_helper_block_ea8_32c93_ZTSKZ80__BrowserController_windowScene_performActionForShortcutItem_completionHandler__E3__3(void *a1, uint64_t a2)
{
  a1[4] = *(a2 + 32);
  a1[5] = *(a2 + 40);
  result = _Block_copy(*(a2 + 48));
  a1[6] = result;
  return result;
}

void __destroy_helper_block_ea8_32c93_ZTSKZ80__BrowserController_windowScene_performActionForShortcutItem_completionHandler__E3__3(uint64_t a1)
{
  v2 = *(a1 + 32);
}

Class ___ZL27getQLPreviewControllerClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!QuickLookLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL20QuickLookLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781D7308;
    v6 = 0;
    QuickLookLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (QuickLookLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("QLPreviewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL27getQLPreviewControllerClassv_block_invoke_cold_1();
  }

  getQLPreviewControllerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL20QuickLookLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  QuickLookLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL21getAFPreferencesClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!AssistantServicesLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL28AssistantServicesLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781D7320;
    v6 = 0;
    AssistantServicesLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (AssistantServicesLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("AFPreferences");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL21getAFPreferencesClassv_block_invoke_cold_1();
  }

  getAFPreferencesClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL28AssistantServicesLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  AssistantServicesLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL28getSiriReaderConnectionClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SiriReaderServicesLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL29SiriReaderServicesLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781D7338;
    v6 = 0;
    SiriReaderServicesLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SiriReaderServicesLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SiriReaderConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL28getSiriReaderConnectionClassv_block_invoke_cold_1();
  }

  getSiriReaderConnectionClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL29SiriReaderServicesLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  SiriReaderServicesLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void sub_2158C3720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2158C4634(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2158C89E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2158C90B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getRPTDirectionalSwipeTestParametersClass_block_invoke(uint64_t a1)
{
  RecapPerformanceTestingLibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("RPTDirectionalSwipeTestParameters");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRPTDirectionalSwipeTestParametersClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getRPTDirectionalSwipeTestParametersClass_block_invoke_cold_1();
    RecapPerformanceTestingLibrary_0();
  }
}

void RecapPerformanceTestingLibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!RecapPerformanceTestingLibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __RecapPerformanceTestingLibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2781D75B8;
    v3 = 0;
    RecapPerformanceTestingLibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!RecapPerformanceTestingLibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __RecapPerformanceTestingLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  RecapPerformanceTestingLibraryCore_frameworkLibrary_0 = result;
  return result;
}

JavaScriptDialogState *__getRPTTestRunnerClass_block_invoke_0(uint64_t a1)
{
  RecapPerformanceTestingLibrary_0();
  result = objc_getClass("RPTTestRunner");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getRPTTestRunnerClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getRPTTestRunnerClass_block_invoke_cold_1();
    return [(JavaScriptDialogState *)v3 initWithMessage:v4 defaultText:v5 type:v6 completionHandler:v7, v8];
  }

  return result;
}

void sub_2158C95E8(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2158C96B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  v10 = v9;

  a9.super_class = AutomationController;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2158CA2D4(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2158CAAD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2158CAD80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2158CAE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_2158CB254(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_3(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_debug_impl(a1, v4, OS_LOG_TYPE_DEBUG, a4, v5, 0xCu);
}

void sub_2158CC154(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

uint64_t __onlyContainsMovableLibraryItems_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 supportsMultipleSelection] ^ 1;
  }

  else
  {
    v3 = 1;
  }

  return v3;
}

uint64_t isScreenSizeCurrentlyBigEnoughForTabBar(double a1, double a2)
{
  result = [MEMORY[0x277CDB7B8] isTabBarAvailableForScreenSize:?];
  if (result)
  {
    return fmin(a1, a2) > 414.0 || a1 > a2;
  }

  return result;
}

__CFString *stringForCurrentTabBarLayoutPreference()
{
  v0 = [MEMORY[0x277CBEBD0] safari_browserDefaults];
  v1 = [v0 safari_enableStandaloneTabBar];

  if (v1)
  {
    return @"Separate";
  }

  else
  {
    return @"Compact";
  }
}

void sub_2158CE514(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void setSafeAreaInsetsFrozenRecursively(void *a1, uint64_t a2)
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [v3 view];
  [v4 safeAreaInsets];
  v7 = *MEMORY[0x277D768C8];
  v8 = *(MEMORY[0x277D768C8] + 8);
  v9 = *(MEMORY[0x277D768C8] + 16);
  v10 = *(MEMORY[0x277D768C8] + 24);
  v12 = v11 != v8;
  if (v13 != *MEMORY[0x277D768C8])
  {
    v12 = 1;
  }

  if (v6 != v10)
  {
    v12 = 1;
  }

  v14 = v5 != v9 || v12;

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = [v3 childViewControllers];
  v16 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v29 + 1) + 8 * i);
        if (a2)
        {
          v21 = [*(*(&v29 + 1) + 8 * i) view];
          [v21 safeAreaInsets];
          if (v25 == v8 && v22 == v7 && v24 == v10)
          {
            v28 = (v23 == v9) & v14;

            if (v28 != 1)
            {
              goto LABEL_25;
            }

            v21 = [v20 view];
            [v21 layoutIfNeeded];
          }
        }

LABEL_25:
        [v20 _setIgnoresWrapperViewForContentOverlayInsets:a2];
        setSafeAreaInsetsFrozenRecursively(v20, a2);
      }

      v17 = [v15 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v17);
  }
}

void sub_2158CEE70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getOBWelcomeControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOBWelcomeControllerClass_softClass;
  v7 = getOBWelcomeControllerClass_softClass;
  if (!getOBWelcomeControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getOBWelcomeControllerClass_block_invoke;
    v3[3] = &unk_2781D4BD8;
    v3[4] = &v4;
    __getOBWelcomeControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2158D1C44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id getOBBoldTrayButtonClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getOBBoldTrayButtonClass_softClass;
  v7 = getOBBoldTrayButtonClass_softClass;
  if (!getOBBoldTrayButtonClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getOBBoldTrayButtonClass_block_invoke;
    v3[3] = &unk_2781D4BD8;
    v3[4] = &v4;
    __getOBBoldTrayButtonClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2158D1D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2158D2200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2158D2300(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2158D3808(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 72));
  _Unwind_Resume(a1);
}

id getSKStoreProductViewControllerClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSKStoreProductViewControllerClass_softClass;
  v7 = getSKStoreProductViewControllerClass_softClass;
  if (!getSKStoreProductViewControllerClass_softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSKStoreProductViewControllerClass_block_invoke;
    v3[3] = &unk_2781D4BD8;
    v3[4] = &v4;
    __getSKStoreProductViewControllerClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_2158D781C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2158D8394(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2158DAAA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __enableUnifiedBarUserInterfaceStyleOverride_block_invoke()
{
  v0 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  enableUnifiedBarUserInterfaceStyleOverride_enableUnifiedBarUserInterfaceStyleOverride = [v0 BOOLForKey:@"DisableUnifiedBarUserInterfaceStyleOverride"] ^ 1;
}

void __getOBWelcomeControllerClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("OBWelcomeController");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBWelcomeControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getOBWelcomeControllerClass_block_invoke_cold_1();
    OnBoardingKitLibrary();
  }
}

void OnBoardingKitLibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __OnBoardingKitLibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2781D79B0;
    v3 = 0;
    OnBoardingKitLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!OnBoardingKitLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __OnBoardingKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  OnBoardingKitLibraryCore_frameworkLibrary = result;
  return result;
}

Class __getOBBoldTrayButtonClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBBoldTrayButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBBoldTrayButtonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getOBBoldTrayButtonClass_block_invoke_cold_1();
    return __getOBLinkTrayButtonClass_block_invoke(v3);
  }

  return result;
}

Class __getOBLinkTrayButtonClass_block_invoke(uint64_t a1)
{
  OnBoardingKitLibrary();
  result = objc_getClass("OBLinkTrayButton");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getOBLinkTrayButtonClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getOBLinkTrayButtonClass_block_invoke_cold_1();
    return __getSKStoreProductViewControllerClass_block_invoke(v3);
  }

  return result;
}

Class __getSKStoreProductViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!StoreKitLibraryCore_frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __StoreKitLibraryCore_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781D79C8;
    v6 = 0;
    StoreKitLibraryCore_frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (StoreKitLibraryCore_frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SKStoreProductViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSKStoreProductViewControllerClass_block_invoke_cold_1();
  }

  getSKStoreProductViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __StoreKitLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  StoreKitLibraryCore_frameworkLibrary = result;
  return result;
}

void OUTLINED_FUNCTION_2_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void sub_2158DC164(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2158DD96C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void __internalQueue_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.MobileSafari.CloudTabStore", 0);
  v1 = internalQueue_internalQueue;
  internalQueue_internalQueue = v0;
}

void OUTLINED_FUNCTION_1_4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

double snapshotSizeForSuggestedSize(void *a1, double a2, double a3)
{
  v5 = a1;
  [v5 snapshotSizeForSuggestedSize:{a2, a3}];
  [v5 desiredSnapshotScale];
  v7 = v6;

  v8 = v7 == 0.0 || v7 == 1.79769313e308;
  if (v8 || !CGFloatIsValid())
  {
    return 1.79769313e308;
  }

  _SFScreenScale();
  v9 = [MEMORY[0x277D759A0] mainScreen];
  [v9 nativeScale];

  _SFCeilingFloatToPixels();
  v11 = v10;
  _SFCeilingFloatToPixels();
  return v11;
}

double snapshotSizeByAddingBorderOptions(char a1, double a2)
{
  _SFOnePixel();
  v5 = *(MEMORY[0x277D768C8] + 8);
  if ((a1 & 2) != 0)
  {
    v5 = v4;
  }

  if ((a1 & 8) == 0)
  {
    v4 = *(MEMORY[0x277D768C8] + 24);
  }

  return a2 + v5 + v4;
}

void sub_2158E39FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v21 + 40));
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2158E40EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, id a36)
{
  objc_destroyWeak((v38 + 32));
  objc_destroyWeak((v36 + 32));
  objc_destroyWeak((v37 + 32));
  objc_destroyWeak(&a36);
  objc_destroyWeak((v39 - 176));
  objc_destroyWeak((v39 - 136));
  objc_destroyWeak((v39 - 128));
  _Unwind_Resume(a1);
}

void sub_2158E614C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_2158E9F18(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2158EA038(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2158EA76C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = History;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2158EA9AC(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_2158EB148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2158EB9F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

void sub_2158EBCBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

uint64_t totalWrites()
{
  v9 = *MEMORY[0x277D85DE8];
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  v0 = [MEMORY[0x277CCAC38] processInfo];
  v1 = [v0 processIdentifier];

  if (proc_pid_rusage(v1, 4, &v3))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return DWORD2(v4);
  }
}

unint64_t continuousTimeAddInterval(uint64_t a1, double a2)
{
  if (continuousTimeAddInterval_once != -1)
  {
    continuousTimeAddInterval_cold_1();
  }

  return (continuousTimeAddInterval_timebaseInfo * a1 / *algn_27CA7F034 + (a2 * 1000000000.0)) * *algn_27CA7F034 / continuousTimeAddInterval_timebaseInfo;
}

void sub_2158F29E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = PageLoadTestStatistics;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2158F4A3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2158F5450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *systemImageNameForCompletionIcon(uint64_t a1)
{
  if ((a1 - 1) > 0xB)
  {
    return @"book";
  }

  else
  {
    return off_2781D8390[a1 - 1];
  }
}

void sub_2158F6294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id messageForVariant(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1 == 2)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = _WBSLocalizedString();
    v4 = [v5 stringWithFormat:v6, v3];
  }

  else if (a1 == 1)
  {
    v4 = _WBSLocalizedString();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id WebViewGeometryDescription(uint64_t a1)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = NSStringFromCGRect(*a1);
  v4 = NSStringFromUIEdgeInsets(*(a1 + 32));
  v5 = NSStringFromUIEdgeInsets(*(a1 + 64));
  v15 = *(a1 + 96);
  v16 = *(a1 + 112);
  v17 = *(a1 + 128);
  v18 = *(a1 + 144);
  v6 = SFNSStringFromScrollIndicatorInsets();
  v7 = NSStringFromCGSize(*(a1 + 160));
  v8 = NSStringFromCGSize(*(a1 + 176));
  v9 = NSStringFromCGSize(*(a1 + 192));
  v10 = NSStringFromUIEdgeInsets(*(a1 + 208));
  v11 = v10;
  v12 = @"NO";
  if (*(a1 + 240))
  {
    v12 = @"YES";
  }

  v13 = [v2 stringWithFormat:@"<WebViewGeometry: frame = %@ unobscuredSafeAreaInsets = %@; obscuredInsets = %@; scrollIndicatorInsets = %@; minimumLayoutSize = %@; minimumUnobscuredLayoutSize = %@; maximumUnobscuredLayoutSize = %@; scrollViewContentInsetAdjustments = %@; inElementFullscreen = %@; minimumEffectiveDeviceWidth = %.2f>", v3, v4, v5, v6, v7, v8, v9, v10, v12, *(a1 + 248), v15, v16, v17, v18];;

  return v13;
}

__CFString *WebViewGeometryDescriptionOfDifferenceFromGeometry(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v6 = [MEMORY[0x277CBEB18] array];
  if (!CGRectEqualToRect(*a1, *a2))
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = NSStringFromCGRect(*a1);
    v9 = NSStringFromCGRect(*a2);
    v10 = [v7 stringWithFormat:@"frame = %@ → %@", v8, v9];
    [v6 addObject:v10];
  }

  v11 = *(a1 + 32);
  v12 = *(a1 + 48);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v11, *(a2 + 32)), vceqq_f64(v12, *(a2 + 48))))) & 1) == 0)
  {
    v13 = *(a1 + 40);
    v14 = MEMORY[0x277CCACA8];
    v15 = *(a1 + 56);
    v16 = NSStringFromUIEdgeInsets(*v11.f64);
    v17 = NSStringFromUIEdgeInsets(*(a2 + 32));
    v18 = [v14 stringWithFormat:@"unobscuredSafeAreaInsets = %@ → %@", v16, v17];
    [v6 addObject:v18];
  }

  v19 = *(a1 + 64);
  v20 = *(a1 + 80);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v19, *(a2 + 64)), vceqq_f64(v20, *(a2 + 80))))) & 1) == 0)
  {
    v21 = *(a1 + 72);
    v22 = MEMORY[0x277CCACA8];
    v23 = *(a1 + 88);
    v24 = NSStringFromUIEdgeInsets(*v19.f64);
    v25 = NSStringFromUIEdgeInsets(*(a2 + 64));
    v26 = [v22 stringWithFormat:@"obscuredInsets = %@ → %@", v24, v25];
    [v6 addObject:v26];
  }

  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 96), *(a2 + 96)), vceqq_f64(*(a1 + 112), *(a2 + 112))))) & 1) == 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + 128), *(a2 + 128)), vceqq_f64(*(a1 + 144), *(a2 + 144))))) & 1) == 0)
  {
    v27 = MEMORY[0x277CCACA8];
    v28 = SFNSStringFromScrollIndicatorInsets();
    v68 = *(a2 + 96);
    v69 = *(a2 + 112);
    v70 = *(a2 + 128);
    v71 = *(a2 + 144);
    v29 = SFNSStringFromScrollIndicatorInsets();
    v30 = [v27 stringWithFormat:@"scrollIndicatorInsets = %@ → %@", v28, v29, v68, v69, v70, v71];
    [v6 addObject:v30];
  }

  v31 = *(a1 + 160);
  v32 = *(a1 + 168);
  if (v31 != *(a2 + 160) || v32 != *(a2 + 168))
  {
    v33 = MEMORY[0x277CCACA8];
    v34 = NSStringFromCGSize(*&v31);
    v35 = NSStringFromCGSize(*(a2 + 160));
    v36 = [v33 stringWithFormat:@"minimumLayoutSize = %@ → %@", v34, v35];
    [v6 addObject:v36];
  }

  v37 = *(a1 + 176);
  v38 = *(a1 + 184);
  if (v37 != *(a2 + 176) || v38 != *(a2 + 184))
  {
    v39 = MEMORY[0x277CCACA8];
    v40 = NSStringFromCGSize(*&v37);
    v41 = NSStringFromCGSize(*(a2 + 176));
    v42 = [v39 stringWithFormat:@"minimumUnobscuredLayoutSize = %@ → %@", v40, v41];
    [v6 addObject:v42];
  }

  v43 = *(a1 + 192);
  v44 = *(a1 + 200);
  if (v43 != *(a2 + 192) || v44 != *(a2 + 200))
  {
    v45 = MEMORY[0x277CCACA8];
    v46 = NSStringFromCGSize(*&v43);
    v47 = NSStringFromCGSize(*(a2 + 192));
    v48 = [v45 stringWithFormat:@"maximumUnobscuredLayoutSize = %@ → %@", v46, v47];
    [v6 addObject:v48];
  }

  v49 = *(a1 + 208);
  v50 = *(a1 + 224);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v49, *(a2 + 208)), vceqq_f64(v50, *(a2 + 224))))) & 1) == 0)
  {
    v51 = *(a1 + 216);
    v52 = MEMORY[0x277CCACA8];
    v53 = *(a1 + 232);
    v54 = NSStringFromUIEdgeInsets(*v49.f64);
    v55 = NSStringFromUIEdgeInsets(*(a2 + 208));
    v56 = [v52 stringWithFormat:@"scrollViewContentInsetAdjustments = %@ → %@", v54, v55];
    [v6 addObject:v56];
  }

  if (*(a1 + 240) != *(a2 + 240))
  {
    v57 = MEMORY[0x277CCACA8];
    if (*(a1 + 240))
    {
      v58 = @"YES";
    }

    else
    {
      v58 = @"NO";
    }

    if (*(a2 + 240))
    {
      v59 = @"YES";
    }

    else
    {
      v59 = @"NO";
    }

    v60 = v58;
    v61 = [v57 stringWithFormat:@"inElementFullscreen = %@ → %@", v60, v59];
    [v6 addObject:v61];
  }

  v62 = *(a2 + 248);
  if (*(a1 + 248) != v62)
  {
    v63 = [MEMORY[0x277CCACA8] stringWithFormat:@"minimumEffectiveDeviceWidth = %.2f → %.2f", *(a1 + 248), *&v62];
    [v6 addObject:v63];
  }

  if (a3)
  {
    *a3 = [v6 count] == 0;
  }

  if ([v6 count])
  {
    v64 = MEMORY[0x277CCACA8];
    v65 = [v6 componentsJoinedByString:@" "];;
    v66 = [v64 stringWithFormat:@"<WebViewGeometry: %@>", v65];
  }

  else
  {
    v66 = @"<WebViewGeometry: identical>";
  }

  return v66;
}

void sub_2158FA4FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_2158FB374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id __SectionDictionaryForCompletionGroup_block_invoke(uint64_t a1, void *a2)
{
  v26[6] = *MEMORY[0x277D85DE8];
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = [v2 urlStringForHistoryServiceCompletionList];
  }

  else
  {
    v3 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = @" • Open Tab";
  }

  else
  {
    v4 = 0;
  }

  if ([MEMORY[0x277D49A08] isStreamlinedCompletionListEnabled])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v4 = [v2 subtextForHistoryServiceCompletionList];
    }
  }

  v5 = [(__CFString *)v3 safari_simplifiedUserVisibleURLStringWithSimplifications:511 forDisplayOnly:1 simplifiedStringOffset:0];
  if ([MEMORY[0x277D49A08] isSearchEvaluationLoggingEnabled] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v2 uuidString];
  }

  else
  {
    v6 = 0;
  }

  v25[0] = @"title";
  v7 = [v2 titleForHistoryServiceCompletionList];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &stru_2827BF158;
  }

  if (v3)
  {
    v10 = v3;
  }

  else
  {
    v10 = &stru_2827BF158;
  }

  v26[0] = v9;
  v26[1] = v10;
  v25[1] = @"url";
  v25[2] = @"truncated_url";
  if (v5)
  {
    v11 = v5;
  }

  else
  {
    v11 = &stru_2827BF158;
  }

  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v12 = &stru_2827BF158;
  }

  v26[2] = v11;
  v26[3] = v12;
  v25[3] = @"url_subtext";
  v25[4] = @"type";
  v13 = v2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = MEMORY[0x277CCACA8];
    v15 = [v13 resultType];
    v16 = [v14 stringWithFormat:@"SFSearchResult(%@)", v15];
  }

  else
  {
    v17 = [v13 sfSearchResultValue];
    v15 = [v17 resultBundleId];

    v18 = [v15 safari_substringFromPrefix:@"com.apple.Safari.CompletionList."];
    v19 = v18;
    if (v18 || (v19 = v15) != 0)
    {
      v20 = v19;
    }

    else
    {
      v24 = objc_opt_class();
      v20 = NSStringFromClass(v24);
    }

    v16 = v20;
  }

  v25[5] = @"uuid";
  if (v6)
  {
    v21 = v6;
  }

  else
  {
    v21 = &stru_2827BF158;
  }

  v26[4] = v16;
  v26[5] = v21;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:6];

  return v22;
}

void sub_2158FBECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2158FC524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2158FC850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __getSearchUIClass_block_invoke(uint64_t a1)
{
  SearchUILibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SearchUI");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSearchUIClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSearchUIClass_block_invoke_cold_1();
    SearchUILibrary();
  }
}

void SearchUILibrary()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SearchUILibraryCore_frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SearchUILibraryCore_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2781D8550;
    v3 = 0;
    SearchUILibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SearchUILibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SearchUILibraryCore_block_invoke()
{
  result = _sl_dlopen();
  SearchUILibraryCore_frameworkLibrary = result;
  return result;
}

Class __getSFCardClass_block_invoke(uint64_t a1)
{
  SearchUILibrary();
  result = objc_getClass("SFCard");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFCardClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSFCardClass_block_invoke_cold_1();
    return __getSFLocalImageClass_block_invoke(v3);
  }

  return result;
}

Class __getSFLocalImageClass_block_invoke(uint64_t a1)
{
  SearchUILibrary();
  result = objc_getClass("SFLocalImage");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFLocalImageClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSFLocalImageClass_block_invoke_cold_1();
    return __getSFRichTextClass_block_invoke(v3);
  }

  return result;
}

Class __getSFRichTextClass_block_invoke(uint64_t a1)
{
  SearchUILibrary();
  result = objc_getClass("SFRichText");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFRichTextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSFRichTextClass_block_invoke_cold_1();
    return __getSFAttributionFooterCardSectionClass_block_invoke(v3);
  }

  return result;
}

TabDocumentActivityItemProvider *__getSFAttributionFooterCardSectionClass_block_invoke(uint64_t a1)
{
  SearchUILibrary();
  result = objc_getClass("SFAttributionFooterCardSection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSFAttributionFooterCardSectionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getSFAttributionFooterCardSectionClass_block_invoke_cold_1();
    return [(TabDocumentActivityItemProvider *)v3 initWithTabDocument:v4, v5];
  }

  return result;
}

void sub_2158FD09C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2158FFEC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21590526C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

id getSearchUIClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getSearchUIClass_softClass_0;
  v7 = getSearchUIClass_softClass_0;
  if (!getSearchUIClass_softClass_0)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = __getSearchUIClass_block_invoke_0;
    v3[3] = &unk_2781D4BD8;
    v3[4] = &v4;
    __getSearchUIClass_block_invoke_0(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_215907504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215907890(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getSearchUIClass_block_invoke_0(uint64_t a1)
{
  SearchUILibrary_0();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("SearchUI");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSearchUIClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSearchUIClass_block_invoke_cold_1();
    SearchUILibrary_0();
  }
}

void SearchUILibrary_0()
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!SearchUILibraryCore_frameworkLibrary_0)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = __SearchUILibraryCore_block_invoke_0;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2781D8818;
    v3 = 0;
    SearchUILibraryCore_frameworkLibrary_0 = _sl_dlopen();
  }

  v0 = v1[0];
  if (!SearchUILibraryCore_frameworkLibrary_0)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t __SearchUILibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  SearchUILibraryCore_frameworkLibrary_0 = result;
  return result;
}

SearchQueryRestorationCompletionItem *__getSearchUITableViewCellClass_block_invoke(uint64_t a1)
{
  SearchUILibrary_0();
  result = objc_getClass("SearchUITableViewCell");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getSearchUITableViewCellClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getSearchUITableViewCellClass_block_invoke_cold_1();
    return [(SearchQueryRestorationCompletionItem *)v3 initWithQuery:v4, v5];
  }

  return result;
}

__CFString *mobileGestaltStringForQuery()
{
  v0 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v1 = v0;
  }

  else
  {
    v1 = &stru_2827BF158;
  }

  v2 = v1;

  return v1;
}

void sub_215910A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215914DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159150FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_2159170AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, id a30)
{
  objc_destroyWeak(&a25);
  objc_destroyWeak(&a30);
  objc_destroyWeak((v30 - 128));
  _Unwind_Resume(a1);
}

void sub_21591B300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21591BE78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id SafariNonContaineredLibraryPath()
{
  if (SafariNonContaineredLibraryPath_onceToken != -1)
  {
    SafariNonContaineredLibraryPath_cold_1();
  }

  v1 = SafariNonContaineredLibraryPath_path;

  return v1;
}

void __SafariNonContaineredLibraryPath_block_invoke()
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"Library"];
  v1 = SafariNonContaineredLibraryPath_path;
  SafariNonContaineredLibraryPath_path = v0;
}

id SafariNonContaineredSettingsDirectoryPath()
{
  if (SafariNonContaineredSettingsDirectoryPath_onceToken != -1)
  {
    SafariNonContaineredSettingsDirectoryPath_cold_1();
  }

  v1 = SafariNonContaineredSettingsDirectoryPath_path;

  return v1;
}

void __SafariNonContaineredSettingsDirectoryPath_block_invoke()
{
  v0 = SafariNonContaineredLibraryPath();
  v1 = [v0 stringByAppendingPathComponent:@"Safari"];
  v2 = SafariNonContaineredSettingsDirectoryPath_path;
  SafariNonContaineredSettingsDirectoryPath_path = v1;

  v3 = [MEMORY[0x277CCAA00] defaultManager];
  [v3 _web_createDirectoryAtPathWithIntermediateDirectories:SafariNonContaineredSettingsDirectoryPath_path attributes:0];
}

id SafariHistoryCloudBackupIndicatorFileURL()
{
  v0 = MEMORY[0x277CBEBC0];
  v1 = SafariNonContaineredSettingsDirectoryPath();
  v2 = [v1 stringByAppendingPathComponent:@"History.ckbackup"];
  v3 = [v0 fileURLWithPath:v2 isDirectory:0];

  return v3;
}

void sub_215920F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2159211AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id dateRepresentingMidnightFromNumberOfDaysAgo(uint64_t a1)
{
  v2 = objc_alloc(MEMORY[0x277CBEA80]);
  v3 = [v2 initWithCalendarIdentifier:*MEMORY[0x277CBE5C0]];
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 components:28 fromDate:v4];

  [v5 setDay:{objc_msgSend(v5, "day") - a1}];
  v6 = [v3 dateFromComponents:v5];

  return v6;
}

id newTabOverridePageURLForTab(void *a1)
{
  v1 = a1;
  v2 = [MEMORY[0x277D49A60] sharedController];
  v3 = [v2 managedNewTabPageState];

  if (v3 == 1)
  {
LABEL_14:
    v7 = 0;
    goto LABEL_18;
  }

  if (v3 != 2)
  {
    if (v3 == 3)
    {
      v4 = MEMORY[0x277CBEBC0];
      v5 = [MEMORY[0x277D49A60] sharedController];
      v6 = [v5 managedNewTabPageHomepageURLString];
      v7 = [v4 URLWithString:v6];

      goto LABEL_18;
    }

    if (![v1 isPrivateBrowsingEnabled] || (objc_msgSend(v1, "webExtensionsController"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "tabOverridePreferencesManager"), v16 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CBEBD0], "safari_browserDefaults"), v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "shouldNewTabPageOverriddenByAnEnabledExtensionApplyInPrivateBrowsingWithUserDefaults:", v17), v17, v16, v15, v18))
    {
      v7 = extensionOverridenStartPageURLForTab(v1);
      goto LABEL_18;
    }

    goto LABEL_14;
  }

  v8 = [v1 webExtensionsController];
  v9 = [MEMORY[0x277D49A60] sharedController];
  v10 = [v9 managedNewTabPageExtensionComposedIdentifier];
  v11 = [v8 webExtensionForComposedIdentifier:v10];

  if (!v11)
  {
    goto LABEL_16;
  }

  v12 = [v1 webExtensionsController];
  v13 = [v11 extension];
  if (([v12 extensionIsEnabled:v13] & 1) == 0)
  {

LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  v14 = [v11 newTabOverridePageURL];

  if (!v14 || [v1 isPrivateBrowsingEnabled] && !objc_msgSend(v11, "allowedInPrivateBrowsing"))
  {
    goto LABEL_16;
  }

  v7 = [v11 newTabOverridePageURL];
LABEL_17:

LABEL_18:

  return v7;
}

void sub_215925B58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_21592BD74(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_2159305A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getSearchUIFirstTimeExperienceViewControllerClass_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SearchUILibraryCore_frameworkLibrary_1)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __SearchUILibraryCore_block_invoke_1;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781D9298;
    v6 = 0;
    SearchUILibraryCore_frameworkLibrary_1 = _sl_dlopen();
    v2 = v4[0];
    if (SearchUILibraryCore_frameworkLibrary_1)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SearchUIFirstTimeExperienceViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getSearchUIFirstTimeExperienceViewControllerClass_block_invoke_cold_1();
  }

  getSearchUIFirstTimeExperienceViewControllerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SearchUILibraryCore_block_invoke_1()
{
  result = _sl_dlopen();
  SearchUILibraryCore_frameworkLibrary_1 = result;
  return result;
}

void sub_21593143C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215936F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21593838C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 184));
  _Unwind_Resume(a1);
}

void sub_215938F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 144), 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, v9, OS_LOG_TYPE_DEBUG, a4, &a9, 0x20u);
}

void sub_21593C010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

double itemOffsetForSlowingOffset(double a1, double a2, double a3)
{
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v14 = __itemOffsetForSlowingOffset_block_invoke;
  v15 = &__block_descriptor_40_e8_d16__0d8l;
  v16 = a3;
  v5 = v13;
  v6 = v5;
  if (a1 <= 0.0)
  {
    v11 = fmax(a2, 0.0);
  }

  else
  {
    v7 = a2 + 128.0 - a1;
    v8 = 0.0;
    v9 = 0.0;
    if (v7 > 0.0)
    {
      v9 = v7 - v14(v5, a2 + 128.0 - a1);
    }

    v10 = fmin(a2, 0.0) + 128.0 - a1;
    if (v10 > 0.0)
    {
      v8 = v10 - v14(v6, v10);
    }

    v11 = v9 - v8;
  }

  return v11;
}

void sub_21594020C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication()
{
  if (WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAutoFillAuthentication_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCloudBookmarks()
{
  if (WBS_LOG_CHANNEL_PREFIXCloudBookmarks_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCloudBookmarks_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCloudBookmarks_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCloudHistory()
{
  if (WBS_LOG_CHANNEL_PREFIXCloudHistory_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCloudHistory_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCloudHistory_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXDataMigration()
{
  if (WBS_LOG_CHANNEL_PREFIXDataMigration_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXDataMigration_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXDataMigration_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXDownloads()
{
  if (WBS_LOG_CHANNEL_PREFIXDownloads_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXDownloads_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXDownloads_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXHistoryViewController()
{
  if (WBS_LOG_CHANNEL_PREFIXHistoryViewController_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXHistoryViewController_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXHistoryViewController_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXLoweredTabBar()
{
  if (WBS_LOG_CHANNEL_PREFIXLoweredTabBar_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXLoweredTabBar_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXLoweredTabBar_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXMediaCapture()
{
  if (WBS_LOG_CHANNEL_PREFIXMediaCapture_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXMediaCapture_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXMediaCapture_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXOther()
{
  if (WBS_LOG_CHANNEL_PREFIXOther_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXOther_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXOther_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPLT()
{
  if (WBS_LOG_CHANNEL_PREFIXPLT_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPLT_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPLT_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXParsec()
{
  if (WBS_LOG_CHANNEL_PREFIXParsec_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXParsec_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXParsec_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPerformanceTest()
{
  if (WBS_LOG_CHANNEL_PREFIXPerformanceTest_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPerformanceTest_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPerformanceTest_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPrinting()
{
  if (WBS_LOG_CHANNEL_PREFIXPrinting_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPrinting_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPrinting_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPrivateBrowsing()
{
  if (WBS_LOG_CHANNEL_PREFIXPrivateBrowsing_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPrivateBrowsing_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPrivateBrowsing_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXPush()
{
  if (WBS_LOG_CHANNEL_PREFIXPush_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXPush_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXPush_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXReadingList()
{
  if (WBS_LOG_CHANNEL_PREFIXReadingList_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXReadingList_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXReadingList_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSiriIntelligence()
{
  if (WBS_LOG_CHANNEL_PREFIXSiriIntelligence_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSiriIntelligence_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSiriIntelligence_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSiriLink()
{
  if (WBS_LOG_CHANNEL_PREFIXSiriLink_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSiriLink_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSiriLink_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXStartPage()
{
  if (WBS_LOG_CHANNEL_PREFIXStartPage_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXStartPage_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXStartPage_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTabGroup()
{
  if (WBS_LOG_CHANNEL_PREFIXTabGroup_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTabGroup_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTabGroup_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTabSnapshots()
{
  if (WBS_LOG_CHANNEL_PREFIXTabSnapshots_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTabSnapshots_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTabSnapshots_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXTest()
{
  if (WBS_LOG_CHANNEL_PREFIXTest_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXTest_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXTest_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXUserInterface()
{
  if (WBS_LOG_CHANNEL_PREFIXUserInterface_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXUserInterface_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXUserInterface_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebClips()
{
  if (WBS_LOG_CHANNEL_PREFIXWebClips_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebClips_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebClips_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebDriver()
{
  if (WBS_LOG_CHANNEL_PREFIXWebDriver_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebDriver_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebDriver_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebsiteData()
{
  if (WBS_LOG_CHANNEL_PREFIXWebsiteData_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebsiteData_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebsiteData_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXCloudSettings()
{
  if (WBS_LOG_CHANNEL_PREFIXCloudSettings_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXCloudSettings_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXCloudSettings_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWebExtensions()
{
  if (WBS_LOG_CHANNEL_PREFIXWebExtensions_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWebExtensions_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWebExtensions_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXInterstellar()
{
  if (WBS_LOG_CHANNEL_PREFIXInterstellar_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXInterstellar_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXInterstellar_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSystemNoteTaking()
{
  if (WBS_LOG_CHANNEL_PREFIXSystemNoteTaking_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSystemNoteTaking_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSystemNoteTaking_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXAppReviewPrompt()
{
  if (WBS_LOG_CHANNEL_PREFIXAppReviewPrompt_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXAppReviewPrompt_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXAppReviewPrompt_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXWidgets()
{
  if (WBS_LOG_CHANNEL_PREFIXWidgets_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXWidgets_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXWidgets_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSiriReadThis()
{
  if (WBS_LOG_CHANNEL_PREFIXSiriReadThis_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSiriReadThis_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSiriReadThis_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXProfiles()
{
  if (WBS_LOG_CHANNEL_PREFIXProfiles_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXProfiles_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXProfiles_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXBrowsingAssistant()
{
  if (WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXBrowsingAssistant_log;
}

uint64_t WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites()
{
  if (WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites_onceToken != -1)
  {
    WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites_cold_1();
  }

  return WBS_LOG_CHANNEL_PREFIXSiriSuggestedSites_log;
}

void sub_2159454AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a19);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void __minimumTitleWidth_block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277D740A8];
  v0 = [MEMORY[0x277D74300] boldSystemFontOfSize:12.0];
  v4[0] = v0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:&v3 count:1];
  [@"MMMM" sizeWithAttributes:v1];
  minimumTitleWidth_minimumTitleWidth = v2;
}

void sub_2159488F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_21594CE44(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_21594DE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21594E6A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_215950F04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_destroyWeak((v14 + 40));
  objc_destroyWeak(va);
  objc_destroyWeak((v15 - 104));
  _Unwind_Resume(a1);
}

void sub_2159513A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215951684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215952044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159521E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159523F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159525D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159528AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215952C38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215954104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215958F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215959EE4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

Class __getCKContextClientClass_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ContextKitLibraryCore_frameworkLibrary_0)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = __ContextKitLibraryCore_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781DA3E0;
    v6 = 0;
    ContextKitLibraryCore_frameworkLibrary_0 = _sl_dlopen();
    v2 = v4[0];
    if (ContextKitLibraryCore_frameworkLibrary_0)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CKContextClient");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    __getCKContextClientClass_block_invoke_cold_1();
  }

  getCKContextClientClass_softClass_0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __ContextKitLibraryCore_block_invoke_0()
{
  result = _sl_dlopen();
  ContextKitLibraryCore_frameworkLibrary_0 = result;
  return result;
}

void OUTLINED_FUNCTION_45(uint64_t a1, void *a2)
{

  [(TabController *)a1 _closeTab:a2 animated:0 allowAddingToRecentlyClosedTabs:0 keepWebViewAlive:0 showAutoCloseTabsAlert:1];
}

void OUTLINED_FUNCTION_46(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_70(uint64_t result, float a2)
{
  *(v4 - 144) = a2;
  *(v3 + 4) = v2;
  *(v4 - 132) = 2114;
  *(v3 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_71(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

uint64_t OUTLINED_FUNCTION_78()
{

  return objc_opt_isKindOfClass();
}

uint64_t OUTLINED_FUNCTION_93(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v4 countByEnumeratingWithState:a3 objects:a4 count:16];
}

void sub_21595BBF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215961BA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  v16 = v15;

  _Unwind_Resume(a1);
}

void sub_215962414(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

uint64_t twoFingerTapNavigationOutcomeForState(uint64_t a1, int a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

void sub_2159632BC(_Unwind_Exception *a1)
{
  v8 = v5;

  _Unwind_Resume(a1);
}

void sub_215963D74(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_215964888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215964C14(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_215964D24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_215965964(_Unwind_Exception *exception_object)
{
  if (v2)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_215965CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_215966290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v17 + 32));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_2159669BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, id *a10, id *a11, void *a12)
{
  if ((v16 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void sub_21596886C(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_2159698E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 48));

  objc_destroyWeak((v17 - 40));
  _Unwind_Resume(a1);
}

void sub_215969D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_21596AC68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak(&a15);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21596C770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  objc_destroyWeak(va);
  objc_destroyWeak((v7 - 40));
  _Unwind_Resume(a1);
}

void sub_21596CBAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);

  objc_destroyWeak(va);
  objc_destroyWeak((v7 - 40));
  _Unwind_Resume(a1);
}

void sub_21596D3A0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v3 + 32));
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v4 - 56));
  _Unwind_Resume(a1);
}

void sub_21596D664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21596D8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21596DB50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21596DDE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak(&a13);

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21596DFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_21596E454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_21596EC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  v27 = v23;

  objc_destroyWeak((v26 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_21596F018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_21596F6D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21596FB40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_21596FD30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak(&a18);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_215971340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  _Block_object_dispose((v17 - 80), 8);
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_215971580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

id getPKAddPassesViewControllerClass(void)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getPKAddPassesViewControllerClass(void)::softClass;
  v7 = getPKAddPassesViewControllerClass(void)::softClass;
  if (!getPKAddPassesViewControllerClass(void)::softClass)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 3221225472;
    v3[2] = ___ZL33getPKAddPassesViewControllerClassv_block_invoke;
    v3[3] = &unk_2781D60E0;
    v3[4] = &v4;
    ___ZL33getPKAddPassesViewControllerClassv_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_215971744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21597221C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, id location)
{
  _Block_object_dispose((v35 - 192), 8);

  objc_destroyWeak((v34 + 32));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_215972AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_2159744E0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
  }

  _Unwind_Resume(exception_object);
}

void sub_215974D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak((v17 - 40));

  _Unwind_Resume(a1);
}

void sub_2159764C0(_Unwind_Exception *a1)
{
  if (v4)
  {
  }

  _Unwind_Resume(a1);
}

void sub_215976800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v22 + 56));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215976C18(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&_ZGVZZZ46__TabDocument__checkForAppLinkWithCompletion__EUb_EUb0_E24systemServiceIdentifiers);

  _Unwind_Resume(a1);
}

void sub_215976FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v21 + 40));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215977448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v19 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_215977950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v18 = v13;

  _Unwind_Resume(a1);
}

void sub_215978924(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

void sub_2159796E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_215979814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_215979A90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_21597A9CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, void *a54, void *a55, void *a56, id a57)
{
  objc_destroyWeak(&a57);

  objc_destroyWeak((v61 - 128));
  _Unwind_Resume(a1);
}

void sub_21597BF58(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void sub_21597CB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, id location)
{
  objc_destroyWeak((v20 + 48));

  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21597E55C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v13;

  _Unwind_Resume(a1);
}

void sub_21597E784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_21597ED88(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_21597FCB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v14 = v12;

  _Unwind_Resume(a1);
}

void sub_215980048(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_215980DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

void sub_2159818A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  objc_destroyWeak(&a32);

  objc_destroyWeak((v36 - 112));
  _Unwind_Resume(a1);
}

void sub_215982570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_215983AF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_215983BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

uint64_t _PLShouldLogRegisteredEvent()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v0 = getPLShouldLogRegisteredEventSymbolLoc(void)::ptr;
  v7 = getPLShouldLogRegisteredEventSymbolLoc(void)::ptr;
  if (!getPLShouldLogRegisteredEventSymbolLoc(void)::ptr)
  {
    v1 = PowerLogLibrary();
    v5[3] = dlsym(v1, "PLShouldLogRegisteredEvent");
    getPLShouldLogRegisteredEventSymbolLoc(void)::ptr = v5[3];
    v0 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  if (!v0)
  {
    v3 = [Application _showSearchEngineAlertIfNeeded];
    _Block_object_dispose(&v4, 8);
    _Unwind_Resume(v3);
  }

  return v0(27, @"MobileSafari-FullScreenVideo");
}

uint64_t _PLLogRegisteredEvent(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v2 = getPLLogRegisteredEventSymbolLoc(void)::ptr;
  v9 = getPLLogRegisteredEventSymbolLoc(void)::ptr;
  if (!getPLLogRegisteredEventSymbolLoc(void)::ptr)
  {
    v3 = PowerLogLibrary();
    v7[3] = dlsym(v3, "PLLogRegisteredEvent");
    getPLLogRegisteredEventSymbolLoc(void)::ptr = v7[3];
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  if (!v2)
  {
    v5 = [Application _showSearchEngineAlertIfNeeded];
    _Block_object_dispose(&v6, 8);
    _Unwind_Resume(v5);
  }

  return v2(27, @"MobileSafari-FullScreenVideo", a1, MEMORY[0x277CBEBF8]);
}

void sub_215985858(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_215986D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:se200100](v17);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c87_ZTSKZ74__TabDocument__webView_willSubmitFormValues_userObject_submissionHandler__E3__1(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_ea8_32c87_ZTSKZ74__TabDocument__webView_willSubmitFormValues_userObject_submissionHandler__E3__1(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:se200100](v1);
  }
}

void sub_21598743C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_2159875E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_215987E84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_215988088(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

void sub_215988B24(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_2159893D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

void sub_2159894F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);

  _Unwind_Resume(a1);
}

void sub_21598C28C(_Unwind_Exception *a1)
{
  if (v5)
  {
  }

  _Unwind_Resume(a1);
}

void sub_21598D8B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  v23 = v20;

  _Block_object_dispose(&a15, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__707(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_21598E8A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v13 = v12;

  _Unwind_Resume(a1);
}

void sub_21598F490(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 80), 8);

  _Unwind_Resume(a1);
}

Class ___ZL19getFKSaveOrderClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!FinanceKitUILibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL23FinanceKitUILibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781DB4F8;
    v6 = 0;
    FinanceKitUILibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (FinanceKitUILibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("FKSaveOrder");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL19getFKSaveOrderClassv_block_invoke_cold_1();
  }

  getFKSaveOrderClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL23FinanceKitUILibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  FinanceKitUILibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL33getPKAddPassesViewControllerClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!PassKitUILibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL20PassKitUILibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781DB510;
    v6 = 0;
    PassKitUILibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (PassKitUILibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("PKAddPassesViewController");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL33getPKAddPassesViewControllerClassv_block_invoke_cold_1();
  }

  getPKAddPassesViewControllerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL20PassKitUILibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  PassKitUILibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL27getCLKWatchFaceLibraryClassv_block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!ClockKitLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL19ClockKitLibraryCorePPc_block_invoke;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781DB528;
    v6 = 0;
    ClockKitLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (ClockKitLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("CLKWatchFaceLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL27getCLKWatchFaceLibraryClassv_block_invoke_cold_1();
  }

  getCLKWatchFaceLibraryClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t ___ZL19ClockKitLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  ClockKitLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void ___ZL14getPKPassClassv_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("PKPass");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPassClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    ___ZL14getPKPassClassv_block_invoke_cold_1();
    PassKitCoreLibrary();
  }
}

void PassKitCoreLibrary(void)
{
  v4 = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  if (!PassKitCoreLibraryCore(char **)::frameworkLibrary)
  {
    v1[1] = MEMORY[0x277D85DD0];
    v1[2] = 3221225472;
    v1[3] = ___ZL22PassKitCoreLibraryCorePPc_block_invoke;
    v1[4] = &__block_descriptor_40_e5_v8__0l;
    v1[5] = v1;
    v2 = xmmword_2781DB540;
    v3 = 0;
    PassKitCoreLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = v1[0];
  if (!PassKitCoreLibraryCore(char **)::frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v1[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t ___ZL22PassKitCoreLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  PassKitCoreLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

Class ___ZL28getPKPassesXPCContainerClassv_block_invoke(uint64_t a1)
{
  PassKitCoreLibrary();
  result = objc_getClass("PKPassesXPCContainer");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getPKPassesXPCContainerClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = ___ZL28getPKPassesXPCContainerClassv_block_invoke_cold_1();
    return ___ZL38getPLShouldLogRegisteredEventSymbolLocv_block_invoke(v3);
  }

  return result;
}

void *___ZL38getPLShouldLogRegisteredEventSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = PowerLogLibrary();
  result = dlsym(v2, "PLShouldLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLShouldLogRegisteredEventSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PowerLogLibrary(void)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if (!PowerLogLibraryCore(char **)::frameworkLibrary)
  {
    v3[1] = MEMORY[0x277D85DD0];
    v3[2] = 3221225472;
    v3[3] = ___ZL19PowerLogLibraryCorePPc_block_invoke;
    v3[4] = &__block_descriptor_40_e5_v8__0l;
    v3[5] = v3;
    v4 = xmmword_2781DB558;
    v5 = 0;
    PowerLogLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  v0 = PowerLogLibraryCore(char **)::frameworkLibrary;
  v1 = v3[0];
  if (!PowerLogLibraryCore(char **)::frameworkLibrary)
  {
    v1 = abort_report_np();
    goto LABEL_7;
  }

  if (v3[0])
  {
LABEL_7:
    free(v1);
  }

  return v0;
}

uint64_t ___ZL19PowerLogLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  PowerLogLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL32getPLLogRegisteredEventSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = PowerLogLibrary();
  result = dlsym(v2, "PLLogRegisteredEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPLLogRegisteredEventSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void std::__shared_weak_count::__release_shared[abi:se200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

Class ___ZL28getSiriReaderConnectionClassv_block_invoke_0(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  if (!SiriReaderServicesLibraryCore(char **)::frameworkLibrary)
  {
    v4[1] = MEMORY[0x277D85DD0];
    v4[2] = 3221225472;
    v4[3] = ___ZL29SiriReaderServicesLibraryCorePPc_block_invoke_0;
    v4[4] = &__block_descriptor_40_e5_v8__0l;
    v4[5] = v4;
    v5 = xmmword_2781DB570;
    v6 = 0;
    SiriReaderServicesLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
    v2 = v4[0];
    if (SiriReaderServicesLibraryCore(char **)::frameworkLibrary)
    {
      if (!v4[0])
      {
        goto LABEL_4;
      }
    }

    else
    {
      v2 = abort_report_np();
    }

    free(v2);
  }

LABEL_4:
  result = objc_getClass("SiriReaderConnection");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    ___ZL28getSiriReaderConnectionClassv_block_invoke_cold_1();
  }

  getSiriReaderConnectionClass(void)::softClass = *(*(*(a1 + 32) + 8) + 24);
  return result;
}
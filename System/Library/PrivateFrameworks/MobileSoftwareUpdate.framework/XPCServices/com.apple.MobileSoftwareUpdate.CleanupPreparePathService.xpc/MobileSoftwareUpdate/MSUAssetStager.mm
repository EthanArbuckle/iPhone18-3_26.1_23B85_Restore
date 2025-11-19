@interface MSUAssetStager
+ (BOOL)_checkAndLogLocalError:(id)a3 outError:(id *)a4;
+ (BOOL)_stageAssetsUsingUpdateAttributes:(id)a3 withError:(id *)a4;
+ (BOOL)isPurgingEnabled;
+ (id)buildVersionFromAttributes:(id)a3;
+ (id)buildVersionFromInfoPlist:(id)a3;
+ (id)osVersionFromAttributes:(id)a3;
+ (id)osVersionFromInfoPlist:(id)a3;
+ (id)restoreVersionFromAttributes:(id)a3;
+ (id)trainNameFromAttributes:(id)a3;
+ (void)_purgeStagedAssetsSynchronously:(BOOL)a3;
+ (void)disableStagingForReason:(id)a3 buildVersion:(id)a4 osVersion:(id)a5;
@end

@implementation MSUAssetStager

+ (BOOL)_stageAssetsUsingUpdateAttributes:(id)a3 withError:(id *)a4
{
  v103 = 0;
  v104 = &v103;
  v105 = 0x3052000000;
  v106 = __Block_byref_object_copy_;
  v107 = __Block_byref_object_dispose_;
  v108 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (objc_opt_class() && objc_opt_class() && objc_opt_class())
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 || (objc_opt_respondsToSelector()) && (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v102[0] = 0;
      v102[1] = v102;
      v102[2] = 0x2020000000;
      v102[3] = 0;
      v100 = 0;
      v101 = 0;
      v97 = 0;
      v98 = &v97;
      v99 = 0x2020000000;
      v9 = [MSUAssetStager buildVersionFromAttributes:a3];
      v10 = [MSUAssetStager osVersionFromAttributes:a3];
      v11 = [MSUAssetStager trainNameFromAttributes:a3];
      v12 = [MSUAssetStager restoreVersionFromAttributes:a3];
      if (objc_opt_respondsToSelector())
      {
        v18 = objc_alloc_init(NSMutableDictionary);
        [v18 setObject:v9 forKeyedSubscript:@"Build"];
        [v18 setObject:v10 forKeyedSubscript:@"OSVersion"];
        if (v11)
        {
          [v18 setObject:v11 forKeyedSubscript:@"TrainName"];
        }

        else
        {
          logfunction(", 1, @"MSUAssetStager: Unable to determine TrainName from update attributes. Not adding to options\n"", v19, v20, v21, v22, v23, v89);
        }

        if (v12)
        {
          [v18 setObject:v12 forKeyedSubscript:@"RestoreVersion"];
        }

        else
        {
          logfunction(", 1, @"MSUAssetStager: Unable to determine RestoreVersion from update attributes. Not adding to options\n"", v24, v25, v26, v27, v28, v89);
        }

        logfunction(", 1, @"MSUAssetStager: Using new SPI for determining assets for pre SU staging. Options being passed into stageDetermineAllAvailableForUpdate are {\n%@\n}\n"", v39, v40, v41, v42, v43, v18);
        v33 = [MAAutoAsset stageDetermineAllAvailableForUpdateSync:v18 totalExpectedBytes:&v101 error:v104 + 5];
      }

      else
      {
        logfunction(", 1, @"MSUAssetStager: Determining all available assets for staging using buildVersion:%@ osVersion:%@ via legacy SPI on supported OS\n"", v13, v14, v15, v16, v17, v9);
        v33 = [MAAutoAsset stageDetermineAllAvailableSync:v10 forTargetBuildVersion:v9 totalExpectedBytes:&v101 error:v104 + 5];
      }

      v44 = v33;
      if (v104[5])
      {
        logfunction(", 1, @"MSUAssetStager: Failed to determine assets available for staging\n"", v34, v35, v36, v37, v38, v90);
        v45 = v104[5];
      }

      else
      {
        if (!v33 || ![v33 count])
        {
          v31 = 1;
          logfunction(", 1, @"MSUAssetStager: No assets found for staging\n"", v34, v35, v36, v37, v38, v90);
          goto LABEL_38;
        }

        if (v101)
        {
          v46 = [v44 count];
          logfunction(", 1, @"MSUAssetStager: Determined %lu assets to stage requiring %llu bytes\n"", v47, v48, v49, v50, v51, v46);
          v95 = 0;
          v96 = 0;
          if (get_snapshot_preparation_size(a3, &v95, &v96))
          {
            v94 = 0;
            if (get_snapshot_apply_size(a3, &v94))
            {
              bzero(&v109, 0x878uLL);
              statfs("/private/var", &v109);
              v67 = v109.f_bavail * v109.f_bsize;
              v68 = v67 - &v95[v94];
              if (v67 <= &v95[v94])
              {
                v87 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 63, 0, 0, @"Free space (%llu) is less than the prepareSize (%llu) + applySize (%llu) total", v64, v65, v66, LOBYTE(v109.f_bavail) * LOBYTE(v109.f_bsize));
                v104[5] = v87;
                [MSUAssetStager _checkAndLogLocalError:v87 outError:a4];
              }

              else
              {
                v69 = ((v101 + (v101 * 0.1)) + 262140000.0);
                logfunction(", 1, @"MSUAssetStager: Required space for staging assets freeSpace:%llu - (prepareSize:%llu + applySize:%llu) = remainingSpace:%llu > estimatedBytesWithPadding:%llu | stagingValid:%@\n"", v62, v63, v64, v65, v66, LOBYTE(v109.f_bavail) * LOBYTE(v109.f_bsize));
                if (v68 <= v69)
                {
                  v88 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 63, 0, 0, @"Not enough space available for staging assets; remainingSpace:%llu, estimatedBytesWithPadding:%llu", v72, v73, v74, v68);
                  v104[5] = v88;
                  [MSUAssetStager _checkAndLogLocalError:v88 outError:a4];
                }

                else
                {
                  logfunction(", 1, @"MSUAssetStager: Beginning asset downloads for staging\n"", v70, v71, v72, v73, v74, v91);
                  v75 = dispatch_semaphore_create(0);
                  if (v75)
                  {
                    v81 = v75;
                    v93[0] = _NSConcreteStackBlock;
                    v93[1] = 3221225472;
                    v93[2] = __62__MSUAssetStager__stageAssetsUsingUpdateAttributes_withError___block_invoke_2;
                    v93[3] = &unk_10004D070;
                    v93[6] = &v97;
                    v93[7] = &v103;
                    v93[4] = v75;
                    v93[5] = v102;
                    [MAAutoAsset stageDownloadAll:3600 reportingProgress:&__block_literal_global_2 completion:v93];
                    if (dispatch_semaphore_wait(v81, 0))
                    {
                      [+[NSRunLoop currentRunLoop](NSRunLoop runMode:"runMode:beforeDate:" beforeDate:NSDefaultRunLoopMode, objc_opt_new()];
                      +[MAAutoAsset stagePurgeAllSync];
                    }

                    else
                    {
                      if (!v104[5])
                      {
                        v31 = 1;
                        logfunction(", 1, @"MSUAssetStager: Completed asset staging using %llu bytes\n"", v82, v83, v84, v85, v86, v98[3]);
                        goto LABEL_38;
                      }

                      logfunction(", 1, @"MSUAssetStager: Failed to download assets for staging\n"", v82, v83, v84, v85, v86, v92);
                      [MSUAssetStager _checkAndLogLocalError:v104[5] outError:a4];
                    }
                  }

                  else
                  {
                    logfunction(", 1, @"MSUAssetStager: Failed to create semaphore for staging.\n"", v76, v77, v78, v79, v80, v92);
                  }
                }
              }
            }

            else
            {
              logfunction(", 1, @"MSUAssetStager: Failed to get snapshot apply size with error: %@\n"", v57, v58, v59, v60, v61, v96);
              [MSUAssetStager _checkAndLogLocalError:v96 outError:a4];
            }
          }

          else
          {
            logfunction(", 1, @"MSUAssetStager: Failed to get snapshot preparation size with error: %@\n"", v52, v53, v54, v55, v56, v96);
            [MSUAssetStager _checkAndLogLocalError:v96 outError:a4];
          }

          goto LABEL_26;
        }

        v45 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 63, 0, 0, @"Failed to estimate bytes needed for staging", v36, v37, v38, v90);
        v104[5] = v45;
      }

      [MSUAssetStager _checkAndLogLocalError:v45 outError:a4];
LABEL_26:
      v31 = 0;
LABEL_38:
      _Block_object_dispose(&v97, 8);
      _Block_object_dispose(v102, 8);
      goto LABEL_16;
    }

    v29 = @"Required MobileAsset classes do not respond to required selectors";
  }

  else
  {
    v29 = @"Required MobileAsset classes do not exist";
  }

  v30 = _create_error_internal_cf(@"MobileSoftwareUpdateErrorDomain", 63, 0, 0, v29, v6, v7, v8, v89);
  v104[5] = v30;
  [MSUAssetStager _checkAndLogLocalError:v30 outError:a4];
  v31 = 0;
LABEL_16:
  _Block_object_dispose(&v103, 8);
  return v31;
}

void __62__MSUAssetStager__stageAssetsUsingUpdateAttributes_withError___block_invoke(id a1, MAAutoAssetStatus *a2, NSError *a3)
{
  if (objc_opt_respondsToSelector())
  {
    v9 = [(MAAutoAssetStatus *)a2 summary];
    logfunction(", 1, @"MSUAssetStager: Progress %@\n"", v10, v11, v12, v13, v14, v9);
  }

  else
  {

    logfunction(", 1, @"MSUAssetStager: Progress reported, but status does not implement summary\n"", v4, v5, v6, v7, v8, v16);
  }
}

intptr_t __62__MSUAssetStager__stageAssetsUsingUpdateAttributes_withError___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(*(*(a1 + 40) + 8) + 24) = a3;
  *(*(*(a1 + 48) + 8) + 24) = a2;
  *(*(*(a1 + 56) + 8) + 40) = a4;
  return dispatch_semaphore_signal(*(a1 + 32));
}

+ (void)disableStagingForReason:(id)a3 buildVersion:(id)a4 osVersion:(id)a5
{
  if (!+[MSUAssetStager _preSUStagingSupportedInSUCore])
  {
    v22[0] = @"DisablePreSoftwareUpdateAssetStaging";
    v22[1] = @"Reason";
    v8 = @"NotSpecified";
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = @"NotSpecified";
    }

    v23[0] = &__kCFBooleanTrue;
    v23[1] = v9;
    if (a4)
    {
      v10 = a4;
    }

    else
    {
      v10 = @"NotSpecified";
    }

    v22[2] = @"BuildVersion";
    v22[3] = @"OSVersion";
    if (a5)
    {
      v8 = a5;
    }

    v23[2] = v10;
    v23[3] = v8;
    v11 = [NSDictionary dictionaryWithObjects:v23 forKeys:v22 count:4];
    logfunction(", 1, @"MSUAssetStager: Writing preSoftwareUpdateStagingDictionary: %@ to path: %s\n"", v12, v13, v14, v15, v16, v11);
    if (![(NSDictionary *)v11 writeToFile:@"/private/var/MobileSoftwareUpdate/PreSoftwareUpdateAssetStaging.plist" atomically:1])
    {
      logfunction(", 1, @"MSUAssetStager: Failed to write preSoftwareUpdateStagingDictionary to plist at path: %s\n", v17, v18, v19, v20, v21, "/private/var/MobileSoftwareUpdate/PreSoftwareUpdateAssetStaging.plist"");
    }
  }
}

+ (void)_purgeStagedAssetsSynchronously:(BOOL)a3
{
  v3 = a3;
  if (!objc_opt_class())
  {
    v10 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging cannot proceed as MAAutoAsset class does not exist\n";
    goto LABEL_16;
  }

  if (v3)
  {
    if (objc_opt_respondsToSelector())
    {
      if (+[MSUAssetStager isPurgingEnabled])
      {
        logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging purge starting (synchronously)\n"", v4, v5, v6, v7, v8, v11);
        v9 = +[MAAutoAsset stagePurgeAllSync];
        if (v9)
        {
          logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging failed to complete purge with error: %@\n"", v4, v5, v6, v7, v8, v9);
          return;
        }

        v10 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging completed purge successfully\n";
        goto LABEL_16;
      }

      goto LABEL_15;
    }

    v10 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging cannot proceed as MAAutoAsset class does respond to required selector (stagePurgeAllSync)\n";
LABEL_16:

    logfunction("", 1, v10, v4, v5, v6, v7, v8, v13);
    return;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v10 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging cannot proceed as MAAutoAsset class does respond to required selector (stagePurgeAll:)\n";
    goto LABEL_16;
  }

  if (!+[MSUAssetStager isPurgingEnabled])
  {
LABEL_15:
    v10 = @"MSUAssetStager: Pre-SoftwareUpdate Asset Purging is disabled\n";
    goto LABEL_16;
  }

  logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging purge starting (asynchronously)\n"", v4, v5, v6, v7, v8, v11);

  [MAAutoAsset stagePurgeAll:&__block_literal_global_160];
}

void __50__MSUAssetStager__purgeStagedAssetsSynchronously___block_invoke(id a1, NSError *a2)
{
  if (a2)
  {
    logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging failed to complete purge with error: %@\n"", v2, v3, v4, v5, v6, a2);
  }

  else
  {

    logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging completed purge successfully\n"", v2, v3, v4, v5, v6, v8);
  }
}

+ (BOOL)isPurgingEnabled
{
  LOBYTE(v10) = 1;
  v7 = [MSUAssetStager _isEnabledWithAdditionalIndicators:0 options:0 updateAttributes:0 snapshotPrepare:0 splat:0 sfr:0 purging:v10];
  v8 = "not enabled";
  if (v7)
  {
    v8 = "enabled";
  }

  logfunction(", 1, @"MSUAssetStager: Pre-SoftwareUpdate Asset Staging is %s for purging\n"", v2, v3, v4, v5, v6, v8);
  return v7;
}

+ (id)buildVersionFromAttributes:(id)a3
{
  v3 = [a3 objectForKey:@"Build"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return v4;
}

+ (id)osVersionFromAttributes:(id)a3
{
  v3 = [a3 objectForKey:@"OSVersion"];
  if (!v3)
  {
    return v3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([v3 length] < 4 || objc_msgSend(v3, "rangeOfString:options:range:", @"9.9.", 0, 0, 4) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  return [v3 stringByReplacingCharactersInRange:0 withString:{4, &stru_100050240}];
}

+ (id)trainNameFromAttributes:(id)a3
{
  v3 = [a3 objectForKey:@"TrainName"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return v4;
}

+ (id)restoreVersionFromAttributes:(id)a3
{
  v3 = [a3 objectForKey:@"RestoreVersion"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return v4;
}

+ (id)buildVersionFromInfoPlist:(id)a3
{
  v3 = [a3 objectForKey:@"TargetUpdate"];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return v4;
}

+ (id)osVersionFromInfoPlist:(id)a3
{
  v3 = [a3 objectForKey:@"ProductVersion"];
  if (!v3)
  {
    return v3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  if ([v3 length] < 4 || objc_msgSend(v3, "rangeOfString:options:range:", @"9.9.", 0, 0, 4) == 0x7FFFFFFFFFFFFFFFLL)
  {
    return v3;
  }

  return [v3 stringByReplacingCharactersInRange:0 withString:{4, &stru_100050240}];
}

+ (BOOL)_checkAndLogLocalError:(id)a3 outError:(id *)a4
{
  if (a3)
  {
    logfunction(", 1, @"MSUAssetStager: Failed with error %@\n"", a4, v4, v5, v6, v7, a3);
    v10 = a3;
    if (!a4)
    {
      return a3 == 0;
    }

    goto LABEL_6;
  }

  if (a4)
  {
    v10 = 0;
LABEL_6:
    *a4 = v10;
  }

  return a3 == 0;
}

@end
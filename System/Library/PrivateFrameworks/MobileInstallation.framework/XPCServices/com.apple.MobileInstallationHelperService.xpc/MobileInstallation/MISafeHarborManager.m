@interface MISafeHarborManager
+ (id)defaultManager;
- (BOOL)fromMIH_createSafeHarborWithIdentifier:(id)a3 forPersona:(id)a4 containerType:(unint64_t)a5 andMigrateDataFrom:(id)a6 containsOneOrMoreSymlinks:(BOOL)a7 withError:(id *)a8;
@end

@implementation MISafeHarborManager

+ (id)defaultManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000ACD0;
  block[3] = &unk_100024848;
  block[4] = a1;
  if (qword_10002DF60 != -1)
  {
    dispatch_once(&qword_10002DF60, block);
  }

  v2 = qword_10002DF58;

  return v2;
}

- (BOOL)fromMIH_createSafeHarborWithIdentifier:(id)a3 forPersona:(id)a4 containerType:(unint64_t)a5 andMigrateDataFrom:(id)a6 containsOneOrMoreSymlinks:(BOOL)a7 withError:(id *)a8
{
  v9 = a7;
  v61 = a3;
  v60 = a4;
  v13 = a6;
  v78 = 0;
  v79 = &v78;
  v80 = 0x3032000000;
  v81 = sub_10000B5F4;
  v82 = sub_10000B604;
  v83 = 0;
  v59 = [v13 URLByAppendingPathComponent:@"Container" isDirectory:1];
  v14 = [v13 URLByAppendingPathComponent:@"Info" isDirectory:1];
  v62 = [v14 URLByAppendingPathComponent:@"Info.plist" isDirectory:0];
  v15 = +[MIFileManager defaultManager];
  v17 = v15;
  if (a5 > 7 || ((1 << a5) & 0x94) == 0)
  {
    v22 = _CreateAndLogError("[MISafeHarborManager fromMIH_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:containsOneOrMoreSymlinks:withError:]", 71, MIInstallerErrorDomain, 25, 0, 0, @"Safe harbors are not supported for container type %ld", v16, a5);
LABEL_12:
    v23 = v22;
    v24 = 0;
    v25 = 0;
    goto LABEL_13;
  }

  if (v9)
  {
    if ([v15 itemIsSymlinkAtURL:v59 error:0])
    {
      v19 = @"Safe harbor's Container directory at %@ is unexpectedly a symlink.";
      v20 = 79;
      v21 = v59;
LABEL_11:
      v22 = _CreateAndLogError("[MISafeHarborManager fromMIH_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:containsOneOrMoreSymlinks:withError:]", v20, MIInstallerErrorDomain, 160, 0, 0, v19, v18, v21);
      goto LABEL_12;
    }

    if ([v17 itemIsSymlinkAtURL:v14 error:0])
    {
      v19 = @"Safe harbor's Info directory at %@ is unexpectedly a symlink.";
      v20 = 84;
      v21 = v14;
      goto LABEL_11;
    }

    if ([v17 itemIsSymlinkAtURL:v62 error:0])
    {
      v19 = @"Safe harbor's Info.plist at %@ is unexpectedly a symlink.";
      v20 = 89;
      v21 = v62;
      goto LABEL_11;
    }
  }

  v77 = 0;
  v25 = [NSDictionary dictionaryWithContentsOfURL:v62 error:&v77];
  v32 = v77;
  if (!v25)
  {
    v23 = _CreateAndLogError("[MISafeHarborManager fromMIH_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:containsOneOrMoreSymlinks:withError:]", 98, MIInstallerErrorDomain, 31, v32, 0, @"Could not load safe harbor Info.plist at path %@", v31, v62);
    v24 = 0;
    v25 = 0;
    goto LABEL_39;
  }

  v76 = v32;
  v33 = [MIDataContainer containerWithIdentifier:v61 forPersona:v60 ofContentClass:a5 createIfNeeded:0 created:0 error:&v76];
  v23 = v76;

  if (v33)
  {

    v35 = _CreateAndLogError("[MISafeHarborManager fromMIH_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:containsOneOrMoreSymlinks:withError:]", 107, MIInstallerErrorDomain, 32, 0, 0, @"Safe harbor already exists with identifier %@ persona %@ for type %ld", v34, v61);
    v24 = 0;
    v26 = 0;
    v32 = v23;
LABEL_25:
    v23 = v35;
    goto LABEL_40;
  }

  v32 = [v23 domain];
  if (![v32 isEqualToString:MIContainerManagerErrorDomain])
  {
LABEL_38:
    v24 = 0;
    goto LABEL_39;
  }

  v37 = [v23 code];

  if (v37 == 21)
  {
    v75 = v23;
    v24 = [MIDataContainer tempContainerWithIdentifier:v61 forPersona:v60 ofContentClass:a5 error:&v75];
    v32 = v75;

    if (v24)
    {
      v26 = [v24 containerURL];
      if (v26)
      {
        v74 = v32;
        v56 = [v24 setInfoValue:v25 forKey:@"com.apple.MobileContainerManager.SafeHarborInfo" error:&v74];
        v40 = v74;

        if ((v56 & 1) == 0)
        {
          v32 = v40;
          v35 = _CreateAndLogError("[MISafeHarborManager fromMIH_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:containsOneOrMoreSymlinks:withError:]", 129, MIInstallerErrorDomain, 21, v40, 0, @"Failed to set safe harbor attribute on new safe harbor container with identifier %@ persona %@ type %ld: %@", v41, v61);
          goto LABEL_25;
        }

        v53 = v40;
        v54 = [NSString stringWithFormat:@"%@/%ld", v61, a5];
        v42 = +[MIDaemonConfiguration sharedInstance];
        v43 = [v42 dataContainerRootItemNames];

        v67[0] = _NSConcreteStackBlock;
        v67[1] = 3221225472;
        v67[2] = sub_10000B60C;
        v67[3] = &unk_100024B20;
        v73 = a5 != 7;
        v57 = v54;
        v68 = v57;
        v44 = v43;
        v69 = v44;
        v26 = v26;
        v70 = v26;
        v71 = v17;
        v72 = &v78;
        v55 = v71;
        v32 = [v71 enumerateURLsForItemsInDirectoryAtURL:v59 ignoreSymlinks:1 withBlock:v67];

        v45 = v79[5];
        if (v45)
        {
          v35 = v45;
          goto LABEL_25;
        }

        if (v32)
        {
          v58 = [v59 path];
          v23 = _CreateAndLogError("[MISafeHarborManager fromMIH_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:containsOneOrMoreSymlinks:withError:]", 197, MIInstallerErrorDomain, 21, v32, 0, @"Failed to enumerate URLs for items in safe harbor's container directory at %@ : %@", v46, v58);
        }

        else
        {
          v66 = 0;
          v47 = [v24 recreateDefaultStructureWithError:&v66];
          v48 = v66;
          v32 = v48;
          if ((v47 & 1) == 0)
          {
            v35 = _CreateAndLogError("[MISafeHarborManager fromMIH_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:containsOneOrMoreSymlinks:withError:]", 203, MIInstallerErrorDomain, 21, v48, 0, @"Failed to recreate default container structure for container with identifier %@ persona %@ type %ld: %@", v49, v61);
            goto LABEL_25;
          }

          v65 = v48;
          v50 = [v24 makeContainerLiveWithError:&v65];
          v58 = v65;

          if (v50)
          {
            v64 = v58;
            v52 = [v55 removeItemAtURL:v13 error:&v64];
            v23 = v64;

            if ((v52 & 1) != 0 || gLogHandle && *(gLogHandle + 44) < 3)
            {
              v30 = 1;
              goto LABEL_27;
            }

            v29 = [v13 path];
            MOLogWrite();
            v30 = 1;
            goto LABEL_21;
          }

          v23 = _CreateAndLogError("[MISafeHarborManager fromMIH_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:containsOneOrMoreSymlinks:withError:]", 209, MIInstallerErrorDomain, 21, v58, 0, @"Failed to make safe harbor active for container with identifier %@ persona %@ type %ld: %@", v51, v61);
        }

        v32 = v58;
LABEL_40:

        if (!a8)
        {
          goto LABEL_15;
        }

        goto LABEL_14;
      }

      v23 = _CreateAndLogError("[MISafeHarborManager fromMIH_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:containsOneOrMoreSymlinks:withError:]", 123, MIInstallerErrorDomain, 21, 0, 0, @"Failed to get URL for new safe harbor container with identifier %@ persona %@ type %ld: %@", v39, v61);
LABEL_39:
      v26 = 0;
      goto LABEL_40;
    }

    v23 = _CreateAndLogError("[MISafeHarborManager fromMIH_createSafeHarborWithIdentifier:forPersona:containerType:andMigrateDataFrom:containsOneOrMoreSymlinks:withError:]", 117, MIInstallerErrorDomain, 21, v32, 0, @"Failed to create container with identifier %@ of type %ld: %@", v38, v61);
    goto LABEL_38;
  }

  v24 = 0;
LABEL_13:
  v26 = 0;
  if (a8)
  {
LABEL_14:
    v27 = v23;
    *a8 = v23;
  }

LABEL_15:
  if (!v24)
  {
    v30 = 0;
    goto LABEL_27;
  }

  v63 = 0;
  v28 = [v24 removeUnderlyingContainerWaitingForDeletion:0 error:&v63];
  v29 = v63;
  if ((v28 & 1) == 0 && (!gLogHandle || *(gLogHandle + 44) >= 3))
  {
    MOLogWrite();
  }

  v30 = 0;
LABEL_21:

LABEL_27:
  _Block_object_dispose(&v78, 8);

  return v30;
}

@end
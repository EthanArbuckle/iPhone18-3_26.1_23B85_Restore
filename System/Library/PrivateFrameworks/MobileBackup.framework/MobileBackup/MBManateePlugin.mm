@interface MBManateePlugin
- (id)startingBackupWithEngine:(id)engine;
@end

@implementation MBManateePlugin

- (id)startingBackupWithEngine:(id)engine
{
  engineCopy = engine;
  if (![engineCopy backsUpPrimaryAccount])
  {
    v6 = 0;
    goto LABEL_80;
  }

  v90 = 0;
  if (![engineCopy isCloudKitEngine])
  {
    v59 = 0;
    goto LABEL_7;
  }

  v89 = 0;
  v4 = [engineCopy fetchDeviceToDeviceEncryptionSupportedByAccount:&v90 error:&v89];
  v5 = v89;
  if (v4)
  {
    v59 = v5;
LABEL_7:
    domainManager = [engineCopy domainManager];
    allDomains = [domainManager allDomains];

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    obj = allDomains;
    v62 = [obj countByEnumeratingWithState:&v85 objects:v99 count:16];
    if (v62)
    {
      v61 = *v86;
      v9 = MBError_ptr;
      v64 = engineCopy;
      do
      {
        v10 = 0;
        do
        {
          if (*v86 != v61)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v85 + 1) + 8 * v10);
          relativePathsToBackupToDriveAndStandardAccount = [v11 relativePathsToBackupToDriveAndStandardAccount];

          if (relativePathsToBackupToDriveAndStandardAccount)
          {
            v63 = v10;
            relativePathsToBackupToDriveAndStandardAccount2 = [v11 relativePathsToBackupToDriveAndStandardAccount];
            v14 = [relativePathsToBackupToDriveAndStandardAccount2 mutableCopy];

            relativePathsToBackupAndRestore = [v11 relativePathsToBackupAndRestore];

            if (relativePathsToBackupAndRestore)
            {
              relativePathsToBackupAndRestore2 = [v11 relativePathsToBackupAndRestore];
              v17 = [relativePathsToBackupAndRestore2 mutableCopy];
            }

            else
            {
              v17 = objc_opt_new();
            }

            v83 = 0u;
            v84 = 0u;
            v81 = 0u;
            v82 = 0u;
            v18 = v14;
            v19 = [v18 countByEnumeratingWithState:&v81 objects:v98 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v82;
              do
              {
                for (i = 0; i != v20; i = i + 1)
                {
                  if (*v82 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = *(*(&v81 + 1) + 8 * i);
                  v24 = [v11 standardizedRelativePathFor:{v23, v56}];
                  if ([v17 containsObject:v24])
                  {
                    v25 = MBGetDefaultLog();
                    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v94 = v23;
                      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Removing manatee path: %@", buf, 0xCu);
                      v56 = v23;
                      _MBLog();
                    }

                    [v17 removeObject:v24];
                  }
                }

                v20 = [v18 countByEnumeratingWithState:&v81 objects:v98 count:16];
              }

              while (v20);
            }

            engineCopy = v64;
            if ([v64 isCloudKitEngine])
            {
              if (qword_100421910 != -1)
              {
                dispatch_once(&qword_100421910, &stru_1003C0340);
              }

              v26 = qword_100421908;
              v77 = 0u;
              v78 = 0u;
              v79 = 0u;
              v80 = 0u;
              v27 = [v26 countByEnumeratingWithState:&v77 objects:v97 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v78;
                v65 = *v78;
                v66 = v26;
                do
                {
                  v30 = 0;
                  v67 = v28;
                  do
                  {
                    if (*v78 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    v68 = v30;
                    v31 = *(*(&v77 + 1) + 8 * v30);
                    rootPath = [v11 rootPath];
                    v33 = [v31 hasPrefix:rootPath];

                    if (v33)
                    {
                      defaultManager = [v9[80] defaultManager];
                      v35 = [defaultManager fileExistsAtPath:v31];

                      v36 = MBGetDefaultLog();
                      v37 = os_log_type_enabled(v36, OS_LOG_TYPE_INFO);
                      if (v35)
                      {
                        if (v37)
                        {
                          *buf = 138412546;
                          v94 = v11;
                          v95 = 2112;
                          v96 = v31;
                          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Marker found for %@ at %@", buf, 0x16u);
                          v56 = v11;
                          v58 = v31;
                          _MBLog();
                        }

                        v36 = [v26 objectForKeyedSubscript:v31];
                        v73 = 0u;
                        v74 = 0u;
                        v75 = 0u;
                        v76 = 0u;
                        v38 = [v36 countByEnumeratingWithState:&v73 objects:v92 count:16];
                        if (v38)
                        {
                          v39 = v38;
                          v40 = *v74;
                          do
                          {
                            for (j = 0; j != v39; j = j + 1)
                            {
                              if (*v74 != v40)
                              {
                                objc_enumerationMutation(v36);
                              }

                              v42 = *(*(&v73 + 1) + 8 * j);
                              v43 = [v18 containsObject:{v42, v56}];
                              v44 = MBGetDefaultLog();
                              v45 = v44;
                              if (v43)
                              {
                                if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
                                {
                                  *buf = 138412290;
                                  v94 = v42;
                                  _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "Adding manatee path (marker detected): %@", buf, 0xCu);
                                  v56 = v42;
                                  _MBLog();
                                }

                                v45 = [v11 standardizedRelativePathFor:v42];
                                [v17 addObject:v45];
                                [v18 removeObject:v45];
                              }

                              else if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                              {
                                *buf = 138412290;
                                v94 = v42;
                                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "Domains plist does not contain path found in hardcoded manatee exclusion list: %@", buf, 0xCu);
                                v56 = v42;
                                _MBLog();
                              }
                            }

                            v39 = [v36 countByEnumeratingWithState:&v73 objects:v92 count:16];
                          }

                          while (v39);
                          v9 = MBError_ptr;
                          v29 = v65;
                          v26 = v66;
                        }
                      }

                      else if (v37)
                      {
                        *buf = 138412546;
                        v94 = v11;
                        v95 = 2112;
                        v96 = v31;
                        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "Marker not found for %@ at %@", buf, 0x16u);
                        v56 = v11;
                        v58 = v31;
                        _MBLog();
                      }

                      v28 = v67;
                    }

                    v30 = v68 + 1;
                  }

                  while ((v68 + 1) != v28);
                  v28 = [v26 countByEnumeratingWithState:&v77 objects:v97 count:16];
                }

                while (v28);
              }

              engineCopy = v64;
            }

            if (([engineCopy isDeviceTransferEngine] & 1) != 0 || objc_msgSend(engineCopy, "isDriveEngine") && (objc_msgSend(engineCopy, "encrypted") & 1) != 0 || objc_msgSend(engineCopy, "isCloudKitEngine") && (v90 & 1) == 0)
            {
              v71 = 0u;
              v72 = 0u;
              v69 = 0u;
              v70 = 0u;
              v46 = v18;
              v47 = [v46 countByEnumeratingWithState:&v69 objects:v91 count:16];
              if (v47)
              {
                v48 = v47;
                v49 = *v70;
                do
                {
                  for (k = 0; k != v48; k = k + 1)
                  {
                    if (*v70 != v49)
                    {
                      objc_enumerationMutation(v46);
                    }

                    v51 = *(*(&v69 + 1) + 8 * k);
                    v52 = MBGetDefaultLog();
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
                    {
                      *buf = 138412290;
                      v94 = v51;
                      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "Adding manatee path: %@", buf, 0xCu);
                      v57 = v51;
                      _MBLog();
                    }

                    v53 = [v11 standardizedRelativePathFor:v51];
                    [v17 addObject:v53];
                  }

                  v48 = [v46 countByEnumeratingWithState:&v69 objects:v91 count:16];
                }

                while (v48);
              }

              engineCopy = v64;
            }

            [v11 setRelativePathsToBackupAndRestore:{v17, v57}];

            v10 = v63;
          }

          v10 = v10 + 1;
        }

        while (v10 != v62);
        v62 = [obj countByEnumeratingWithState:&v85 objects:v99 count:16];
      }

      while (v62);
    }

    v6 = 0;
    v54 = v59;
    goto LABEL_79;
  }

  v54 = v5;
  v6 = v54;
LABEL_79:

LABEL_80:

  return v6;
}

@end
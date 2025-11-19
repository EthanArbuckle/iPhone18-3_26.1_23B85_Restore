@interface MBMobileInstallation
+ (BOOL)resetContainerWithRoot:(id)a3 error:(id *)a4;
+ (BOOL)uninstallAppWithBundleID:(id)a3 error:(id *)a4;
+ (id)_defaultSubdirectoriesForMCMContainerType:(unint64_t)a3 withError:(id *)a4;
+ (id)containerIDForPath:(id)a3 error:(id *)a4;
+ (id)displayNameForBundleIdentifier:(id)a3;
+ (id)displayNameForDomain:(id)a3 isSystemDomain:(BOOL)a4;
+ (id)displayNamesForDomainNames:(id)a3 domainManager:(id)a4;
+ (unint64_t)_containerClassForMBContainerType:(int)a3;
- (BOOL)registerSafeHarborWithIdentifier:(id)a3 path:(id)a4 type:(int)a5 error:(id *)a6;
- (BOOL)removeSafeHarborWithIdentifier:(id)a3 type:(int)a4 error:(id *)a5;
- (MBMobileInstallation)init;
- (MBMobileInstallation)initWithSafeHarborDir:(id)a3;
- (id)_systemContainersWithError:(id *)a3 shared:(BOOL)a4;
- (id)safeHarborsWithError:(id *)a3;
- (id)systemContainersWithError:(id *)a3;
- (id)systemPluginsForPersona:(id)a3 error:(id *)a4;
- (id)systemSharedContainersWithError:(id *)a3;
- (id)userAppsForPersona:(id)a3 error:(id *)a4;
- (void)_enumerateAppsWithEnumerationOptions:(unint64_t)a3 to:(id)a4 persona:(id)a5;
@end

@implementation MBMobileInstallation

- (MBMobileInstallation)init
{
  v6.receiver = self;
  v6.super_class = MBMobileInstallation;
  v2 = [(MBMobileInstallation *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    accountsTracker = v2->_accountsTracker;
    v2->_accountsTracker = v3;
  }

  return v2;
}

- (MBMobileInstallation)initWithSafeHarborDir:(id)a3
{
  v5 = a3;
  v6 = [(MBMobileInstallation *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_safeHarborDir, a3);
  }

  return v7;
}

- (void)_enumerateAppsWithEnumerationOptions:(unint64_t)a3 to:(id)a4 persona:(id)a5
{
  v54 = a4;
  v7 = a5;
  v8 = [v7 user];
  v9 = [v8 isPrimaryUser];

  LODWORD(v8) = [v7 isPersonalPersona];
  v50 = v7;
  v10 = [v7 isDataSeparatedPersona];
  v11 = v10;
  v51 = v8;
  if ((v8 & 1) == 0 && (v10 & 1) == 0)
  {
    __assert_rtn("[MBMobileInstallation _enumerateAppsWithEnumerationOptions:to:persona:]", "MBMobileInstallation.m", 332, "isPersonalPersona || isDataSeparatedPersona");
  }

  v55 = [v50 personaIdentifier];
  if (!v55)
  {
    __assert_rtn("[MBMobileInstallation _enumerateAppsWithEnumerationOptions:to:persona:]", "MBMobileInstallation.m", 335, "personaIdentifier");
  }

  v52 = v11;
  v12 = [UMUserPersonaAttributes personaAttributesForPersonaType:3];
  v13 = [v12 userPersonaUniqueString];

  v49 = v13;
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v9;
  }

  if (v14 == 1)
  {
    v15 = MBGetDefaultLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_FAULT, "Could not fetch system persona for primary user", buf, 2u);
      _MBLog();
    }
  }

  v16 = MBGetDefaultLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    v62 = a3;
    v63 = 2112;
    v64 = v50;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Starting app enumeration (options = %llu) for %@", buf, 0x16u);
    v45 = a3;
    v46 = v50;
    _MBLog();
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v18 = v17;
  v48 = a3;
  [LSApplicationRecord enumeratorWithOptions:a3];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v19 = v60 = 0u;
  v20 = [v19 countByEnumeratingWithState:&v57 objects:v69 count:16];
  v56 = v19;
  if (v20)
  {
    v21 = v20;
    v53 = v51 & v9;
    v22 = *v58;
    do
    {
      v23 = 0;
      do
      {
        if (*v58 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v57 + 1) + 8 * v23);
        v25 = objc_autoreleasePoolPush();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v26 = MBGetDefaultLog();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_29;
          }

          v30 = [v24 bundleIdentifier];
          *buf = 138412290;
          v62 = v30;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Skipping isKindOfClass for %@", buf, 0xCu);

          v29 = [v24 bundleIdentifier];
          v45 = v29;
          goto LABEL_27;
        }

        v26 = [v24 bundleIdentifier];
        if ([v24 mb_isContainerized])
        {
          v27 = [v24 mb_applicationType];
          v28 = [v27 isEqualToString:@"Hidden"];

          if (!v28)
          {
            if ([v24 isPlaceholder])
            {
              v31 = [v54 objectForKeyedSubscript:v26];
              v29 = v31;
              if (v31)
              {
                v32 = [v31 objectForKeyedSubscript:@"IsPlaceholder"];
                v33 = [v32 BOOLValue];

                if ((v33 & 1) == 0)
                {
                  v39 = MBGetDefaultLog();
                  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412290;
                    v62 = v26;
                    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Skipping placeholder for %@", buf, 0xCu);
                    v45 = v26;
                    _MBLog();
                  }

                  v19 = v56;
                  goto LABEL_28;
                }
              }

              v19 = v56;
            }

            v29 = [v24 managedPersonas];
            if (![v29 count])
            {
              if ((v51 & 1) == 0)
              {
                goto LABEL_40;
              }

              goto LABEL_50;
            }

            v34 = MBGetDefaultLog();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v62 = v26;
              v63 = 2114;
              v64 = v29;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Found app %@ with managed personae: %{public}@", buf, 0x16u);
              v45 = v26;
              v46 = v29;
              _MBLog();
            }

LABEL_40:
            v35 = [v29 containsObject:v55, v45];
            if (v53)
            {
              if ((v35 & 1) == 0 && ([v29 containsObject:v49]& 1) == 0)
              {
                v36 = MBGetDefaultLog();
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138543874;
                  v62 = v26;
                  v63 = 2112;
                  v64 = v55;
                  v65 = 2112;
                  v66 = *&v49;
                  _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Skipping %{public}@ since it's not managed by the personal:%@ persona nor system:%@ persona", buf, 0x20u);
                  v46 = v55;
                  v47 = v49;
                  v19 = v56;
                  v45 = v26;
                  goto LABEL_62;
                }

                goto LABEL_63;
              }

LABEL_50:
              v37 = MBExcludedAppTypeFromAppRecord(v24);
              if (v37 == 2)
              {
                v36 = MBGetDefaultLog();
                if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_63;
                }

                *buf = 138412290;
                v62 = v26;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Skipping %@ (Swift Playgrounds app)", buf, 0xCu);
                v45 = v26;
              }

              else
              {
                if (v37 != 1)
                {
                  v36 = [v50 userDataVolume];
                  v38 = sub_100185520(v24, v36);
                  [v54 setObject:v38 forKeyedSubscript:v26];

                  v19 = v56;
                  goto LABEL_63;
                }

                v36 = MBGetDefaultLog();
                if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                {
LABEL_63:

                  goto LABEL_28;
                }

                *buf = 138412290;
                v62 = v26;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Skipping %@ (app clip)", buf, 0xCu);
                v45 = v26;
              }
            }

            else if (v52)
            {
              if (v35)
              {
                goto LABEL_50;
              }

              v36 = MBGetDefaultLog();
              if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_63;
              }

              *buf = 138543618;
              v62 = v26;
              v63 = 2114;
              v64 = v55;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Skipping %{public}@ for data-separated persona %{public}@ since it's not in the list of managed personae", buf, 0x16u);
              v45 = v26;
              v46 = v55;
              v19 = v56;
            }

            else
            {
              if (v35)
              {
                goto LABEL_50;
              }

              v36 = MBGetDefaultLog();
              if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_63;
              }

              *buf = 138543618;
              v62 = v26;
              v63 = 2114;
              v64 = v55;
              _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Skipping %{public}@ for persona %{public}@ since it's not in the list of managed personae", buf, 0x16u);
              v45 = v26;
              v46 = v55;
              v19 = v56;
            }

LABEL_62:
            _MBLog();
            goto LABEL_63;
          }

          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v62 = v26;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "Skipping %@ as of Hidden type", buf, 0xCu);
            v45 = v26;
LABEL_27:
            _MBLog();
          }
        }

        else
        {
          v29 = MBGetDefaultLog();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v62 = v26;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Skipping isContainerized for %@", buf, 0xCu);
            v45 = v26;
            goto LABEL_27;
          }
        }

LABEL_28:

LABEL_29:
        objc_autoreleasePoolPop(v25);
        v23 = v23 + 1;
      }

      while (v21 != v23);
      v40 = [v19 countByEnumeratingWithState:&v57 objects:v69 count:16];
      v21 = v40;
    }

    while (v40);
  }

  +[NSDate timeIntervalSinceReferenceDate];
  v42 = v41;
  v43 = MBGetDefaultLog();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [v54 count];
    *buf = 134218754;
    v62 = v48;
    v63 = 2112;
    v64 = v50;
    v65 = 2048;
    v66 = v42 - v18;
    v67 = 2048;
    v68 = v44;
    _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Finished app enumeration (options = %llu) for %@ in %0.3fs: %lu apps", buf, 0x2Au);
    v19 = v56;
    [v54 count];
    _MBLog();
  }
}

- (id)userAppsForPersona:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v7 = objc_autoreleasePoolPush();
  [(MBMobileInstallation *)self _enumerateAppsWithEnumerationOptions:0 to:v6 persona:v5];
  [(MBMobileInstallation *)self _enumerateAppsWithEnumerationOptions:64 to:v6 persona:v5];
  objc_autoreleasePoolPop(v7);

  return v6;
}

- (id)systemPluginsForPersona:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = +[NSMutableDictionary dictionary];
  context = objc_autoreleasePoolPush();
  [LSApplicationExtensionRecord enumeratorWithOptions:0];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v6 = v75 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v72 objects:v80 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v73;
    v68 = v5;
    v63 = v6;
    v64 = v4;
    v62 = *v73;
    do
    {
      v10 = 0;
      v65 = v8;
      do
      {
        if (*v73 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v72 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        if ([v11 mb_isContainerized])
        {
          v13 = [v11 containingBundleRecord];

          if (!v13)
          {
            v69 = v12;
            v14 = [v4 userDataVolume];
            v15 = v11;
            v70 = v14;
            v16 = [v15 dataContainerURL];

            if (v16)
            {
              v17 = [v15 mb_bundleURL];

              if (v17)
              {
                v18 = [v15 mb_pluginIdentifier];

                if (v18)
                {
                  v19 = [v15 mb_entitlements];
                  if (!v19)
                  {
                    v20 = MBGetDefaultLog();
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
                    {
                      v21 = [v15 mb_pluginIdentifier];
                      *buf = 138412290;
                      v88 = v21;
                      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "Plugin %@ found without entitlements.", buf, 0xCu);

                      v57 = [v15 mb_pluginIdentifier];
                      _MBLog();
                    }

                    v19 = &__NSDictionary0__struct;
                  }

                  v66 = v19;
                  v67 = v10;
                  v22 = [NSMutableArray array:v57];
                  v76 = 0u;
                  v77 = 0u;
                  v78 = 0u;
                  v79 = 0u;
                  obj = [v15 groupContainerURLs];
                  v23 = [obj countByEnumeratingWithState:&v76 objects:buf count:16];
                  if (v23)
                  {
                    v24 = v23;
                    v25 = *v77;
                    do
                    {
                      v26 = 0;
                      do
                      {
                        v27 = v22;
                        if (*v77 != v25)
                        {
                          objc_enumerationMutation(obj);
                        }

                        v28 = *(*(&v76 + 1) + 8 * v26);
                        v29 = [v15 groupContainerURLs];
                        v30 = [v29 objectForKeyedSubscript:v28];

                        if (v30)
                        {
                          v31 = sub_100188A28(v30);
                          if (MBPathHasVolumePrefix())
                          {
                            v86[0] = v28;
                            v85[0] = kCFBundleIdentifierKey;
                            v85[1] = @"ContainerContentClass";
                            v32 = MBStringForContainerType(3);
                            v85[2] = @"Container";
                            v86[1] = v32;
                            v86[2] = v31;
                            v33 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:3];

                            v22 = v27;
                            [v27 addObject:v33];
LABEL_28:

                            goto LABEL_29;
                          }

                          v33 = MBGetDefaultLog();
                          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                          {
                            v35 = [v15 mb_pluginIdentifier];
                            *v82 = 138413058;
                            *&v82[4] = v35;
                            *&v82[12] = 2112;
                            *&v82[14] = v28;
                            *&v82[22] = 2112;
                            v83 = v31;
                            LOWORD(v84) = 2112;
                            *(&v84 + 2) = v70;
                            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ at %@ does not reside on the user data volume %@ - will not be backed up", v82, 0x2Au);

                            [v15 mb_pluginIdentifier];
                            v59 = v31;
                            v57 = v60 = v70;
                            v58 = v28;
                            _MBLog();
                          }

LABEL_27:
                          v22 = v27;
                          goto LABEL_28;
                        }

                        v31 = MBGetDefaultLog();
                        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
                        {
                          v34 = [v15 mb_pluginIdentifier];
                          *v82 = 138412546;
                          *&v82[4] = v34;
                          *&v82[12] = 2112;
                          *&v82[14] = v28;
                          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Plugin %@ groupContainer %@ found without a container - will not be backed up", v82, 0x16u);

                          v33 = [v15 mb_pluginIdentifier];
                          v57 = v33;
                          v58 = v28;
                          _MBLog();
                          goto LABEL_27;
                        }

                        v22 = v27;
LABEL_29:

                        v26 = v26 + 1;
                      }

                      while (v24 != v26);
                      v36 = [obj countByEnumeratingWithState:&v76 objects:buf count:16];
                      v24 = v36;
                    }

                    while (v36);
                  }

                  v81[0] = kCFBundleIdentifierKey;
                  v37 = [v15 mb_pluginIdentifier];
                  *v82 = v37;
                  v81[1] = @"ContainerContentClass";
                  v38 = MBStringForContainerType(2);
                  *&v82[8] = v38;
                  v81[2] = @"Path";
                  v39 = [v15 mb_bundleURL];
                  v40 = sub_100188A28(v39);
                  *&v82[16] = v40;
                  v81[3] = @"Container";
                  v41 = [v15 dataContainerURL];
                  v42 = sub_100188A28(v41);
                  v83 = v42;
                  v43 = v66;
                  *&v84 = v66;
                  v81[4] = @"Entitlements";
                  v81[5] = @"GroupContainers";
                  *(&v84 + 1) = v22;
                  [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:6];
                  v45 = v44 = v22;

                  v6 = v63;
                  v46 = v64;
                  v8 = v65;
                  v9 = v62;
                  v10 = v67;
LABEL_41:

                  v4 = v46;
                  v5 = v68;
LABEL_43:

                  v53 = [v15 mb_pluginIdentifier];
                  [v5 setObject:v45 forKeyedSubscript:v53];

                  v12 = v69;
                  goto LABEL_44;
                }

                v43 = MBGetDefaultLog();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
                {
                  v46 = v4;
                  v51 = [v15 mb_pluginIdentifier];
                  v52 = [v15 mb_pluginIdentifier];
                  *buf = 138412546;
                  v88 = v51;
                  v89 = 2112;
                  v90 = v52;
                  _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a pluginIdentifier (%@) - will not be backed up.", buf, 0x16u);

                  v44 = [v15 mb_pluginIdentifier];
                  v37 = [v15 mb_pluginIdentifier];
                  v57 = v44;
                  v58 = v37;
                  goto LABEL_40;
                }

LABEL_42:
                v45 = 0;
                goto LABEL_43;
              }

              v43 = MBGetDefaultLog();
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_42;
              }

              v46 = v4;
              v49 = [v15 mb_pluginIdentifier];
              v50 = [v15 mb_bundleURL];
              *buf = 138412546;
              v88 = v49;
              v89 = 2112;
              v90 = v50;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a bundle URL (%@) - will not be backed up.", buf, 0x16u);

              v44 = [v15 mb_pluginIdentifier];
              v37 = [v15 mb_bundleURL];
              v57 = v44;
              v58 = v37;
            }

            else
            {
              v43 = MBGetDefaultLog();
              if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_42;
              }

              v46 = v4;
              v47 = [v15 mb_pluginIdentifier];
              v48 = [v15 dataContainerURL];
              *buf = 138412546;
              v88 = v47;
              v89 = 2112;
              v90 = v48;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Plugin %@ found without a data container (%@) - will not be backed up.", buf, 0x16u);

              v44 = [v15 mb_pluginIdentifier];
              v37 = [v15 dataContainerURL];
              v57 = v44;
              v58 = v37;
            }

LABEL_40:
            _MBLog();
            v45 = 0;
            goto LABEL_41;
          }
        }

LABEL_44:
        objc_autoreleasePoolPop(v12);
        v10 = v10 + 1;
      }

      while (v10 != v8);
      v8 = [v6 countByEnumeratingWithState:&v72 objects:v80 count:16];
    }

    while (v8);
  }

  objc_autoreleasePoolPop(context);
  v54 = MBGetDefaultLog();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = [v5 count];
    *buf = 134217984;
    v88 = v55;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Finished app enumeration PLUGINS: %lu apps", buf, 0xCu);
    [v5 count];
    _MBLog();
  }

  return v5;
}

- (id)_systemContainersWithError:(id *)a3 shared:(BOOL)a4
{
  v4 = +[NSMutableDictionary dictionary];
  container_get_all_with_class_for_current_user();
  container_free_array_of_containers();
  v5 = v4;

  return v5;
}

- (id)systemContainersWithError:(id *)a3
{
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v6 = objc_autoreleasePoolPush();
  if (qword_100421918)
  {
    v7 = 0;
  }

  else
  {
    v13 = 0;
    v8 = [(MBMobileInstallation *)self _systemContainersWithError:&v13 shared:0];
    v7 = v13;
    v9 = qword_100421918;
    qword_100421918 = v8;
  }

  objc_autoreleasePoolPop(v6);
  if (a3)
  {
    v10 = v7;
    *a3 = v7;
  }

  v11 = qword_100421918;

  objc_sync_exit(v5);

  return v11;
}

- (id)systemSharedContainersWithError:(id *)a3
{
  v5 = objc_opt_class();
  objc_sync_enter(v5);
  v6 = objc_autoreleasePoolPush();
  if (qword_100421920)
  {
    v7 = 0;
  }

  else
  {
    v13 = 0;
    v8 = [(MBMobileInstallation *)self _systemContainersWithError:&v13 shared:1];
    v7 = v13;
    v9 = qword_100421920;
    qword_100421920 = v8;
  }

  objc_autoreleasePoolPop(v6);
  if (a3)
  {
    v10 = v7;
    *a3 = v7;
  }

  v11 = qword_100421920;

  objc_sync_exit(v5);

  return v11;
}

+ (unint64_t)_containerClassForMBContainerType:(int)a3
{
  if ((a3 - 1) > 4)
  {
    return 15;
  }

  else
  {
    return qword_1002B9F80[a3 - 1];
  }
}

+ (id)_defaultSubdirectoriesForMCMContainerType:(unint64_t)a3 withError:(id *)a4
{
  v6 = container_subdirectories_for_class();
  if (v6)
  {
    v7 = _CFXPCCreateCFObjectFromXPCObject();
  }

  else
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      v11 = 2;
      v12 = 2048;
      v13 = 1;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Failed to get subdirectory names for container class %llu : %llu", buf, 0x16u);
      _MBLog();
    }

    if (a4)
    {
      [MBError errorWithCode:1 format:@"container_subdirectories_for_class failed for class %llu with error %llu", a3, 1];
      *a4 = v7 = 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (BOOL)uninstallAppWithBundleID:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  [v6 setRequestUserConfirmation:0];
  [v6 setWaitForDeletion:1];
  [v6 setShowArchiveOption:0];
  [v6 setSystemAppNotAllowed:0];
  v7 = [IXAppInstallCoordinator uninstallAppWithBundleID:v5 options:v6 disposition:0 error:a4];
  if ((v7 & 1) == 0)
  {
    v8 = MBGetDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *a4;
      *buf = 138412802;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error uninstalling app with bundleID:%@{public} options:%@ error:%@", buf, 0x20u);
      v11 = *a4;
      _MBLog();
    }
  }

  return v7;
}

+ (BOOL)resetContainerWithRoot:(id)a3 error:(id *)a4
{
  v5 = a3;
  [v5 fileSystemRepresentation];
  if (container_copy_from_path())
  {
    if (container_delete_all_container_content() == 1)
    {
      identifier = container_get_identifier();
      v7 = MBGetDefaultLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v14 = identifier;
        v15 = 2112;
        v16 = v5;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Reset container %s with root path %@", buf, 0x16u);
        _MBLog();
      }

      v8 = 1;
    }

    else
    {
      error_description = container_get_error_description();
      if (a4)
      {
        *a4 = [MBError errorWithCode:1 format:@"container_delete_all_container_content failed: %s", error_description];
      }

      v11 = MBGetDefaultLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v14 = v5;
        v15 = 2080;
        v16 = error_description;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to reset container at %@: %s", buf, 0x16u);
        _MBLog();
      }

      v8 = 0;
    }

    container_free_object();
  }

  else
  {
    v9 = MBGetDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No container found to reset at path %@", buf, 0xCu);
      _MBLog();
    }

    v8 = 1;
  }

  return v8 & 1;
}

+ (id)containerIDForPath:(id)a3 error:(id *)a4
{
  [a3 fileSystemRepresentation];
  if (container_copy_from_path())
  {
    v5 = [NSString stringWithCString:container_get_identifier()];
    container_free_object();
  }

  else
  {
    error_description = container_get_error_description();
    if (a4)
    {
      [MBError errorWithCode:1 format:@"container_copy_from_path failed: %s", error_description, 1];
      *a4 = v5 = 0;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (id)safeHarborsWithError:(id *)a3
{
  v4 = MobileInstallationCopySafeHarbors();
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else if (a3)
  {
    *a3 = [MBError errorWithCode:1 format:@"MobileInstallationCopySafeHarbors failed"];
  }

  return v5;
}

- (BOOL)registerSafeHarborWithIdentifier:(id)a3 path:(id)a4 type:(int)a5 error:(id *)a6
{
  v9 = a3;
  v10 = a4;
  if ((a5 - 1) > 2)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = qword_1002B9FA8[a5 - 1];
  }

  v12 = MobileInstallationRegisterSafeHarborForContainerType();
  v13 = MBGetDefaultLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v17 = v10;
    v18 = 2112;
    v19 = v9;
    v20 = 1024;
    v21 = v11;
    v22 = 1024;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "MobileInstallationRegisterSafeHarborForContainerType(%@, %@, %d, NULL): %d", buf, 0x22u);
    _MBLog();
  }

  if (a6)
  {
    v14 = v12;
  }

  else
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    *a6 = [MBError errorWithCode:1 format:@"MobileInstallationRegisterSafeHarborForContainerType failed: %@: %@", v9, v10];
  }

  return v12;
}

- (BOOL)removeSafeHarborWithIdentifier:(id)a3 type:(int)a4 error:(id *)a5
{
  v7 = a3;
  if (a4 > 3)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = qword_1002B9FC0[a4];
  }

  v9 = MobileInstallationRemoveSafeHarborForContainerType();
  v10 = MBGetDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v14 = v7;
    v15 = 1024;
    v16 = v8;
    v17 = 1024;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "MobileInstallationRemoveSafeHarborForContainerType(%@, %d, NULL): %d", buf, 0x18u);
    _MBLog();
  }

  if (a5)
  {
    v11 = v9;
  }

  else
  {
    v11 = 1;
  }

  if ((v11 & 1) == 0)
  {
    *a5 = [MBError errorWithCode:1 format:@"MobileInstallationRemoveSafeHarborForContainerType failed: %@", v7];
  }

  return v9;
}

+ (id)displayNameForBundleIdentifier:(id)a3
{
  v3 = a3;
  v15 = 0;
  v4 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v3 allowPlaceholder:0 error:&v15];
  v5 = v15;
  if (!v4)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v17 = v3;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Failed to find the app record for %{public}@: %{public}@", buf, 0x16u);
LABEL_9:
      _MBLog();
    }

LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v6 = [v4 applicationState];
  v7 = [v6 isInstalled];

  if ((v7 & 1) == 0)
  {
    v12 = MBGetDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found an app record for %{public}@ but it's not installed", buf, 0xCu);
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  v8 = MBLocalizations();
  v9 = [v4 localizedNameWithPreferredLocalizations:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v4 localizedName];
  }

  v13 = v11;

  v12 = MBGetDefaultLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Mapped %{public}@ to %{public}@", buf, 0x16u);
    _MBLog();
  }

LABEL_11:

  return v13;
}

+ (id)displayNameForDomain:(id)a3 isSystemDomain:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v5)
  {
    if (([MBDomain isSystemContainerName:v5]& 1) != 0 || [MBDomain isSystemSharedContainerName:v5])
    {
      v6 = MBLocalizedStringFromTable();
    }

    else
    {
      v7 = [MBDomain containerIDWithName:v5];
      if (!v7)
      {
        v7 = v5;
      }

      v8 = [&off_1003E1F28 objectForKeyedSubscript:v7];
      v9 = v8;
      if (v8)
      {
        v10 = v8;

        v7 = v10;
      }

      v11 = [objc_opt_class() displayNameForBundleIdentifier:v7];
      if (v11)
      {
        v6 = v11;
      }

      else
      {

        if (v4)
        {
          v6 = MBLocalizedStringFromTable();
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)displayNamesForDomainNames:(id)a3 domainManager:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    __assert_rtn("+[MBMobileInstallation displayNamesForDomainNames:domainManager:]", "MBMobileInstallation.m", 715, "domainManager");
  }

  v7 = v6;
  v8 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v5;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v16 = +[MBMobileInstallation displayNameForDomain:isSystemDomain:](MBMobileInstallation, "displayNameForDomain:isSystemDomain:", v14, [v7 isSystemDomainName:{v14, v18}]);
        if (v16)
        {
          [v8 addObject:v16];
        }

        objc_autoreleasePoolPop(v15);
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  return v8;
}

@end
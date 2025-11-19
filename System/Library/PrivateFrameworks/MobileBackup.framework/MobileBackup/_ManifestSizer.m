@interface _ManifestSizer
+ (id)_getDomainInfoForDomainName:(id)a3 cache:(id)a4 restrictedDomains:(id)a5 disabledDomains:(id)a6 dependentDomains:(id)a7 appManager:(id)a8;
+ (id)sizeDomainWithName:(id)a3 manager:(id)a4 account:(id)a5 error:(id *)a6;
+ (id)sizeDomainsWithManager:(id)a3 account:(id)a4 error:(id *)a5;
@end

@implementation _ManifestSizer

+ (id)_getDomainInfoForDomainName:(id)a3 cache:(id)a4 restrictedDomains:(id)a5 disabledDomains:(id)a6 dependentDomains:(id)a7 appManager:(id)a8
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  if (!v16)
  {
    __assert_rtn("+[_ManifestSizer _getDomainInfoForDomainName:cache:restrictedDomains:disabledDomains:dependentDomains:appManager:]", "MBCalculateQuota.m", 397, "disabledDomains");
  }

  v19 = v18;
  v76 = 0;
  v20 = [v14 sizeOfDomain:v13 error:&v76];
  v21 = v76;
  if (v21)
  {
    v22 = v21;
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v79 = v13;
      v80 = 2112;
      v81 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=quota-calculation= Error fetching size of domain %@: %@", buf, 0x16u);
LABEL_8:
      _MBLog();
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v75 = 0;
  v24 = [v14 sizeOfScannedDomain:v13 error:&v75];
  v25 = v75;
  if (v25)
  {
    v22 = v25;
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v79 = v13;
      v80 = 2112;
      v81 = v22;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=quota-calculation= Error fetching local size of domain: %@: %@", buf, 0x16u);
      goto LABEL_8;
    }

LABEL_9:
    v26 = 0;
    goto LABEL_10;
  }

  v62 = v19;
  v64 = v14;
  v60 = v16;
  v61 = v15;
  v23 = +[MBDomainInfo domainInfoWithName:systemApp:remoteSize:localSize:enabled:restricted:](MBDomainInfo, "domainInfoWithName:systemApp:remoteSize:localSize:enabled:restricted:", v13, 0, v20, v24, [v16 containsObject:v13] ^ 1, objc_msgSend(v15, "containsObject:", v13));
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v59 = v17;
  obj = v17;
  v28 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
  if (!v28)
  {
    goto LABEL_26;
  }

  v29 = v28;
  v30 = *v72;
  while (2)
  {
    for (i = 0; i != v29; i = i + 1)
    {
      if (*v72 != v30)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v71 + 1) + 8 * i);
      if (([v13 isEqualToString:{v32, v51, v53, v55, v57}] & 1) == 0)
      {
        v70 = 0;
        v33 = [v64 sizeOfDomain:v32 error:&v70];
        v34 = v70;
        if (v34)
        {
          v22 = v34;
          v37 = MBGetDefaultLog();
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v79 = v32;
            v80 = 2112;
            v81 = v22;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=quota-calculation= Error fetching size of domain %@: %@", buf, 0x16u);
LABEL_54:
            _MBLog();
          }
        }

        else
        {
          v69 = 0;
          v35 = [v64 sizeOfScannedDomain:v32 error:&v69];
          v22 = v69;
          v36 = MBGetDefaultLog();
          v37 = v36;
          if (!v22)
          {
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              *buf = 138413058;
              v79 = v13;
              v80 = 2112;
              v81 = v32;
              v82 = 2048;
              v83 = v33;
              v84 = 2048;
              v85 = v35;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=quota-calculation= %@ adding dependentDomain %@ (%llu %llu)", buf, 0x2Au);
              v55 = v33;
              v57 = v35;
              v51 = v13;
              v53 = v32;
              _MBLog();
            }

            [v23 setRemoteSize:&v33[[v23 remoteSize]]];
            [v23 setLocalSize:&v35[[v23 localSize]]];
            continue;
          }

          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v79 = v32;
            v80 = 2112;
            v81 = v22;
            _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "=quota-calculation= Error fetching local size of domain: %@: %@", buf, 0x16u);
            goto LABEL_54;
          }
        }

        v14 = v64;
        v16 = v60;
        v15 = v61;
        v17 = v59;
        v19 = v62;

        goto LABEL_9;
      }
    }

    v29 = [obj countByEnumeratingWithState:&v71 objects:v86 count:16];
    if (v29)
    {
      continue;
    }

    break;
  }

LABEL_26:

  v14 = v64;
  v19 = v62;
  if ([v13 isEqualToString:@"AppDomain-com.apple.iBooks"])
  {
    -[NSObject setRemoteSize:](v23, "setRemoteSize:", [v64 sizeOfDomain:@"BooksDomain" error:0] + -[NSObject remoteSize](v23, "remoteSize"));
  }

  if ([v13 isEqualToString:{@"HealthDomain", v51, v53, v55, v57}])
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v38 = MBGetHealthRelatedDomains();
    v39 = [v38 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v66;
      do
      {
        for (j = 0; j != v40; j = j + 1)
        {
          if (*v66 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v65 + 1) + 8 * j);
          if (([v43 isEqualToString:v13] & 1) == 0)
          {
            v44 = [v14 sizeOfDomain:v43 error:0];
            if (v44)
            {
              v45 = MBGetDefaultLog();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                v46 = [v23 remoteSize];
                v47 = [v23 remoteSize];
                *buf = 138413058;
                v79 = v43;
                v80 = 2048;
                v81 = v46;
                v82 = 2048;
                v83 = v44;
                v84 = 2048;
                v85 = &v44[v47];
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "=quota-calculation= Adding health-related domain %@ to HealthDomain size %llu + %llu = %llu", buf, 0x2Au);
                v48 = [v23 remoteSize];
                v56 = v44;
                v58 = &v44[[v23 remoteSize]];
                v52 = v43;
                v54 = v48;
                v14 = v64;
                _MBLog();
              }
            }

            [v23 setRemoteSize:&v44[[v23 remoteSize:v52]]];
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v65 objects:v77 count:16];
      }

      while (v40);
    }

    v19 = v62;
  }

  v17 = v59;
  v16 = v60;
  if ([MBDomain isAppName:v13]&& ([MBDomain isLegacyPerAppPlaceholderName:v13]& 1) == 0)
  {
    v49 = [MBDomain containerIDWithName:v13];
    v50 = [v19 appWithIdentifier:v49];

    if (v50 && [v50 isSystemApp])
    {
      [v23 setSystemApp:1];
    }
  }

  v23 = v23;
  v22 = 0;
  v26 = v23;
  v15 = v61;
LABEL_10:

  return v26;
}

+ (id)sizeDomainsWithManager:(id)a3 account:(id)a4 error:(id *)a5
{
  v7 = a3;
  v8 = a4;
  v86 = [v7 openCacheWithAccount:v8 accessType:1 error:a5];
  if (v86)
  {
    v9 = [MBDomainManager alloc];
    v10 = [v8 persona];
    v78 = [(MBDomainManager *)v9 initWithPersona:v10];

    v11 = [MBMobileInstallation alloc];
    v12 = [(MBMobileInstallation *)v11 initWithSafeHarborDir:kMBSafeHarborDir];
    v13 = [[MBAppManager alloc] initWithMobileInstallation:v12];
    v14 = [v8 persona];
    v107 = 0;
    LOBYTE(v10) = [(MBAppManager *)v13 loadAppsWithPersona:v14 safeHarbors:0 error:&v107];
    v15 = v107;

    if (v10)
    {
      v84 = [v7 allRestrictedDomainNames:v13 account:v8];
      v16 = [v8 persona];
      v17 = [(MBAppManager *)v13 allDisabledDomainNamesForPersona:v16];

      v88 = v17;
      if (!v17)
      {
        __assert_rtn("+[_ManifestSizer sizeDomainsWithManager:account:error:]", "MBCalculateQuota.m", 486, "disabledDomains");
      }

      v105[0] = _NSConcreteStackBlock;
      v105[1] = 3221225472;
      v105[2] = sub_100090D78;
      v105[3] = &unk_1003BC450;
      v18 = objc_opt_new();
      v106 = v18;
      v19 = [v86 enumerateDomainNames:v105];
      v20 = MBGetDefaultLog();
      v21 = v20;
      if (v19)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v113 = v19;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "=quota-calculation= Failed to enumerate domain names: %{public}@", buf, 0xCu);
          _MBLog();
        }

        v22 = 0;
      }

      else
      {
        v80 = v8;
        v77 = v7;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v18 count];
          *buf = 134217984;
          v113 = v25;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "=quota-calculation= Fetched %lu domain names from the cache", buf, 0xCu);
          v74 = [v18 count];
          _MBLog();
        }

        v75 = v15;
        v76 = v12;

        v21 = objc_opt_new();
        v101 = 0u;
        v102 = 0u;
        v103 = 0u;
        v104 = 0u;
        obj = v18;
        v87 = v21;
        v82 = [obj countByEnumeratingWithState:&v101 objects:v111 count:16];
        if (v82)
        {
          v81 = *v102;
          do
          {
            for (i = 0; i != v82; i = i + 1)
            {
              if (*v102 != v81)
              {
                objc_enumerationMutation(obj);
              }

              v27 = *(*(&v101 + 1) + 8 * i);
              v28 = objc_autoreleasePoolPush();
              v29 = [MBDomain containerIDWithName:v27];
              v30 = [(MBAppManager *)v13 appWithIdentifier:v29];

              if (v30)
              {
                v83 = v28;
                v31 = v13;
                v32 = objc_alloc_init(NSMutableSet);
                v97 = 0u;
                v98 = 0u;
                v99 = 0u;
                v100 = 0u;
                v33 = [v80 persona];
                v34 = [MBCKSizingEngine domainsForApp:v30 persona:v33];

                v35 = [v34 countByEnumeratingWithState:&v97 objects:v110 count:16];
                if (v35)
                {
                  v36 = v35;
                  v37 = *v98;
                  do
                  {
                    for (j = 0; j != v36; j = j + 1)
                    {
                      if (*v98 != v37)
                      {
                        objc_enumerationMutation(v34);
                      }

                      v39 = [*(*(&v97 + 1) + 8 * j) name];
                      [v32 addObject:v39];
                    }

                    v36 = [v34 countByEnumeratingWithState:&v97 objects:v110 count:16];
                  }

                  while (v36);
                }

                v13 = v31;
                v28 = v83;
              }

              else
              {
                v32 = 0;
              }

              v40 = [a1 _getDomainInfoForDomainName:v27 cache:v86 restrictedDomains:v84 disabledDomains:v88 dependentDomains:v32 appManager:{v13, v74}];
              v41 = v40;
              if (v40)
              {
                if ([v40 size] || (+[MBDomain containerIDWithName:](MBDomain, "containerIDWithName:", v27), v42 = objc_claimAutoreleasedReturnValue(), -[MBAppManager appWithIdentifier:](v13, "appWithIdentifier:", v42), v43 = objc_claimAutoreleasedReturnValue(), v43, v42, v43))
                {
                  [v41 setEnabled:{objc_msgSend(v88, "containsObject:", v27) ^ 1}];
                  [v87 setObject:v41 forKeyedSubscript:v27];
                }
              }

              objc_autoreleasePoolPop(v28);
              v21 = v87;
            }

            v82 = [obj countByEnumeratingWithState:&v101 objects:v111 count:16];
          }

          while (v82);
        }

        v44 = [(MBDomainManager *)v78 systemDomainsByName];
        v45 = [v44 allValues];

        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v46 = v45;
        v47 = [v46 countByEnumeratingWithState:&v93 objects:v109 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v94;
          do
          {
            for (k = 0; k != v48; k = k + 1)
            {
              if (*v94 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v51 = *(*(&v93 + 1) + 8 * k);
              v52 = [v51 name];
              v53 = sub_10008EC54(v52);

              if ((v53 & 1) == 0)
              {
                v54 = [v51 name];
                v55 = [v21 objectForKeyedSubscript:v54];

                if (!v55)
                {
                  v56 = [v51 name];
                  v55 = [a1 _getDomainInfoForDomainName:v56 cache:v86 restrictedDomains:v84 disabledDomains:v88 dependentDomains:0 appManager:v13];

                  v57 = [v51 name];
                  [v55 setEnabled:{objc_msgSend(v88, "containsObject:", v57) ^ 1}];

                  v58 = [v51 name];
                  [v21 setObject:v55 forKeyedSubscript:v58];
                }
              }
            }

            v48 = [v46 countByEnumeratingWithState:&v93 objects:v109 count:16];
          }

          while (v48);
        }

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v59 = [(MBAppManager *)v13 allContainers];
        v60 = [v59 countByEnumeratingWithState:&v89 objects:v108 count:16];
        if (v60)
        {
          v61 = v60;
          v62 = *v90;
          do
          {
            for (m = 0; m != v61; m = m + 1)
            {
              if (*v90 != v62)
              {
                objc_enumerationMutation(v59);
              }

              v64 = [*(*(&v89 + 1) + 8 * m) domain];
              v65 = [v64 name];
              v66 = sub_10008EC54(v65);

              if ((v66 & 1) == 0)
              {
                v67 = [v64 name];
                v68 = [v21 objectForKeyedSubscript:v67];

                if (!v68)
                {
                  v69 = [v64 name];
                  v68 = [a1 _getDomainInfoForDomainName:v69 cache:v86 restrictedDomains:v84 disabledDomains:v88 dependentDomains:0 appManager:v13];

                  v70 = [v64 name];
                  v21 = v87;
                  [v68 setEnabled:{objc_msgSend(v88, "containsObject:", v70) ^ 1}];

                  v71 = [v64 name];
                  [v87 setObject:v68 forKeyedSubscript:v71];
                }
              }
            }

            v61 = [v59 countByEnumeratingWithState:&v89 objects:v108 count:16];
          }

          while (v61);
        }

        v72 = [v21 allValues];
        v22 = [v72 mutableCopy];

        [v22 sortUsingComparator:&stru_1003BCF08];
        v18 = 0;
        v12 = v76;
        v7 = v77;
        v8 = v80;
        v19 = 0;
        v15 = v75;
      }
    }

    else
    {
      v23 = MBGetDefaultLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v113 = v15;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "=quota-calculation= Failed to load apps: %@", buf, 0xCu);
        _MBLog();
      }

      if (a5)
      {
        v24 = v15;
        v22 = 0;
        *a5 = v15;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)sizeDomainWithName:(id)a3 manager:(id)a4 account:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 openCacheWithAccount:v12 accessType:1 error:a6];
  if (v13)
  {
    v27 = v10;
    v14 = [MBMobileInstallation alloc];
    v15 = [(MBMobileInstallation *)v14 initWithSafeHarborDir:kMBSafeHarborDir];
    v16 = [[MBAppManager alloc] initWithMobileInstallation:v15];
    v17 = [v12 persona];
    v28 = 0;
    v18 = [(MBAppManager *)v16 loadAppsWithPersona:v17 safeHarbors:0 error:&v28];
    v19 = v28;

    if (v18)
    {
      v20 = [v11 allRestrictedDomainNames:v16 account:v12];
      v21 = [v12 persona];
      v22 = [(MBAppManager *)v16 allDisabledDomainNamesForPersona:v21];

      v23 = [a1 _getDomainInfoForDomainName:v27 cache:v13 restrictedDomains:v20 disabledDomains:v22 dependentDomains:0 appManager:v16];

      v10 = v27;
    }

    else
    {
      v24 = MBGetDefaultLog();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v30 = v19;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "=quota-calculation= Failed to load apps: %@", buf, 0xCu);
        _MBLog();
      }

      v10 = v27;
      if (a6)
      {
        v25 = v19;
        v23 = 0;
        *a6 = v19;
      }

      else
      {
        v23 = 0;
      }
    }
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

@end
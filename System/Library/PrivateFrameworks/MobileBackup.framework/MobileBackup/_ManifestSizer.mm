@interface _ManifestSizer
+ (id)_getDomainInfoForDomainName:(id)name cache:(id)cache restrictedDomains:(id)domains disabledDomains:(id)disabledDomains dependentDomains:(id)dependentDomains appManager:(id)manager;
+ (id)sizeDomainWithName:(id)name manager:(id)manager account:(id)account error:(id *)error;
+ (id)sizeDomainsWithManager:(id)manager account:(id)account error:(id *)error;
@end

@implementation _ManifestSizer

+ (id)_getDomainInfoForDomainName:(id)name cache:(id)cache restrictedDomains:(id)domains disabledDomains:(id)disabledDomains dependentDomains:(id)dependentDomains appManager:(id)manager
{
  nameCopy = name;
  cacheCopy = cache;
  domainsCopy = domains;
  disabledDomainsCopy = disabledDomains;
  dependentDomainsCopy = dependentDomains;
  managerCopy = manager;
  if (!disabledDomainsCopy)
  {
    __assert_rtn("+[_ManifestSizer _getDomainInfoForDomainName:cache:restrictedDomains:disabledDomains:dependentDomains:appManager:]", "MBCalculateQuota.m", 397, "disabledDomains");
  }

  v19 = managerCopy;
  v76 = 0;
  v20 = [cacheCopy sizeOfDomain:nameCopy error:&v76];
  v21 = v76;
  if (v21)
  {
    v22 = v21;
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v79 = nameCopy;
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
  v24 = [cacheCopy sizeOfScannedDomain:nameCopy error:&v75];
  v25 = v75;
  if (v25)
  {
    v22 = v25;
    v23 = MBGetDefaultLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v79 = nameCopy;
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
  v64 = cacheCopy;
  v60 = disabledDomainsCopy;
  v61 = domainsCopy;
  v23 = +[MBDomainInfo domainInfoWithName:systemApp:remoteSize:localSize:enabled:restricted:](MBDomainInfo, "domainInfoWithName:systemApp:remoteSize:localSize:enabled:restricted:", nameCopy, 0, v20, v24, [disabledDomainsCopy containsObject:nameCopy] ^ 1, objc_msgSend(domainsCopy, "containsObject:", nameCopy));
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v59 = dependentDomainsCopy;
  obj = dependentDomainsCopy;
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
      if (([nameCopy isEqualToString:{v32, v51, v53, v55, v57}] & 1) == 0)
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
              v79 = nameCopy;
              v80 = 2112;
              v81 = v32;
              v82 = 2048;
              v83 = v33;
              v84 = 2048;
              v85 = v35;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "=quota-calculation= %@ adding dependentDomain %@ (%llu %llu)", buf, 0x2Au);
              v55 = v33;
              v57 = v35;
              v51 = nameCopy;
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

        cacheCopy = v64;
        disabledDomainsCopy = v60;
        domainsCopy = v61;
        dependentDomainsCopy = v59;
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

  cacheCopy = v64;
  v19 = v62;
  if ([nameCopy isEqualToString:@"AppDomain-com.apple.iBooks"])
  {
    -[NSObject setRemoteSize:](v23, "setRemoteSize:", [v64 sizeOfDomain:@"BooksDomain" error:0] + -[NSObject remoteSize](v23, "remoteSize"));
  }

  if ([nameCopy isEqualToString:{@"HealthDomain", v51, v53, v55, v57}])
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
          if (([v43 isEqualToString:nameCopy] & 1) == 0)
          {
            v44 = [cacheCopy sizeOfDomain:v43 error:0];
            if (v44)
            {
              v45 = MBGetDefaultLog();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
              {
                remoteSize = [v23 remoteSize];
                remoteSize2 = [v23 remoteSize];
                *buf = 138413058;
                v79 = v43;
                v80 = 2048;
                v81 = remoteSize;
                v82 = 2048;
                v83 = v44;
                v84 = 2048;
                v85 = &v44[remoteSize2];
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_INFO, "=quota-calculation= Adding health-related domain %@ to HealthDomain size %llu + %llu = %llu", buf, 0x2Au);
                remoteSize3 = [v23 remoteSize];
                v56 = v44;
                v58 = &v44[[v23 remoteSize]];
                v52 = v43;
                v54 = remoteSize3;
                cacheCopy = v64;
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

  dependentDomainsCopy = v59;
  disabledDomainsCopy = v60;
  if ([MBDomain isAppName:nameCopy]&& ([MBDomain isLegacyPerAppPlaceholderName:nameCopy]& 1) == 0)
  {
    v49 = [MBDomain containerIDWithName:nameCopy];
    v50 = [v19 appWithIdentifier:v49];

    if (v50 && [v50 isSystemApp])
    {
      [v23 setSystemApp:1];
    }
  }

  v23 = v23;
  v22 = 0;
  v26 = v23;
  domainsCopy = v61;
LABEL_10:

  return v26;
}

+ (id)sizeDomainsWithManager:(id)manager account:(id)account error:(id *)error
{
  managerCopy = manager;
  accountCopy = account;
  v86 = [managerCopy openCacheWithAccount:accountCopy accessType:1 error:error];
  if (v86)
  {
    v9 = [MBDomainManager alloc];
    persona = [accountCopy persona];
    v78 = [(MBDomainManager *)v9 initWithPersona:persona];

    v11 = [MBMobileInstallation alloc];
    v12 = [(MBMobileInstallation *)v11 initWithSafeHarborDir:kMBSafeHarborDir];
    v13 = [[MBAppManager alloc] initWithMobileInstallation:v12];
    persona2 = [accountCopy persona];
    v107 = 0;
    LOBYTE(persona) = [(MBAppManager *)v13 loadAppsWithPersona:persona2 safeHarbors:0 error:&v107];
    v15 = v107;

    if (persona)
    {
      v84 = [managerCopy allRestrictedDomainNames:v13 account:accountCopy];
      persona3 = [accountCopy persona];
      v17 = [(MBAppManager *)v13 allDisabledDomainNamesForPersona:persona3];

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
        v80 = accountCopy;
        v77 = managerCopy;
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
                persona4 = [v80 persona];
                v34 = [MBCKSizingEngine domainsForApp:v30 persona:persona4];

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

                      name = [*(*(&v97 + 1) + 8 * j) name];
                      [v32 addObject:name];
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

              v40 = [self _getDomainInfoForDomainName:v27 cache:v86 restrictedDomains:v84 disabledDomains:v88 dependentDomains:v32 appManager:{v13, v74}];
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

        systemDomainsByName = [(MBDomainManager *)v78 systemDomainsByName];
        allValues = [systemDomainsByName allValues];

        v95 = 0u;
        v96 = 0u;
        v93 = 0u;
        v94 = 0u;
        v46 = allValues;
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
              name2 = [v51 name];
              v53 = sub_10008EC54(name2);

              if ((v53 & 1) == 0)
              {
                name3 = [v51 name];
                v55 = [v21 objectForKeyedSubscript:name3];

                if (!v55)
                {
                  name4 = [v51 name];
                  v55 = [self _getDomainInfoForDomainName:name4 cache:v86 restrictedDomains:v84 disabledDomains:v88 dependentDomains:0 appManager:v13];

                  name5 = [v51 name];
                  [v55 setEnabled:{objc_msgSend(v88, "containsObject:", name5) ^ 1}];

                  name6 = [v51 name];
                  [v21 setObject:v55 forKeyedSubscript:name6];
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
        allContainers = [(MBAppManager *)v13 allContainers];
        v60 = [allContainers countByEnumeratingWithState:&v89 objects:v108 count:16];
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
                objc_enumerationMutation(allContainers);
              }

              domain = [*(*(&v89 + 1) + 8 * m) domain];
              name7 = [domain name];
              v66 = sub_10008EC54(name7);

              if ((v66 & 1) == 0)
              {
                name8 = [domain name];
                v68 = [v21 objectForKeyedSubscript:name8];

                if (!v68)
                {
                  name9 = [domain name];
                  v68 = [self _getDomainInfoForDomainName:name9 cache:v86 restrictedDomains:v84 disabledDomains:v88 dependentDomains:0 appManager:v13];

                  name10 = [domain name];
                  v21 = v87;
                  [v68 setEnabled:{objc_msgSend(v88, "containsObject:", name10) ^ 1}];

                  name11 = [domain name];
                  [v87 setObject:v68 forKeyedSubscript:name11];
                }
              }
            }

            v61 = [allContainers countByEnumeratingWithState:&v89 objects:v108 count:16];
          }

          while (v61);
        }

        allValues2 = [v21 allValues];
        v22 = [allValues2 mutableCopy];

        [v22 sortUsingComparator:&stru_1003BCF08];
        v18 = 0;
        v12 = v76;
        managerCopy = v77;
        accountCopy = v80;
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

      if (error)
      {
        v24 = v15;
        v22 = 0;
        *error = v15;
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

+ (id)sizeDomainWithName:(id)name manager:(id)manager account:(id)account error:(id *)error
{
  nameCopy = name;
  managerCopy = manager;
  accountCopy = account;
  v13 = [managerCopy openCacheWithAccount:accountCopy accessType:1 error:error];
  if (v13)
  {
    v27 = nameCopy;
    v14 = [MBMobileInstallation alloc];
    v15 = [(MBMobileInstallation *)v14 initWithSafeHarborDir:kMBSafeHarborDir];
    v16 = [[MBAppManager alloc] initWithMobileInstallation:v15];
    persona = [accountCopy persona];
    v28 = 0;
    v18 = [(MBAppManager *)v16 loadAppsWithPersona:persona safeHarbors:0 error:&v28];
    v19 = v28;

    if (v18)
    {
      v20 = [managerCopy allRestrictedDomainNames:v16 account:accountCopy];
      persona2 = [accountCopy persona];
      v22 = [(MBAppManager *)v16 allDisabledDomainNamesForPersona:persona2];

      v23 = [self _getDomainInfoForDomainName:v27 cache:v13 restrictedDomains:v20 disabledDomains:v22 dependentDomains:0 appManager:v16];

      nameCopy = v27;
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

      nameCopy = v27;
      if (error)
      {
        v25 = v19;
        v23 = 0;
        *error = v19;
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
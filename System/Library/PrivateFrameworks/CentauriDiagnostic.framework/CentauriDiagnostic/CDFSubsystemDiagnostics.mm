@interface CDFSubsystemDiagnostics
+ (BOOL)collectFileWithRegex:(id)regex from:(id)from to:(id)to mostRecent:(unint64_t)recent;
+ (BOOL)collectFilesWithRegex:(id)regex from:(id)from to:(id)to;
+ (BOOL)collectFilesWithRegexes:(id)regexes from:(id)from to:(id)to mostRecent:(unint64_t)recent;
+ (BOOL)createSubsystemDirectoryStructure:(id)structure outputDir:(id)dir subDirectoryList:(id)list;
+ (BOOL)isCentauriPlatform;
- (BOOL)collectStateSnapshotsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags;
- (CDFSubsystemDiagnostics)init;
@end

@implementation CDFSubsystemDiagnostics

- (CDFSubsystemDiagnostics)init
{
  v14 = *MEMORY[0x277D85DE8];
  v9.receiver = self;
  v9.super_class = CDFSubsystemDiagnostics;
  v2 = [(CDFSubsystemDiagnostics *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2->_buildEnv = 0;
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    [bundleIdentifier cStringUsingEncoding:4];

    if ((os_variant_has_internal_diagnostics() & 1) != 0 || os_variant_has_internal_content())
    {
      v3->_buildEnv = 2;
    }

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      buildEnv = v3->_buildEnv;
      *buf = 136315394;
      v11 = "[CDFSubsystemDiagnostics init]";
      v12 = 2050;
      v13 = buildEnv;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: buildEnv %{public}lu", buf, 0x16u);
    }

    if (v3->_buildEnv == 2 && os_variant_allows_internal_security_policies())
    {
      v3->_collectCoredumps = 1;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)collectStateSnapshotsFrom:(id)from to:(id)to runtimeFlags:(unint64_t)flags
{
  v26 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  toCopy = to;
  if (!(self->_buildEnv | flags))
  {
    goto LABEL_5;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [fromCopy path];
  v12 = [defaultManager fileExistsAtPath:path];

  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [fromCopy path];
      v22 = 136315394;
      v23 = "[CDFSubsystemDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
      v24 = 2114;
      v25 = path2;
      v18 = MEMORY[0x277D86220];
      v19 = "CDF: %s: invalid directory path sourcepath: %{public}@";
LABEL_10:
      _os_log_impl(&dword_2433AC000, v18, OS_LOG_TYPE_DEFAULT, v19, &v22, 0x16u);
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  path3 = [toCopy path];
  v15 = [defaultManager2 fileExistsAtPath:path3];

  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [toCopy path];
      v22 = 136315394;
      v23 = "[CDFSubsystemDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
      v24 = 2114;
      v25 = path2;
      v18 = MEMORY[0x277D86220];
      v19 = "CDF: %s: invalid directory path destpath: %{public}@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(CentauriConfigAccessLog|CentauriEventLog|CentauriMSILog|CentauriPowerStateLog|CentauriStateDump)\\.txt(\\.synced)?$" from:fromCopy to:toCopy];
  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(AddFileList|FaultReportState|History)\\.txt(\\.synced)?$" from:fromCopy to:toCopy];
  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(AirshipStateDump)\\.bin(\\.synced)?$" from:fromCopy to:toCopy];
LABEL_5:
  v16 = 1;
LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (BOOL)createSubsystemDirectoryStructure:(id)structure outputDir:(id)dir subDirectoryList:(id)list
{
  v51 = *MEMORY[0x277D85DE8];
  structureCopy = structure;
  dirCopy = dir;
  v9 = structureCopy;
  v37 = dirCopy;
  listCopy = list;
  v11 = 0x277CCA000uLL;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [v9 path];
  v14 = [defaultManager fileExistsAtPath:path];

  if (v14)
  {
    v35 = defaultManager;
    v36 = listCopy;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = listCopy;
    v15 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v40 = 0;
      v17 = *v43;
      do
      {
        v18 = 0;
        v38 = v16;
        do
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v42 + 1) + 8 * v18);
          v20 = [v9 URLByAppendingPathComponent:v19 isDirectory:{1, v35, v36}];
          defaultManager2 = [*(v11 + 2560) defaultManager];
          path2 = [v20 path];
          v23 = [defaultManager2 fileExistsAtPath:path2];

          if (v23)
          {
            v24 = v17;
            v25 = v9;
            v26 = v11;
            defaultManager3 = [*(v11 + 2560) defaultManager];
            v28 = [v37 URLByAppendingPathComponent:v19 isDirectory:1];
            v41 = 0;
            v29 = [defaultManager3 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v41];
            v30 = v41;

            if (v29)
            {
              v40 = 1;
            }

            else
            {
              v40 |= v29;
              v31 = MEMORY[0x277D86220];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v48 = "+[CDFSubsystemDiagnostics createSubsystemDirectoryStructure:outputDir:subDirectoryList:]";
                v49 = 2114;
                v50 = v30;
                _os_log_impl(&dword_2433AC000, v31, OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create subdirectory %{public}@", buf, 0x16u);
              }
            }

            v11 = v26;
            v9 = v25;
            v17 = v24;
            v16 = v38;
          }

          else
          {
            v30 = 0;
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v16);
    }

    else
    {
      v40 = 0;
    }

    defaultManager = v35;
    listCopy = v36;
    v32 = v40;
  }

  else
  {
    v32 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v48 = "+[CDFSubsystemDiagnostics createSubsystemDirectoryStructure:outputDir:subDirectoryList:]";
      v49 = 2114;
      v50 = v9;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: invalid directory path sourceURL: %{public}@", buf, 0x16u);
      v32 = 0;
    }
  }

  v33 = *MEMORY[0x277D85DE8];
  return v32 & 1;
}

+ (BOOL)collectFilesWithRegex:(id)regex from:(id)from to:(id)to
{
  v69 = *MEMORY[0x277D85DE8];
  regexCopy = regex;
  fromCopy = from;
  toCopy = to;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [fromCopy path];
  LOBYTE(from) = [defaultManager fileExistsAtPath:path];

  if ((from & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [fromCopy path];
      *buf = 136315394;
      v64 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
      v65 = 2114;
      v66 = path2;
      v34 = MEMORY[0x277D86220];
      v35 = "CDF: %s: invalid directory path sourcepath: %{public}@";
LABEL_25:
      _os_log_impl(&dword_2433AC000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x16u);
    }

LABEL_26:
    v36 = 0;
    goto LABEL_35;
  }

  path3 = [toCopy path];
  v13 = [defaultManager fileExistsAtPath:path3];

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [toCopy path];
      *buf = 136315394;
      v64 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
      v65 = 2114;
      v66 = path2;
      v34 = MEMORY[0x277D86220];
      v35 = "CDF: %s: invalid directory path destpath: %{public}@";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v60 = 0;
  v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:regexCopy options:0 error:&v60];
  v15 = v60;
  if (v14)
  {
    v16 = *MEMORY[0x277CBE8A8];
    v62 = *MEMORY[0x277CBE8A8];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
    v59 = 0;
    v18 = [defaultManager contentsOfDirectoryAtURL:fromCopy includingPropertiesForKeys:v17 options:1 error:&v59];
    v47 = v59;

    if (v18)
    {
      v44 = v15;
      v45 = fromCopy;
      v50 = defaultManager;
      v51 = toCopy;
      v46 = regexCopy;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v43 = v18;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v55 objects:v61 count:16];
      if (v20)
      {
        v21 = v20;
        v52 = 0;
        v22 = *v56;
        v49 = v19;
        do
        {
          for (i = 0; i != v21; ++i)
          {
            if (*v56 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v55 + 1) + 8 * i);
            v54 = 0;
            v25 = [v24 getResourceValue:&v54 forKey:v16 error:0];
            v26 = v54;
            v27 = v26;
            if (v25 && [v26 BOOLValue])
            {
              lastPathComponent = [v24 lastPathComponent];
              if ([v14 rangeOfFirstMatchInString:lastPathComponent options:0 range:{0, objc_msgSend(lastPathComponent, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v29 = v14;
                v30 = [v51 URLByAppendingPathComponent:lastPathComponent isDirectory:0];
                v53 = 0;
                v31 = [v50 copyItemAtURL:v24 toURL:v30 error:&v53];
                v32 = v53;
                if ((v31 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  localizedDescription = [v32 localizedDescription];
                  *buf = 136315650;
                  v64 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
                  v65 = 2114;
                  v66 = lastPathComponent;
                  v67 = 2114;
                  v68 = localizedDescription;
                  _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to copy %{public}@: %{public}@", buf, 0x20u);
                }

                v52 |= v31;

                v14 = v29;
                v19 = v49;
              }
            }
          }

          v21 = [v19 countByEnumeratingWithState:&v55 objects:v61 count:16];
        }

        while (v21);
      }

      else
      {
        v52 = 0;
      }

      fromCopy = v45;
      regexCopy = v46;
      defaultManager = v50;
      toCopy = v51;
      v18 = v43;
      v15 = v44;
      v36 = v52;
    }

    else
    {
      v36 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        path4 = [fromCopy path];
        [v47 localizedDescription];
        v40 = v39 = v14;
        *buf = 136315650;
        v64 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
        v65 = 2114;
        v66 = path4;
        v67 = 2114;
        v68 = v40;
        _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to get directory contents from %{public}@: %{public}@", buf, 0x20u);

        v14 = v39;
        v18 = 0;

        v36 = 0;
      }
    }
  }

  else
  {
    v36 = 0;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      localizedDescription2 = [v15 localizedDescription];
      *buf = 136315650;
      v64 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
      v65 = 2114;
      v66 = regexCopy;
      v67 = 2114;
      v68 = localizedDescription2;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create regex from pattern %{public}@: %{public}@", buf, 0x20u);

      v36 = 0;
    }
  }

LABEL_35:
  v41 = *MEMORY[0x277D85DE8];
  return v36 & 1;
}

+ (BOOL)collectFileWithRegex:(id)regex from:(id)from to:(id)to mostRecent:(unint64_t)recent
{
  v96[1] = *MEMORY[0x277D85DE8];
  regexCopy = regex;
  fromCopy = from;
  toCopy = to;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [fromCopy path];
  v14 = [defaultManager fileExistsAtPath:path];

  if ((v14 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    path2 = [fromCopy path];
    *buf = 136315394;
    v87 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
    v88 = 2114;
    v89 = path2;
    v54 = MEMORY[0x277D86220];
    v55 = "CDF: %s: invalid directory path sourcepath: %{public}@";
LABEL_38:
    _os_log_impl(&dword_2433AC000, v54, OS_LOG_TYPE_DEFAULT, v55, buf, 0x16u);

    goto LABEL_39;
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  path3 = [toCopy path];
  v17 = [defaultManager2 fileExistsAtPath:path3];

  if ((v17 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    path2 = [toCopy path];
    *buf = 136315394;
    v87 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
    v88 = 2114;
    v89 = path2;
    v54 = MEMORY[0x277D86220];
    v55 = "CDF: %s: invalid directory path destpath: %{public}@";
    goto LABEL_38;
  }

  if (regexCopy && recent)
  {
    v85 = 0;
    v18 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:regexCopy options:0 error:&v85];
    v19 = v85;
    v73 = v18;
    if (!v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        localizedDescription = [v19 localizedDescription];
        *buf = 136315650;
        v87 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
        v88 = 2114;
        v89 = regexCopy;
        v90 = 2114;
        recentCopy2 = localizedDescription;
        _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create regex from pattern %{public}@: %{public}@", buf, 0x20u);
      }

      v25 = 0;
      goto LABEL_52;
    }

    v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = *MEMORY[0x277CBE8A8];
    v96[0] = *MEMORY[0x277CBE8A8];
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:1];
    v84 = v19;
    v23 = [defaultManager3 contentsOfDirectoryAtURL:fromCopy includingPropertiesForKeys:v22 options:1 error:&v84];
    v71 = v84;

    v24 = v23;
    v25 = v23 != 0;
    if (v24)
    {
      v68 = defaultManager3;
      v69 = toCopy;
      v62 = v25;
      recentCopy = recent;
      v65 = fromCopy;
      v63 = regexCopy;
      v83 = 0u;
      v81 = 0u;
      v82 = 0u;
      v80 = 0u;
      v61 = v24;
      v26 = v24;
      v27 = [v26 countByEnumeratingWithState:&v80 objects:v95 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v81;
        do
        {
          for (i = 0; i != v28; ++i)
          {
            if (*v81 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v80 + 1) + 8 * i);
            v79 = 0;
            v32 = [v31 getResourceValue:&v79 forKey:v21 error:0];
            v33 = v79;
            v34 = v33;
            if (v32 && [v33 BOOLValue])
            {
              lastPathComponent = [v31 lastPathComponent];
              lastPathComponent2 = [v31 lastPathComponent];
              v37 = [v73 rangeOfFirstMatchInString:lastPathComponent2 options:0 range:{0, objc_msgSend(lastPathComponent, "length")}];

              if (v37 != 0x7FFFFFFFFFFFFFFFLL)
              {
                [v72 addObject:v31];
              }
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v80 objects:v95 count:16];
        }

        while (v28);
      }

      [v72 sortedArrayUsingComparator:&__block_literal_global_0];
      v75 = 0u;
      v76 = 0u;
      v77 = 0u;
      obj = v78 = 0u;
      v70 = [obj countByEnumeratingWithState:&v75 objects:v94 count:16];
      if (v70)
      {
        v38 = 0;
        v67 = *v76;
        v39 = MEMORY[0x277D86220];
        fromCopy = v65;
        do
        {
          for (j = 0; j != v70; ++j)
          {
            if (*v76 != v67)
            {
              objc_enumerationMutation(obj);
            }

            v41 = *(*(&v75 + 1) + 8 * j);
            lastPathComponent3 = [v41 lastPathComponent];
            v43 = [fromCopy URLByAppendingPathComponent:lastPathComponent3 isDirectory:0];

            lastPathComponent4 = [v41 lastPathComponent];
            v45 = [v69 URLByAppendingPathComponent:lastPathComponent4 isDirectory:0];

            path4 = [v43 path];
            v47 = [v68 fileExistsAtPath:path4];

            if (v47)
            {
              v74 = v71;
              v48 = [v68 copyItemAtURL:v43 toURL:v45 error:&v74];
              v49 = v74;

              if (v48)
              {
                if (++v38 == recentCopy)
                {

                  v71 = v49;
                  goto LABEL_48;
                }
              }

              else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                lastPathComponent5 = [v41 lastPathComponent];
                domain = [v49 domain];
                code = [v49 code];
                *buf = 136315906;
                v87 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
                v88 = 2114;
                v89 = lastPathComponent5;
                v90 = 2114;
                recentCopy2 = domain;
                v92 = 2050;
                v93 = code;
                _os_log_impl(&dword_2433AC000, v39, OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to transfer %{public}@ error domain: %{public}@: code:%{public}ld", buf, 0x2Au);
              }

              v71 = v49;
              fromCopy = v65;
            }
          }

          v70 = [obj countByEnumeratingWithState:&v75 objects:v94 count:16];
        }

        while (v70);
      }

      else
      {
LABEL_48:
        fromCopy = v65;
      }

      regexCopy = v63;
      defaultManager3 = v68;
      toCopy = v69;
      v25 = v62;
      v24 = v61;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v59 = v71;
      localizedDescription2 = [v71 localizedDescription];
      *buf = 136315650;
      v87 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
      v88 = 2114;
      v89 = fromCopy;
      v90 = 2114;
      recentCopy2 = localizedDescription2;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to get %{public}@ contents:error %{public}@", buf, 0x20u);

LABEL_51:
      v19 = v59;
LABEL_52:

      goto LABEL_40;
    }

    v59 = v71;
    goto LABEL_51;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v87 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
    v88 = 2114;
    v89 = regexCopy;
    v90 = 2050;
    recentCopy2 = recent;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: invalid name %{public}@ with count %{public}lu", buf, 0x20u);
  }

LABEL_39:
  v25 = 0;
LABEL_40:

  v56 = *MEMORY[0x277D85DE8];
  return v25;
}

uint64_t __67__CDFSubsystemDiagnostics_collectFileWithRegex_from_to_mostRecent___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastPathComponent];
  v6 = [v4 lastPathComponent];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

+ (BOOL)collectFilesWithRegexes:(id)regexes from:(id)from to:(id)to mostRecent:(unint64_t)recent
{
  v46 = *MEMORY[0x277D85DE8];
  regexesCopy = regexes;
  fromCopy = from;
  toCopy = to;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v34 = fromCopy;
  path = [fromCopy path];
  v14 = [defaultManager fileExistsAtPath:path];

  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [fromCopy path];
      *buf = 136315394;
      v40 = "+[CDFSubsystemDiagnostics collectFilesWithRegexes:from:to:mostRecent:]";
      v41 = 2114;
      v42 = path2;
      v28 = MEMORY[0x277D86220];
      v29 = "CDF: %s: invalid directory path sourcepath: %{public}@";
LABEL_19:
      _os_log_impl(&dword_2433AC000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
    }

LABEL_20:
    v26 = 0;
    goto LABEL_21;
  }

  path3 = [toCopy path];
  v16 = [defaultManager fileExistsAtPath:path3];

  if ((v16 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      path2 = [toCopy path];
      *buf = 136315394;
      v40 = "+[CDFSubsystemDiagnostics collectFilesWithRegexes:from:to:mostRecent:]";
      v41 = 2114;
      v42 = path2;
      v28 = MEMORY[0x277D86220];
      v29 = "CDF: %s: invalid directory path destpath: %{public}@";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v32 = defaultManager;
  v33 = regexesCopy;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = regexesCopy;
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    v21 = MEMORY[0x277D86220];
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v35 + 1) + 8 * i);
        v24 = [CDFSubsystemDiagnostics collectFileWithRegex:v23 from:v34 to:toCopy mostRecent:recent, v32, v33];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v25 = "in";
          if (v24)
          {
            v25 = &unk_2433B42E6;
          }

          v40 = "+[CDFSubsystemDiagnostics collectFilesWithRegexes:from:to:mostRecent:]";
          v41 = 2082;
          v42 = v25;
          v43 = 2112;
          v44 = v23;
          _os_log_impl(&dword_2433AC000, v21, OS_LOG_TYPE_DEFAULT, "CDF: %s: transfer %{public}scomplete for %@", buf, 0x20u);
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v35 objects:v45 count:16];
    }

    while (v19);
  }

  v26 = 1;
  defaultManager = v32;
  regexesCopy = v33;
LABEL_21:

  v30 = *MEMORY[0x277D85DE8];
  return v26;
}

+ (BOOL)isCentauriPlatform
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = IOServiceMatching("AppleCentauriManager");
  if (!v2)
  {
    +[CDFSubsystemDiagnostics isCentauriPlatform];
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v2);
  v4 = MatchingService;
  if (MatchingService)
  {
    IOObjectRelease(MatchingService);
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = "not detected";
    if (v4)
    {
      v5 = "detected";
    }

    v8 = 136315394;
    v9 = "+[CDFSubsystemDiagnostics isCentauriPlatform]";
    v10 = 2082;
    v11 = v5;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: manager service %{public}s", &v8, 0x16u);
  }

  result = v4 != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

@end
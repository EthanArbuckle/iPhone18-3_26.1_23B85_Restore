@interface CDFSubsystemDiagnostics
+ (BOOL)collectFileWithRegex:(id)a3 from:(id)a4 to:(id)a5 mostRecent:(unint64_t)a6;
+ (BOOL)collectFilesWithRegex:(id)a3 from:(id)a4 to:(id)a5;
+ (BOOL)collectFilesWithRegexes:(id)a3 from:(id)a4 to:(id)a5 mostRecent:(unint64_t)a6;
+ (BOOL)createSubsystemDirectoryStructure:(id)a3 outputDir:(id)a4 subDirectoryList:(id)a5;
+ (BOOL)isCentauriPlatform;
- (BOOL)collectStateSnapshotsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5;
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
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 bundleIdentifier];
    [v5 cStringUsingEncoding:4];

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

- (BOOL)collectStateSnapshotsFrom:(id)a3 to:(id)a4 runtimeFlags:(unint64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!(self->_buildEnv | a5))
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v8 path];
  v12 = [v10 fileExistsAtPath:v11];

  if ((v12 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v8 path];
      v22 = 136315394;
      v23 = "[CDFSubsystemDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
      v24 = 2114;
      v25 = v17;
      v18 = MEMORY[0x277D86220];
      v19 = "CDF: %s: invalid directory path sourcepath: %{public}@";
LABEL_10:
      _os_log_impl(&dword_2433AC000, v18, OS_LOG_TYPE_DEFAULT, v19, &v22, 0x16u);
    }

LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v14 = [v9 path];
  v15 = [v13 fileExistsAtPath:v14];

  if ((v15 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v9 path];
      v22 = 136315394;
      v23 = "[CDFSubsystemDiagnostics collectStateSnapshotsFrom:to:runtimeFlags:]";
      v24 = 2114;
      v25 = v17;
      v18 = MEMORY[0x277D86220];
      v19 = "CDF: %s: invalid directory path destpath: %{public}@";
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(CentauriConfigAccessLog|CentauriEventLog|CentauriMSILog|CentauriPowerStateLog|CentauriStateDump)\\.txt(\\.synced)?$" from:v8 to:v9];
  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(AddFileList|FaultReportState|History)\\.txt(\\.synced)?$" from:v8 to:v9];
  [CDFSubsystemDiagnostics collectFilesWithRegex:@"^(AirshipStateDump)\\.bin(\\.synced)?$" from:v8 to:v9];
LABEL_5:
  v16 = 1;
LABEL_12:

  v20 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (BOOL)createSubsystemDirectoryStructure:(id)a3 outputDir:(id)a4 subDirectoryList:(id)a5
{
  v51 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = v7;
  v37 = v8;
  v10 = a5;
  v11 = 0x277CCA000uLL;
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v9 path];
  v14 = [v12 fileExistsAtPath:v13];

  if (v14)
  {
    v35 = v12;
    v36 = v10;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v10;
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
          v21 = [*(v11 + 2560) defaultManager];
          v22 = [v20 path];
          v23 = [v21 fileExistsAtPath:v22];

          if (v23)
          {
            v24 = v17;
            v25 = v9;
            v26 = v11;
            v27 = [*(v11 + 2560) defaultManager];
            v28 = [v37 URLByAppendingPathComponent:v19 isDirectory:1];
            v41 = 0;
            v29 = [v27 createDirectoryAtURL:v28 withIntermediateDirectories:1 attributes:0 error:&v41];
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

    v12 = v35;
    v10 = v36;
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

+ (BOOL)collectFilesWithRegex:(id)a3 from:(id)a4 to:(id)a5
{
  v69 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v11 = [v8 path];
  LOBYTE(a4) = [v10 fileExistsAtPath:v11];

  if ((a4 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v8 path];
      *buf = 136315394;
      v64 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
      v65 = 2114;
      v66 = v33;
      v34 = MEMORY[0x277D86220];
      v35 = "CDF: %s: invalid directory path sourcepath: %{public}@";
LABEL_25:
      _os_log_impl(&dword_2433AC000, v34, OS_LOG_TYPE_DEFAULT, v35, buf, 0x16u);
    }

LABEL_26:
    v36 = 0;
    goto LABEL_35;
  }

  v12 = [v9 path];
  v13 = [v10 fileExistsAtPath:v12];

  if ((v13 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v33 = [v9 path];
      *buf = 136315394;
      v64 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
      v65 = 2114;
      v66 = v33;
      v34 = MEMORY[0x277D86220];
      v35 = "CDF: %s: invalid directory path destpath: %{public}@";
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  v60 = 0;
  v14 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v7 options:0 error:&v60];
  v15 = v60;
  if (v14)
  {
    v16 = *MEMORY[0x277CBE8A8];
    v62 = *MEMORY[0x277CBE8A8];
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:1];
    v59 = 0;
    v18 = [v10 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:v17 options:1 error:&v59];
    v47 = v59;

    if (v18)
    {
      v44 = v15;
      v45 = v8;
      v50 = v10;
      v51 = v9;
      v46 = v7;
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
              v28 = [v24 lastPathComponent];
              if ([v14 rangeOfFirstMatchInString:v28 options:0 range:{0, objc_msgSend(v28, "length")}] != 0x7FFFFFFFFFFFFFFFLL)
              {
                v29 = v14;
                v30 = [v51 URLByAppendingPathComponent:v28 isDirectory:0];
                v53 = 0;
                v31 = [v50 copyItemAtURL:v24 toURL:v30 error:&v53];
                v32 = v53;
                if ((v31 & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v48 = [v32 localizedDescription];
                  *buf = 136315650;
                  v64 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
                  v65 = 2114;
                  v66 = v28;
                  v67 = 2114;
                  v68 = v48;
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

      v8 = v45;
      v7 = v46;
      v10 = v50;
      v9 = v51;
      v18 = v43;
      v15 = v44;
      v36 = v52;
    }

    else
    {
      v36 = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v38 = [v8 path];
        [v47 localizedDescription];
        v40 = v39 = v14;
        *buf = 136315650;
        v64 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
        v65 = 2114;
        v66 = v38;
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
      v37 = [v15 localizedDescription];
      *buf = 136315650;
      v64 = "+[CDFSubsystemDiagnostics collectFilesWithRegex:from:to:]";
      v65 = 2114;
      v66 = v7;
      v67 = 2114;
      v68 = v37;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create regex from pattern %{public}@: %{public}@", buf, 0x20u);

      v36 = 0;
    }
  }

LABEL_35:
  v41 = *MEMORY[0x277D85DE8];
  return v36 & 1;
}

+ (BOOL)collectFileWithRegex:(id)a3 from:(id)a4 to:(id)a5 mostRecent:(unint64_t)a6
{
  v96[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v10 path];
  v14 = [v12 fileExistsAtPath:v13];

  if ((v14 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v53 = [v10 path];
    *buf = 136315394;
    v87 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
    v88 = 2114;
    v89 = v53;
    v54 = MEMORY[0x277D86220];
    v55 = "CDF: %s: invalid directory path sourcepath: %{public}@";
LABEL_38:
    _os_log_impl(&dword_2433AC000, v54, OS_LOG_TYPE_DEFAULT, v55, buf, 0x16u);

    goto LABEL_39;
  }

  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v16 = [v11 path];
  v17 = [v15 fileExistsAtPath:v16];

  if ((v17 & 1) == 0)
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    v53 = [v11 path];
    *buf = 136315394;
    v87 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
    v88 = 2114;
    v89 = v53;
    v54 = MEMORY[0x277D86220];
    v55 = "CDF: %s: invalid directory path destpath: %{public}@";
    goto LABEL_38;
  }

  if (v9 && a6)
  {
    v85 = 0;
    v18 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v9 options:0 error:&v85];
    v19 = v85;
    v73 = v18;
    if (!v18)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v58 = [v19 localizedDescription];
        *buf = 136315650;
        v87 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
        v88 = 2114;
        v89 = v9;
        v90 = 2114;
        v91 = v58;
        _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create regex from pattern %{public}@: %{public}@", buf, 0x20u);
      }

      v25 = 0;
      goto LABEL_52;
    }

    v72 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = [MEMORY[0x277CCAA00] defaultManager];
    v21 = *MEMORY[0x277CBE8A8];
    v96[0] = *MEMORY[0x277CBE8A8];
    v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v96 count:1];
    v84 = v19;
    v23 = [v20 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:v22 options:1 error:&v84];
    v71 = v84;

    v24 = v23;
    v25 = v23 != 0;
    if (v24)
    {
      v68 = v20;
      v69 = v11;
      v62 = v25;
      v64 = a6;
      v65 = v10;
      v63 = v9;
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
              v35 = [v31 lastPathComponent];
              v36 = [v31 lastPathComponent];
              v37 = [v73 rangeOfFirstMatchInString:v36 options:0 range:{0, objc_msgSend(v35, "length")}];

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
        v10 = v65;
        do
        {
          for (j = 0; j != v70; ++j)
          {
            if (*v76 != v67)
            {
              objc_enumerationMutation(obj);
            }

            v41 = *(*(&v75 + 1) + 8 * j);
            v42 = [v41 lastPathComponent];
            v43 = [v10 URLByAppendingPathComponent:v42 isDirectory:0];

            v44 = [v41 lastPathComponent];
            v45 = [v69 URLByAppendingPathComponent:v44 isDirectory:0];

            v46 = [v43 path];
            v47 = [v68 fileExistsAtPath:v46];

            if (v47)
            {
              v74 = v71;
              v48 = [v68 copyItemAtURL:v43 toURL:v45 error:&v74];
              v49 = v74;

              if (v48)
              {
                if (++v38 == v64)
                {

                  v71 = v49;
                  goto LABEL_48;
                }
              }

              else if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
              {
                v50 = [v41 lastPathComponent];
                v51 = [v49 domain];
                v52 = [v49 code];
                *buf = 136315906;
                v87 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
                v88 = 2114;
                v89 = v50;
                v90 = 2114;
                v91 = v51;
                v92 = 2050;
                v93 = v52;
                _os_log_impl(&dword_2433AC000, v39, OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to transfer %{public}@ error domain: %{public}@: code:%{public}ld", buf, 0x2Au);
              }

              v71 = v49;
              v10 = v65;
            }
          }

          v70 = [obj countByEnumeratingWithState:&v75 objects:v94 count:16];
        }

        while (v70);
      }

      else
      {
LABEL_48:
        v10 = v65;
      }

      v9 = v63;
      v20 = v68;
      v11 = v69;
      v25 = v62;
      v24 = v61;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v59 = v71;
      v60 = [v71 localizedDescription];
      *buf = 136315650;
      v87 = "+[CDFSubsystemDiagnostics collectFileWithRegex:from:to:mostRecent:]";
      v88 = 2114;
      v89 = v10;
      v90 = 2114;
      v91 = v60;
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
    v89 = v9;
    v90 = 2050;
    v91 = a6;
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

+ (BOOL)collectFilesWithRegexes:(id)a3 from:(id)a4 to:(id)a5 mostRecent:(unint64_t)a6
{
  v46 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v34 = v10;
  v13 = [v10 path];
  v14 = [v12 fileExistsAtPath:v13];

  if ((v14 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v10 path];
      *buf = 136315394;
      v40 = "+[CDFSubsystemDiagnostics collectFilesWithRegexes:from:to:mostRecent:]";
      v41 = 2114;
      v42 = v27;
      v28 = MEMORY[0x277D86220];
      v29 = "CDF: %s: invalid directory path sourcepath: %{public}@";
LABEL_19:
      _os_log_impl(&dword_2433AC000, v28, OS_LOG_TYPE_DEFAULT, v29, buf, 0x16u);
    }

LABEL_20:
    v26 = 0;
    goto LABEL_21;
  }

  v15 = [v11 path];
  v16 = [v12 fileExistsAtPath:v15];

  if ((v16 & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v11 path];
      *buf = 136315394;
      v40 = "+[CDFSubsystemDiagnostics collectFilesWithRegexes:from:to:mostRecent:]";
      v41 = 2114;
      v42 = v27;
      v28 = MEMORY[0x277D86220];
      v29 = "CDF: %s: invalid directory path destpath: %{public}@";
      goto LABEL_19;
    }

    goto LABEL_20;
  }

  v32 = v12;
  v33 = v9;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = v9;
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
        v24 = [CDFSubsystemDiagnostics collectFileWithRegex:v23 from:v34 to:v11 mostRecent:a6, v32, v33];
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
  v12 = v32;
  v9 = v33;
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
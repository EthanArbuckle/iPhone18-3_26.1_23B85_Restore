id collectSubsystemLogsForClient(unint64_t a1, char a2, void *a3, void **a4, __int16 a5)
{
  v99[3] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (a1 >= 5)
  {
    if (!v10)
    {
LABEL_17:
      v19 = MEMORY[0x277CBEBF8];
      goto LABEL_18;
    }

    *buf = 136315394;
    v96 = "collectSubsystemLogsForClient";
    v97 = 2050;
    v98 = a1;
    v11 = MEMORY[0x277D86220];
    v12 = "CDF: %s: unsupported client %{public}lu";
    v13 = 22;
LABEL_4:
    _os_log_impl(&dword_2433AC000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, v13);
    goto LABEL_17;
  }

  if (v10)
  {
    v14 = kCDFClientName[a1];
    *buf = 136315394;
    v96 = "collectSubsystemLogsForClient";
    v97 = 2082;
    v98 = v14;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: invoked by %{public}s", buf, 0x16u);
  }

  if (!+[CDFSubsystemDiagnostics isCentauriPlatform])
  {
    goto LABEL_17;
  }

  if (![v9 length])
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 136315138;
    v96 = "collectSubsystemLogsForClient";
    v11 = MEMORY[0x277D86220];
    v12 = "CDF: %s: invalid dir";
    v13 = 12;
    goto LABEL_4;
  }

  v71 = [MEMORY[0x277CBEBC0] fileURLWithPath:v9 isDirectory:1];
  if (!v71)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v96 = "collectSubsystemLogsForClient";
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: fileURLWithPath:dir failed", buf, 0xCu);
    }

    v19 = MEMORY[0x277CBEBF8];
    goto LABEL_84;
  }

  pauseCrashMover(1);
  if (kClientNeedsNonFatalDump[a1] == 1)
  {
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-triggered", kCDFClientName[a1]];
    CENCollectLogs();

    LODWORD(v16) = kWaitForLogsDuration[a1];
    [MEMORY[0x277CCACC8] sleepForTimeInterval:v16];
  }

  v17 = [MEMORY[0x277CBEB18] array];
  v70 = v17;
  if ((a2 & 2) == 0)
  {
LABEL_13:
    v18 = 0;
    if ((a2 & 4) != 0)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v22 = v17;
  v23 = collectFoldersForSubsystem(0, v71, a1, a5, a4);
  [v22 addObjectsFromArray:v23];

  v18 = [v22 count];
  if (!v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v27 = *a4;
      }

      else
      {
        v27 = 0;
      }

      *buf = 136315394;
      v96 = "collectSubsystemLogsForClient";
      v97 = 2114;
      v98 = v27;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to get Control subsystem attachments: %{public}@", buf, 0x16u);
    }

    goto LABEL_13;
  }

  if ((a2 & 4) != 0)
  {
LABEL_28:
    v24 = v9;
    v25 = collectFoldersForSubsystem(1, v71, a1, a5, a4);
    [v70 addObjectsFromArray:v25];

    if ([v70 count] <= v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v26 = *a4;
      }

      else
      {
        v26 = 0;
      }

      *buf = 136315394;
      v96 = "collectSubsystemLogsForClient";
      v97 = 2114;
      v98 = v26;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to get Alpha subsystem attachments: %{public}@", buf, 0x16u);
    }

    v18 = [v70 count];
    v9 = v24;
    if ((a2 & 8) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

LABEL_26:
  if ((a2 & 8) != 0)
  {
LABEL_38:
    v28 = collectFoldersForSubsystem(2, v71, a1, a5, a4);
    [v70 addObjectsFromArray:v28];

    if ([v70 count] <= v18 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      if (a4)
      {
        v29 = *a4;
      }

      else
      {
        v29 = 0;
      }

      *buf = 136315394;
      v96 = "collectSubsystemLogsForClient";
      v97 = 2114;
      v98 = v29;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to get Beta subsystem attachments: %{public}@", buf, 0x16u);
    }
  }

LABEL_44:
  if ((a1 & 5) != 0)
  {
    goto LABEL_83;
  }

  v30 = v71;
  v67 = [MEMORY[0x277CBEB18] array];
  v31 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/private/var/dextcores" isDirectory:1];
  v32 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  v65 = v9;
  v66 = v31;
  if (!v31)
  {
    collectSubsystemLogsForClient_cold_2(v32);
    goto LABEL_82;
  }

  if (v32)
  {
    *buf = 136315394;
    v96 = "collectDextCoresWithMaxCount";
    v97 = 2114;
    v98 = v31;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: enumerating directory %{public}@", buf, 0x16u);
  }

  v33 = [MEMORY[0x277CCAA00] defaultManager];
  v34 = *MEMORY[0x277CBE7C0];
  v99[0] = *MEMORY[0x277CBE8E8];
  v99[1] = v34;
  v75 = v34;
  v74 = *MEMORY[0x277CBE838];
  v99[2] = *MEMORY[0x277CBE838];
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:v99 count:3];
  v36 = [v33 enumeratorAtURL:v66 includingPropertiesForKeys:v35 options:0 errorHandler:&__block_literal_global_112];

  if (!v36)
  {
    collectSubsystemLogsForClient_cold_1(v66);
    goto LABEL_82;
  }

  v64 = v36;
  v37 = [v36 allObjects];
  v38 = [v37 sortedArrayUsingComparator:&__block_literal_global_107];

  v83 = 0u;
  v84 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = v38;
  v76 = [obj countByEnumeratingWithState:&v81 objects:buf count:16];
  if (!v76)
  {
    goto LABEL_81;
  }

  v69 = 0;
  v73 = *v82;
  v39 = MEMORY[0x277D86220];
  v68 = v30;
  while (2)
  {
    for (i = 0; i != v76; ++i)
    {
      if (*v82 != v73)
      {
        objc_enumerationMutation(obj);
      }

      v41 = *(*(&v81 + 1) + 8 * i);
      v80 = 0;
      [v41 getResourceValue:&v80 forKey:v75 error:a4];
      v42 = v80;
      v79 = 0;
      [v41 getResourceValue:&v79 forKey:v74 error:0];
      v43 = v79;
      if (v42)
      {
        v44 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
        v45 = [v42 compare:v44];
        v46 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
        if (v45 == -1)
        {
          if (v46)
          {
            *v85 = 136315394;
            v86 = "collectDextCoresWithMaxCount";
            v87 = 2114;
            v88 = v44;
            _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Skipping collection of files created before %{public}@", v85, 0x16u);
          }

          goto LABEL_80;
        }

        v77 = v44;
        if (v46)
        {
          v47 = [v43 unsignedLongLongValue];
          *v85 = 136316162;
          v86 = "collectDextCoresWithMaxCount";
          v87 = 2114;
          v88 = v41;
          v89 = 2114;
          v90 = v30;
          v91 = 2050;
          v92 = v47;
          v93 = 2114;
          v94 = v42;
          _os_log_impl(&dword_2433AC000, v39, OS_LOG_TYPE_DEFAULT, "CDF: %s: copying %{public}@ to %{public}@, size %{public}llu date %{public}@", v85, 0x34u);
        }

        v78 = v43;
        v48 = v39;
        v49 = [MEMORY[0x277CCAA00] defaultManager];
        v50 = [v41 lastPathComponent];
        v51 = [v30 URLByAppendingPathComponent:v50];
        v52 = a4;
        v53 = [v49 copyItemAtURL:v41 toURL:v51 error:a4];
        v54 = v30;
        v55 = v53;

        if (v55)
        {
          v56 = [v41 lastPathComponent];
          v57 = [v54 URLByAppendingPathComponent:v56];
          v43 = v78;
          v58 = [CDFCollectionItem itemWithPathURL:v57 date:v42 fileSize:v78];

          if (v58)
          {
            [v67 addObject:v58];
            ++v69;
            v30 = v68;
            a4 = v52;
            v39 = v48;
            v44 = v77;
            if (v69 == 10)
            {

LABEL_80:
              goto LABEL_81;
            }
          }

          else
          {
            v39 = v48;
            a4 = v52;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              v63 = [v41 lastPathComponent];
              *v85 = 136315394;
              v86 = "collectDextCoresWithMaxCount";
              v87 = 2114;
              v88 = v63;
              _os_log_impl(&dword_2433AC000, v48, OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to create attachment for file %{public}@", v85, 0x16u);

              v43 = v78;
            }

            v30 = v68;
            v44 = v77;
          }
        }

        else
        {
          v39 = v48;
          v59 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
          v30 = v54;
          a4 = v52;
          v44 = v77;
          v43 = v78;
          if (v59)
          {
            v60 = [v41 lastPathComponent];
            v61 = v60;
            if (v52)
            {
              v62 = *v52;
            }

            else
            {
              v62 = 0;
            }

            *v85 = 136315650;
            v86 = "collectDextCoresWithMaxCount";
            v87 = 2114;
            v88 = v60;
            v89 = 2114;
            v90 = v62;
            _os_log_impl(&dword_2433AC000, v39, OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to copy %{public}@: %{public}@", v85, 0x20u);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *v85 = 136315394;
          v86 = "collectDextCoresWithMaxCount";
          v87 = 2114;
          v88 = v41;
          _os_log_impl(&dword_2433AC000, v39, OS_LOG_TYPE_DEFAULT, "CDF: %s: Invalid date, skipping collection %{public}@", v85, 0x16u);
        }

        v42 = v43;
      }
    }

    v76 = [obj countByEnumeratingWithState:&v81 objects:buf count:16];
    if (v76)
    {
      continue;
    }

    break;
  }

LABEL_81:

LABEL_82:
  [v70 addObjectsFromArray:v67];

  v9 = v65;
LABEL_83:
  [MEMORY[0x277D36B60] removeObjectForKey:@"crash_moverDisabledSince"];
  v19 = v70;
LABEL_84:

LABEL_18:
  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

void pauseCrashMover(int a1)
{
  v1 = MEMORY[0x277D36B60];
  if (a1)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    [v1 setObject:v3 forKey:@"crash_moverDisabledSince"];
  }

  else
  {
    v2 = MEMORY[0x277D36B60];

    [v2 removeObjectForKey:@"crash_moverDisabledSince"];
  }
}

id collectFoldersForSubsystem(uint64_t a1, void *a2, uint64_t a3, __int16 a4, void **a5)
{
  v173 = *MEMORY[0x277D85DE8];
  v122 = a2;
  v115 = [MEMORY[0x277CBEB18] array];
  v132 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v154 = 0u;
  v6 = [&unk_28561CD10 countByEnumeratingWithState:&v151 objects:v165 count:16];
  v7 = 0x277CCA000uLL;
  v116 = a1;
  if (v6)
  {
    v8 = v6;
    v9 = 0;
    v10 = *v152;
    v139 = &kSubsystemParams[14 * a1];
    v135 = *MEMORY[0x277CBE8E8];
    v11 = MEMORY[0x277D86220];
    do
    {
      v12 = 0;
      v137 = v8;
      do
      {
        if (*v152 != v10)
        {
          objc_enumerationMutation(&unk_28561CD10);
        }

        v13 = *(*(&v151 + 1) + 8 * v12);
        v14 = [*(v7 + 2560) defaultManager];
        v15 = [v14 fileExistsAtPath:v13];

        if (v15)
        {
          v16 = *v139;
          v17 = [v13 stringByAppendingPathComponent:*v139];
          v18 = [MEMORY[0x277CBEBC0] fileURLWithPath:v17 isDirectory:1];
          v19 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          if (v18)
          {
            v20 = v10;
            if (v19)
            {
              *buf = 136315394;
              v159 = "getSortedFolderURLsForSubsystem";
              v160 = 2114;
              v161 = v18;
              _os_log_impl(&dword_2433AC000, v11, OS_LOG_TYPE_DEFAULT, "CDF: %s: enumerating directory %{public}@", buf, 0x16u);
            }

            v21 = v11;
            v22 = [*(v7 + 2560) defaultManager];
            v164 = v135;
            v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v164 count:1];
            v150 = v9;
            v24 = [v22 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:v23 options:1 error:&v150];
            v25 = v150;

            if (v24)
            {
              [v132 addObjectsFromArray:v24];
              v11 = v21;
            }

            else
            {
              v11 = v21;
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v26 = [(__CFString *)v18 path];
                *buf = 136315650;
                v159 = "getSortedFolderURLsForSubsystem";
                v160 = 2114;
                v161 = v26;
                v162 = 2114;
                v163 = v25;
                _os_log_impl(&dword_2433AC000, v21, OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to get %{public}@ contents:error %{public}@", buf, 0x20u);
              }
            }

            v7 = 0x277CCA000;
            v10 = v20;
            v8 = v137;
          }

          else
          {
            if (v19)
            {
              *buf = 136315394;
              v159 = "getSortedFolderURLsForSubsystem";
              v160 = 2114;
              v161 = v16;
              _os_log_impl(&dword_2433AC000, v11, OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create path URL for subsystem:%{public}@", buf, 0x16u);
            }

            v25 = v9;
          }

          v9 = v25;
        }

        ++v12;
      }

      while (v8 != v12);
      v8 = [&unk_28561CD10 countByEnumeratingWithState:&v151 objects:v165 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if ([v132 count])
  {
    v27 = [v132 sortedArrayUsingComparator:&__block_literal_global_99];
  }

  else
  {
    v27 = 0;
  }

  v28 = v115;

  if (![v27 count])
  {
    v102 = v115;
    v29 = 0;
    v30 = 0;
    goto LABEL_152;
  }

  v148 = 0u;
  v149 = 0u;
  v146 = 0u;
  v147 = 0u;
  obj = v27;
  v133 = [obj countByEnumeratingWithState:&v146 objects:v157 count:16];
  if (!v133)
  {
    v119 = 0;
    v29 = 0;
    v30 = 0;
    goto LABEL_151;
  }

  v129 = 0;
  v107 = 0;
  v113 = 0;
  v119 = 0;
  v29 = 0;
  v30 = 0;
  v131 = *v147;
  v134 = *MEMORY[0x277CBE7C0];
  v31 = &kSubsystemParams[14 * v116];
  v125 = *MEMORY[0x277CBE8E8];
  v114 = v31 + 10;
  v109 = v31 + 5;
  v121 = v31;
  v106 = v31 + 2;
  v32 = MEMORY[0x277D86220];
  v123 = a3 == 1;
  v118 = a3 == 1;
  v136 = a3 == 1;
  v33 = a5;
  v108 = v27;
  do
  {
    v34 = 0;
    do
    {
      if (*v147 != v131)
      {
        objc_enumerationMutation(obj);
      }

      v35 = *(*(&v146 + 1) + 8 * v34);
      v145 = 0;
      [v35 getResourceValue:&v145 forKey:v134 error:v33];
      v36 = v145;
      v37 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-86400.0];
      if (v36)
      {
        if ([v36 compare:v37] == -1)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            *v165 = 136315394;
            v166 = "collectFoldersForSubsystem";
            v167 = 2114;
            v168 = v37;
            _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Skipping collection of files created before %{public}@", v165, 0x16u);
          }

          v27 = v108;
          goto LABEL_149;
        }

        v138 = v37;
        v144 = 0;
        [v35 getResourceValue:&v144 forKey:v125 error:0];
        v38 = v144;
        v39 = ([v38 containsString:@"BluetoothDebug~AMFM~sysdiag"] & 1) != 0 || (objc_msgSend(v38, "containsString:", @"WiFiDebug~sysdiag") & 1) != 0 || (objc_msgSend(v38, "containsString:", @"WiFiDebug~ttr") & 1) != 0 || objc_msgSend(v38, "containsString:", @"BluetoothDebug~sysdiag");
        v40 = v139;
        if (v136)
        {
          v126 = getCDFClientFolderName(0);
          if ([v38 containsString:?])
          {
            v41 = 1;
            goto LABEL_63;
          }
        }

        if (v129)
        {
          v40 = getCDFClientFolderName(1);
          if ([v38 containsString:v40])
          {
            v139 = v40;

            v41 = 1;
            goto LABEL_62;
          }
        }

        v139 = v40;
        if (v123)
        {
          v42 = getCDFClientFolderName(3);
          v117 = v42;
          if ([v38 containsString:v42])
          {

            v41 = 1;
            v40 = v139;
            if ((v129 & 1) == 0)
            {
LABEL_62:
              if (v136)
              {
LABEL_63:
              }

              v44 = v39 | v41;
              if (a3 == 1)
              {
                if ((([v38 containsString:@"FLRLimit"] | v44) & 1) == 0)
                {
                  goto LABEL_66;
                }

LABEL_70:
                v32 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v165 = 136315394;
                  v166 = "collectFoldersForSubsystem";
                  v167 = 2114;
                  v168 = v38;
                  v53 = v32;
                  v54 = "CDF: %s: Skipping collecting %{public}@ ";
LABEL_72:
                  v55 = 22;
LABEL_73:
                  _os_log_impl(&dword_2433AC000, v53, OS_LOG_TYPE_DEFAULT, v54, v165, v55);
                }

                goto LABEL_138;
              }

              if (v44)
              {
                goto LABEL_70;
              }

LABEL_66:
              v45 = MEMORY[0x277CCACA8];
              v46 = v121[13];
              v47 = [v35 lastPathComponent];
              v48 = [v45 stringWithFormat:@"%@-%@", v46, v47];
              v49 = [v122 URLByAppendingPathComponent:v48];

              v50 = [MEMORY[0x277CCAA00] defaultManager];
              v128 = v49;
              v51 = [v49 path];
              v52 = [v50 fileExistsAtPath:v51];

              if (v52)
              {
                v32 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v165 = 136315394;
                  v166 = "collectFoldersForSubsystem";
                  v167 = 2114;
                  v29 = v128;
                  v168 = v128;
                  v53 = v32;
                  v54 = "CDF: %s: folder already exists: %{public}@ - abandon copying";
                  goto LABEL_72;
                }

LABEL_116:
                v29 = v128;
                goto LABEL_138;
              }

              if (kClientNeedsSelectiveLogging[a3] != 1)
              {
                v62 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
                v29 = v49;
                if (v62)
                {
                  *v165 = 136315650;
                  v166 = "collectFoldersForSubsystem";
                  v167 = 2114;
                  v168 = v49;
                  v169 = 2114;
                  v170 = v36;
                  _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: copying to %{public}@, date %{public}@", v165, 0x20u);
                }

                v63 = [MEMORY[0x277CCAA00] defaultManager];
                v64 = [v63 copyItemAtURL:v35 toURL:v49 error:v33];

                if ((v64 & 1) == 0)
                {
                  v32 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    if (v33)
                    {
                      v65 = *v33;
                    }

                    else
                    {
                      v65 = 0;
                    }

                    *v165 = 136315906;
                    v166 = "collectFoldersForSubsystem";
                    v167 = 2114;
                    v168 = v65;
                    v169 = 2114;
                    v170 = v35;
                    v171 = 2114;
                    v172 = v128;
                    v53 = v32;
                    v54 = "CDF: %s: copying error: %{public}@, from %{public}@ to %{public}@";
                    v55 = 42;
                    goto LABEL_73;
                  }

LABEL_138:

                  goto LABEL_139;
                }

                goto LABEL_93;
              }

              v56 = objc_alloc_init(*off_278DB0D40[v116]);
              v29 = v49;
              if (!v56)
              {
                v32 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v66 = [v35 lastPathComponent];
                  *v165 = 136315394;
                  v166 = "collectFoldersForSubsystem";
                  v167 = 2114;
                  v168 = v66;
                  _os_log_impl(&dword_2433AC000, v32, OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to create diagObg for folder %{public}@", v165, 0x16u);
                }

                goto LABEL_138;
              }

              v57 = v56;
              v58 = [v56 collectLogsFrom:v35 to:v49 runtimeFlags:a4 & 0x103];
              v59 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
              if (v58)
              {
                if (v59)
                {
                  *v165 = 136315394;
                  v166 = "collectFoldersForSubsystem";
                  v167 = 2114;
                  v168 = v35;
                  v60 = MEMORY[0x277D86220];
                  v61 = "CDF: %s: Collected from %{public}@ succesfully";
                  goto LABEL_91;
                }
              }

              else if (v59)
              {
                *v165 = 136315394;
                v166 = "collectFoldersForSubsystem";
                v167 = 2114;
                v168 = v35;
                v60 = MEMORY[0x277D86220];
                v61 = "CDF: %s: Failed to collect logs from %{public}@";
LABEL_91:
                _os_log_impl(&dword_2433AC000, v60, OS_LOG_TYPE_DEFAULT, v61, v165, 0x16u);
              }

LABEL_93:
              v67 = [MEMORY[0x277CCAA00] defaultManager];
              v68 = [v29 URLByAppendingPathComponent:v121[1]];
              v156 = v134;
              v69 = [MEMORY[0x277CBEA60] arrayWithObjects:&v156 count:1];
              v70 = [v67 enumeratorAtURL:v68 includingPropertiesForKeys:v69 options:1 errorHandler:&__block_literal_global];

              v71 = [v70 allObjects];
              v72 = [v71 count];
              v73 = *(v114 + a3);

              if (v72 > v73)
              {
                v74 = [v70 allObjects];
                v75 = [v74 sortedArrayUsingComparator:&__block_literal_global_107];

                v111 = v70;
                v76 = [v70 allObjects];
                v77 = [v76 count];

                v142 = 0u;
                v143 = 0u;
                v140 = 0u;
                v141 = 0u;
                v110 = v75;
                v120 = [v75 reverseObjectEnumerator];
                v78 = [v120 countByEnumeratingWithState:&v140 objects:v155 count:16];
                if (v78)
                {
                  v79 = v78;
                  v80 = (v77 - v73);
                  v81 = *v141;
LABEL_96:
                  v82 = 0;
                  while (1)
                  {
                    if (*v141 != v81)
                    {
                      objc_enumerationMutation(v120);
                    }

                    if (!v80)
                    {
                      break;
                    }

                    v83 = *(*(&v140 + 1) + 8 * v82);
                    --v80;
                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      v84 = [v83 lastPathComponent];
                      *v165 = 136315650;
                      v166 = "collectFoldersForSubsystem";
                      v167 = 2050;
                      v168 = v80;
                      v169 = 2114;
                      v170 = v84;
                      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Overflow:%{public}lu Dropping %{public}@", v165, 0x20u);
                    }

                    v85 = [MEMORY[0x277CCAA00] defaultManager];
                    v86 = [v85 removeItemAtURL:v83 error:a5];

                    if ((v86 & 1) == 0)
                    {
                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        v87 = a5;
                        if (a5)
                        {
                          v87 = *a5;
                        }

                        *v165 = 136315394;
                        v166 = "collectFoldersForSubsystem";
                        v167 = 2114;
                        v168 = v87;
                        _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to remove extra log: %{public}@", v165, 0x16u);
                      }

                      break;
                    }

                    if (v79 == ++v82)
                    {
                      v79 = [v120 countByEnumeratingWithState:&v140 objects:v155 count:16];
                      if (v79)
                      {
                        goto LABEL_96;
                      }

                      break;
                    }
                  }
                }

                v70 = v111;
                v119 = v110;
              }

              v29 = v128;
              TotalSizeForPath = getTotalSizeForPath(v128);
              if (!TotalSizeForPath)
              {
                v32 = MEMORY[0x277D86220];
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v93 = [v35 lastPathComponent];
                  *v165 = 136315394;
                  v166 = "collectFoldersForSubsystem";
                  v167 = 2114;
                  v168 = v93;
                  _os_log_impl(&dword_2433AC000, v32, OS_LOG_TYPE_DEFAULT, "CDF: %s: skipping folder with zero size: %{public}@", v165, 0x16u);
                }

                v30 = v70;
                v33 = a5;
                goto LABEL_138;
              }

              v89 = TotalSizeForPath;
              v30 = v70;
              v90 = &v113[TotalSizeForPath];
              v91 = v109[a3];
              if (&v113[TotalSizeForPath] <= v91)
              {
                v94 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:TotalSizeForPath];
                v95 = [CDFCollectionItem itemWithPathURL:v128 date:v36 fileSize:v94];

                v33 = a5;
                v32 = MEMORY[0x277D86220];
                if (v95)
                {
                  if (v136)
                  {
                    v136 = 1;
                  }

                  else
                  {
                    v97 = getCDFClientFolderName(0);
                    v136 = [v38 containsString:v97];
                  }

                  if (v129)
                  {
                    v129 = 1;
                  }

                  else
                  {
                    v98 = getCDFClientFolderName(1);
                    v129 = [v38 containsString:v98];
                  }

                  if (v123)
                  {
                    v123 = 1;
                  }

                  else
                  {
                    v99 = getCDFClientFolderName(3);
                    v123 = [v38 containsString:v99];
                  }

                  if (v118)
                  {
                    v118 = 1;
                  }

                  else
                  {
                    v100 = getCDFClientFolderName(4);
                    v118 = [v38 containsString:v100];
                  }

                  [v115 addObject:v95];
                  if (v107 + 1 == *(v106 + a3))
                  {

                    v29 = v128;
                    v27 = v108;
                    v37 = v138;
LABEL_149:

                    goto LABEL_151;
                  }

                  ++v107;
                  v113 = v90;
                }

                else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  v96 = [v35 lastPathComponent];
                  *v165 = 136315394;
                  v166 = "collectFoldersForSubsystem";
                  v167 = 2114;
                  v168 = v96;
                  _os_log_impl(&dword_2433AC000, v32, OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to create attachment for folder %{public}@", v165, 0x16u);
                }

                v29 = v128;

                goto LABEL_138;
              }

              v92 = MEMORY[0x277D86220];
              v33 = a5;
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                *v165 = 136315906;
                v166 = "collectFoldersForSubsystem";
                v167 = 2048;
                v168 = v89;
                v169 = 2050;
                v170 = v91;
                v171 = 2050;
                v172 = v113;
                _os_log_impl(&dword_2433AC000, v92, OS_LOG_TYPE_DEFAULT, "CDF: %s: folder size %llu would exceed maximum bytes %{public}llu, currently %{public}llu", v165, 0x2Au);
              }

              v32 = v92;
              goto LABEL_116;
            }

LABEL_61:

            goto LABEL_62;
          }

          if (v118)
          {
            v40 = v139;
LABEL_56:
            v43 = getCDFClientFolderName(4);
            v41 = [v38 containsString:v43];

            v33 = a5;
            if ((v123 & 1) == 0)
            {
              goto LABEL_60;
            }
          }

          else
          {
            v41 = 0;
            v40 = v139;
          }

          goto LABEL_60;
        }

        if (v118)
        {
          goto LABEL_56;
        }

        v41 = 0;
LABEL_60:
        if ((v129 & 1) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        *v165 = 136315394;
        v166 = "collectFoldersForSubsystem";
        v167 = 2114;
        v168 = v35;
        _os_log_impl(&dword_2433AC000, v32, OS_LOG_TYPE_DEFAULT, "CDF: %s: Invalid date, skipping collection %{public}@", v165, 0x16u);
      }

      v36 = v37;
LABEL_139:

      ++v34;
    }

    while (v34 != v133);
    v101 = [obj countByEnumeratingWithState:&v146 objects:v157 count:16];
    v27 = v108;
    v133 = v101;
  }

  while (v101);
LABEL_151:

  v28 = v115;
  v103 = v115;

LABEL_152:
  v104 = *MEMORY[0x277D85DE8];

  return v28;
}

BOOL collectClientLogsWithSizeAndOverride(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = v7;
  if (a1 != 1 || (v9 = [v7 length], !a3) || !v9)
  {
    v14 = 0;
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    *buf = 136316162;
    v21 = "collectClientLogsWithSizeAndOverride";
    v22 = 2050;
    v23 = a1;
    v24 = 2114;
    v25 = v8;
    v26 = 2050;
    v27 = a3;
    v28 = 2050;
    v29 = a4;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: invalid arguments client:%{public}lu, dir:%{public}@, size:%{public}luMB flags:%{public}lu", buf, 0x34u);
LABEL_14:
    v14 = 0;
    goto LABEL_16;
  }

  if (!+[CDFSubsystemDiagnostics isCentauriPlatform])
  {
    v14 = 1;
    goto LABEL_16;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316162;
    v21 = "collectClientLogsWithSizeAndOverride";
    v22 = 2050;
    v23 = 1;
    v24 = 2114;
    v25 = v8;
    v26 = 2050;
    v27 = a3;
    v28 = 2050;
    v29 = a4;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: client:%{public}lu, dir:%{public}@, size:%{public}luMB flags:%{public}lu", buf, 0x34u);
  }

  v19 = 0;
  v10 = collectSubsystemLogsForClient(1uLL, 14, v8, &v19, a4);
  v11 = v19;
  if (![v10 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v11 localizedFailureReason];
      v18 = [v11 domain];
      *buf = 136315650;
      v21 = "collectClientLogsWithSizeAndOverride";
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Failed to copy items to dir %{public}@ %{public}@", buf, 0x20u);
    }

    goto LABEL_14;
  }

  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v8 isDirectory:1];
  v13 = getTotalSizeForPath(v12) >> 20;
  v14 = v13 <= a3;
  if (v13 > a3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "collectClientLogsWithSizeAndOverride";
    v22 = 2050;
    v23 = v13;
    v24 = 2050;
    v25 = a3;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: Warning: potential file drops - copied size %{public}lluMB exceeds client limit %{public}luMB", buf, 0x20u);
  }

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

uint64_t getTotalSizeForPath(void *a1)
{
  v41[2] = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *MEMORY[0x277CBE868];
  v4 = *MEMORY[0x277CBE838];
  v41[0] = *MEMORY[0x277CBE868];
  v41[1] = v4;
  v25 = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v6 = [v2 enumeratorAtURL:v1 includingPropertiesForKeys:v5 options:0 errorHandler:&__block_literal_global_114];

  if (v6)
  {
    v23 = v6;
    v24 = v1;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = [v6 allObjects];
    v7 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = *v31;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          v15 = v11;
          if (*v31 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v29 = 0;
          [v16 getResourceValue:&v29 forKey:v3 error:0];
          v11 = v29;

          if (v11 && ([v11 BOOLValue] & 1) == 0)
          {
            v27 = 0;
            v28 = 0;
            [v16 getResourceValue:&v28 forKey:v25 error:&v27];
            v17 = v28;

            v18 = v27;
            v19 = v9;
            v9 = v18;

            if (!v17)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                v22 = [v9 code];
                *buf = 136315650;
                v35 = "getTotalSizeForPath";
                v36 = 2114;
                v37 = v16;
                v38 = 2050;
                v39 = v22;
                _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to retrieve size for file %{public}@ error: %{public}ld", buf, 0x20u);
              }

              v10 = 0;
              goto LABEL_15;
            }

            v12 += [v17 unsignedLongLongValue];
            v10 = v17;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
LABEL_15:
      v12 = 0;
    }

    v6 = v23;
    v1 = v24;
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "getTotalSizeForPath";
      v36 = 2114;
      v37 = v1;
      _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to enumerate directory %{public}@", buf, 0x16u);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v20 = *MEMORY[0x277D85DE8];
  return v12;
}

id getCDFClientFolderName(uint64_t a1)
{
  v1 = MEMORY[0x277CCACA8];
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s-triggered", kCDFClientName[a1]];
  v3 = [v1 stringWithFormat:@"ClientRequested-%@", v2];

  return v3;
}

uint64_t __collectFoldersForSubsystem_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "collectFoldersForSubsystem_block_invoke";
    v9 = 2114;
    v10 = a2;
    v11 = 2114;
    v12 = a3;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to enumerate log file %{public}@: %{public}@", &v7, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __getSortedFolderURLsForSubsystem_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 lastPathComponent];
  v6 = [v4 lastPathComponent];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

uint64_t __sortURLsByDateDescending_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = *MEMORY[0x277CBE7C0];
  v5 = a3;
  [a2 getResourceValue:&v10 forKey:v4 error:0];
  v9 = 0;
  v6 = v10;
  [v5 getResourceValue:&v9 forKey:v4 error:0];

  v7 = [v9 compare:v6];
  return v7;
}

uint64_t __collectDextCoresWithMaxCount_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "collectDextCoresWithMaxCount_block_invoke";
    v9 = 2114;
    v10 = a2;
    v11 = 2114;
    v12 = a3;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to enumerate file %{public}@: %{public}@", &v7, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

uint64_t __getTotalSizeForPath_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315650;
    v8 = "getTotalSizeForPath_block_invoke";
    v9 = 2114;
    v10 = a2;
    v11 = 2114;
    v12 = a3;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to enumerate file %{public}@: %{public}@", &v7, 0x20u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return 0;
}

void collectSubsystemLogsForClient_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315394;
    v4 = "collectDextCoresWithMaxCount";
    v5 = 2114;
    v6 = a1;
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to enumerate directory %{public}@", &v3, 0x16u);
  }

  v2 = *MEMORY[0x277D85DE8];
}

void collectSubsystemLogsForClient_cold_2(char a1)
{
  v6 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = 136315394;
    v3 = "collectDextCoresWithMaxCount";
    v4 = 2114;
    v5 = @"/private/var/dextcores";
    _os_log_impl(&dword_2433AC000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "CDF: %s: failed to get dext core path %{public}@", &v2, 0x16u);
  }

  v1 = *MEMORY[0x277D85DE8];
}
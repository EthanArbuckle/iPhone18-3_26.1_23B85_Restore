@interface ISRootMigrator
- (BOOL)performMigration;
- (id)appendRegionalVariantsToLanguageIdentifiers:(id)a3 regionCode:(id)a4;
- (id)importPreferredLanguagesForPreferences:(id)a3;
- (id)importPreferredLanguages_macOS_10_9_forPreferences:(id)a3;
- (id)performMigrationForUserPreferences:(id)a3 systemPreferences:(id)a4;
- (void)performMigration;
- (void)updateAppleLanguagesSchemaVersionToCurrent;
@end

@implementation ISRootMigrator

- (BOOL)performMigration
{
  v155 = *MEMORY[0x277D85DE8];
  v3 = MigrationLogger();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(ISMigrator *)self previousVersion];
    v5 = [(ISMigrator *)self currentVersion];
    *buf = 136316418;
    v144 = "[ISRootMigrator performMigration]";
    v145 = 2114;
    v146 = v4;
    v147 = 2114;
    v148 = v5;
    v149 = 1024;
    v150 = [(ISRootMigrator *)self isErase];
    v151 = 1024;
    v152 = [(ISRootMigrator *)self isRestoreFromBackup];
    v153 = 1024;
    v154 = [(ISMigrator *)self newUserAccount];
    _os_log_impl(&dword_22DFB7000, v3, OS_LOG_TYPE_DEFAULT, "%s: previousVersion='%{public}@', currentVersion='%{public}@', isErase=%d, isRestoreFromBackup=%d, isNewUserAccount=%d", buf, 0x32u);
  }

  v6 = [(ISMigrator *)self previousVersion];
  v7 = [(ISMigrator *)self currentVersion];
  if ([v7 length])
  {
    if (![v6 length])
    {
      v8 = v7;
      v9 = v7;

      v10 = MigrationLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v144 = "[ISRootMigrator performMigration]";
        _os_log_impl(&dword_22DFB7000, v10, OS_LOG_TYPE_DEFAULT, "%s: failed to retrieve previousVersion. Setting it to currentVersion.", buf, 0xCu);
      }

      v6 = v9;
      v7 = v8;
    }

    v118 = [MEMORY[0x277CBEB38] dictionary];
    if ([(ISMigrator *)self platform]== 1)
    {
      v117 = [MEMORY[0x277CBEB38] dictionary];
    }

    else
    {
      v117 = 0;
    }

    v11 = [(ISMigrator *)self platform];
    v108 = v6;
    v109 = self;
    v107 = v7;
    if (v11 - 3 < 2)
    {
      v12 = MEMORY[0x277CBEB58];
      v140[0] = @"AppleLanguages";
      v140[1] = @"AppleLocale";
      v13 = MEMORY[0x277CBEA60];
      v14 = v140;
      v16 = 2;
    }

    else
    {
      if (v11 == 2)
      {
        v12 = MEMORY[0x277CBEB58];
        v141[0] = @"AppleLanguages";
        v141[1] = @"AppleLocale";
        v141[2] = @"PreferredLanguages";
        v13 = MEMORY[0x277CBEA60];
        v14 = v141;
      }

      else
      {
        if (v11 != 1)
        {
          v18 = 0;
          goto LABEL_25;
        }

        v12 = MEMORY[0x277CBEB58];
        v142[0] = @"AppleLanguages";
        v142[1] = @"AppleLocale";
        v142[2] = @"AppleUserLanguages";
        v13 = MEMORY[0x277CBEA60];
        v14 = v142;
      }

      v16 = 3;
    }

    v17 = [v13 arrayWithObjects:v14 count:v16];
    v18 = [v12 setWithArray:v17];

LABEL_25:
    v133 = 0u;
    v134 = 0u;
    v131 = 0u;
    v132 = 0u;
    v19 = v18;
    v20 = [v19 countByEnumeratingWithState:&v131 objects:v139 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v132;
      v23 = *MEMORY[0x277CBF008];
      v24 = *MEMORY[0x277CBF040];
      v25 = *MEMORY[0x277CBF010];
      v26 = *MEMORY[0x277CBF020];
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v132 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v28 = *(*(&v131 + 1) + 8 * i);
          v29 = CFPreferencesCopyValue(v28, v23, v24, v25);
          if (v29)
          {
            [v118 setObject:v29 forKeyedSubscript:v28];
          }

          if (v117)
          {
            v30 = CFPreferencesCopyValue(v28, v23, v26, v25);
            if (v30)
            {
              [v117 setObject:v30 forKeyedSubscript:v28];
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v131 objects:v139 count:16];
      }

      while (v21);
    }

    v31 = [(ISRootMigrator *)v109 performMigrationForUserPreferences:v118 systemPreferences:v117];
    v32 = MigrationLogger();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v144 = "[ISRootMigrator performMigration]";
      v145 = 2114;
      v146 = v118;
      v147 = 2114;
      v148 = v31;
      _os_log_impl(&dword_22DFB7000, v32, OS_LOG_TYPE_DEFAULT, "%s: oldPreferences = %{public}@, migratedPreferences = %{public}@", buf, 0x20u);
    }

    v33 = [v31 allKeys];
    [v19 addObjectsFromArray:v33];

    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    obj = v19;
    v34 = [obj countByEnumeratingWithState:&v127 objects:v138 count:16];
    v115 = v31;
    if (v34)
    {
      v35 = v34;
      v36 = *v128;
      v37 = *MEMORY[0x277CBF008];
      v114 = *MEMORY[0x277CBF040];
      applicationID = *MEMORY[0x277CBF010];
      do
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v128 != v36)
          {
            objc_enumerationMutation(obj);
          }

          v39 = *(*(&v127 + 1) + 8 * j);
          v40 = [v118 objectForKeyedSubscript:v39];
          v41 = [v31 objectForKeyedSubscript:v39];
          if (!v40 || ([v40 isEqual:v41] & 1) == 0)
          {
            if ([(__CFString *)v39 isEqualToString:@"AppleLanguages"])
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v41 count])
              {
                v42 = MigrationLogger();
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                {
                  v43 = [v41 componentsJoinedByString:{@", "}];
                  *buf = 136315394;
                  v144 = "[ISRootMigrator performMigration]";
                  v145 = 2114;
                  v146 = v43;
                  _os_log_impl(&dword_22DFB7000, v42, OS_LOG_TYPE_DEFAULT, "%s: [NSLocale setPreferredLanguages:@[ %{public}@ ]]", buf, 0x16u);

                  v31 = v115;
                }

                [MEMORY[0x277CBEAF8] setPreferredLanguages:v41];
              }
            }

            else if ([(__CFString *)v39 isEqualToString:@"AppleLocale"])
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [v41 length])
              {
                [MEMORY[0x277CBEAF8] setLocaleOnly:v41];
              }
            }

            else
            {
              v44 = MigrationLogger();
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v144 = "[ISRootMigrator performMigration]";
                v145 = 2114;
                v146 = v39;
                v147 = 2114;
                v148 = v41;
                _os_log_impl(&dword_22DFB7000, v44, OS_LOG_TYPE_DEFAULT, "%s: CFPreferencesSetValue(%{public}@ → %{public}@)", buf, 0x20u);
              }

              CFPreferencesSetValue(v39, v41, v37, v114, applicationID);
              v31 = v115;
            }
          }
        }

        v35 = [obj countByEnumeratingWithState:&v127 objects:v138 count:16];
      }

      while (v35);
    }

    v45 = [v108 compare:@"17A450" options:64];
    v46 = v109;
    if ([(ISMigrator *)v109 platform]== 2 && (v45 == -1 || [(ISRootMigrator *)v109 isRestoreFromBackup]))
    {
      v47 = MigrationLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v144 = "[ISRootMigrator performMigration]";
        _os_log_impl(&dword_22DFB7000, v47, OS_LOG_TYPE_DEFAULT, "%s: Migrating to enable watch mirroring.", buf, 0xCu);
      }

      v48 = objc_opt_new();
      [v48 initializeMirrorSettings];
    }

    v49 = *MEMORY[0x277CBF040];
    v50 = *MEMORY[0x277CBF010];
    applicationIDa = *MEMORY[0x277CBF008];
    v51 = CFPreferencesCopyValue(@"AppleLanguagesSchemaVersion", *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
    v52 = [v51 unsignedIntegerValue];

    v53 = MigrationLogger();
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v144 = "[ISRootMigrator performMigration]";
      v145 = 2048;
      v146 = v52;
      _os_log_impl(&dword_22DFB7000, v53, OS_LOG_TYPE_DEFAULT, "%s: AppleLanguagesSchemaVersion = %lu", buf, 0x16u);
    }

    v54 = CFPreferencesCopyValue(@"AppleLanguages", applicationIDa, v49, v50);
    v55 = CFPreferencesCopyValue(@"AppleLocale", applicationIDa, v49, v50);
    v56 = [MEMORY[0x277CBEB38] dictionary];
    v57 = v56;
    if (v54)
    {
      [v56 setObject:v54 forKeyedSubscript:@"AppleLanguages"];
    }

    if (v55)
    {
      [v57 setObject:v55 forKeyedSubscript:@"AppleLocale"];
    }

    v111 = [(ISMigrator *)IP_emptyPreferences_migrator migratorFromSchemaVersion:v52];
    v58 = [v111 performMigrationForPreferences:v57];
    v59 = [v58 mutableCopy];

    v60 = [v59 objectForKeyedSubscript:@"AppleLanguages"];
    v110 = v59;
    if (v60 && (v61 = v60, [v59 objectForKeyedSubscript:@"AppleLocale"], v62 = objc_claimAutoreleasedReturnValue(), v62, v61, v62))
    {
      v105 = v55;
      v106 = v54;
      v63 = [(ISMigrator *)v109 previousVersion];
      v64 = [(ISMigrator *)v109 currentVersion];
      [(ISMigrator *)IP_pa_Arab_to_pa_Aran_migrator migratorFromVersion:v63 toVersion:v64];
      v66 = v65 = v52;
      v137[0] = v66;
      v67 = [(ISMigrator *)IP_HK_MO_yue_Hant_migrator migratorFromSchemaVersion:v65];
      v137[1] = v67;
      v68 = [(ISMigrator *)IP_unsupportedVariantsAddedByKeyboards_migrator migratorFromSchemaVersion:v65];
      v137[2] = v68;
      v69 = [(ISMigrator *)IP_advancedSettings_migrator migratorFromSchemaVersion:v65];
      v137[3] = v69;
      v104 = v65;
      v70 = [(ISMigrator *)IP_scriptSelection_migrator migratorFromSchemaVersion:v65];
      v137[4] = v70;
      v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:5];

      v72 = MigrationLogger();
      if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v144 = "[ISRootMigrator performMigration]";
        v145 = 2114;
        v146 = v59;
        _os_log_impl(&dword_22DFB7000, v72, OS_LOG_TYPE_DEFAULT, "%s: Preferences before running preferences migrators: %{public}@", buf, 0x16u);
      }

      v73 = v59;
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v74 = v71;
      v75 = [v74 countByEnumeratingWithState:&v123 objects:v136 count:16];
      v76 = v74;
      if (v75)
      {
        v77 = v75;
        v78 = *v124;
        do
        {
          v79 = 0;
          v80 = v73;
          do
          {
            if (*v124 != v78)
            {
              objc_enumerationMutation(v76);
            }

            v73 = [*(*(&v123 + 1) + 8 * v79) performMigrationForPreferences:v80];

            v81 = MigrationLogger();
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v82 = objc_opt_class();
              v83 = NSStringFromClass(v82);
              *buf = 136315650;
              v144 = "[ISRootMigrator performMigration]";
              v145 = 2114;
              v146 = v83;
              v147 = 2114;
              v148 = v73;
              _os_log_impl(&dword_22DFB7000, v81, OS_LOG_TYPE_DEFAULT, "%s: Preferences after running <%{public}@>: %{public}@", buf, 0x20u);
            }

            ++v79;
            v80 = v73;
          }

          while (v77 != v79);
          v74 = v76;
          v77 = [v76 countByEnumeratingWithState:&v123 objects:v136 count:16];
        }

        while (v77);
      }

      v84 = [v73 objectForKeyedSubscript:@"AppleLanguages"];
      objc_opt_class();
      v31 = v115;
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v84 count] && (objc_msgSend(v106, "isEqualToArray:", v84) & 1) == 0)
      {
        v85 = MigrationLogger();
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v144 = "[ISRootMigrator performMigration]";
          v145 = 2114;
          v146 = v84;
          _os_log_impl(&dword_22DFB7000, v85, OS_LOG_TYPE_DEFAULT, "%s: AppleLanguages changed to %{public}@. Writing to disk.", buf, 0x16u);
        }

        [MEMORY[0x277CBEAF8] setPreferredLanguages:v84];
      }

      v103 = v84;
      v86 = [v73 objectForKeyedSubscript:@"AppleLocale"];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v86 length] && (objc_msgSend(v105, "isEqualToString:", v86) & 1) == 0)
      {
        v87 = MigrationLogger();
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v144 = "[ISRootMigrator performMigration]";
          v145 = 2114;
          v146 = v86;
          _os_log_impl(&dword_22DFB7000, v87, OS_LOG_TYPE_DEFAULT, "%s: AppleLocale changed to %{public}@. Writing to disk.", buf, 0x16u);
        }

        [MEMORY[0x277CBEAF8] setLocaleOnly:v86];
      }

      v102 = v86;
      v121 = 0u;
      v122 = 0u;
      v119 = 0u;
      v120 = 0u;
      v88 = v73;
      v89 = [v88 countByEnumeratingWithState:&v119 objects:v135 count:16];
      if (v89)
      {
        v90 = v89;
        v91 = *v120;
        do
        {
          for (k = 0; k != v90; ++k)
          {
            if (*v120 != v91)
            {
              objc_enumerationMutation(v88);
            }

            v93 = *(*(&v119 + 1) + 8 * k);
            if (([(__CFString *)v93 isEqualToString:@"AppleLanguages", v102]& 1) == 0 && ([(__CFString *)v93 isEqualToString:@"AppleLocale"]& 1) == 0)
            {
              v94 = [v88 objectForKeyedSubscript:v93];
              v95 = MigrationLogger();
              if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v144 = "[ISRootMigrator performMigration]";
                v145 = 2114;
                v146 = v93;
                v147 = 2114;
                v148 = v94;
                _os_log_impl(&dword_22DFB7000, v95, OS_LOG_TYPE_DEFAULT, "%s: %{public}@ set to %{public}@. Writing to disk.", buf, 0x20u);
              }

              CFPreferencesSetAppValue(v93, v94, applicationIDa);
              CFPreferencesAppSynchronize(applicationIDa);

              v31 = v115;
            }
          }

          v90 = [v88 countByEnumeratingWithState:&v119 objects:v135 count:16];
        }

        while (v90);
      }

      v7 = v107;
      v6 = v108;
      v46 = v109;
      v52 = v104;
      v55 = v105;
      v54 = v106;
      v96 = v111;
    }

    else
    {
      v97 = MigrationLogger();
      if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v144 = "[ISRootMigrator performMigration]";
        v145 = 2114;
        v146 = v54;
        v147 = 2114;
        v148 = v55;
        v76 = v97;
        _os_log_impl(&dword_22DFB7000, v97, OS_LOG_TYPE_DEFAULT, "%s: AppleLanguages (%{public}@) or AppleLocale (%{public}@) is nil. Skipping preferences migrators.", buf, 0x20u);
      }

      else
      {
        v76 = v97;
      }

      v7 = v107;
      v96 = v111;
      v6 = v108;
    }

    v98 = [(ISMigrator *)IP_advancedSettings_migrator migratorFromSchemaVersion:v52];
    [v98 migrateOtherSystemSettings];

    if (v52 == 5400)
    {
      v99 = MigrationLogger();
      if (os_log_type_enabled(v99, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v144 = "[ISRootMigrator performMigration]";
        _os_log_impl(&dword_22DFB7000, v99, OS_LOG_TYPE_DEFAULT, "%s: AppleLanguagesSchemaVersion is up to date.", buf, 0xCu);
      }
    }

    else
    {
      [(ISRootMigrator *)v46 updateAppleLanguagesSchemaVersionToCurrent];
    }

    goto LABEL_122;
  }

  if ([(ISMigrator *)self platform]== 1 || ![(ISRootMigrator *)self isErase])
  {
    v15 = MigrationLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(ISRootMigrator *)v15 performMigration];
    }
  }

  else
  {
    [(ISRootMigrator *)self updateAppleLanguagesSchemaVersionToCurrent];
  }

LABEL_122:

  v100 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)updateAppleLanguagesSchemaVersionToCurrent
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = MigrationLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[ISRootMigrator updateAppleLanguagesSchemaVersionToCurrent]";
    v9 = 2048;
    v10 = 5400;
    _os_log_impl(&dword_22DFB7000, v2, OS_LOG_TYPE_DEFAULT, "%s: Updating AppleLanguagesSchemaVersion to %lu.", &v7, 0x16u);
  }

  v3 = *MEMORY[0x277CBF008];
  v4 = *MEMORY[0x277CBF040];
  v5 = *MEMORY[0x277CBF010];
  CFPreferencesSetValue(@"AppleLanguagesSchemaVersion", &unk_2841A23F8, *MEMORY[0x277CBF008], *MEMORY[0x277CBF040], *MEMORY[0x277CBF010]);
  CFPreferencesSynchronize(v3, v4, v5);
  v6 = *MEMORY[0x277D85DE8];
}

- (id)performMigrationForUserPreferences:(id)a3 systemPreferences:(id)a4
{
  v93 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(ISMigrator *)self previousVersion];
  v9 = [(ISMigrator *)self currentVersion];
  v10 = [v6 mutableCopy];
  if ([(ISMigrator *)self platform]== 1 && [(ISMigrator *)self newUserAccount])
  {
    v11 = MigrationLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
      v87 = 2114;
      v88 = v8;
      v89 = 2114;
      v90 = v9;
      _os_log_impl(&dword_22DFB7000, v11, OS_LOG_TYPE_DEFAULT, "%s: (1) previousVersion=%{public}@, currentVersion=%{public}@ → Performing New User Account Migration", buf, 0x20u);
    }

    v12 = MigrationLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 objectForKeyedSubscript:@"AppleLanguages"];
      v14 = [v13 componentsJoinedByString:{@", "}];
      *buf = 136315394;
      v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
      v87 = 2114;
      v88 = v14;
      _os_log_impl(&dword_22DFB7000, v12, OS_LOG_TYPE_DEFAULT, "%s: (1) System AppleLanguages= [ %{public}@ ]", buf, 0x16u);
    }

    v15 = MigrationLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v7 objectForKeyedSubscript:@"AppleLocale"];
      *buf = 136315394;
      v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
      v87 = 2114;
      v88 = v16;
      _os_log_impl(&dword_22DFB7000, v15, OS_LOG_TYPE_DEFAULT, "%s: (1) System AppleLocale= %{public}@", buf, 0x16u);
    }

    v17 = [v7 objectForKeyedSubscript:@"AppleLanguages"];
    [v10 setObject:v17 forKeyedSubscript:@"AppleLanguages"];

    v18 = [v7 objectForKeyedSubscript:@"AppleLocale"];
    [v10 setObject:v18 forKeyedSubscript:@"AppleLocale"];
    goto LABEL_69;
  }

  v19 = [(ISMigrator *)self platform]- 1;
  if (v19 > 3)
  {
    v20 = 0;
  }

  else
  {
    v20 = off_2787A8F00[v19];
  }

  v21 = MigrationLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
    v87 = 2114;
    v88 = v8;
    v89 = 2114;
    v90 = v9;
    v91 = 2114;
    v92 = v20;
    _os_log_impl(&dword_22DFB7000, v21, OS_LOG_TYPE_DEFAULT, "%s: (1) previousVersion=%{public}@, currentVersion=%{public}@, upgradeThreshold=%{public}@", buf, 0x2Au);
  }

  v79 = v9;
  if ([v8 compare:v20 options:64] == -1 && -[NSObject compare:options:](v9, "compare:options:", v20, 64) != -1)
  {
    v22 = MigrationLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
      v87 = 2114;
      v88 = v8;
      v89 = 2114;
      v90 = v9;
      v91 = 2114;
      v92 = v20;
      _os_log_impl(&dword_22DFB7000, v22, OS_LOG_TYPE_DEFAULT, "%s: (1) { %{public}@, %{public}@, %{public}@ } qualifies for AppleLanguages migration", buf, 0x2Au);
    }

    v23 = [v10 objectForKeyedSubscript:@"AppleLanguages"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || ![v23 count])
    {
      v25 = MigrationLogger();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
        _os_log_impl(&dword_22DFB7000, v25, OS_LOG_TYPE_DEFAULT, "%s: (1) current AppleLanguages is nil/empty; skipping migration", buf, 0xCu);
      }

      goto LABEL_33;
    }

    v24 = v8;
    v25 = [(ISRootMigrator *)self importPreferredLanguagesForPreferences:v10];
    v26 = MEMORY[0x277CBEAF8];
    v27 = [v10 objectForKeyedSubscript:@"AppleLocale"];
    v28 = [v26 localeWithLocaleIdentifier:v27];
    v29 = [v28 objectForKey:*MEMORY[0x277CBE690]];

    if (v29)
    {
      [(ISRootMigrator *)self appendRegionalVariantsToLanguageIdentifiers:v25 regionCode:v29];
      v25 = v30 = v25;
    }

    else
    {
      v30 = MigrationLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
      }
    }

    v8 = v24;

    [v10 setObject:v25 forKeyedSubscript:@"AppleLanguages"];
    if ([(ISMigrator *)self platform]== 1)
    {
      v31 = @"AppleUserLanguages";
    }

    else
    {
      if ([(ISMigrator *)self platform]!= 2)
      {
LABEL_32:

        v9 = v79;
LABEL_33:

        goto LABEL_34;
      }

      v31 = @"PreferredLanguages";
    }

    [v10 setObject:0 forKeyedSubscript:v31];
    goto LABEL_32;
  }

LABEL_34:
  v32 = [v10 objectForKeyedSubscript:@"AppleLanguages"];
  if ([v32 count] == 1)
  {
    v73 = v10;
    v75 = v8;
    v76 = v7;
    v77 = v6;
    v33 = MEMORY[0x277CBEAF8];
    v34 = [v32 firstObject];
    v35 = [v33 localeWithLocaleIdentifier:v34];

    v36 = [v35 languageCode];
    v74 = v35;
    v78 = [v35 countryCode];
    v37 = [MEMORY[0x277CBEAF8] baseSystemLanguages];
    v38 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v37, "count")}];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v39 = v37;
    v40 = [v39 countByEnumeratingWithState:&v80 objects:v84 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v81;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v81 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:*(*(&v80 + 1) + 8 * i)];
          v45 = [v44 languageCode];
          [v38 addObject:v45];
        }

        v41 = [v39 countByEnumeratingWithState:&v80 objects:v84 count:16];
      }

      while (v41);
    }

    v46 = v36;
    v47 = [v36 length];
    v10 = v73;
    v48 = v78;
    if (v47)
    {
      if (([v38 containsObject:v46] & 1) == 0)
      {
        if ([v78 length])
        {
          v49 = MEMORY[0x277CCA8D8];
          v50 = [MEMORY[0x277CBEAF8] baseSystemLanguages];
          v51 = [v49 preferredLocalizationsFromArray:v50 forPreferences:v32];
          v52 = [v51 firstObject];
          v53 = [v52 isEqualToString:@"en"];

          v48 = v78;
          if (v53)
          {
            v54 = [MEMORY[0x277CBEAF8] languageFromLanguage:@"en" byReplacingRegion:v78];
            if ([v54 length])
            {
              v55 = MigrationLogger();
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                v56 = [v32 componentsJoinedByString:{@", "}];
                *buf = 136315394;
                v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
                v87 = 2114;
                v88 = v56;
                _os_log_impl(&dword_22DFB7000, v55, OS_LOG_TYPE_DEFAULT, "%s: (2) AppleLanguages = [ %{public}@ ] qualifies for AppleLanguages repair", buf, 0x16u);
              }

              v57 = [v32 arrayByAddingObject:v54];
              [v73 setObject:v57 forKeyedSubscript:@"AppleLanguages"];

              v58 = MigrationLogger();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
              {
                log = v58;
                v59 = [v32 componentsJoinedByString:{@", "}];
                v60 = [v73 objectForKeyedSubscript:@"AppleLanguages"];
                v61 = [v60 componentsJoinedByString:{@", "}];
                *buf = 136315650;
                v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
                v87 = 2114;
                v88 = v59;
                v89 = 2114;
                v90 = v61;
                _os_log_impl(&dword_22DFB7000, log, OS_LOG_TYPE_DEFAULT, "%s: (2) AppleLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x20u);

                v58 = log;
              }
            }
          }
        }
      }
    }

    v7 = v76;
    v6 = v77;
    v8 = v75;
    v9 = v79;
  }

  v62 = [v10 objectForKeyedSubscript:@"AppleLanguages"];
  v18 = [v62 firstObject];

  v63 = [v10 objectForKeyedSubscript:@"AppleLocale"];
  if ([v18 length] && objc_msgSend(v63, "length"))
  {
    v64 = MigrationLogger();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
      v87 = 2114;
      v88 = v63;
      _os_log_impl(&dword_22DFB7000, v64, OS_LOG_TYPE_DEFAULT, "%s: (3) AppleLocale = %{public}@", buf, 0x16u);
    }

    v65 = [MEMORY[0x277CBEAF8] canonicalLocaleIdentifier:v63 withNewLanguageIdentifier:v18];
    v66 = [v65 length];
    v67 = MigrationLogger();
    v68 = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
    if (v66)
    {
      if (v68)
      {
        v69 = [v10 objectForKeyedSubscript:@"AppleLocale"];
        *buf = 136315650;
        v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
        v87 = 2114;
        v88 = v69;
        v89 = 2114;
        v90 = v65;
        _os_log_impl(&dword_22DFB7000, v67, OS_LOG_TYPE_DEFAULT, "%s: (3) AppleLocale = %{public}@ → %{public}@", buf, 0x20u);
      }

      [v10 setObject:v65 forKeyedSubscript:@"AppleLocale"];
    }

    else
    {
      if (v68)
      {
        *buf = 136315138;
        v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
        _os_log_impl(&dword_22DFB7000, v67, OS_LOG_TYPE_DEFAULT, "%s: (3) new AppleLocale is nil/empty; skipping migration", buf, 0xCu);
      }
    }

    v9 = v79;
  }

  else
  {
    v65 = MigrationLogger();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v86 = "[ISRootMigrator performMigrationForUserPreferences:systemPreferences:]";
      _os_log_impl(&dword_22DFB7000, v65, OS_LOG_TYPE_DEFAULT, "%s: (3) current AppleLanguages or AppleLocale is nil/empty; skipping migration", buf, 0xCu);
    }
  }

LABEL_69:
  v70 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)appendRegionalVariantsToLanguageIdentifiers:(id)a3 regionCode:(id)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v42 = v6;
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x277CBEB40] orderedSet];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v38 = v5;
    obj = v5;
    v9 = v8;
    v41 = v8;
    v44 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
    if (!v44)
    {
      goto LABEL_16;
    }

    v10 = *v46;
    v11 = *MEMORY[0x277CBE690];
    v12 = 0x277CBE000uLL;
    v39 = *MEMORY[0x277CBE690];
    v40 = *v46;
    while (1)
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v45 + 1) + 8 * i);
        v15 = [*(v12 + 2808) componentsFromLocaleIdentifier:v14];
        v16 = v7;
        v17 = [*(v12 + 2808) languageFromLanguage:v14 byReplacingRegion:v7];
        v18 = [v15 objectForKeyedSubscript:v11];

        if (!v18)
        {
          v19 = v14;
          v14 = v17;
LABEL_13:
          v27 = v9;
          goto LABEL_14;
        }

        v19 = [*(v12 + 2808) baseLanguageFromLanguage:v14];
        if (![v19 length])
        {
          goto LABEL_13;
        }

        v20 = MEMORY[0x277CCA8D8];
        v50[0] = v19;
        v50[1] = v14;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v50 count:2];
        v49 = v17;
        v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
        v23 = [v20 preferredLocalizationsFromArray:v21 forPreferences:v22];
        v24 = [v23 firstObject];
        v25 = [v24 isEqualToString:v14];

        if (v25)
        {
          v26 = v17;

          v14 = v26;
        }

        v27 = v41;
        v16 = v42;
        v11 = v39;
        v10 = v40;
LABEL_14:

        v9 = v27;
        [v27 addObject:v14];

        v12 = 0x277CBE000;
        v7 = v16;
      }

      v44 = [obj countByEnumeratingWithState:&v45 objects:v51 count:16];
      if (!v44)
      {
LABEL_16:

        v28 = MigrationLogger();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [obj componentsJoinedByString:{@", "}];
          v30 = [v9 array];
          v31 = [v30 componentsJoinedByString:{@", "}];
          *buf = 136315906;
          v53 = "[ISRootMigrator appendRegionalVariantsToLanguageIdentifiers:regionCode:]";
          v54 = 2114;
          v55 = v7;
          v56 = 2114;
          v57 = v29;
          v58 = 2114;
          v59 = v31;
          _os_log_impl(&dword_22DFB7000, v28, OS_LOG_TYPE_DEFAULT, "%s: regionCode=%{public}@, preferredLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x2Au);

          v9 = v41;
        }

        v32 = [v9 array];

        v5 = v38;
        goto LABEL_22;
      }
    }
  }

  v33 = MigrationLogger();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [v5 componentsJoinedByString:{@", "}];
    v35 = [v5 componentsJoinedByString:{@", "}];
    *buf = 136315906;
    v53 = "[ISRootMigrator appendRegionalVariantsToLanguageIdentifiers:regionCode:]";
    v54 = 2114;
    v55 = 0;
    v56 = 2114;
    v57 = v34;
    v58 = 2114;
    v59 = v35;
    _os_log_impl(&dword_22DFB7000, v33, OS_LOG_TYPE_DEFAULT, "%s: regionCode=%{public}@, preferredLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x2Au);
  }

  v32 = v5;
  v7 = 0;
LABEL_22:

  v36 = *MEMORY[0x277D85DE8];

  return v32;
}

- (id)importPreferredLanguagesForPreferences:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ISMigrator *)self previousVersion];
  v6 = [v4 objectForKeyedSubscript:@"AppleLanguages"];
  if ([(ISMigrator *)self platform]== 1)
  {
    v7 = [v4 objectForKeyedSubscript:@"AppleUserLanguages"];
    if (v7)
    {
      v8 = MigrationLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v28 = "[ISRootMigrator importPreferredLanguagesForPreferences:]";
        _os_log_impl(&dword_22DFB7000, v8, OS_LOG_TYPE_DEFAULT, "%s: Possible upgrade from macOS 10.9", buf, 0xCu);
      }

      v9 = @"10.9";
      if ([v5 compare:@"10.9" options:64] != -1 && objc_msgSend(v5, "compare:options:", @"10.10", 64) == -1)
      {
        v10 = MigrationLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v28 = "[ISRootMigrator importPreferredLanguagesForPreferences:]";
          _os_log_impl(&dword_22DFB7000, v10, OS_LOG_TYPE_DEFAULT, "%s: Upgrade from macOS 10.9", buf, 0xCu);
        }

        v11 = [(ISRootMigrator *)self importPreferredLanguages_macOS_10_9_forPreferences:v4];
LABEL_20:
        v16 = v11;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      v9 = @"10.9";
    }
  }

  else
  {
    if ([(ISMigrator *)self platform]!= 2)
    {
      goto LABEL_23;
    }

    v7 = [v4 objectForKeyedSubscript:@"PreferredLanguages"];
    if (v7 || [v6 count] == 1)
    {
      v12 = MigrationLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v28 = "[ISRootMigrator importPreferredLanguagesForPreferences:]";
        _os_log_impl(&dword_22DFB7000, v12, OS_LOG_TYPE_DEFAULT, "%s: Possible upgrade from iOS 8", buf, 0xCu);
      }

      v9 = @"12A";
      if ([v5 compare:@"12A" options:64] != -1 && objc_msgSend(v5, "compare:options:", @"13A", 64) == -1)
      {
        v13 = MigrationLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v6 componentsJoinedByString:{@", "}];
          v15 = [v6 componentsJoinedByString:{@", "}];
          *buf = 136315650;
          v28 = "[ISRootMigrator importPreferredLanguagesForPreferences:]";
          v29 = 2114;
          v30 = v14;
          v31 = 2114;
          v32 = v15;
          _os_log_impl(&dword_22DFB7000, v13, OS_LOG_TYPE_DEFAULT, "%s: Upgrade from iOS 8; preferredLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x20u);
        }

        v11 = v6;
        goto LABEL_20;
      }
    }

    else
    {
      v9 = @"12A";
    }
  }

  if ([v5 compare:v9 options:64] == -1 && objc_msgSend(v6, "count"))
  {
    v20 = [v6 objectAtIndexedSubscript:0];
    v21 = [IntlUtility normalizedLanguageIDFromString:v20];
    v26 = v21;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];

    v7 = MigrationLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v22 = [v6 componentsJoinedByString:{@", "}];
      v23 = [v16 componentsJoinedByString:{@", "}];
      *buf = 136315650;
      v28 = "[ISRootMigrator importPreferredLanguagesForPreferences:]";
      v29 = 2114;
      v30 = v22;
      v31 = 2114;
      v32 = v23;
      _os_log_impl(&dword_22DFB7000, v7, OS_LOG_TYPE_DEFAULT, "%s: Upgrade from pre-{ macOS 10.9, iOS 8 }; preferredLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x20u);
    }

    goto LABEL_29;
  }

LABEL_23:
  v17 = MigrationLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v6 componentsJoinedByString:{@", "}];
    v19 = [v6 componentsJoinedByString:{@", "}];
    *buf = 136315650;
    v28 = "[ISRootMigrator importPreferredLanguagesForPreferences:]";
    v29 = 2114;
    v30 = v18;
    v31 = 2114;
    v32 = v19;
    _os_log_impl(&dword_22DFB7000, v17, OS_LOG_TYPE_DEFAULT, "%s: Upgrade from post-{ macOS 10.9, iOS 8 }; preferredLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x20u);
  }

  v16 = v6;
LABEL_30:

  v24 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)importPreferredLanguages_macOS_10_9_forPreferences:(id)a3
{
  v32[1] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v3 objectForKeyedSubscript:@"AppleLanguages"];
  v25 = v3;
  v6 = [v3 objectForKeyedSubscript:@"AppleUserLanguages"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 unsignedIntegerValue];
    v8 = MigrationLogger();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[ISRootMigrator importPreferredLanguages_macOS_10_9_forPreferences:]";
      v28 = 1024;
      LODWORD(v29) = v7;
      _os_log_impl(&dword_22DFB7000, v8, OS_LOG_TYPE_DEFAULT, "%s: preferredLanguagesIndex=%u", buf, 0x12u);
    }

    if (v7 && v7 <= [v5 count])
    {
      v9 = [v5 subarrayWithRange:{0, v7}];
      [v4 addObjectsFromArray:v9];
    }
  }

  if (![v4 count] && objc_msgSend(v5, "count"))
  {
    v10 = [v5 objectAtIndexedSubscript:0];
    v32[0] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [v4 setArray:v11];
  }

  v24 = v5;
  v12 = [v4 count];
  if (v12)
  {
    v13 = v12;
    for (i = 0; i != v13; ++i)
    {
      v15 = [v4 objectAtIndexedSubscript:i];
      v16 = [IntlUtility normalizedLanguageIDFromString:v15];

      v17 = MigrationLogger();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [v4 objectAtIndexedSubscript:i];
        *buf = 136315650;
        v27 = "[ISRootMigrator importPreferredLanguages_macOS_10_9_forPreferences:]";
        v28 = 2114;
        v29 = v18;
        v30 = 2114;
        v31 = v16;
        _os_log_impl(&dword_22DFB7000, v17, OS_LOG_TYPE_DEFAULT, "%s: Normalizing %{public}@ → %{public}@", buf, 0x20u);
      }

      [v4 setObject:v16 atIndexedSubscript:i];
    }
  }

  v19 = MigrationLogger();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = [v24 componentsJoinedByString:{@", "}];
    v21 = [v4 componentsJoinedByString:{@", "}];
    *buf = 136315650;
    v27 = "[ISRootMigrator importPreferredLanguages_macOS_10_9_forPreferences:]";
    v28 = 2114;
    v29 = v20;
    v30 = 2114;
    v31 = v21;
    _os_log_impl(&dword_22DFB7000, v19, OS_LOG_TYPE_DEFAULT, "%s: Upgrade from macOS 10.9; preferredLanguages = [ %{public}@ ] → [ %{public}@ ]", buf, 0x20u);
  }

  v22 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)performMigration
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[ISRootMigrator performMigration]";
  _os_log_fault_impl(&dword_22DFB7000, log, OS_LOG_TYPE_FAULT, "%s: failed to retrieve currentVersion; bailing...", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end
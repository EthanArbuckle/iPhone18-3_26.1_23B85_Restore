@interface CESRSpeechProfileUpdater
+ (id)updaterForInstance:(id)a3 atSpeechProfileSite:(id)a4;
+ (unint64_t)updateModeForSet:(id)a3 speechProfileInstance:(id)a4 isSetNew:(BOOL *)a5;
+ (unint64_t)updateModeForSets:(id)a3 speechProfileInstance:(id)a4 speechProfileSite:(id)a5 isAnySetNew:(BOOL *)a6;
- (BOOL)_errorRequiresCleanRebuild:(id)a3;
- (BOOL)detectCategoriesToRebuild:(id *)a3 error:(id *)a4;
- (BOOL)rebuildCategoryGroup:(id)a3 withSets:(id)a4 version:(id)a5 error:(id *)a6;
- (BOOL)removeProfile:(id *)a3;
- (CESRSpeechProfileUpdater)initWithInstance:(id)a3 speechProfileSite:(id)a4 builder:(id)a5;
- (id)_versionForCategory:(id)a3 error:(id *)a4;
- (id)categoriesToRebuildForAllSets:(id)a3;
- (void)_endSpeechProfileUpdateSignpost:(unint64_t)a3 updateResult:(unsigned __int8)a4 updateType:(unsigned __int8)a5 categoryCount:(unint64_t)a6 itemCount:(unint64_t)a7;
@end

@implementation CESRSpeechProfileUpdater

- (BOOL)removeProfile:(id *)a3
{
  v5 = [(CESRSpeechProfileSite *)self->_speechProfileSite speechProfileSiteURL];
  v6 = [(CESRSpeechProfileInstance *)self->_instance locale];
  v7 = [(CESRSpeechProfileSite *)self->_speechProfileSite userId];
  LOBYTE(a3) = [CESRSpeechProfileBuilder deleteProfileAtDirectory:v5 locale:v6 userId:v7 error:a3];

  return a3;
}

- (BOOL)_errorRequiresCleanRebuild:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  v5 = [v3 domain];

  v6 = [v5 isEqual:@"CESRProfileErrorDomain"];
  v8 = v4 == 6 || (v4 - 1) < 2;
  if (v6)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_versionForCategory:(id)a3 error:(id *)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  builder = self->_builder;
  v15 = 0;
  v8 = [(CESRSpeechProfileBuilder *)builder getVersionForCategory:v6 error:&v15];
  v9 = v15;
  if (v9)
  {
    v10 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v17 = "[CESRSpeechProfileUpdater _versionForCategory:error:]";
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v9;
      _os_log_error_impl(&dword_225EEB000, v10, OS_LOG_TYPE_ERROR, "%s Checking version for category (%@) produced error: %@", buf, 0x20u);
      if (a4)
      {
        goto LABEL_4;
      }
    }

    else if (a4)
    {
LABEL_4:
      v11 = v9;
      v12 = 0;
      *a4 = v9;
      goto LABEL_8;
    }

    v12 = 0;
  }

  else
  {
    v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v8];
  }

LABEL_8:

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)categoriesToRebuildForAllSets:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CESRSpeechProfileInstance *)self->_instance changeRegistry];
  v25 = 0;
  v6 = [v5 cleanupWithAllSets:v4 error:&v25];
  v7 = v25;

  if (v6)
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v4;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          buf[0] = 0;
          v15 = [CESRSpeechProfileUpdater updateModeForSet:v14 speechProfileInstance:self->_instance isSetNew:buf, v21];
          if ((buf[0] & 1) != 0 || v15)
          {
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }

    if ([v8 count])
    {
      v16 = [CESRSpeechProfileCategoryGroup groupForSets:v8];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v17 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      instance = self->_instance;
      *buf = 136315650;
      v28 = "[CESRSpeechProfileUpdater categoriesToRebuildForAllSets:]";
      v29 = 2112;
      v30 = instance;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_225EEB000, v17, OS_LOG_TYPE_INFO, "%s (%@) Registry cleanup failed: %@", buf, 0x20u);
    }

    v16 = +[CESRSpeechProfileCategoryGroup all];
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (BOOL)detectCategoriesToRebuild:(id *)a3 error:(id *)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = *MEMORY[0x277CEF0E8];
  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
  {
    instance = self->_instance;
    *buf = 136315394;
    v50 = "[CESRSpeechProfileUpdater detectCategoriesToRebuild:error:]";
    v51 = 2112;
    v52 = instance;
    _os_log_impl(&dword_225EEB000, v6, OS_LOG_TYPE_INFO, "%s (%@) Verifying profile", buf, 0x16u);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v8 = +[CESRSpeechProfileCategoryGroup all];
  v9 = [v8 speechCategories];

  obj = v9;
  v10 = [v9 countByEnumeratingWithState:&v45 objects:v61 count:16];
  if (v10)
  {
    v11 = v10;
    v39 = a4;
    v12 = 0;
    v13 = 0;
    v42 = *v46;
LABEL_5:
    v14 = 0;
    v15 = v13;
    while (1)
    {
      if (*v46 != v42)
      {
        objc_enumerationMutation(obj);
      }

      v16 = *(*(&v45 + 1) + 8 * v14);
      v44 = v15;
      v17 = [(CESRSpeechProfileUpdater *)self _versionForCategory:v16 error:&v44, v39];
      v13 = v44;

      if (!v17)
      {
        if ([(CESRSpeechProfileUpdater *)self _errorRequiresCleanRebuild:v13])
        {
          v29 = *MEMORY[0x277CEF0E8];
          if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
          {
            v30 = self->_instance;
            *buf = 136315650;
            v50 = "[CESRSpeechProfileUpdater detectCategoriesToRebuild:error:]";
            v51 = 2112;
            v52 = v30;
            v53 = 2112;
            v54 = v13;
            _os_log_impl(&dword_225EEB000, v29, OS_LOG_TYPE_INFO, "%s (%@) Verification error requires profile rebuild: %@", buf, 0x20u);
          }

          v43 = 0;
          v31 = [(CESRSpeechProfileUpdater *)self removeProfile:&v43];
          v32 = v43;
          if (!v31)
          {
            v33 = *MEMORY[0x277CEF0E8];
            if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
            {
              v38 = self->_instance;
              *buf = 136315650;
              v50 = "[CESRSpeechProfileUpdater detectCategoriesToRebuild:error:]";
              v51 = 2112;
              v52 = v38;
              v53 = 2112;
              v54 = v32;
              _os_log_error_impl(&dword_225EEB000, v33, OS_LOG_TYPE_ERROR, "%s (%@) Failed to remove profile: %@", buf, 0x20u);
            }
          }
        }

        if (v39 && v13)
        {
          v34 = v13;
          *v39 = v13;
        }

        v35 = 0;
        goto LABEL_40;
      }

      v18 = [(CESRSpeechProfileInstance *)self->_instance lastCompletedVersionForSpeechCategory:v16];
      v19 = [(CESRSpeechProfileInstance *)self->_instance lastRegisteredVersionForSpeechCategory:v16];
      v20 = *MEMORY[0x277CEF0E8];
      if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
      {
        v28 = self->_instance;
        *buf = 136316418;
        v50 = "[CESRSpeechProfileUpdater detectCategoriesToRebuild:error:]";
        v51 = 2112;
        v52 = v28;
        v53 = 2112;
        v54 = v16;
        v55 = 2112;
        v56 = v17;
        v57 = 2112;
        v58 = v18;
        v59 = 2112;
        v60 = v19;
        _os_log_debug_impl(&dword_225EEB000, v20, OS_LOG_TYPE_DEBUG, "%s (%@) Checking category (%@) built version (%@) last completed update (%@) last registered update (%@)", buf, 0x3Eu);
      }

      if (([v17 isEqual:v18] & 1) == 0)
      {
        break;
      }

      v21 = [v19 longLongValue];
      if (v21 > [v18 longLongValue])
      {
        v22 = *MEMORY[0x277CEF0E8];
        if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
        {
          v23 = self->_instance;
          *buf = 136316162;
          v50 = "[CESRSpeechProfileUpdater detectCategoriesToRebuild:error:]";
          v51 = 2112;
          v52 = v23;
          v53 = 2112;
          v54 = v19;
          v55 = 2112;
          v56 = v18;
          v57 = 2112;
          v58 = v16;
          v24 = v22;
          v25 = "%s (%@) Found deferred update registered (%@) more recently than last completed (%@) for category (%@)";
          goto LABEL_17;
        }

        goto LABEL_18;
      }

LABEL_21:

      ++v14;
      v15 = v13;
      if (v11 == v14)
      {
        v11 = [obj countByEnumeratingWithState:&v45 objects:v61 count:16];
        if (v11)
        {
          goto LABEL_5;
        }

        goto LABEL_36;
      }
    }

    v26 = *MEMORY[0x277CEF0E8];
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      v27 = self->_instance;
      *buf = 136316162;
      v50 = "[CESRSpeechProfileUpdater detectCategoriesToRebuild:error:]";
      v51 = 2112;
      v52 = v27;
      v53 = 2112;
      v54 = v16;
      v55 = 2112;
      v56 = v17;
      v57 = 2112;
      v58 = v18;
      v24 = v26;
      v25 = "%s (%@) Built category (%@) has version (%@) inconsistent with instance info file (%@)";
LABEL_17:
      _os_log_impl(&dword_225EEB000, v24, OS_LOG_TYPE_INFO, v25, buf, 0x34u);
    }

LABEL_18:
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
    }

    [v12 addObject:v16];
    goto LABEL_21;
  }

  v12 = 0;
  v13 = 0;
LABEL_36:

  if (a3 && [v12 count])
  {
    *a3 = [CESRSpeechProfileCategoryGroup groupForSpeechCategories:v12];
  }

  v35 = 1;
LABEL_40:

  v36 = *MEMORY[0x277D85DE8];
  return v35;
}

- (void)_endSpeechProfileUpdateSignpost:(unint64_t)a3 updateResult:(unsigned __int8)a4 updateType:(unsigned __int8)a5 categoryCount:(unint64_t)a6 itemCount:(unint64_t)a7
{
  v7 = a7;
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v27 = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277CEF0E8];
  v13 = v12;
  if (a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    if ((v9 - 1) > 2)
    {
      v14 = @"Undefined";
    }

    else
    {
      v14 = off_27857F000[(v9 - 1)];
    }

    v15 = v14;
    if ((v10 - 1) > 5)
    {
      v16 = @"Undefined";
    }

    else
    {
      v16 = off_27857F040[(v10 - 1)];
    }

    v17 = v16;
    v19 = 138544130;
    v20 = v15;
    v21 = 2114;
    v22 = v17;
    v23 = 1026;
    v24 = v7;
    v25 = 1026;
    v26 = v8;
    _os_signpost_emit_with_name_impl(&dword_225EEB000, v13, OS_SIGNPOST_INTERVAL_END, a3, "speechProfileUpdate", " updateType=%{public,signpost.telemetry:string1}@  updateResult=%{public,signpost.telemetry:string2}@  itemCount=%{public,signpost.telemetry:number1}d  speechCategoriesCount=%{public,signpost.telemetry:number2}d ", &v19, 0x22u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)rebuildCategoryGroup:(id)a3 withSets:(id)a4 version:(id)a5 error:(id *)a6
{
  v144 = *MEMORY[0x277D85DE8];
  v98 = a3;
  v94 = a4;
  v105 = a5;
  v9 = MEMORY[0x277CEF0E8];
  v10 = os_signpost_id_generate(*MEMORY[0x277CEF0E8]);
  v11 = *v9;
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_225EEB000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "speechProfileUpdate", " enableTelemetry=YES ", buf, 2u);
  }

  v93 = v10;

  v13 = +[CESRSpeechProfileCategoryGroup all];
  if ([v98 isEqual:v13])
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  v92 = v14;

  v15 = [v98 speechCategories];
  v95 = [v15 count];

  if (v95)
  {
    v90 = [CESRSpeechItemRanker rankersForInstance:self->_instance speechProfileSite:self->_speechProfileSite categoryGroup:v98 sets:v94];
    v104 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v95];
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v16 = [v98 speechCategories];
    v17 = [v16 countByEnumeratingWithState:&v130 objects:v143 count:16];
    if (v17)
    {
      v18 = *v131;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v131 != v18)
          {
            objc_enumerationMutation(v16);
          }

          [v104 setObject:v105 forKey:*(*(&v130 + 1) + 8 * i)];
        }

        v17 = [v16 countByEnumeratingWithState:&v130 objects:v143 count:16];
      }

      while (v17);
    }

    v20 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      instance = self->_instance;
      v22 = v20;
      v23 = [v98 speechCategoriesDescription];
      *buf = 136315906;
      v138 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
      v139 = 2112;
      *v140 = instance;
      *&v140[8] = 2112;
      *&v140[10] = v105;
      v141 = 2112;
      v142 = v23;
      _os_log_impl(&dword_225EEB000, v22, OS_LOG_TYPE_INFO, "%s (%@) Updating version: %@ for categories: %@", buf, 0x2Au);
    }

    builder = self->_builder;
    v129 = 0;
    v25 = [(CESRSpeechProfileBuilder *)builder beginWithCategoriesAndVersions:v104 bundleId:0 error:&v129];
    v26 = v129;
    v27 = v26;
    if (v25)
    {
      v102 = v26;
      v127 = 0u;
      v128 = 0u;
      v125 = 0u;
      v126 = 0u;
      obj = v90;
      v99 = [obj countByEnumeratingWithState:&v125 objects:v136 count:16];
      if (v99)
      {
        LODWORD(v101) = 0;
        v97 = *v126;
        while (2)
        {
          v28 = 0;
          v29 = v102;
          do
          {
            if (*v126 != v97)
            {
              v30 = v28;
              objc_enumerationMutation(obj);
              v28 = v30;
            }

            v100 = v28;
            v31 = *(*(&v125 + 1) + 8 * v28);
            v121 = 0;
            v122 = &v121;
            v123 = 0x2020000000;
            v124 = 0;
            v119[5] = &v121;
            v120 = v29;
            v119[0] = MEMORY[0x277D85DD0];
            v119[1] = 3221225472;
            v119[2] = __72__CESRSpeechProfileUpdater_rebuildCategoryGroup_withSets_version_error___block_invoke;
            v119[3] = &unk_27857F4D8;
            v119[4] = self;
            v103 = v31;
            v32 = [v31 enumerateRankedItemsWithError:&v120 usingBlock:v119];
            v102 = v120;

            if ((v32 & 1) == 0)
            {
              v63 = *v9;
              v64 = v102;
              if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
              {
                v86 = self->_instance;
                *buf = 136315906;
                v138 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
                v139 = 2112;
                *v140 = v86;
                *&v140[8] = 2112;
                *&v140[10] = v103;
                v141 = 2112;
                v142 = v102;
                _os_log_error_impl(&dword_225EEB000, v63, OS_LOG_TYPE_ERROR, "%s (%@) Failed to enumerate and add items from ranker: %@ error: %@", buf, 0x2Au);
              }

              if (a6 && v102)
              {
                v65 = v102;
                v64 = v102;
                *a6 = v102;
              }

              v66 = self->_builder;
              v118 = 0;
              v67 = [(CESRSpeechProfileBuilder *)v66 cancelCategoriesWithError:&v118];
              v27 = v118;
              if (!v67)
              {
                v68 = *v9;
                if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
                {
                  v87 = self->_instance;
                  *buf = 136315906;
                  v138 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
                  v139 = 2112;
                  *v140 = v87;
                  *&v140[8] = 2112;
                  *&v140[10] = v104;
                  v141 = 2112;
                  v142 = v27;
                  _os_log_error_impl(&dword_225EEB000, v68, OS_LOG_TYPE_ERROR, "%s (%@) Failed to cancel categories: %@ error: %@", buf, 0x2Au);
                }
              }

              v69 = [(CESRSpeechProfileInstance *)self->_instance changeRegistry];
              [v69 rollbackAllBookmarkUpdates];

              [(CESRSpeechProfileUpdater *)self _endSpeechProfileUpdateSignpost:v93 updateResult:4 updateType:v92 categoryCount:v95 itemCount:0];
              _Block_object_dispose(&v121, 8);

              goto LABEL_69;
            }

            v114 = 0u;
            v115 = 0u;
            v116 = 0u;
            v117 = 0u;
            v33 = [v103 getAllCodepathIds];
            v34 = 0;
            v35 = [v33 countByEnumeratingWithState:&v114 objects:v135 count:16];
            if (v35)
            {
              v36 = *v115;
              do
              {
                for (j = 0; j != v35; ++j)
                {
                  if (*v115 != v36)
                  {
                    objc_enumerationMutation(v33);
                  }

                  v38 = *(*(&v114 + 1) + 8 * j);
                  v39 = self->_builder;
                  v113 = v34;
                  v40 = [(CESRSpeechProfileBuilder *)v39 removeCodepathId:v38 error:&v113];
                  v41 = v113;

                  v34 = v41;
                  if (!v40)
                  {
                    v42 = *v9;
                    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
                    {
                      v43 = self->_instance;
                      *buf = 136315906;
                      v138 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
                      v139 = 2112;
                      *v140 = v43;
                      *&v140[8] = 2112;
                      *&v140[10] = v38;
                      v141 = 2112;
                      v142 = v41;
                      _os_log_error_impl(&dword_225EEB000, v42, OS_LOG_TYPE_ERROR, "%s (%@) Failed to remove codepathId=%@ from the profile: %@", buf, 0x2Au);
                    }
                  }
                }

                v35 = [v33 countByEnumeratingWithState:&v114 objects:v135 count:16];
              }

              while (v35);
            }

            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            v44 = [v103 getActivatedCodepathIds];
            v45 = [v44 countByEnumeratingWithState:&v109 objects:v134 count:16];
            if (v45)
            {
              v46 = *v110;
              do
              {
                for (k = 0; k != v45; ++k)
                {
                  if (*v110 != v46)
                  {
                    objc_enumerationMutation(v44);
                  }

                  v48 = *(*(&v109 + 1) + 8 * k);
                  v49 = *v9;
                  if (os_log_type_enabled(*v9, OS_LOG_TYPE_DEBUG))
                  {
                    v54 = self->_instance;
                    *buf = 136315650;
                    v138 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
                    v139 = 2112;
                    *v140 = v54;
                    *&v140[8] = 2112;
                    *&v140[10] = v48;
                    _os_log_debug_impl(&dword_225EEB000, v49, OS_LOG_TYPE_DEBUG, "%s (%@) Adding codepathId=%@ to the profile for trigger logging", buf, 0x20u);
                  }

                  v50 = self->_builder;
                  v108 = v34;
                  v51 = [(CESRSpeechProfileBuilder *)v50 addCodepathId:v48 error:&v108];
                  v52 = v108;

                  v34 = v52;
                  if (!v51)
                  {
                    v53 = *v9;
                    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
                    {
                      v55 = self->_instance;
                      *buf = 136315906;
                      v138 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
                      v139 = 2112;
                      *v140 = v55;
                      *&v140[8] = 2112;
                      *&v140[10] = v48;
                      v141 = 2112;
                      v142 = v52;
                      _os_log_error_impl(&dword_225EEB000, v53, OS_LOG_TYPE_ERROR, "%s (%@) Failed to add codepathId=%@ to the profile: %@", buf, 0x2Au);
                    }
                  }
                }

                v45 = [v44 countByEnumeratingWithState:&v109 objects:v134 count:16];
              }

              while (v45);
            }

            v56 = *(v122 + 6);
            v57 = *v9;
            if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              v138 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
              v139 = 1024;
              *v140 = v56;
              *&v140[4] = 2112;
              *&v140[6] = v103;
              _os_log_impl(&dword_225EEB000, v57, OS_LOG_TYPE_INFO, "%s Enumerated %u total items from ranker: %@", buf, 0x1Cu);
            }

            v101 = (v56 + v101);
            _Block_object_dispose(&v121, 8);
            v28 = v100 + 1;
            v29 = v102;
          }

          while (v100 + 1 != v99);
          v99 = [obj countByEnumeratingWithState:&v125 objects:v136 count:16];
          if (v99)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v101 = 0;
      }

      v72 = self->_builder;
      v107 = v102;
      v73 = [(CESRSpeechProfileBuilder *)v72 finishAndSaveProfile:1 error:&v107];
      v74 = v107;

      v75 = *v9;
      v76 = *v9;
      if (v73)
      {
        if (os_log_type_enabled(v76, OS_LOG_TYPE_INFO))
        {
          v77 = self->_instance;
          v78 = v75;
          v79 = [v98 speechCategoriesDescription];
          *buf = 136315906;
          v138 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
          v139 = 2112;
          *v140 = v77;
          *&v140[8] = 2112;
          *&v140[10] = v105;
          v141 = 2112;
          v142 = v79;
          _os_log_impl(&dword_225EEB000, v78, OS_LOG_TYPE_INFO, "%s (%@) Completed profile update version: %@ for categories: %@", buf, 0x2Au);
        }

        v80 = [(CESRSpeechProfileInstance *)self->_instance changeRegistry];
        v106 = v74;
        v81 = [v80 commitAllBookmarkUpdates:&v106];
        v27 = v106;

        if ((v81 & 1) == 0)
        {
          v82 = *v9;
          if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
          {
            v89 = self->_instance;
            *buf = 136315650;
            v138 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
            v139 = 2112;
            *v140 = v89;
            *&v140[8] = 2112;
            *&v140[10] = v27;
            _os_log_error_impl(&dword_225EEB000, v82, OS_LOG_TYPE_ERROR, "%s (%@) Failed to commit bookmark updates: %@", buf, 0x20u);
          }
        }

        [(CESRSpeechProfileUpdater *)self _endSpeechProfileUpdateSignpost:v93 updateResult:6 updateType:v92 categoryCount:v95 itemCount:v101];
        v60 = 1;
      }

      else
      {
        if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
        {
          v88 = self->_instance;
          *buf = 136315650;
          v138 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
          v139 = 2112;
          *v140 = v88;
          *&v140[8] = 2112;
          *&v140[10] = v74;
          _os_log_error_impl(&dword_225EEB000, v75, OS_LOG_TYPE_ERROR, "%s (%@) Failed to finish profile due to error: %@", buf, 0x20u);
        }

        if (a6 && v74)
        {
          v83 = v74;
          *a6 = v74;
        }

        v84 = [(CESRSpeechProfileInstance *)self->_instance changeRegistry];
        [v84 rollbackAllBookmarkUpdates];

        [(CESRSpeechProfileUpdater *)self _endSpeechProfileUpdateSignpost:v93 updateResult:1 updateType:v92 categoryCount:v95 itemCount:v101];
        v60 = 0;
        v27 = v74;
      }
    }

    else
    {
      v61 = *v9;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
      {
        v85 = self->_instance;
        *buf = 136315906;
        v138 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
        v139 = 2112;
        *v140 = v85;
        *&v140[8] = 2112;
        *&v140[10] = v104;
        v141 = 2112;
        v142 = v27;
        _os_log_error_impl(&dword_225EEB000, v61, OS_LOG_TYPE_ERROR, "%s (%@) Failed to begin building categories: %@ error: %@", buf, 0x2Au);
      }

      if (a6 && v27)
      {
        v62 = v27;
        *a6 = v27;
      }

      [(CESRSpeechProfileUpdater *)self _endSpeechProfileUpdateSignpost:v93 updateResult:3 updateType:v92 categoryCount:v95 itemCount:0];
LABEL_69:
      v60 = 0;
    }
  }

  else
  {
    v58 = *v9;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
    {
      v59 = self->_instance;
      *buf = 136315650;
      v138 = "[CESRSpeechProfileUpdater rebuildCategoryGroup:withSets:version:error:]";
      v139 = 2112;
      *v140 = v59;
      *&v140[8] = 2112;
      *&v140[10] = v98;
      _os_log_impl(&dword_225EEB000, v58, OS_LOG_TYPE_INFO, "%s (%@) Skipping update for group: %@", buf, 0x20u);
    }

    [(CESRSpeechProfileUpdater *)self _endSpeechProfileUpdateSignpost:v10 updateResult:5 updateType:v92 categoryCount:0 itemCount:0];
    v60 = 1;
  }

  v70 = *MEMORY[0x277D85DE8];
  return v60;
}

- (CESRSpeechProfileUpdater)initWithInstance:(id)a3 speechProfileSite:(id)a4 builder:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = CESRSpeechProfileUpdater;
  v12 = [(CESRSpeechProfileUpdater *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_instance, a3);
    objc_storeStrong(&v13->_speechProfileSite, a4);
    objc_storeStrong(&v13->_builder, a5);
  }

  return v13;
}

+ (unint64_t)updateModeForSet:(id)a3 speechProfileInstance:(id)a4 isSetNew:(BOOL *)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__941;
  v37 = __Block_byref_object_dispose__942;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v9 = [v8 changeRegistry];
  v10 = [v9 bookmarkForSet:v7];

  if (!v10)
  {
    v18 = *MEMORY[0x277CEF0E8];
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    *buf = 136315650;
    v40 = "+[CESRSpeechProfileUpdater updateModeForSet:speechProfileInstance:isSetNew:]";
    v41 = 2112;
    v42 = v8;
    v43 = 2112;
    v44 = v7;
    v15 = "%s (%@) No bookmark found for set: %@";
    v16 = v18;
    v17 = 32;
LABEL_7:
    _os_log_impl(&dword_225EEB000, v16, OS_LOG_TYPE_INFO, v15, buf, v17);
LABEL_8:
    if (a5)
    {
      *a5 = 1;
    }

    goto LABEL_21;
  }

  v11 = [v7 changePublisherWithUseCase:@"SpeechProfile"];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __76__CESRSpeechProfileUpdater_updateModeForSet_speechProfileInstance_isSetNew___block_invoke;
  v28[3] = &unk_27857F500;
  v28[4] = &v33;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __76__CESRSpeechProfileUpdater_updateModeForSet_speechProfileInstance_isSetNew___block_invoke_2;
  v27[3] = &unk_27857F528;
  v27[4] = &v29;
  v12 = [v11 drivableSinkWithBookmark:v10 completion:v28 shouldContinue:v27];

  v13 = v34[5];
  v14 = *MEMORY[0x277CEF0E8];
  if (v13)
  {
    if (!os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_INFO))
    {
      goto LABEL_8;
    }

    *buf = 136315906;
    v40 = "+[CESRSpeechProfileUpdater updateModeForSet:speechProfileInstance:isSetNew:]";
    v41 = 2112;
    v42 = v8;
    v43 = 2112;
    v44 = v7;
    v45 = 2112;
    v46 = v13;
    v15 = "%s (%@) Failed to enumerate set: %@ error: %@";
    v16 = v14;
    v17 = 42;
    goto LABEL_7;
  }

  v19 = v14;
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = v30[3];
    if (v20)
    {
      v21 = @"Add";
      v22 = &stru_283946208;
      if ((v20 & 1) == 0)
      {
        v21 = &stru_283946208;
      }

      if ((v20 & 2) != 0)
      {
        v22 = @"Remove";
      }

      v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@|%@]", v21, v22];
    }

    else
    {
      v23 = @"NO";
    }

    *buf = 136315906;
    v40 = "+[CESRSpeechProfileUpdater updateModeForSet:speechProfileInstance:isSetNew:]";
    v41 = 2112;
    v42 = v8;
    v43 = 2112;
    v44 = v7;
    v45 = 2112;
    v46 = v23;
    _os_log_impl(&dword_225EEB000, v19, OS_LOG_TYPE_INFO, "%s (%@) Set %@ has %@ updates since last enumeration", buf, 0x2Au);
    if (v20)
    {
    }
  }

LABEL_21:
  v24 = v30[3];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t __76__CESRSpeechProfileUpdater_updateModeForSet_speechProfileInstance_isSetNew___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 error];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

BOOL __76__CESRSpeechProfileUpdater_updateModeForSet_speechProfileInstance_isSetNew___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 sharedItemChangeType];
  if (!v3)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (v3 == 2)
  {
    v4 = 2;
LABEL_5:
    *(*(*(a1 + 32) + 8) + 24) |= v4;
  }

  return (~*(*(*(a1 + 32) + 8) + 24) & 3) != 0;
}

+ (unint64_t)updateModeForSets:(id)a3 speechProfileInstance:(id)a4 speechProfileSite:(id)a5 isAnySetNew:(BOOL *)a6
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v22 = 0;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v19;
LABEL_3:
    v15 = 0;
    while (1)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v13 |= [CESRSpeechProfileUpdater updateModeForSet:*(*(&v18 + 1) + 8 * v15) speechProfileInstance:v9 isSetNew:&v22, v18];
      if (v22)
      {
        break;
      }

      if (v12 == ++v15)
      {
        v12 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v13 = 0;
  }

  if (a6)
  {
    *a6 = v22;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v13;
}

+ (id)updaterForInstance:(id)a3 atSpeechProfileSite:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [CESRSpeechProfileBuilder alloc];
  v8 = [v5 speechProfileSiteURL];
  v9 = [v6 locale];
  v10 = [v5 userId];
  v11 = [v5 personaId];
  v12 = -[CESRSpeechProfileBuilder initWithDirectory:locale:userId:personaId:dataProtectionClass:isInUserVault:](v7, "initWithDirectory:locale:userId:personaId:dataProtectionClass:isInUserVault:", v8, v9, v10, v11, [v5 dataProtectionClass], objc_msgSend(v5, "isInUserVault"));

  v13 = [objc_alloc(objc_opt_class()) initWithInstance:v6 speechProfileSite:v5 builder:v12];

  return v13;
}

@end
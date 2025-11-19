@interface MOEventBundleLabelFormatter
- (MOEventBundleLabelFormatter)init;
- (MOEventBundleLabelFormatter)initWithTemplatePath:(id)a3;
- (NSDictionary)context;
- (NSDictionary)templates;
- (id)formattedStringsForMetaData:(id)a3 templateType:(id)a4 bundleType:(id)a5;
- (id)formattedStringsForMetaData:(id)a3 templates:(id)a4;
- (id)getContextForBundleType:(id)a3;
- (id)getTemplateDirectoryURL;
- (id)keywordForTemplateType:(id)a3 bundleType:(id)a4;
- (id)loadDictionaryFromPath:(id)a3;
- (id)shuffleStrings:(id)a3 shuffleMode:(unint64_t)a4;
- (void)getTemplateDirectoryURL;
- (void)loadLabelTemplates;
- (void)loadLabelTemplatesFromDirectory:(id)a3;
- (void)logDiagnoticsInformation;
@end

@implementation MOEventBundleLabelFormatter

- (MOEventBundleLabelFormatter)init
{
  v8.receiver = self;
  v8.super_class = MOEventBundleLabelFormatter;
  v2 = [(MOEventBundleLabelFormatter *)&v8 init];
  v3 = v2;
  if (v2)
  {
    templatePath = v2->_templatePath;
    v2->_templatePath = 0;

    templates = v3->_templates;
    v3->_templates = 0;

    context = v3->_context;
    v3->_context = 0;
  }

  return v3;
}

- (MOEventBundleLabelFormatter)initWithTemplatePath:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MOEventBundleLabelFormatter;
  v6 = [(MOEventBundleLabelFormatter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_templatePath, a3);
    templates = v7->_templates;
    v7->_templates = 0;

    context = v7->_context;
    v7->_context = 0;
  }

  return v7;
}

- (void)loadLabelTemplates
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)getTemplateDirectoryURL
{
  v2 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  v3 = [v2 bundlePath];
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3 isDirectory:1];
    v5 = [v4 URLByAppendingPathComponent:@"LabelTemplates"];
  }

  else
  {
    v6 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormatter getTemplateDirectoryURL];
    }

    v5 = 0;
  }

  return v5;
}

- (NSDictionary)templates
{
  templates = self->_templates;
  if (!templates)
  {
    templatePath = self->_templatePath;
    if (!templatePath)
    {
      v5 = [(MOEventBundleLabelFormatter *)self getTemplateDirectoryURL];
      v6 = [v5 path];
      v7 = self->_templatePath;
      self->_templatePath = v6;

      templatePath = self->_templatePath;
    }

    [(MOEventBundleLabelFormatter *)self loadLabelTemplatesFromDirectory:templatePath];
    templates = self->_templates;
  }

  return templates;
}

- (NSDictionary)context
{
  context = self->_context;
  if (!context)
  {
    templatePath = self->_templatePath;
    if (!templatePath)
    {
      v5 = [(MOEventBundleLabelFormatter *)self getTemplateDirectoryURL];
      v6 = [v5 path];
      v7 = self->_templatePath;
      self->_templatePath = v6;

      templatePath = self->_templatePath;
    }

    [(MOEventBundleLabelFormatter *)self loadLabelTemplatesFromDirectory:templatePath];
    context = self->_context;
  }

  return context;
}

- (void)loadLabelTemplatesFromDirectory:(id)a3
{
  v128 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleLabelFormatter loadLabelTemplatesFromDirectory:];
  }

  [MEMORY[0x277CCAA00] defaultManager];
  v67 = v117 = 0;
  v5 = [v67 contentsOfDirectoryAtPath:v3 error:&v117];
  v6 = v117;
  v7 = [MEMORY[0x277CCAC30] predicateWithFormat:@"self ENDSWITH '.json'"];
  v66 = v5;
  v8 = [v5 filteredArrayUsingPredicate:v7];

  v65 = v8;
  if (v8 && [v8 count])
  {
    v64 = v6;
    v76 = objc_opt_new();
    v80 = objc_opt_new();
    v113 = 0u;
    v114 = 0u;
    v115 = 0u;
    v116 = 0u;
    obj = v8;
    v68 = v3;
    v71 = [obj countByEnumeratingWithState:&v113 objects:v127 count:16];
    if (v71)
    {
      v70 = *v114;
      do
      {
        v9 = 0;
        do
        {
          if (*v114 != v70)
          {
            objc_enumerationMutation(obj);
          }

          v73 = v9;
          v10 = *(*(&v113 + 1) + 8 * v9);
          v72 = objc_autoreleasePoolPush();
          v11 = [v3 stringByAppendingPathComponent:v10];
          v12 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v120 = v11;
            _os_log_debug_impl(&dword_22D8C5000, v12, OS_LOG_TYPE_DEBUG, "Template file, %@", buf, 0xCu);
          }

          v13 = [(MOEventBundleLabelFormatter *)self loadDictionaryFromPath:v11];
          v85 = v11;
          v74 = v13;
          if (v13 && [v13 count])
          {
            v14 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v120 = v11;
              v121 = 2112;
              v122 = v74;
              _os_log_debug_impl(&dword_22D8C5000, v14, OS_LOG_TYPE_DEBUG, "Template file, %@, dict, %@", buf, 0x16u);
            }

            v15 = [v74 objectForKeyedSubscript:@"cases"];
            v109 = 0u;
            v110 = 0u;
            v111 = 0u;
            v112 = 0u;
            v75 = v15;
            v79 = [v75 countByEnumeratingWithState:&v109 objects:v126 count:16];
            if (v79)
            {
              v90 = 0;
              v91 = 0;
              v77 = *v110;
              do
              {
                v16 = 0;
                do
                {
                  if (*v110 != v77)
                  {
                    objc_enumerationMutation(v75);
                  }

                  v83 = v16;
                  v17 = *(*(&v109 + 1) + 8 * v16);
                  v82 = objc_autoreleasePoolPush();
                  v18 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v120 = v85;
                    v121 = 2112;
                    v122 = v17;
                    _os_log_debug_impl(&dword_22D8C5000, v18, OS_LOG_TYPE_DEBUG, "Template file, %@, subdict, %@", buf, 0x16u);
                  }

                  v19 = [v17 objectForKeyedSubscript:@"bundleType"];
                  v84 = [(MOEventBundleLabelFormatter *)self keywordForTemplateType:@"labels" bundleType:v19];
                  v86 = [(MOEventBundleLabelFormatter *)self keywordForTemplateType:@"prompts" bundleType:v19];
                  v88 = objc_opt_new();
                  v87 = objc_opt_new();
                  v20 = [v17 objectForKeyedSubscript:@"context"];
                  if (v20)
                  {
                    v21 = [(NSDictionary *)v80 objectForKey:v19];
                    if (v21)
                    {
                      v22 = [v20 mutableCopy];
                      [v22 addEntriesFromDictionary:v21];

                      v20 = v22;
                    }

                    [(NSDictionary *)v80 setObject:v20 forKey:v19, v64, v65];
                  }

                  v92 = v20;
                  v81 = v19;
                  v23 = [v17 objectForKeyedSubscript:{@"templates", v64}];
                  v105 = 0u;
                  v106 = 0u;
                  v107 = 0u;
                  v108 = 0u;
                  v89 = v23;
                  v94 = [v89 countByEnumeratingWithState:&v105 objects:v125 count:16];
                  if (v94)
                  {
                    v93 = *v106;
                    do
                    {
                      for (i = 0; i != v94; ++i)
                      {
                        if (*v106 != v93)
                        {
                          objc_enumerationMutation(v89);
                        }

                        v25 = *(*(&v105 + 1) + 8 * i);
                        context = objc_autoreleasePoolPush();
                        v26 = [v25 objectForKeyedSubscript:@"conditions"];
                        v27 = [v25 objectForKeyedSubscript:@"extends"];
                        v28 = [v25 objectForKeyedSubscript:@"capitalizations"];
                        v29 = [v25 objectForKeyedSubscript:@"labels"];
                        v30 = [v25 objectForKeyedSubscript:@"prompts"];
                        v31 = v30;
                        if (v29)
                        {
                          v32 = [v29 arrayByAddingObjectsFromArray:v30];
                        }

                        else
                        {
                          v32 = v30;
                        }

                        v96 = v32;
                        v33 = [MOEventBundleLabelTemplate conditionsFromLabels:v32];
                        v100 = v26;
                        v34 = [MOEventBundleLabelTemplate conditionsFromConditionStrings:v26];
                        v98 = v27;
                        v35 = [MOEventBundleLabelTemplate conditionsFromExtendStrings:v27];
                        v97 = v28;
                        v36 = [MOEventBundleLabelTemplate conditionsFromCapitalizations:v28];
                        v95 = v33;
                        v37 = [v34 setByAddingObjectsFromSet:v33];
                        if ([v35 count])
                        {
                          v38 = [v37 setByAddingObjectsFromSet:v35];

                          v37 = v38;
                        }

                        if ([v36 count])
                        {
                          v39 = [v37 setByAddingObjectsFromSet:v36];

                          v37 = v39;
                        }

                        v40 = [MOEventBundleLabelTemplate formatsFromLabels:v29];
                        v41 = [MOEventBundleLabelTemplate formatsFromLabels:v31];
                        if (v29 && [v29 count])
                        {
                          v42 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
                          if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 138412802;
                            v120 = v29;
                            v121 = 2112;
                            v122 = v100;
                            v123 = 2112;
                            v124 = v37;
                            _os_log_debug_impl(&dword_22D8C5000, v42, OS_LOG_TYPE_DEBUG, "template parsing, labels, %@, conditionStrings, %@, conditions, %@", buf, 0x20u);
                          }

                          v43 = [[MOEventBundleLabelTemplate alloc] initWithConditions:v37 formats:v40 context:v92];
                          [v88 addObject:v43];
                          ++v90;
                        }

                        if (v31 && [v31 count])
                        {
                          v44 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
                          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
                          {
                            *buf = 138412802;
                            v120 = v29;
                            v121 = 2112;
                            v122 = v100;
                            v123 = 2112;
                            v124 = v37;
                            _os_log_debug_impl(&dword_22D8C5000, v44, OS_LOG_TYPE_DEBUG, "template parsing, prompts, %@, conditionStrings, %@, conditions, %@", buf, 0x20u);
                          }

                          v45 = [[MOEventBundleLabelTemplate alloc] initWithConditions:v37 formats:v41 context:v92];
                          [v87 addObject:v45];
                          ++v91;
                        }

                        objc_autoreleasePoolPop(context);
                      }

                      v94 = [v89 countByEnumeratingWithState:&v105 objects:v125 count:16];
                    }

                    while (v94);
                  }

                  v46 = [(NSDictionary *)v76 objectForKey:v84];
                  [v88 addObjectsFromArray:v46];
                  [(NSDictionary *)v76 setObject:v88 forKey:v84];
                  v47 = [(NSDictionary *)v76 objectForKey:v86];
                  [v87 addObjectsFromArray:v47];
                  [(NSDictionary *)v76 setObject:v87 forKey:v86];
                  v48 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
                  {
                    v57 = [v88 count];
                    *buf = 138412802;
                    v120 = v85;
                    v121 = 2112;
                    v122 = v84;
                    v123 = 2048;
                    v124 = v57;
                    _os_log_debug_impl(&dword_22D8C5000, v48, OS_LOG_TYPE_DEBUG, "Template file, %@, key, %@, templates.count, %lu", buf, 0x20u);
                  }

                  v49 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
                  {
                    v58 = [v87 count];
                    *buf = 138412802;
                    v120 = v85;
                    v121 = 2112;
                    v122 = v86;
                    v123 = 2048;
                    v124 = v58;
                    _os_log_debug_impl(&dword_22D8C5000, v49, OS_LOG_TYPE_DEBUG, "Template file, %@, key, %@, templates.count, %lu", buf, 0x20u);
                  }

                  v103 = 0u;
                  v104 = 0u;
                  v101 = 0u;
                  v102 = 0u;
                  v50 = v87;
                  v51 = [v50 countByEnumeratingWithState:&v101 objects:v118 count:16];
                  if (v51)
                  {
                    v52 = v51;
                    v53 = *v102;
                    do
                    {
                      for (j = 0; j != v52; ++j)
                      {
                        if (*v102 != v53)
                        {
                          objc_enumerationMutation(v50);
                        }

                        v55 = *(*(&v101 + 1) + 8 * j);
                        v56 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
                        if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                        {
                          *buf = 138412802;
                          v120 = v85;
                          v121 = 2112;
                          v122 = v86;
                          v123 = 2112;
                          v124 = v55;
                          _os_log_debug_impl(&dword_22D8C5000, v56, OS_LOG_TYPE_DEBUG, "Template file, %@, key, %@, flattened template, %@", buf, 0x20u);
                        }
                      }

                      v52 = [v50 countByEnumeratingWithState:&v101 objects:v118 count:16];
                    }

                    while (v52);
                  }

                  objc_autoreleasePoolPop(v82);
                  v16 = v83 + 1;
                }

                while (v83 + 1 != v79);
                v79 = [v75 countByEnumeratingWithState:&v109 objects:v126 count:16];
              }

              while (v79);
            }

            else
            {
              v90 = 0;
              v91 = 0;
            }

            v3 = v68;
          }

          else
          {
            v90 = 0;
            v91 = 0;
          }

          v59 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412802;
            v120 = v85;
            v121 = 2048;
            v122 = v90;
            v123 = 2048;
            v124 = v91;
            _os_log_debug_impl(&dword_22D8C5000, v59, OS_LOG_TYPE_DEBUG, "Template file, %@, label.count, %lu, prompts.count, %lu", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v72);
          v9 = v73 + 1;
        }

        while (v73 + 1 != v71);
        v71 = [obj countByEnumeratingWithState:&v113 objects:v127 count:16];
      }

      while (v71);
    }

    templates = self->_templates;
    self->_templates = v76;
    v61 = v76;

    v3 = v68;
    v62 = self->_context;
    self->_context = v80;

    v6 = v64;
  }

  else
  {
    v61 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormatter loadLabelTemplatesFromDirectory:];
    }
  }

  v63 = *MEMORY[0x277D85DE8];
}

- (id)loadDictionaryFromPath:(id)a3
{
  v3 = a3;
  v14 = 0;
  v4 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v3 options:0 error:&v14];
  v5 = v14;
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 == 0;
  }

  if (v6)
  {
    v9 = v5;
    v7 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormatter loadDictionaryFromPath:];
    }

    goto LABEL_13;
  }

  v13 = 0;
  v8 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v4 options:0 error:&v13];
  v9 = v13;
  v10 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
  v7 = v10;
  if (!v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormatter loadDictionaryFromPath:];
    }

LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_22D8C5000, v7, OS_LOG_TYPE_INFO, "The json file was successfully read.", v12, 2u);
  }

LABEL_14:

  return v8;
}

- (id)getContextForBundleType:(id)a3
{
  v4 = a3;
  v5 = [(MOEventBundleLabelFormatter *)self context];

  v6 = 0;
  if (v4 && v5)
  {
    v7 = [(MOEventBundleLabelFormatter *)self context];
    v6 = [v7 objectForKey:v4];
  }

  return v6;
}

- (id)formattedStringsForMetaData:(id)a3 templates:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = a4;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v21 = self;
    v10 = *v23;
    v11 = MEMORY[0x277CBEBF8];
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        v15 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v27 = v13;
          _os_log_debug_impl(&dword_22D8C5000, v15, OS_LOG_TYPE_DEBUG, "template, %@", buf, 0xCu);
        }

        if ([v13 checkConditionForMetaData:v6])
        {
          v16 = [v13 formattedStringsForMetaData:v6];
          if ([v16 count])
          {
            v17 = [v6 objectForKey:@"shuffle_mode"];
            v18 = [v17 intValue];

            v11 = [(MOEventBundleLabelFormatter *)v21 shuffleStrings:v16 shuffleMode:v18];

            objc_autoreleasePoolPop(v14);
            goto LABEL_16;
          }
        }

        objc_autoreleasePoolPop(v14);
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v28 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

LABEL_16:

  v19 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)shuffleStrings:(id)a3 shuffleMode:(unint64_t)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (v5 && [v5 count])
  {
    if (a4 == 1)
    {
      v7 = [MEMORY[0x277CBEAA8] now];
      [v7 timeIntervalSinceReferenceDate];
      v9 = (v8 / 86400.0);
      v10 = v9 % [v6 count];
      v11 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v17 = 134218754;
        v18 = [v6 count];
        v19 = 2048;
        v20 = v9;
        v21 = 2048;
        v22 = v10;
        v23 = 2112;
        v24 = v7;
        _os_log_debug_impl(&dword_22D8C5000, v11, OS_LOG_TYPE_DEBUG, "Shuffle Labels: count, %lu, seed, %lu, start_index, %lu, nowDate, %@", &v17, 0x2Au);
      }

      if (v10)
      {
        v12 = objc_opt_new();
        v13 = [v6 subarrayWithRange:{v10, objc_msgSend(v6, "count") - v10}];
        [v12 addObjectsFromArray:v13];

        v14 = [v6 subarrayWithRange:{0, v10}];
        [v12 addObjectsFromArray:v14];
      }

      else
      {
        v12 = v6;
      }
    }

    else
    {
      v12 = v6;
    }
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)formattedStringsForMetaData:(id)a3 templateType:(id)a4 bundleType:(id)a5
{
  v30[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [(MOEventBundleLabelFormatter *)self keywordForTemplateType:v9 bundleType:a5];
  v11 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleLabelFormatter formattedStringsForMetaData:templateType:bundleType:];
  }

  v12 = [(MOEventBundleLabelFormatter *)self templates];
  v13 = [v12 objectForKey:v10];

  if (v13 && [v13 count])
  {
    v14 = [(MOEventBundleLabelFormatter *)self formattedStringsForMetaData:v8 templates:v13];
  }

  else
  {
    if ([v9 isEqualToString:@"prompts"])
    {
      v15 = @"default_prompt";
    }

    else
    {
      v15 = @"default_label";
    }

    v16 = [v8 objectForKey:v15];
    v17 = v16;
    if (v16)
    {
      v30[0] = v16;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
    }

    else
    {
      v18 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v21 = [v8 allKeys];
        v22 = [(MOEventBundleLabelFormatter *)self templates];
        v23 = [v22 allKeys];
        v24 = 138412802;
        v25 = v10;
        v26 = 2112;
        v27 = v21;
        v28 = 2112;
        v29 = v23;
        _os_log_error_impl(&dword_22D8C5000, v18, OS_LOG_TYPE_ERROR, "The label template is not found for the keyword, %@, meta, %@, all keywords, %@", &v24, 0x20u);
      }

      v14 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)keywordForTemplateType:(id)a3 bundleType:(id)a4
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", a3, a4];
  v5 = [v4 lowercaseString];

  return v5;
}

- (void)logDiagnoticsInformation
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getTemplateDirectoryURL
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadLabelTemplatesFromDirectory:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(&dword_22D8C5000, v0, OS_LOG_TYPE_DEBUG, "load templates from %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)loadLabelTemplatesFromDirectory:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)loadDictionaryFromPath:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_2_4();
  v4 = v0;
  _os_log_error_impl(&dword_22D8C5000, v1, OS_LOG_TYPE_ERROR, "Couldn't parse JSON to dictionary. %@, error, %@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)loadDictionaryFromPath:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)formattedStringsForMetaData:templateType:bundleType:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(&dword_22D8C5000, v0, OS_LOG_TYPE_DEBUG, "keyword, %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

@end
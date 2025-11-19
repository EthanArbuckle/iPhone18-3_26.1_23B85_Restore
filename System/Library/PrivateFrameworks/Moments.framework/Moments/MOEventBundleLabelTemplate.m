@interface MOEventBundleLabelTemplate
+ (id)conditionsFromCapitalizations:(id)a3;
+ (id)conditionsFromConditionStrings:(id)a3;
+ (id)conditionsFromExtendStrings:(id)a3;
+ (id)conditionsFromLabels:(id)a3;
+ (id)formatsFromLabels:(id)a3;
+ (unint64_t)capitalizationTypeFromString:(id)a3;
- (BOOL)checkConditionForMetaData:(id)a3;
- (BOOL)needCapitalizationForKeyword:(id)a3;
- (BOOL)needExtensionForKeyword:(id)a3;
- (MOEventBundleLabelTemplate)initWithConditionStrings:(id)a3 labels:(id)a4 context:(id)a5;
- (MOEventBundleLabelTemplate)initWithConditions:(id)a3 formats:(id)a4 context:(id)a5;
- (MOEventBundleLabelTemplate)initWithConditions:(id)a3 labels:(id)a4 context:(id)a5;
- (id)description;
- (id)formattedStringsForMetaData:(id)a3;
@end

@implementation MOEventBundleLabelTemplate

- (MOEventBundleLabelTemplate)initWithConditionStrings:(id)a3 labels:(id)a4 context:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v12 = [MOEventBundleLabelTemplate conditionsFromLabels:v10];
    v13 = [MOEventBundleLabelTemplate conditionsFromConditionStrings:v9];
    v14 = [v13 setByAddingObjectsFromSet:v12];
    self = [(MOEventBundleLabelTemplate *)self initWithConditions:v14 labels:v10 context:v11];

    v15 = self;
  }

  else
  {
    v16 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(MOEventBundleLabelTemplate *)v16 initWithConditionStrings:v17 labels:v18 context:v19, v20, v21, v22, v23];
    }

    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MOEventBundleLabelTemplate.m" lineNumber:46 description:@"Invalid parameter not satisfying: labels"];

    v15 = 0;
  }

  return v15;
}

- (MOEventBundleLabelTemplate)initWithConditions:(id)a3 labels:(id)a4 context:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    v30 = v9;
    v12 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v10;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        v17 = 0;
        do
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [[MOEventBundleLabelFormat alloc] initWithFormat:*(*(&v31 + 1) + 8 * v17)];
          [v12 addObject:v18];

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v15);
    }

    v9 = v30;
    self = [(MOEventBundleLabelTemplate *)self initWithConditions:v30 formats:v12 context:v11];
    v19 = self;
  }

  else
  {
    v20 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [(MOEventBundleLabelTemplate *)v20 initWithConditionStrings:v21 labels:v22 context:v23, v24, v25, v26, v27];
    }

    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"MOEventBundleLabelTemplate.m" lineNumber:57 description:@"Invalid parameter not satisfying: labels"];
    v19 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v19;
}

- (MOEventBundleLabelTemplate)initWithConditions:(id)a3 formats:(id)a4 context:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v26.receiver = self;
    v26.super_class = MOEventBundleLabelTemplate;
    v13 = [(MOEventBundleLabelTemplate *)&v26 init];
    p_isa = &v13->super.isa;
    if (v13)
    {
      objc_storeStrong(&v13->_conditions, a3);
      objc_storeStrong(p_isa + 2, a4);
      objc_storeStrong(p_isa + 3, a5);
    }

    self = p_isa;
    v15 = self;
  }

  else
  {
    v16 = _mo_log_facility_get_os_log(MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [(MOEventBundleLabelTemplate *)v16 initWithConditions:v17 formats:v18 context:v19, v20, v21, v22, v23];
    }

    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"MOEventBundleLabelTemplate.m" lineNumber:68 description:@"Invalid parameter not satisfying: formats"];

    v15 = 0;
  }

  return v15;
}

+ (id)conditionsFromLabels:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v32 = 0;
  v22 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\{([0-9a-zA-Z\\-\\_]+)\\}" options:1 error:&v32];
  v19 = v32;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v3;
  v23 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v23)
  {
    v21 = *v29;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v29 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = [v22 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}];
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v25;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v25 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v24 + 1) + 8 * j);
              if ([v12 numberOfRanges])
              {
                v13 = objc_opt_new();
                v14 = [v12 rangeAtIndex:1];
                v16 = [v6 substringWithRange:{v14, v15}];
                [v13 setKeyword:v16];

                [v4 addObject:v13];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v24 objects:v33 count:16];
          }

          while (v9);
        }
      }

      v23 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v23);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)formatsFromLabels:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = [*(*(&v16 + 1) + 8 * i) componentsSeparatedByString:@"|"];
        v10 = [v9 objectAtIndex:0];
        v11 = 0;
        if ([v9 count] >= 2)
        {
          v11 = [v9 objectAtIndex:1];
        }

        v12 = [[MOEventBundleLabelFormat alloc] initWithFormat:v10 capitalizationType:[MOEventBundleLabelTemplate capitalizationTypeFromString:v11]];
        [v4 addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)conditionsFromConditionStrings:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v55 = 0;
  v41 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"(!)?([0-9a-zA-Z\\-\\_]+)(\\s?(=|==|>|<|>=|<=|!=)\\s?([-+]?[0-9]*\\.?[0-9]+|[0-9a-zA-Z\\-\\_]+)(:(f|d|s))?)?" options:1 error:&v55];
  v38 = v55;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = v3;
  v42 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
  if (v42)
  {
    v40 = *v52;
    v5 = 0x278772000uLL;
    do
    {
      v6 = 0;
      do
      {
        if (*v52 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v43 = v6;
        v7 = *(*(&v51 + 1) + 8 * v6);
        v8 = [v41 matchesInString:v7 options:0 range:{0, objc_msgSend(v7, "length")}];
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v45 = [v8 countByEnumeratingWithState:&v47 objects:v56 count:16];
        if (v45)
        {
          v9 = *v48;
          v44 = *v48;
          do
          {
            for (i = 0; i != v45; ++i)
            {
              if (*v48 != v9)
              {
                objc_enumerationMutation(v8);
              }

              v11 = *(*(&v47 + 1) + 8 * i);
              if ([v11 numberOfRanges])
              {
                v12 = [v11 rangeAtIndex:2];
                v46 = [v7 substringWithRange:{v12, v13}];
                v14 = [objc_alloc(*(v5 + 2728)) initWithKeyword:v46];
                v15 = [v11 rangeAtIndex:1];
                if (v16)
                {
                  v17 = *(v5 + 2728);
                  v18 = [v7 substringWithRange:{v15, v16}];
                  v19 = [v17 templateOperatorFromString:v18];

                  if (v19)
                  {
                    [v14 setTemplateOperator:v19];
                  }
                }

                if ([v14 templateOperator] != 8)
                {
                  v20 = [v11 rangeAtIndex:4];
                  if (v21)
                  {
                    v22 = *(v5 + 2728);
                    [v7 substringWithRange:{v20, v21}];
                    v23 = v7;
                    v24 = v8;
                    v25 = v5;
                    v27 = v26 = v4;
                    v28 = [v22 templateOperatorFromString:v27];

                    v4 = v26;
                    v5 = v25;
                    v8 = v24;
                    v7 = v23;
                    v9 = v44;
                    if (v28)
                    {
                      [v14 setTemplateOperator:v28];
                      v29 = [v11 rangeAtIndex:5];
                      if (v30)
                      {
                        v31 = [v7 substringWithRange:{v29, v30}];
                        [v14 setValue:v31];
                      }

                      else
                      {
                        [v14 setTemplateOperator:0];
                      }

                      v32 = [v11 rangeAtIndex:7];
                      if (v33)
                      {
                        v34 = *(v5 + 2728);
                        v35 = [v7 substringWithRange:{v32, v33}];
                        [v14 setValueType:{objc_msgSend(v34, "valueTypeFromString:", v35)}];
                      }
                    }
                  }

                  else
                  {
                    [v14 setTemplateOperator:7];
                  }
                }

                [v4 addObject:v14];
              }
            }

            v45 = [v8 countByEnumeratingWithState:&v47 objects:v56 count:16];
          }

          while (v45);
        }

        v6 = v43 + 1;
      }

      while (v43 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v51 objects:v57 count:16];
    }

    while (v42);
  }

  v36 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (id)conditionsFromExtendStrings:(id)a3
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v49 = objc_opt_new();
  v65 = 0;
  v42 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"([0-9a-zA-Z\\-\\_]+)\\s?(:)\\s?([0-9a-zA-Z\\-\\_\\ options:\\s]+)" error:{1, &v65}];
  v39 = v65;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v3;
  v43 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v43)
  {
    v41 = *v62;
    v4 = 0x278772000uLL;
    do
    {
      v5 = 0;
      do
      {
        if (*v62 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v44 = v5;
        v6 = *(*(&v61 + 1) + 8 * v5);
        v7 = [v42 matchesInString:v6 options:0 range:{0, objc_msgSend(v6, "length", v39)}];
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v50 = v7;
        v52 = [v7 countByEnumeratingWithState:&v57 objects:v67 count:16];
        if (v52)
        {
          v51 = *v58;
          v45 = v6;
          do
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v58 != v51)
              {
                objc_enumerationMutation(v50);
              }

              v9 = *(*(&v57 + 1) + 8 * i);
              if ([v9 numberOfRanges])
              {
                v10 = [v9 rangeAtIndex:1];
                v12 = [v6 substringWithRange:{v10, v11}];
                v13 = [objc_alloc(*(v4 + 2728)) initWithKeyword:v12];
                v14 = [v9 rangeAtIndex:2];
                if (v15)
                {
                  v16 = *(v4 + 2728);
                  [v6 substringWithRange:{v14, v15}];
                  v18 = v17 = v12;
                  v19 = [v16 templateOperatorFromString:v18];

                  v12 = v17;
                  if (v19)
                  {
                    [v13 setTemplateOperator:v19];
                  }
                }

                v20 = [v9 rangeAtIndex:3];
                if (v21)
                {
                  v22 = [v6 substringWithRange:{v20, v21}];
                  if ([v22 length])
                  {
                    v23 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
                    v24 = [v22 stringByTrimmingCharactersInSet:v23];

                    if ([v24 isEqualToString:@"_ANY_"])
                    {
                      [v13 setValue:@"_ANY_"];
                    }

                    else
                    {
                      v46 = v24;
                      v48 = v12;
                      v25 = objc_opt_new();
                      v53 = 0u;
                      v54 = 0u;
                      v55 = 0u;
                      v56 = 0u;
                      v47 = v22;
                      v26 = [v22 componentsSeparatedByString:{@", "}];
                      v27 = [v26 countByEnumeratingWithState:&v53 objects:v66 count:16];
                      if (v27)
                      {
                        v28 = v27;
                        v29 = *v54;
                        do
                        {
                          for (j = 0; j != v28; ++j)
                          {
                            if (*v54 != v29)
                            {
                              objc_enumerationMutation(v26);
                            }

                            v31 = *(*(&v53 + 1) + 8 * j);
                            v32 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
                            v33 = [v31 stringByTrimmingCharactersInSet:v32];

                            [v25 addObject:v33];
                          }

                          v28 = [v26 countByEnumeratingWithState:&v53 objects:v66 count:16];
                        }

                        while (v28);
                      }

                      if ([v25 count])
                      {
                        v34 = [v25 copy];
                        [v13 setValues:v34];
                      }

                      v4 = 0x278772000;
                      v6 = v45;
                      v24 = v46;
                      v22 = v47;
                      v12 = v48;
                    }
                  }
                }

                if ([v13 templateOperator])
                {
                  v35 = [v13 values];
                  if ([v35 count])
                  {

                    goto LABEL_35;
                  }

                  v36 = [v13 value];

                  if (v36)
                  {
LABEL_35:
                    [v49 addObject:v13];
                  }
                }

                continue;
              }
            }

            v52 = [v50 countByEnumeratingWithState:&v57 objects:v67 count:16];
          }

          while (v52);
        }

        v5 = v44 + 1;
      }

      while (v44 + 1 != v43);
      v43 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
    }

    while (v43);
  }

  v37 = *MEMORY[0x277D85DE8];

  return v49;
}

+ (id)conditionsFromCapitalizations:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [MOEventBundleLabelCondition alloc];
        v12 = [(MOEventBundleLabelCondition *)v11 initWithKeyword:v10, v15];
        [(MOEventBundleLabelCondition *)v12 setTemplateOperator:7];
        [(MOEventBundleLabelCondition *)v12 setCapitalized:1];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v4;
}

+ (unint64_t)capitalizationTypeFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 lowercaseString];
    v6 = [@"nop" isEqualToString:v5];

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v8 = [v4 lowercaseString];
      v9 = [@"titlecap" isEqualToString:v8];

      if (v9)
      {
        v7 = 2;
      }

      else
      {
        v10 = [v4 lowercaseString];
        v11 = [@"cap" isEqualToString:v10];

        if (v11)
        {
          v7 = 3;
        }

        else
        {
          v12 = [v4 lowercaseString];
          v13 = [@"fpo" isEqualToString:v12];

          if (v13)
          {
            v7 = 3;
          }

          else
          {
            v7 = 1;
          }
        }
      }
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (BOOL)checkConditionForMetaData:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(MOEventBundleLabelTemplate *)self conditions];
  v6 = [v5 count];

  if (v6)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = [(MOEventBundleLabelTemplate *)self conditions];
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v8)
    {
      v9 = v8;
      v20 = self;
      v10 = *v22;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v21 + 1) + 8 * i);
          v13 = [v12 yieldConditionForMetaData:v4];
          v14 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = [v12 keyword];
            *buf = 138412802;
            v26 = v15;
            v27 = 2112;
            v28 = v12;
            v29 = 1024;
            v30 = v13;
            _os_log_debug_impl(&dword_22D8C5000, v14, OS_LOG_TYPE_DEBUG, "template yieldConditionForMetaData, keyword, %@, condition, %@, output, %d", buf, 0x1Cu);
          }

          if (!v13)
          {
            v16 = 0;
            goto LABEL_14;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v31 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v16 = 1;
LABEL_14:
      self = v20;
    }

    else
    {
      v16 = 1;
    }

    v17 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [(MOEventBundleLabelTemplate *)v16 checkConditionForMetaData:v17];
    }
  }

  else
  {
    v16 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)needExtensionForKeyword:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(MOEventBundleLabelTemplate *)self conditions];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 templateOperator] == 9)
        {
          v10 = [v9 keyword];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)needCapitalizationForKeyword:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(MOEventBundleLabelTemplate *)self conditions];
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          v11 = [v10 keyword];
          if ([v11 isEqualToString:v5])
          {
            v12 = [v10 capitalized];

            if (v12)
            {
              LOBYTE(v7) = 1;
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

LABEL_16:
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)formattedStringsForMetaData:(id)a3
{
  v112 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v97 = 0;
  v75 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"\\{([0-9a-zA-Z\\-\\_]+)\\}" options:1 error:&v97];
  v71 = v97;
  v72 = objc_opt_new();
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = [(MOEventBundleLabelTemplate *)self formats];
  v76 = [obj countByEnumeratingWithState:&v93 objects:v111 count:16];
  if (v76)
  {
    v74 = *v94;
    v5 = 0x278772000uLL;
    v78 = v4;
    v82 = self;
    do
    {
      v6 = 0;
      do
      {
        if (*v94 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v93 + 1) + 8 * v6);
        v8 = [v7 format];
        v85 = [v8 copy];
        v9 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v99 = v8;
          _os_log_debug_impl(&dword_22D8C5000, v9, OS_LOG_TYPE_DEBUG, "template, %@", buf, 0xCu);
        }

        v81 = objc_opt_new();
        v87 = v7;
        v10 = [v7 format];
        v11 = [v75 matchesInString:v10 options:0 range:{0, objc_msgSend(v8, "length")}];

        v91 = 0u;
        v92 = 0u;
        v89 = 0u;
        v90 = 0u;
        v12 = v11;
        v84 = [v12 countByEnumeratingWithState:&v89 objects:v110 count:16];
        if (!v84)
        {

LABEL_73:
          v50 = [*(v5 + 2752) _Moments_LocalizedStringWithFormat:v8 arguments:v81];
          v51 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
          if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
          {
            v57 = [v81 count];
            v58 = [v85 mask];
            v59 = [v50 mask];
            *buf = 138413058;
            v99 = v8;
            v100 = 2048;
            v101 = v57;
            v102 = 2112;
            v103 = v58;
            v104 = 2112;
            v105 = v59;
            _os_log_debug_impl(&dword_22D8C5000, v51, OS_LOG_TYPE_DEBUG, "template, %@, args, %lu, outputString, %@, localizedString, %@, formatting completed", buf, 0x2Au);

            v4 = v78;
          }

          if (v50)
          {
            if ([v87 capitalizationType] == 1 || objc_msgSend(v87, "capitalizationType") == 2)
            {
              v52 = [*(v5 + 2752) _Moments_CapitalizedStringForKey:v50];
              goto LABEL_79;
            }

            if ([v87 capitalizationType] != 3)
            {
              goto LABEL_80;
            }

            v52 = [*(v5 + 2752) _Moments_AllCapitalizedStringForKey:v50];
LABEL_79:
            v53 = v52;

            v50 = v53;
            if (!v53)
            {
              v55 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
              {
                v63 = [v81 count];
                v64 = [v85 mask];
                v65 = [0 mask];
                v66 = [v87 capitalizationType];
                *buf = 138413314;
                v99 = v8;
                v100 = 2048;
                v101 = v63;
                v102 = 2112;
                v103 = v64;
                v104 = 2112;
                v105 = v65;
                v106 = 2048;
                v107 = v66;
                _os_log_error_impl(&dword_22D8C5000, v55, OS_LOG_TYPE_ERROR, "template, %@, args, %lu, outputString, %@, localizedString, %@, capitalization failure, %lu", buf, 0x34u);
              }

              v50 = 0;
              v4 = v78;
LABEL_92:
            }

            else
            {
LABEL_80:
              v54 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                v60 = [v81 count];
                v61 = [v85 mask];
                v62 = [v50 mask];
                *buf = 138413058;
                v99 = v8;
                v100 = 2048;
                v101 = v60;
                v102 = 2112;
                v103 = v61;
                v104 = 2112;
                v105 = v62;
                _os_log_debug_impl(&dword_22D8C5000, v54, OS_LOG_TYPE_DEBUG, "template, %@, args, %lu, outputString, %@, localizedString, %@, localization completed", buf, 0x2Au);
              }

              [v72 addObject:v50];
              if ([v50 containsString:@"{"])
              {
                v55 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
                v4 = v78;
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v99 = v50;
                  _os_log_error_impl(&dword_22D8C5000, v55, OS_LOG_TYPE_ERROR, "The string contains a symbol. %@", buf, 0xCu);
                }

                goto LABEL_92;
              }

              v4 = v78;
            }
          }

          goto LABEL_94;
        }

        v80 = v12;
        v77 = v6;
        v83 = *v90;
        v79 = 1;
        while (2)
        {
          v13 = 0;
          do
          {
            v5 = 0x278772000uLL;
            if (*v90 != v83)
            {
              objc_enumerationMutation(v80);
            }

            v14 = [*(*(&v89 + 1) + 8 * v13) rangeAtIndex:1];
            v16 = v15;
            v17 = [v87 format];
            v18 = [v17 substringWithRange:{v14, v16}];

            v86 = [(MOEventBundleLabelTemplate *)self needCapitalizationForKeyword:v18];
            v19 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412546;
              v99 = v8;
              v100 = 2112;
              v101 = v18;
              _os_log_debug_impl(&dword_22D8C5000, v19, OS_LOG_TYPE_DEBUG, "template, %@, keyword, %@", buf, 0x16u);
            }

            v20 = [v4 objectForKey:v18];
            v21 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:v18];
            v22 = [v4 objectForKey:v21];

            if (!v20)
            {
              v56 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
              v55 = v18;
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v99 = v18;
                _os_log_error_impl(&dword_22D8C5000, v56, OS_LOG_TYPE_ERROR, "keyword is not found, %@", buf, 0xCu);
              }

              v12 = v80;
              v50 = v80;
              v6 = v77;
              goto LABEL_92;
            }

            v88 = v18;
            if (![(MOEventBundleLabelTemplate *)self needExtensionForKeyword:v18])
            {
              v29 = v22;
              v27 = v20;
              v25 = v8;
LABEL_24:
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v31 = v27;
                if (v29 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v32 = v29;
                }

                else
                {
                  v32 = 0;
                }

                v36 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
                {
                  v47 = [v31 mask];
                  v48 = [v32 mask];
                  *buf = 138412802;
                  v99 = v88;
                  v100 = 2112;
                  v101 = v47;
                  v102 = 2112;
                  v103 = v48;
                  _os_log_debug_impl(&dword_22D8C5000, v36, OS_LOG_TYPE_DEBUG, "keyword, %@, value type, NSString, value, %@, value.cap, %@", buf, 0x20u);
                }

LABEL_41:
                v37 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@}", v88];
                v38 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@}", v31];
                v39 = [v25 stringByReplacingOccurrencesOfString:v37 withString:v38];

                if ([v87 capitalizationType] == 2 && +[MOEventBundleLabelLocalizer isPreferredLanguageTitlecaseCapable](MOEventBundleLabelLocalizer, "isPreferredLanguageTitlecaseCapable"))
                {
                  if (v32)
                  {
                    v40 = v32;
                  }

                  else
                  {
                    v40 = [MOEventBundleLabelLocalizer _Moments_TitleCapitalizedStringForKey:v31];
                  }

                  v41 = v40;
                  v4 = v78;
LABEL_58:

                  v31 = v41;
                }

                else
                {
                  v4 = v78;
                  if (v86 && +[MOEventBundleLabelLocalizer isPreferredLanguageMidSentenceCaseCapable])
                  {
                    v41 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:v31];
                    goto LABEL_58;
                  }
                }

                [v81 addObject:v31];

                v85 = v39;
LABEL_60:
                v42 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
                {
                  v44 = [v85 mask];
                  v45 = v44;
                  *buf = 138412546;
                  v46 = @"NO";
                  if (v79)
                  {
                    v46 = @"YES";
                  }

                  v99 = v44;
                  v100 = 2112;
                  v101 = v46;
                  _os_log_debug_impl(&dword_22D8C5000, v42, OS_LOG_TYPE_DEBUG, "outputString, %@, formattingCompleted, %@", buf, 0x16u);
                }

                v43 = 1;
              }

              else
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v33 = v27;
                  v31 = [v33 stringValue];
                  if (!v31)
                  {
                    v34 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
                    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                    {
                      [(MOEventBundleLabelTemplate *)v108 formattedStringsForMetaData:v34];
                    }

                    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", objc_msgSend(v33, "intValue")];
                  }

                  v35 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
                  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412546;
                    v99 = v18;
                    v100 = 2112;
                    v101 = v31;
                    _os_log_debug_impl(&dword_22D8C5000, v35, OS_LOG_TYPE_DEBUG, "keyword, %@, value type, NSNumber, value, %@", buf, 0x16u);
                  }

                  if (v31)
                  {
                    v32 = 0;
                    goto LABEL_41;
                  }

                  v79 = 0;
                  goto LABEL_60;
                }

                v42 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
                if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412546;
                  v99 = v88;
                  v100 = 2112;
                  v101 = v27;
                  _os_log_error_impl(&dword_22D8C5000, v42, OS_LOG_TYPE_ERROR, "keyword, %@, value type is not supported, %@", buf, 0x16u);
                }

                v43 = 0;
                v79 = 0;
              }

              v20 = v27;
              goto LABEL_63;
            }

            v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@}", v18, v71];
            v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"{%@}", v20];
            v25 = [v8 stringByReplacingOccurrencesOfString:v23 withString:v24];

            v26 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138412802;
              v99 = v25;
              v100 = 2112;
              v101 = v18;
              v102 = 2112;
              v103 = v20;
              _os_log_debug_impl(&dword_22D8C5000, v26, OS_LOG_TYPE_DEBUG, "extended template, %@, keyword, %@, extended keyword, %@", buf, 0x20u);
            }

            v27 = [v4 objectForKey:v20];
            v28 = [MOEventBundleLabelLocalizer _Moments_CapitalizedStringForKey:v20];
            v29 = [v4 objectForKey:v28];

            v30 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138413058;
              v99 = v25;
              v100 = 2112;
              v101 = v20;
              v102 = 2112;
              v103 = v27;
              v104 = 2112;
              v105 = v29;
              _os_log_debug_impl(&dword_22D8C5000, v30, OS_LOG_TYPE_DEBUG, "extended template, %@, extended keyword, %@, value, %@, value.cap, %@", buf, 0x2Au);
            }

            if (v27)
            {

              goto LABEL_24;
            }

            v42 = _mo_log_facility_get_os_log(MOLogFacilityEventBundleManager);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v99 = v88;
              _os_log_error_impl(&dword_22D8C5000, v42, OS_LOG_TYPE_ERROR, "extended keyword is not found, %@", buf, 0xCu);
            }

            v43 = 0;
            v79 = 0;
LABEL_63:
            v8 = v25;
            self = v82;

            if (!v43)
            {
              goto LABEL_70;
            }

            ++v13;
          }

          while (v84 != v13);
          v49 = [v80 countByEnumeratingWithState:&v89 objects:v110 count:16];
          v84 = v49;
          if (v49)
          {
            continue;
          }

          break;
        }

LABEL_70:
        v12 = v80;

        v5 = 0x278772000;
        v6 = v77;
        if (v79)
        {
          goto LABEL_73;
        }

LABEL_94:

        ++v6;
      }

      while (v6 != v76);
      v67 = [obj countByEnumeratingWithState:&v93 objects:v111 count:16];
      v76 = v67;
    }

    while (v67);
  }

  v68 = [v72 copy];
  v69 = *MEMORY[0x277D85DE8];

  return v68;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(MOEventBundleLabelTemplate *)self conditions];
  v5 = [(MOEventBundleLabelTemplate *)self formats];
  v6 = [v3 stringWithFormat:@"condidionts, %@, labels, %@", v4, v5];

  return v6;
}

- (void)checkConditionForMetaData:(os_log_t)log .cold.1(char a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a1 & 1;
  v5 = 2112;
  v6 = a2;
  _os_log_debug_impl(&dword_22D8C5000, log, OS_LOG_TYPE_DEBUG, "template checkConditionForMetaData, output, %d, template, %@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)formattedStringsForMetaData:(os_log_t)log .cold.1(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 138412290;
  *a2 = 0;
  _os_log_error_impl(&dword_22D8C5000, log, OS_LOG_TYPE_ERROR, "stringValue %@", buf, 0xCu);
}

@end
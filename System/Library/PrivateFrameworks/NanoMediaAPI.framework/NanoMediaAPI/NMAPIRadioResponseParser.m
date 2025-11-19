@interface NMAPIRadioResponseParser
- (id)resultsWithDictionary:(id)a3 error:(id *)a4;
@end

@implementation NMAPIRadioResponseParser

- (id)resultsWithDictionary:(id)a3 error:(id *)a4
{
  v64 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = [v6 objectForKey:@"data"];
  v9 = NMAPIArrayWithObject(v8, @"data", a4);

  if (v9)
  {
    v10 = NMAPIDictionaryInSingleObjectArray(v9, @"radioGrouping", a4);
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKey:@"type"];
      v13 = NMAPIStringWithObject(v12, @"type", a4);

      if ([v13 isEqualToString:@"groupings"])
      {
        v14 = [v11 valueForKeyPath:@"relationships.tabs.data"];
        v15 = NMAPIArrayWithObject(v14, @"tabs", a4);

        if (v15 && [v15 count])
        {
          v16 = [v15 firstObject];
          v17 = NMAPIDictionaryWithObject(v16, @"tabsDictionary", a4);

          v18 = v17;
          if (v17)
          {
            v49 = v17;
            v19 = [v17 valueForKeyPath:@"relationships.children.data"];
            v17 = NMAPIArrayWithObject(v19, @"sectionsArray", a4);

            v20 = v17;
            if (v17)
            {
              v57 = 0u;
              v58 = 0u;
              v55 = 0u;
              v56 = 0u;
              v48 = v17;
              obj = v17;
              v53 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
              if (v53)
              {
                v51 = v13;
                v52 = *v56;
                v46 = v11;
                v47 = v6;
                v54 = v7;
                v45 = v15;
                while (2)
                {
                  for (i = 0; i != v53; ++i)
                  {
                    if (*v56 != v52)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v22 = NMAPIDictionaryWithObject(*(*(&v55 + 1) + 8 * i), @"section", a4);
                    if (!v22)
                    {
                      goto LABEL_36;
                    }

                    v23 = v22;
                    v24 = [v22 objectForKey:@"id"];
                    v25 = NMAPIStringWithObject(v24, @"sectionIdentifier", a4);

                    if (!v25)
                    {

LABEL_36:
                      v17 = 0;
                      v11 = v46;
                      v6 = v47;
                      v7 = v54;
                      v15 = v45;
                      goto LABEL_37;
                    }

                    v26 = [v23 valueForKeyPath:@"relationships.children.data"];
                    v27 = NMAPIOptionalArrayWithObject(v26, @"AppleRadio", a4);

                    if (v27)
                    {
                      v28 = [v23 mutableCopy];
                      [v28 removeObjectForKey:@"relationships"];
                      v29 = [NMAPISectionResult alloc];
                      v30 = [v28 copy];
                      v31 = [(NMAPISectionResult *)v29 initWithSectionIdentifier:v25 sectionDictionary:v30 itemsArray:v27];
                      [v54 addObject:v31];
                    }

                    v32 = [v23 valueForKeyPath:{@"relationships.contents.data", v45, v46, v47}];
                    v33 = NMAPIOptionalArrayWithObject(v32, @"FeaturedStations", a4);

                    if (v33)
                    {
                      v34 = [v23 mutableCopy];
                      [v34 removeObjectForKey:@"relationships"];
                      v35 = [NMAPISectionResult alloc];
                      v36 = [v34 copy];
                      v37 = [(NMAPISectionResult *)v35 initWithSectionIdentifier:v25 sectionDictionary:v36 itemsArray:v33];
                      [v54 addObject:v37];
                    }

                    v38 = [v23 valueForKeyPath:@"attributes.links"];
                    v39 = NMAPIOptionalArrayWithObject(v38, @"GenreLinks", a4);

                    if (v39)
                    {
                      v40 = [[NMAPISectionResult alloc] initWithSectionIdentifier:v25 sectionDictionary:v23 itemsArray:v39];
                      [v54 addObject:v40];
                    }

                    v13 = v51;
                  }

                  v11 = v46;
                  v6 = v47;
                  v7 = v54;
                  v15 = v45;
                  v53 = [obj countByEnumeratingWithState:&v55 objects:v59 count:16];
                  if (v53)
                  {
                    continue;
                  }

                  break;
                }
              }

              v41 = [v7 count];
              if (a4 && !v41)
              {
                *a4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7102 userInfo:0];
              }

              v17 = [v7 copy];
LABEL_37:
              v20 = v48;
            }

            v18 = v49;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v42 = NMLogForCategory(9);
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v61 = self;
          v62 = 2112;
          v63 = v13;
          _os_log_impl(&dword_25B251000, v42, OS_LOG_TYPE_DEFAULT, "[NMAPIResponseParser] Invalid response for request (%@) due to unexpected type: %@", buf, 0x16u);
        }

        if (a4)
        {
          [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7102 userInfo:0];
          *a4 = v17 = 0;
        }

        else
        {
          v17 = 0;
        }
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  v43 = *MEMORY[0x277D85DE8];

  return v17;
}

@end
@interface NMAPIArtistResponseParser
- (id)resultsWithDictionary:(id)a3 error:(id *)a4;
@end

@implementation NMAPIArtistResponseParser

- (id)resultsWithDictionary:(id)a3 error:(id *)a4
{
  v57 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [v5 objectForKey:@"data"];
  v8 = NMAPIArrayWithObject(v7, @"data", a4);

  if (!v8)
  {
    v21 = 0;
    goto LABEL_36;
  }

  v9 = NMAPIDictionaryInSingleObjectArray(v8, @"section", a4);
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKey:@"id"];
    v12 = NMAPIStringWithObject(v11, @"sectionIdentifier", a4);

    if (!v12)
    {
      v21 = 0;
LABEL_34:

      goto LABEL_35;
    }

    v48 = v8;
    v13 = [v10 valueForKeyPath:@"relationships.default-playable-content"];
    v14 = NMAPIOptionalDictionaryWithObject(v13, @"defaultPlayableContent", a4);

    v49 = v14;
    if (v14)
    {
      v15 = [v14 objectForKey:@"data"];
      v16 = NMAPIArrayWithObject(v15, @"defaultPlayableContentData", a4);

      if (!v16)
      {
        v21 = 0;
LABEL_33:

        v8 = v48;
        goto LABEL_34;
      }

      v17 = [v10 mutableCopy];
      [v17 removeObjectForKey:@"default-playable-content"];
      [v17 removeObjectForKey:@"views"];
      v18 = [NMAPISectionResult alloc];
      v19 = [v17 copy];
      v20 = [(NMAPISectionResult *)v18 initWithSectionIdentifier:v12 sectionDictionary:v19 itemsArray:v16];
      [v6 addObject:v20];
    }

    else
    {
      v16 = [v10 mutableCopy];
      [v16 removeObjectForKey:@"views"];
      v22 = [NMAPISectionResult alloc];
      v17 = [v16 copy];
      v19 = [(NMAPISectionResult *)v22 initWithSectionIdentifier:v12 sectionDictionary:v17 itemsArray:MEMORY[0x277CBEBF8]];
      [v6 addObject:v19];
    }

    v23 = [v10 objectForKey:@"views"];
    v24 = NMAPIDictionaryWithObject(v23, @"views", a4);

    v25 = v24;
    if (v24)
    {
      v26 = [v10 valueForKeyPath:@"meta.views.order"];
      v27 = NMAPIArrayWithObject(v26, @"viewsOrder", a4);

      if (v27)
      {
        v54 = 0u;
        v55 = 0u;
        v52 = 0u;
        v53 = 0u;
        obj = v27;
        v50 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
        if (v50)
        {
          v51 = *v53;
          v45 = v5;
          v46 = v6;
          v43 = v27;
          v44 = v12;
          while (2)
          {
            for (i = 0; i != v50; ++i)
            {
              if (*v53 != v51)
              {
                objc_enumerationMutation(obj);
              }

              v29 = [v25 objectForKey:*(*(&v52 + 1) + 8 * i)];
              v30 = NMAPIDictionaryWithObject(v29, @"view", a4);

              if (!v30)
              {
                goto LABEL_30;
              }

              v31 = [v30 objectForKey:@"data"];
              v32 = NMAPIArrayWithObject(v31, @"viewItems", a4);

              if (!v32)
              {
                goto LABEL_29;
              }

              if ([v32 count])
              {
                v33 = [v30 valueForKeyPath:@"attributes.title"];
                v34 = NMAPIStringWithObject(v33, @"viewTitle", a4);

                if (!v34)
                {
LABEL_29:

LABEL_30:
                  v21 = 0;
                  v5 = v45;
                  v6 = v46;
                  v27 = v43;
                  v12 = v44;
                  goto LABEL_31;
                }

                v35 = [v30 mutableCopy];
                [v35 removeObjectForKey:@"data"];
                v36 = v10;
                v37 = v25;
                v38 = [NMAPISectionResult alloc];
                v39 = [v35 copy];
                v40 = [(NMAPISectionResult *)v38 initWithSectionIdentifier:v34 sectionDictionary:v39 itemsArray:v32];
                [v46 addObject:v40];

                v25 = v37;
                v10 = v36;
              }
            }

            v5 = v45;
            v6 = v46;
            v27 = v43;
            v12 = v44;
            v50 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
            if (v50)
            {
              continue;
            }

            break;
          }
        }

        v21 = [v6 copy];
      }

      else
      {
        v21 = 0;
      }

LABEL_31:
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_33;
  }

  v21 = 0;
LABEL_35:

LABEL_36:
  v41 = *MEMORY[0x277D85DE8];

  return v21;
}

@end
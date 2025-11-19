@interface NMAPIMultiroomResponseParser
- (id)resultsWithDictionary:(id)a3 error:(id *)a4;
@end

@implementation NMAPIMultiroomResponseParser

- (id)resultsWithDictionary:(id)a3 error:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [v5 objectForKey:@"data"];
  v8 = NMAPIArrayWithObject(v7, @"data", a4);

  if (v8)
  {
    v9 = NMAPIDictionaryInSingleObjectArray(v8, @"multiroom", a4);
    v10 = v9;
    if (v9)
    {
      v11 = [v9 valueForKeyPath:@"relationships.children.data"];
      v12 = NMAPIArrayWithObject(v11, @"rooms", a4);

      if (v12)
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        obj = v12;
        v13 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
        if (v13)
        {
          v14 = v13;
          v33 = *v36;
          v34 = v6;
          v30 = v10;
          v31 = v5;
          v29 = v12;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v36 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v16 = NMAPIDictionaryWithObject(*(*(&v35 + 1) + 8 * i), @"room", a4);
              if (!v16)
              {
                goto LABEL_20;
              }

              v17 = v16;
              v18 = [v16 objectForKey:@"id"];
              v19 = NMAPIStringWithObject(v18, @"sectionIdentifier", a4);

              if (!v19)
              {
                goto LABEL_19;
              }

              v20 = [v17 valueForKeyPath:@"relationships.contents.data"];
              v21 = NMAPIArrayWithObject(v20, @"items", a4);

              if (!v21)
              {

LABEL_19:
LABEL_20:

                v26 = 0;
                v10 = v30;
                v5 = v31;
                v6 = v34;
                v12 = v29;
                goto LABEL_21;
              }

              v22 = [v17 mutableCopy];
              [v22 removeObjectForKey:@"relationships"];
              v23 = [NMAPISectionResult alloc];
              v24 = [v22 copy];
              v25 = [(NMAPISectionResult *)v23 initWithSectionIdentifier:v19 sectionDictionary:v24 itemsArray:v21];
              [v34 addObject:v25];
            }

            v14 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
            v10 = v30;
            v5 = v31;
            v6 = v34;
            v12 = v29;
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v26 = [v6 copy];
      }

      else
      {
        v26 = 0;
      }

LABEL_21:
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v27 = *MEMORY[0x277D85DE8];

  return v26;
}

@end
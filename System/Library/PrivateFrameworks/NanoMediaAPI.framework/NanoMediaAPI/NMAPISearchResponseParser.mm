@interface NMAPISearchResponseParser
- (id)resultsWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation NMAPISearchResponseParser

- (id)resultsWithDictionary:(id)dictionary error:(id *)error
{
  v37 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v31 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [dictionaryCopy objectForKey:@"results"];
  v7 = NMAPIDictionaryWithObject(v6, @"results", error);

  if (v7)
  {
    v8 = [dictionaryCopy valueForKeyPath:@"meta.results.order"];
    v9 = NMAPIArrayWithObject(v8, @"resultsOrder", error);

    if (v9)
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = v9;
      v30 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (v30)
      {
        v29 = *v33;
        v10 = @"data";
        v26 = v9;
        v27 = dictionaryCopy;
        while (2)
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v33 != v29)
            {
              objc_enumerationMutation(obj);
            }

            v12 = NMAPIStringWithObject(*(*(&v32 + 1) + 8 * i), @"resultKey", error);
            if (!v12)
            {
              goto LABEL_18;
            }

            v13 = v12;
            v14 = [v7 objectForKey:v12];
            v15 = NMAPIDictionaryWithObject(v14, @"section", error);

            if (!v15)
            {

LABEL_18:
              v23 = 0;
              v9 = v26;
              dictionaryCopy = v27;
              goto LABEL_19;
            }

            v16 = [v15 objectForKey:v10];
            v17 = NMAPIArrayWithObject(v16, @"items", error);

            if (v17)
            {
              v18 = [v15 mutableCopy];
              [v18 removeObjectForKey:v10];
              v19 = [NMAPISectionResult alloc];
              v20 = v10;
              v21 = [v18 copy];
              v22 = [(NMAPISectionResult *)v19 initWithSectionIdentifier:v13 sectionDictionary:v21 itemsArray:v17];
              [v31 addObject:v22];

              v10 = v20;
            }
          }

          v9 = v26;
          dictionaryCopy = v27;
          v30 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
          if (v30)
          {
            continue;
          }

          break;
        }
      }

      v23 = [v31 copy];
    }

    else
    {
      v23 = 0;
    }

LABEL_19:
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end
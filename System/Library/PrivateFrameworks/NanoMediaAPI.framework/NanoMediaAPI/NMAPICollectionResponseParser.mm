@interface NMAPICollectionResponseParser
- (id)resultsWithDictionary:(id)a3 error:(id *)a4;
@end

@implementation NMAPICollectionResponseParser

- (id)resultsWithDictionary:(id)a3 error:(id *)a4
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = objc_alloc_init(v5);
  v8 = [v6 objectForKey:@"data"];

  v9 = NMAPIArrayWithObject(v8, @"data", a4);

  if (v9)
  {
    v10 = NMAPIDictionaryInSingleObjectArray(v9, @"section", a4);
    v11 = v10;
    if (v10)
    {
      v12 = [v10 objectForKey:@"id"];
      v13 = NMAPIStringWithObject(v12, @"sectionIdentifier", a4);

      if (v13)
      {
        v14 = [v11 valueForKeyPath:@"relationships.tracks"];
        v15 = NMAPIDictionaryWithObject(v14, @"tracks", a4);

        if (v15)
        {
          v16 = [v15 objectForKey:@"data"];
          v17 = NMAPIArrayWithObject(v16, @"tracksData", a4);

          if (v17)
          {
            v18 = [v11 mutableCopy];
            [v18 removeObjectForKey:@"tracks"];
            v19 = [NMAPISectionResult alloc];
            v20 = [v18 copy];
            v21 = [(NMAPISectionResult *)v19 initWithSectionIdentifier:v13 sectionDictionary:v20 itemsArray:v17];
            [v7 addObject:v21];

            v22 = [v7 copy];
          }

          else
          {
            v22 = 0;
          }
        }

        else
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

@end
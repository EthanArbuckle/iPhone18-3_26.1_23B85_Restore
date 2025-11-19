@interface NMAPIRoomResponseParser
- (id)resultsWithDictionary:(id)a3 error:(id *)a4;
@end

@implementation NMAPIRoomResponseParser

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
        v14 = [v11 valueForKeyPath:@"relationships.contents.data"];
        v15 = NMAPIArrayWithObject(v14, @"items", a4);

        if (v15)
        {
          v16 = [v11 mutableCopy];
          [v16 removeObjectForKey:@"relationships"];
          v17 = [NMAPISectionResult alloc];
          v18 = [v16 copy];
          v19 = [(NMAPISectionResult *)v17 initWithSectionIdentifier:v13 sectionDictionary:v18 itemsArray:v15];
          [v7 addObject:v19];

          v20 = [v7 copy];
        }

        else
        {
          v20 = 0;
        }
      }

      else
      {
        v20 = 0;
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

@end
@interface NMAPIMultiplexResponseParser
- (id)resultsWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation NMAPIMultiplexResponseParser

- (id)resultsWithDictionary:(id)dictionary error:(id *)error
{
  v18[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBEB18];
  dictionaryCopy = dictionary;
  v7 = objc_alloc_init(v5);
  v8 = [dictionaryCopy valueForKeyPath:@"results.target"];

  v9 = NMAPIDictionaryWithObject(v8, @"target", error);

  if (v9)
  {
    v10 = [v9 objectForKey:@"type"];
    v11 = NMAPIStringWithObject(v10, @"type", error);

    if (v11)
    {
      v12 = [NMAPISectionResult alloc];
      v18[0] = v9;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
      v14 = [(NMAPISectionResult *)v12 initWithSectionIdentifier:v11 sectionDictionary:v9 itemsArray:v13];
      [v7 addObject:v14];

      v15 = [v7 copy];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end
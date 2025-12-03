@interface NMAPIItemListResponseParser
- (id)resultsWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation NMAPIItemListResponseParser

- (id)resultsWithDictionary:(id)dictionary error:(id *)error
{
  v5 = MEMORY[0x277CBEB18];
  dictionaryCopy = dictionary;
  v7 = objc_alloc_init(v5);
  v8 = [dictionaryCopy objectForKey:@"data"];

  v9 = NMAPIArrayWithObject(v8, @"data", error);

  if (v9)
  {
    v10 = [NMAPISectionResult alloc];
    v11 = [(NMAPISectionResult *)v10 initWithSectionIdentifier:@"Empty Section" sectionDictionary:MEMORY[0x277CBEC10] itemsArray:v9];
    [v7 addObject:v11];

    v12 = [v7 copy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

@end
@interface NMAPIHeavyRotationRequest
- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error;
@end

@implementation NMAPIHeavyRotationRequest

- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error
{
  v18[3] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = NMAPIHeavyRotationRequest;
  v4 = [(NMAPIRequest *)&v16 urlComponentsWithStoreURLBag:bag error:error];
  v5 = MEMORY[0x277CCACA8];
  v18[0] = @"/v1/me";
  v18[1] = @"history";
  v18[2] = @"heavy-rotation";
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v7 = [v5 pathWithComponents:v6];
  [v4 setPath:v7];

  queryItems = [v4 queryItems];
  v9 = objc_alloc(MEMORY[0x277CCAD18]);
  v10 = [&unk_286C7E480 componentsJoinedByString:{@", "}];
  v11 = [v9 initWithName:@"types" value:v10];
  v17 = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  v13 = [queryItems arrayByAddingObjectsFromArray:v12];
  [v4 setQueryItems:v13];

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

@end
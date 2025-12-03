@interface NMAPISearchRequest
- (NMAPISearchRequest)initWithSearchString:(id)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error;
@end

@implementation NMAPISearchRequest

- (NMAPISearchRequest)initWithSearchString:(id)string
{
  stringCopy = string;
  v8.receiver = self;
  v8.super_class = NMAPISearchRequest;
  v5 = [(MPStoreModelRequest *)&v8 init];
  if (v5)
  {
    stringCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Catalog Search (%@)", stringCopy];
    [(NMAPISearchRequest *)v5 setLabel:stringCopy];

    [(NMAPISearchRequest *)v5 setSearchString:stringCopy];
  }

  return v5;
}

- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error
{
  v37[3] = *MEMORY[0x277D85DE8];
  bagCopy = bag;
  v7 = bagCopy;
  if (self->_searchString)
  {
    v8 = MusicURLPathStorefrontWithURLBag(bagCopy);
    if (v8)
    {
      v35.receiver = self;
      v35.super_class = NMAPISearchRequest;
      v34 = v7;
      v9 = [(NMAPIRequest *)&v35 urlComponentsWithStoreURLBag:v7 error:error];
      if (self->_resultsPerSection)
      {
        v10 = MEMORY[0x277CCAD18];
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
        stringValue = [v11 stringValue];
        v13 = [v10 queryItemWithName:@"limit" value:stringValue];

        queryItems = [v9 queryItems];
        v15 = [queryItems arrayByAddingObject:v13];
        [v9 setQueryItems:v15];
      }

      v16 = MEMORY[0x277CCACA8];
      v37[0] = @"/v1/catalog";
      v37[1] = v8;
      v37[2] = @"search";
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
      v18 = [v16 pathWithComponents:v17];
      [v9 setPath:v18];

      queryItems2 = [v9 queryItems];
      v20 = [MEMORY[0x277CCAD18] queryItemWithName:@"term" value:self->_searchString];
      v36[0] = v20;
      v21 = MEMORY[0x277CCAD18];
      v22 = v8;
      v23 = [&unk_286C7E438 componentsJoinedByString:{@", "}];
      v24 = [v21 queryItemWithName:@"types" value:v23];
      v36[1] = v24;
      v25 = MEMORY[0x277CCAD18];
      v26 = [&unk_286C7E450 componentsJoinedByString:{@", "}];
      v27 = [v25 queryItemWithName:@"with" value:v26];
      v36[2] = v27;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
      v29 = [queryItems2 arrayByAddingObjectsFromArray:v28];
      [v9 setQueryItems:v29];

      v8 = v22;
      v7 = v34;
    }

    else
    {
      v31 = NMLogForCategory(9);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        [NMAPIRadioRequest urlComponentsWithStoreURLBag:v31 error:?];
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
        *error = v9 = 0;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v30 = NMLogForCategory(9);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [NMAPISearchRequest urlComponentsWithStoreURLBag:v30 error:?];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7101 userInfo:0];
      *error = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  v32 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NMAPISearchRequest;
  v4 = [(NMAPIRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 16, self->_searchString);
    v5[17] = self->_resultsPerSection;
  }

  return v5;
}

@end
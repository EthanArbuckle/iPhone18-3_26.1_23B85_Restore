@interface NMAPIRequest
+ (id)allSupportedItemProperties;
+ (id)allSupportedSectionProperties;
- (id)copyWithZone:(_NSZone *)zone;
- (id)newOperationWithResponseHandler:(id)handler;
- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error;
- (void)setDefaultMusicRequestProperties;
@end

@implementation NMAPIRequest

- (void)setDefaultMusicRequestProperties
{
  [(MPStoreModelRequest *)self setClientIdentifier:@"com.apple.NanoMusic"];
  [(MPStoreModelRequest *)self setClientVersion:@"1"];

  [(MPStoreModelRequest *)self setAuthenticationOptions:3];
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[NMAPIRequestOperation alloc] initWithRequest:self responseHandler:handlerCopy];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = NMAPIRequest;
  v4 = [(MPStoreModelRequest *)&v7 copyWithZone:zone];
  v5 = v4;
  if (v4)
  {
    v4[14] = self->_cachePolicy;
    objc_storeStrong(v4 + 15, self->_cacheURL);
  }

  return v5;
}

- (id)urlComponentsWithStoreURLBag:(id)bag error:(id *)error
{
  bagCopy = bag;
  v7 = MusicURLComponentsWithURLBag(bagCopy, 0);
  v8 = v7;
  if (v7)
  {
    [v7 setQueryItems:MEMORY[0x277CBEBF8]];
    clientPlatformIdentifier = [(MPStoreModelRequest *)self clientPlatformIdentifier];

    if (clientPlatformIdentifier)
    {
      queryItems = [v8 queryItems];
      v11 = MEMORY[0x277CCAD18];
      clientPlatformIdentifier2 = [(MPStoreModelRequest *)self clientPlatformIdentifier];
      v13 = [v11 queryItemWithName:@"platform" value:clientPlatformIdentifier2];
      v14 = [queryItems arrayByAddingObject:v13];
      [v8 setQueryItems:v14];
    }

    v15 = MusicURLQueryItemLanguageWithURLBag(bagCopy);
    if (v15)
    {
      queryItems2 = [v8 queryItems];
      v17 = [queryItems2 arrayByAddingObject:v15];
      [v8 setQueryItems:v17];

      v18 = v8;
    }

    else
    {
      v20 = NMLogForCategory(9);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [NMAPIRequest urlComponentsWithStoreURLBag:v20 error:?];
      }

      if (error)
      {
        [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
        *error = v18 = 0;
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v19 = NMLogForCategory(9);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [NMAPIRequest urlComponentsWithStoreURLBag:v19 error:?];
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7201 userInfo:0];
      *error = v18 = 0;
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

+ (id)allSupportedItemProperties
{
  v53[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CD6018]);
  v52 = *MEMORY[0x277CD5B80];
  allSupportedProperties = [MEMORY[0x277CD60C0] allSupportedProperties];
  v53[0] = allSupportedProperties;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:&v52 count:1];
  v5 = MEMORY[0x277CBEBF8];
  v40 = [v2 initWithProperties:MEMORY[0x277CBEBF8] relationships:v4];

  v6 = objc_alloc(MEMORY[0x277CD6018]);
  v50 = *MEMORY[0x277CD5B70];
  allSupportedProperties2 = [MEMORY[0x277CD60B0] allSupportedProperties];
  v51 = allSupportedProperties2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
  v9 = [v6 initWithProperties:v5 relationships:v8];

  v10 = objc_alloc(MEMORY[0x277CD6018]);
  v48 = *MEMORY[0x277CD5B78];
  allSupportedProperties3 = [MEMORY[0x277CD60B8] allSupportedProperties];
  v49 = allSupportedProperties3;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
  v13 = [v10 initWithProperties:v5 relationships:v12];

  v14 = objc_alloc(MEMORY[0x277CD6018]);
  v46 = *MEMORY[0x277CD5BB0];
  allSupportedProperties4 = [MEMORY[0x277CD60D8] allSupportedProperties];
  v47 = allSupportedProperties4;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
  v17 = [v14 initWithProperties:v5 relationships:v16];

  v18 = objc_alloc(MEMORY[0x277CD6018]);
  v44 = *MEMORY[0x277CD5B90];
  allSupportedProperties5 = [MEMORY[0x277CD60C8] allSupportedProperties];
  v45 = allSupportedProperties5;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
  v21 = [v18 initWithProperties:v5 relationships:v20];

  v22 = objc_alloc(MEMORY[0x277CD6018]);
  v42 = *MEMORY[0x277CD5B98];
  v23 = MEMORY[0x277CD6018];
  v24 = *MEMORY[0x277CD5A88];
  v41[0] = *MEMORY[0x277CD5AA8];
  v41[1] = v24;
  v25 = *MEMORY[0x277CD5A90];
  v41[2] = *MEMORY[0x277CD5AA0];
  v41[3] = v25;
  v26 = *MEMORY[0x277CD5A98];
  v41[4] = *MEMORY[0x277CD5A80];
  v41[5] = v26;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:6];
  v28 = [v23 propertySetWithProperties:v27];
  v43 = v28;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
  v30 = [v22 initWithProperties:v5 relationships:v29];

  emptyPropertySet = [MEMORY[0x277CD6018] emptyPropertySet];
  v32 = [emptyPropertySet propertySetByCombiningWithPropertySet:v40];

  v33 = [v32 propertySetByCombiningWithPropertySet:v9];

  v34 = [v33 propertySetByCombiningWithPropertySet:v13];

  v35 = [v34 propertySetByCombiningWithPropertySet:v17];

  v36 = [v35 propertySetByCombiningWithPropertySet:v21];

  v37 = [v36 propertySetByCombiningWithPropertySet:v30];

  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (id)allSupportedSectionProperties
{
  v33[1] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CD6018]);
  v32 = *MEMORY[0x277CD5B80];
  allSupportedProperties = [MEMORY[0x277CD60C0] allSupportedProperties];
  v33[0] = allSupportedProperties;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
  v5 = MEMORY[0x277CBEBF8];
  v6 = [v2 initWithProperties:MEMORY[0x277CBEBF8] relationships:v4];

  v7 = objc_alloc(MEMORY[0x277CD6018]);
  v30 = *MEMORY[0x277CD5B70];
  allSupportedProperties2 = [MEMORY[0x277CD60B0] allSupportedProperties];
  v31 = allSupportedProperties2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v10 = [v7 initWithProperties:v5 relationships:v9];

  v11 = objc_alloc(MEMORY[0x277CD6018]);
  v28 = *MEMORY[0x277CD5B78];
  allSupportedProperties3 = [MEMORY[0x277CD60B8] allSupportedProperties];
  v29 = allSupportedProperties3;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v14 = [v11 initWithProperties:v5 relationships:v13];

  v15 = objc_alloc(MEMORY[0x277CD6018]);
  v26 = *MEMORY[0x277CD5B90];
  allSupportedProperties4 = [MEMORY[0x277CD60C8] allSupportedProperties];
  v27 = allSupportedProperties4;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v18 = [v15 initWithProperties:v5 relationships:v17];

  emptyPropertySet = [MEMORY[0x277CD6018] emptyPropertySet];
  v20 = [emptyPropertySet propertySetByCombiningWithPropertySet:v6];

  v21 = [v20 propertySetByCombiningWithPropertySet:v10];

  v22 = [v21 propertySetByCombiningWithPropertySet:v14];

  v23 = [v22 propertySetByCombiningWithPropertySet:v18];

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

@end
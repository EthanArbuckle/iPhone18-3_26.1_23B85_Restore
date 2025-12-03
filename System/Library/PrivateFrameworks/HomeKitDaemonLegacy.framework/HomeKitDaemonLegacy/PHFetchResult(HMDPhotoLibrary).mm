@interface PHFetchResult(HMDPhotoLibrary)
- (id)faceCropDataByUUID;
- (void)objects;
@end

@implementation PHFetchResult(HMDPhotoLibrary)

- (void)objects
{
  fetchedObjects = [self fetchedObjects];
  v2 = fetchedObjects;
  if (fetchedObjects)
  {
    v3 = fetchedObjects;
  }

  else
  {
    v3 = MEMORY[0x277CBEBF8];
  }

  v4 = v3;

  return v3;
}

- (id)faceCropDataByUUID
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"B8AC1970-2A44-4E05-A0DB-ED720A1D910C"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  selfCopy = self;
  v5 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = MEMORY[0x277CCAD78];
        localIdentifier = [v9 localIdentifier];
        v12 = [localIdentifier dataUsingEncoding:4];
        v13 = [v10 hmf_UUIDWithNamespace:v3 data:v12];

        resourceData = [v9 resourceData];
        [dictionary setObject:resourceData forKeyedSubscript:v13];
      }

      v6 = [selfCopy countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = [dictionary copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end
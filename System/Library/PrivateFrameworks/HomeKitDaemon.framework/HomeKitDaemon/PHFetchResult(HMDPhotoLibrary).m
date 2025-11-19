@interface PHFetchResult(HMDPhotoLibrary)
- (id)faceCropDataByUUID;
- (void)objects;
@end

@implementation PHFetchResult(HMDPhotoLibrary)

- (void)objects
{
  v1 = [a1 fetchedObjects];
  v2 = v1;
  if (v1)
  {
    v3 = v1;
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
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"B8AC1970-2A44-4E05-A0DB-ED720A1D910C"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = a1;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        v10 = MEMORY[0x277CCAD78];
        v11 = [v9 localIdentifier];
        v12 = [v11 dataUsingEncoding:4];
        v13 = [v10 hmf_UUIDWithNamespace:v3 data:v12];

        v14 = [v9 resourceData];
        [v2 setObject:v14 forKeyedSubscript:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v6);
  }

  v15 = [v2 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end
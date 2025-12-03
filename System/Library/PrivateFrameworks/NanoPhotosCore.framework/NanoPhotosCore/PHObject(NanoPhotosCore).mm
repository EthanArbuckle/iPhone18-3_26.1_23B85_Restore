@interface PHObject(NanoPhotosCore)
+ (id)npto_localIdentifiersWithUUIDs:()NanoPhotosCore;
- (id)npto_uuid;
@end

@implementation PHObject(NanoPhotosCore)

+ (id)npto_localIdentifiersWithUUIDs:()NanoPhotosCore
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        uUIDString = [*(*(&v16 + 1) + 8 * i) UUIDString];
        v12 = [self localIdentifierWithUUID:uUIDString];
        [v5 addObject:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = [v5 copy];
  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)npto_uuid
{
  v2 = objc_getAssociatedObject(self, sel_npto_uuid);
  if (!v2)
  {
    v3 = objc_alloc(MEMORY[0x277CCAD78]);
    v4 = MEMORY[0x277CD9918];
    localIdentifier = [self localIdentifier];
    v6 = [v4 uuidFromLocalIdentifier:localIdentifier];
    v2 = [v3 initWithUUIDString:v6];
  }

  return v2;
}

@end
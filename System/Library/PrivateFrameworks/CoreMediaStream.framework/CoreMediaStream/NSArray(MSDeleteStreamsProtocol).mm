@interface NSArray(MSDeleteStreamsProtocol)
- (id)MSDSPAssetCollectionWithMasterFileHash:()MSDeleteStreamsProtocol;
@end

@implementation NSArray(MSDeleteStreamsProtocol)

- (id)MSDSPAssetCollectionWithMasterFileHash:()MSDeleteStreamsProtocol
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        masterAssetHash = [v9 masterAssetHash];
        v11 = [masterAssetHash isEqualToData:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

@end
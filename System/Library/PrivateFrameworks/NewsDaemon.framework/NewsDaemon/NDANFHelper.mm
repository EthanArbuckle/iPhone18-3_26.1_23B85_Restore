@interface NDANFHelper
- (id)_resourceIDFromURL:(id)l;
- (id)_resourceIDsFromURLs:(id)ls;
- (id)manifestFromANFDocumentData:(id)data;
@end

@implementation NDANFHelper

- (id)manifestFromANFDocumentData:(id)data
{
  v47 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v42 = 0;
  v43 = &v42;
  v44 = 0x2050000000;
  v3 = getSXContextClass_softClass;
  v45 = getSXContextClass_softClass;
  if (!getSXContextClass_softClass)
  {
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __getSXContextClass_block_invoke;
    v41[3] = &unk_27997C078;
    v41[4] = &v42;
    __getSXContextClass_block_invoke(v41);
    v3 = v43[3];
  }

  v4 = v3;
  _Block_object_dispose(&v42, 8);
  v5 = [v3 alloc];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  v40 = 0;
  v8 = [v5 initWithIdentifier:uUIDString shareURL:0 JSONData:dataCopy resourceDataSource:0 host:0 error:&v40];
  v32 = v40;

  if (v8)
  {
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    documentController = [v8 documentController];
    obj = [documentController orderedImageIdentifiers];

    v12 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
    if (v12)
    {
      v13 = *v37;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v37 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v36 + 1) + 8 * i);
          documentController2 = [v8 documentController];
          v17 = [documentController2 imageResourceForIdentifier:v15];

          v18 = [v17 URL];
          [array fc_safelyAddObject:v18];

          documentController3 = [v8 documentController];
          v20 = [documentController3 allResourcesForImageIdentifier:v15];

          firstObject = [v20 firstObject];
          v22 = [firstObject URL];
          [array2 fc_safelyAddObject:v22];
        }

        v12 = [obj countByEnumeratingWithState:&v36 objects:v46 count:16];
      }

      while (v12);
    }

    documentController4 = [v8 documentController];
    requiredNonImageResourceURLs = [documentController4 requiredNonImageResourceURLs];

    v25 = objc_alloc(MEMORY[0x277D30D90]);
    v26 = [(NDANFHelper *)self _resourceIDsFromURLs:requiredNonImageResourceURLs];
    v27 = [(NDANFHelper *)self _resourceIDsFromURLs:array];
    v28 = [(NDANFHelper *)self _resourceIDsFromURLs:array2];
    v29 = [v25 initWithNonImageResourceIDs:v26 optimalImageResourceIDs:v27 smallestImageResourceIDs:v28];
  }

  else
  {
    v29 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)_resourceIDsFromURLs:(id)ls
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__NDANFHelper__resourceIDsFromURLs___block_invoke;
  v5[3] = &unk_27997C050;
  v5[4] = self;
  v3 = [ls fc_arrayByTransformingWithBlock:v5];

  return v3;
}

- (id)_resourceIDFromURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];
  if ([scheme isEqualToString:@"asset"])
  {
    host = [lCopy host];
  }

  else
  {
    host = 0;
  }

  return host;
}

@end
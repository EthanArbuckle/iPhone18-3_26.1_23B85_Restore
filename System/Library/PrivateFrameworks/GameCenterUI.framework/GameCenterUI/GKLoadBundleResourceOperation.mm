@interface GKLoadBundleResourceOperation
- (GKLoadBundleResourceOperation)initWithResourceName:(id)a3 searchBundles:(id)a4;
- (void)main;
@end

@implementation GKLoadBundleResourceOperation

- (GKLoadBundleResourceOperation)initWithResourceName:(id)a3 searchBundles:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = GKLoadBundleResourceOperation;
  v8 = [(GKLoadBundleResourceOperation *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    resourceName = v8->_resourceName;
    v8->_resourceName = v9;

    v11 = [v7 copy];
    searchBundles = v8->_searchBundles;
    v8->_searchBundles = v11;
  }

  return v8;
}

- (void)main
{
  v27 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [(GKLoadBundleResourceOperation *)self searchBundles];
  v4 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v21 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v20 + 1) + 8 * v7);
      if (([(GKLoadBundleResourceOperation *)self isCancelled]& 1) != 0)
      {
        break;
      }

      v9 = MEMORY[0x277D755B8];
      v10 = [(GKLoadBundleResourceOperation *)self resourceName];
      v11 = [v9 imageNamed:v10 inBundle:v8 compatibleWithTraitCollection:0];

      if (v11)
      {
        v17 = self;
        v18 = v11;
        v19 = 0;
        goto LABEL_13;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:

    if (([(GKLoadBundleResourceOperation *)self isCancelled]& 1) != 0)
    {
      return;
    }

    v12 = MEMORY[0x277CCACA8];
    v13 = [(GKLoadBundleResourceOperation *)self resourceName];
    v14 = [(GKLoadBundleResourceOperation *)self searchBundles];
    v3 = [v12 stringWithFormat:@"No image found for %@ in %@", v13, v14];

    v15 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277CCA450];
    v25 = v3;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v11 = [v15 errorWithDomain:@"GKLoadBundleResourceOperationErrorDomain" code:560557415 userInfo:v16];

    v17 = self;
    v18 = 0;
    v19 = v11;
LABEL_13:
    [(GKLoadResourceOperation *)v17 didCompleteWithResource:v18 error:v19];
  }
}

@end
@interface NSOperationQueue(HMFOperation)
- (void)cancelAllOperationsWithError:()HMFOperation;
@end

@implementation NSOperationQueue(HMFOperation)

- (void)cancelAllOperationsWithError:()HMFOperation
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  operations = [self operations];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [operations countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(operations);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v10 cancelWithError:v4];
        }

        else
        {
          [v10 cancel];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [operations countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end
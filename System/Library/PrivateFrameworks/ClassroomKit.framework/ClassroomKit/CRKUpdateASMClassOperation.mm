@interface CRKUpdateASMClassOperation
- (CRKUpdateASMClassOperation)initWithObjectID:(id)d properties:(id)properties requirements:(id)requirements;
- (id)classWithObjectID:(id)d inClasses:(id)classes;
- (id)makePropertyApplicator;
- (void)applyPropertiesToClass:(id)class;
- (void)didFetchClasses:(id)classes error:(id)error;
- (void)fetchClasses;
- (void)main;
- (void)saveClass:(id)class;
@end

@implementation CRKUpdateASMClassOperation

- (CRKUpdateASMClassOperation)initWithObjectID:(id)d properties:(id)properties requirements:(id)requirements
{
  dCopy = d;
  propertiesCopy = properties;
  requirementsCopy = requirements;
  v17.receiver = self;
  v17.super_class = CRKUpdateASMClassOperation;
  v11 = [(CRKUpdateASMClassOperation *)&v17 init];
  if (v11)
  {
    v12 = [dCopy copy];
    objectID = v11->_objectID;
    v11->_objectID = v12;

    v14 = [propertiesCopy copy];
    properties = v11->_properties;
    v11->_properties = v14;

    objc_storeStrong(&v11->_requirements, requirements);
  }

  return v11;
}

- (void)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CRKUpdateASMClassOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)fetchClasses
{
  requirements = [(CRKUpdateASMClassOperation *)self requirements];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__CRKUpdateASMClassOperation_fetchClasses__block_invoke;
  v4[3] = &unk_278DC1E18;
  v4[4] = self;
  [requirements classesWithCompletion:v4];
}

void __42__CRKUpdateASMClassOperation_fetchClasses__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CRKUpdateASMClassOperation_fetchClasses__block_invoke_2;
  block[3] = &unk_278DC1DF0;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)didFetchClasses:(id)classes error:(id)error
{
  v15[1] = *MEMORY[0x277D85DE8];
  classesCopy = classes;
  if (error)
  {
    [(CRKUpdateASMClassOperation *)self endOperationWithError:error];
  }

  else
  {
    objectID = [(CRKUpdateASMClassOperation *)self objectID];
    v8 = [(CRKUpdateASMClassOperation *)self classWithObjectID:objectID inClasses:classesCopy];

    if (v8)
    {
      [(CRKUpdateASMClassOperation *)self applyPropertiesToClass:v8];
    }

    else
    {
      v14 = @"kCRKItemNameErrorKey";
      objectID2 = [(CRKUpdateASMClassOperation *)self objectID];
      v10 = objectID2;
      v11 = @"self.objectID";
      if (objectID2)
      {
        v11 = objectID2;
      }

      v15[0] = v11;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
      v13 = CRKErrorWithCodeAndUserInfo(12, v12);
      [(CRKUpdateASMClassOperation *)self endOperationWithError:v13];
    }
  }
}

- (void)applyPropertiesToClass:(id)class
{
  classCopy = class;
  makePropertyApplicator = [(CRKUpdateASMClassOperation *)self makePropertyApplicator];
  properties = [(CRKUpdateASMClassOperation *)self properties];
  v9 = 0;
  v7 = [makePropertyApplicator applyProperties:properties toClass:classCopy error:&v9];
  v8 = v9;

  if (v7)
  {
    if ([v7 classWasModified])
    {
      [(CRKUpdateASMClassOperation *)self saveClass:classCopy];
    }

    else
    {
      [(CRKUpdateASMClassOperation *)self endOperationWithResultObject:0];
    }
  }

  else
  {
    [(CRKUpdateASMClassOperation *)self endOperationWithError:v8];
  }
}

- (void)saveClass:(id)class
{
  classCopy = class;
  requirements = [(CRKUpdateASMClassOperation *)self requirements];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__CRKUpdateASMClassOperation_saveClass___block_invoke;
  v6[3] = &unk_278DC0F68;
  v6[4] = self;
  [requirements saveClass:classCopy completion:v6];
}

void __40__CRKUpdateASMClassOperation_saveClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__CRKUpdateASMClassOperation_saveClass___block_invoke_2;
  v6[3] = &unk_278DC1320;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __40__CRKUpdateASMClassOperation_saveClass___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v2)
  {
    return [v1 endOperationWithError:?];
  }

  else
  {
    return [v1 endOperationWithResultObject:?];
  }
}

- (id)makePropertyApplicator
{
  v3 = [CRKClassKitClassPropertyApplicator alloc];
  requirements = [(CRKUpdateASMClassOperation *)self requirements];
  v5 = [(CRKClassKitClassPropertyApplicator *)v3 initWithRequirements:requirements];

  return v5;
}

- (id)classWithObjectID:(id)d inClasses:(id)classes
{
  v21 = *MEMORY[0x277D85DE8];
  dCopy = d;
  classesCopy = classes;
  v7 = classesCopy;
  if (dCopy)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = classesCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = *v17;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          objectID = [v12 objectID];
          v14 = [dCopy isEqualToString:objectID];

          if (v14)
          {
            v9 = v12;
            goto LABEL_12;
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end
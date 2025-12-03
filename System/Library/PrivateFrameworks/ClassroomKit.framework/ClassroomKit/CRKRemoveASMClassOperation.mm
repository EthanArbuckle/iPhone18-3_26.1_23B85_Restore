@interface CRKRemoveASMClassOperation
- (CRKRemoveASMClassOperation)initWithObjectID:(id)d requirements:(id)requirements;
- (id)classWithObjectID:(id)d inClasses:(id)classes;
- (void)didFetchClasses:(id)classes error:(id)error;
- (void)fetchClasses;
- (void)main;
- (void)removeClass:(id)class;
@end

@implementation CRKRemoveASMClassOperation

- (CRKRemoveASMClassOperation)initWithObjectID:(id)d requirements:(id)requirements
{
  dCopy = d;
  requirementsCopy = requirements;
  v12.receiver = self;
  v12.super_class = CRKRemoveASMClassOperation;
  v8 = [(CRKRemoveASMClassOperation *)&v12 init];
  if (v8)
  {
    v9 = [dCopy copy];
    objectID = v8->_objectID;
    v8->_objectID = v9;

    objc_storeStrong(&v8->_requirements, requirements);
  }

  return v8;
}

- (void)main
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__CRKRemoveASMClassOperation_main__block_invoke;
  block[3] = &unk_278DC10F0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

- (void)fetchClasses
{
  requirements = [(CRKRemoveASMClassOperation *)self requirements];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__CRKRemoveASMClassOperation_fetchClasses__block_invoke;
  v4[3] = &unk_278DC1E18;
  v4[4] = self;
  [requirements classesWithCompletion:v4];
}

void __42__CRKRemoveASMClassOperation_fetchClasses__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__CRKRemoveASMClassOperation_fetchClasses__block_invoke_2;
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
  classesCopy = classes;
  if (error)
  {
    [(CRKRemoveASMClassOperation *)self endOperationWithError:error];
  }

  else
  {
    objectID = [(CRKRemoveASMClassOperation *)self objectID];
    v7 = [(CRKRemoveASMClassOperation *)self classWithObjectID:objectID inClasses:classesCopy];

    if (v7)
    {
      [(CRKRemoveASMClassOperation *)self removeClass:v7];
    }

    else
    {
      [(CRKRemoveASMClassOperation *)self endOperationWithResultObject:0];
    }
  }
}

- (void)removeClass:(id)class
{
  classCopy = class;
  if ([classCopy isEditable])
  {
    requirements = [(CRKRemoveASMClassOperation *)self requirements];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __42__CRKRemoveASMClassOperation_removeClass___block_invoke;
    v6[3] = &unk_278DC0F68;
    v6[4] = self;
    [requirements removeClass:classCopy completion:v6];
  }

  else
  {
    requirements = CRKErrorWithCodeAndUserInfo(5, 0);
    [(CRKRemoveASMClassOperation *)self endOperationWithError:requirements];
  }
}

void __42__CRKRemoveASMClassOperation_removeClass___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__CRKRemoveASMClassOperation_removeClass___block_invoke_2;
  v6[3] = &unk_278DC1320;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

uint64_t __42__CRKRemoveASMClassOperation_removeClass___block_invoke_2(uint64_t a1)
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
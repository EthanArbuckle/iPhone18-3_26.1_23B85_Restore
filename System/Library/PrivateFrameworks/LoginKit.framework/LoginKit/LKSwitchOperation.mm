@interface LKSwitchOperation
- (LKSwitchOperation)init;
- (NSArray)keychainItemsAddedAfterRecoverEMCS;
- (NSMutableArray)mutableKeychainItemsAddedAfterRecoverEMCS;
- (id)dictionary;
- (id)switchTypeString;
- (void)addKeychainItemAdditionEvent:(id)event;
- (void)removeLastKeychainItemAdditionEvent;
- (void)setRecoverEMCSOperation:(id)operation;
- (void)setSwitchType:(unint64_t)type;
@end

@implementation LKSwitchOperation

- (LKSwitchOperation)init
{
  v6.receiver = self;
  v6.super_class = LKSwitchOperation;
  v2 = [(LKOperation *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_switchType = 0;
    recoverEMCSOperation = v2->_recoverEMCSOperation;
    v2->_recoverEMCSOperation = 0;
  }

  return v3;
}

- (void)setRecoverEMCSOperation:(id)operation
{
  operationCopy = operation;
  if (self->_recoverEMCSOperation != operationCopy)
  {
    v6 = operationCopy;
    objc_storeStrong(&self->_recoverEMCSOperation, operation);
    operationCopy = v6;
  }
}

- (void)setSwitchType:(unint64_t)type
{
  if (self->_switchType != type)
  {
    self->_switchType = type;
  }
}

- (NSArray)keychainItemsAddedAfterRecoverEMCS
{
  mutableKeychainItemsAddedAfterRecoverEMCS = [(LKSwitchOperation *)self mutableKeychainItemsAddedAfterRecoverEMCS];
  v3 = [mutableKeychainItemsAddedAfterRecoverEMCS copy];

  return v3;
}

- (NSMutableArray)mutableKeychainItemsAddedAfterRecoverEMCS
{
  mutableKeychainItemsAddedAfterRecoverEMCS = self->_mutableKeychainItemsAddedAfterRecoverEMCS;
  if (!mutableKeychainItemsAddedAfterRecoverEMCS)
  {
    v4 = objc_opt_new();
    v5 = self->_mutableKeychainItemsAddedAfterRecoverEMCS;
    self->_mutableKeychainItemsAddedAfterRecoverEMCS = v4;

    mutableKeychainItemsAddedAfterRecoverEMCS = self->_mutableKeychainItemsAddedAfterRecoverEMCS;
  }

  return mutableKeychainItemsAddedAfterRecoverEMCS;
}

- (void)addKeychainItemAdditionEvent:(id)event
{
  if (event)
  {
    eventCopy = event;
    mutableKeychainItemsAddedAfterRecoverEMCS = [(LKSwitchOperation *)self mutableKeychainItemsAddedAfterRecoverEMCS];
    [mutableKeychainItemsAddedAfterRecoverEMCS addObject:eventCopy];
  }
}

- (void)removeLastKeychainItemAdditionEvent
{
  mutableKeychainItemsAddedAfterRecoverEMCS = [(LKSwitchOperation *)self mutableKeychainItemsAddedAfterRecoverEMCS];
  v4 = [mutableKeychainItemsAddedAfterRecoverEMCS count];

  if (v4)
  {
    mutableKeychainItemsAddedAfterRecoverEMCS2 = [(LKSwitchOperation *)self mutableKeychainItemsAddedAfterRecoverEMCS];
    [mutableKeychainItemsAddedAfterRecoverEMCS2 removeLastObject];
  }
}

- (id)switchTypeString
{
  switchType = [(LKSwitchOperation *)self switchType];
  if (switchType > 4)
  {
    return 0;
  }

  else
  {
    return off_279826630[switchType];
  }
}

- (id)dictionary
{
  v27 = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = LKSwitchOperation;
  dictionary = [(LKOperation *)&v25 dictionary];
  v4 = [dictionary mutableCopy];

  recoverEMCSOperation = [(LKSwitchOperation *)self recoverEMCSOperation];
  dictionary2 = [recoverEMCSOperation dictionary];
  [v4 setObject:dictionary2 forKeyedSubscript:@"recoverKeychainOperation"];

  v7 = objc_opt_new();
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  keychainItemsAddedAfterRecoverEMCS = [(LKSwitchOperation *)self keychainItemsAddedAfterRecoverEMCS];
  v9 = [keychainItemsAddedAfterRecoverEMCS countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(keychainItemsAddedAfterRecoverEMCS);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        keychainItemAdded = [v13 keychainItemAdded];

        if (keychainItemAdded)
        {
          dictionary3 = [v13 dictionary];
          [v7 addObject:dictionary3];
        }
      }

      v10 = [keychainItemsAddedAfterRecoverEMCS countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v10);
  }

  if ([v7 count])
  {
    v16 = [v7 copy];
    [v4 setObject:v16 forKeyedSubscript:@"keychainItemsAddedAfterKeychainRecovery"];
  }

  else
  {
    [v4 setObject:MEMORY[0x277CBEBF8] forKeyedSubscript:@"keychainItemsAddedAfterKeychainRecovery"];
  }

  switchTypeString = [(LKSwitchOperation *)self switchTypeString];
  [v4 setObject:switchTypeString forKeyedSubscript:@"switchType"];

  v18 = [v4 copy];
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

@end
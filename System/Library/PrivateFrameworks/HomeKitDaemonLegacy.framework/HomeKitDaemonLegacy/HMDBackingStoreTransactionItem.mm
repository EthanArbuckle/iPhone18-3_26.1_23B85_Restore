@interface HMDBackingStoreTransactionItem
- (HMDBackingStoreTransactionItem)initWithChange:(id)a3 message:(id)a4;
- (NSString)description;
@end

@implementation HMDBackingStoreTransactionItem

- (NSString)description
{
  v3 = [(HMDBackingStoreTransactionItem *)self change];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = [v3 objectChangeType];
  if ((v6 - 1) > 2)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_27972DF00[v6 - 1];
  }

  v8 = v7;
  v9 = [v3 uuid];
  v10 = [v3 parentUUID];
  v11 = [(HMDBackingStoreTransactionItem *)self message];
  v12 = [v11 name];
  v13 = [v4 stringWithFormat:@"<%@(%@) uuid:%@ parent:%@ message:%@>", v5, v8, v9, v10, v12];

  return v13;
}

- (HMDBackingStoreTransactionItem)initWithChange:(id)a3 message:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = HMDBackingStoreTransactionItem;
  v9 = [(HMDBackingStoreTransactionItem *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_change, a3);
    v11 = [v7 dependentUUIDs];
    dependentUUIDs = v10->_dependentUUIDs;
    v10->_dependentUUIDs = v11;

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = v8;
    if (isKindOfClass)
    {
      v14 = [v8 copy];
    }

    objc_storeStrong(&v10->_message, v14);
    if (isKindOfClass)
    {
    }

    v15 = v10;
  }

  return v10;
}

@end
@interface HMDBackingStoreTransactionItem
- (HMDBackingStoreTransactionItem)initWithChange:(id)change message:(id)message;
- (NSString)description;
@end

@implementation HMDBackingStoreTransactionItem

- (NSString)description
{
  change = [(HMDBackingStoreTransactionItem *)self change];
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  objectChangeType = [change objectChangeType];
  if ((objectChangeType - 1) > 2)
  {
    v7 = @"unknown";
  }

  else
  {
    v7 = off_278680560[objectChangeType - 1];
  }

  v8 = v7;
  uuid = [change uuid];
  parentUUID = [change parentUUID];
  message = [(HMDBackingStoreTransactionItem *)self message];
  name = [message name];
  v13 = [v4 stringWithFormat:@"<%@(%@) uuid:%@ parent:%@ message:%@>", v5, v8, uuid, parentUUID, name];

  return v13;
}

- (HMDBackingStoreTransactionItem)initWithChange:(id)change message:(id)message
{
  changeCopy = change;
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = HMDBackingStoreTransactionItem;
  v9 = [(HMDBackingStoreTransactionItem *)&v17 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_change, change);
    dependentUUIDs = [changeCopy dependentUUIDs];
    dependentUUIDs = v10->_dependentUUIDs;
    v10->_dependentUUIDs = dependentUUIDs;

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v14 = messageCopy;
    if (isKindOfClass)
    {
      v14 = [messageCopy copy];
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
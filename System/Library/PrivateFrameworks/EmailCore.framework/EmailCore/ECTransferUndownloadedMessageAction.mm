@interface ECTransferUndownloadedMessageAction
- (ECTransferUndownloadedMessageAction)initWithBuilder:(id)builder;
- (NSString)description;
@end

@implementation ECTransferUndownloadedMessageAction

- (ECTransferUndownloadedMessageAction)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v7.receiver = self;
  v7.super_class = ECTransferUndownloadedMessageAction;
  v5 = [(ECTransferUndownloadedMessageAction *)&v7 init];
  if (v5)
  {
    builderCopy[2](builderCopy, v5);
  }

  return v5;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = ECTransferUndownloadedMessageAction;
  v3 = [(ECLocalMessageAction *)&v10 description];
  v4 = MEMORY[0x277CCACA8];
  transferType = [(ECTransferUndownloadedMessageAction *)self transferType];
  oldestPersistedRemoteID = [(ECTransferUndownloadedMessageAction *)self oldestPersistedRemoteID];
  v7 = [v4 stringWithFormat:@", transfer type = %ld, persistent ID limit %@", transferType, oldestPersistedRemoteID];
  v8 = [v3 stringByAppendingString:v7];

  return v8;
}

@end
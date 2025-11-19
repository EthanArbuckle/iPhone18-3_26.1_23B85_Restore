@interface ECTransferUndownloadedMessageAction
- (ECTransferUndownloadedMessageAction)initWithBuilder:(id)a3;
- (NSString)description;
@end

@implementation ECTransferUndownloadedMessageAction

- (ECTransferUndownloadedMessageAction)initWithBuilder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ECTransferUndownloadedMessageAction;
  v5 = [(ECTransferUndownloadedMessageAction *)&v7 init];
  if (v5)
  {
    v4[2](v4, v5);
  }

  return v5;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = ECTransferUndownloadedMessageAction;
  v3 = [(ECLocalMessageAction *)&v10 description];
  v4 = MEMORY[0x277CCACA8];
  v5 = [(ECTransferUndownloadedMessageAction *)self transferType];
  v6 = [(ECTransferUndownloadedMessageAction *)self oldestPersistedRemoteID];
  v7 = [v4 stringWithFormat:@", transfer type = %ld, persistent ID limit %@", v5, v6];
  v8 = [v3 stringByAppendingString:v7];

  return v8;
}

@end
@interface FCRemoveSubscriptionsCommand
- (FCRemoveSubscriptionsCommand)initWithSubscription:(id)subscription;
- (FCRemoveSubscriptionsCommand)initWithSubscriptions:(id)subscriptions;
@end

@implementation FCRemoveSubscriptionsCommand

- (FCRemoveSubscriptionsCommand)initWithSubscriptions:(id)subscriptions
{
  v4 = MEMORY[0x1E695BA90];
  subscriptionsCopy = subscriptions;
  v6 = [v4 alloc];
  v7 = *MEMORY[0x1E695B728];
  v8 = [v6 initWithZoneName:@"Subscriptions" ownerName:*MEMORY[0x1E695B728]];
  v9 = [objc_alloc(MEMORY[0x1E695BA90]) initWithZoneName:@"SensitiveSubscriptions" ownerName:v7];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __54__FCRemoveSubscriptionsCommand_initWithSubscriptions___block_invoke;
  v16[3] = &unk_1E7C47AA8;
  v17 = v9;
  v18 = v8;
  v10 = v8;
  v11 = v9;
  v12 = [subscriptionsCopy fc_arrayByTransformingWithBlock:v16];

  v15.receiver = self;
  v15.super_class = FCRemoveSubscriptionsCommand;
  v13 = [(FCRemoveRecordsCommand *)&v15 initWithRecordIDs:v12];

  return v13;
}

id __54__FCRemoveSubscriptionsCommand_initWithSubscriptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 zone];
  v5 = 40;
  if (v4 == 1)
  {
    v5 = 32;
  }

  v6 = *(a1 + v5);
  v7 = MEMORY[0x1E695BA70];
  v8 = v6;
  v9 = [v7 alloc];
  v10 = [v3 subscriptionID];

  v11 = [v9 initWithRecordName:v10 zoneID:v8];

  return v11;
}

- (FCRemoveSubscriptionsCommand)initWithSubscription:(id)subscription
{
  v10[1] = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  v5 = subscriptionCopy;
  if (subscriptionCopy)
  {
    v10[0] = subscriptionCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v7 = [(FCRemoveSubscriptionsCommand *)self initWithSubscriptions:v6];
  }

  else
  {
    v7 = [(FCRemoveSubscriptionsCommand *)self initWithSubscriptions:MEMORY[0x1E695E0F0]];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end
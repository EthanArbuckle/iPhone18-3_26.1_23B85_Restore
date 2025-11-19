@interface LKLogKeychainItemAdditionEvent
+ (id)eventFromLKLogEvent:(id)a3;
- (id)dictionary;
- (void)setKeychainItemAdded:(id)a3;
@end

@implementation LKLogKeychainItemAdditionEvent

+ (id)eventFromLKLogEvent:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = [v3 process];
  v6 = [v5 copy];
  [v4 setProcess:v6];

  v7 = [v3 date];
  v8 = [v7 copy];
  [v4 setDate:v8];

  v9 = [v3 senderImagePath];
  v10 = [v9 copy];
  [v4 setSenderImagePath:v10];

  [v4 setActivityIdentifier:{objc_msgSend(v3, "activityIdentifier")}];
  v11 = [v3 composedMessage];

  v12 = [v11 copy];
  [v4 setComposedMessage:v12];

  return v4;
}

- (void)setKeychainItemAdded:(id)a3
{
  v5 = a3;
  if (self->_keychainItemAdded != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_keychainItemAdded, a3);
    v5 = v6;
  }
}

- (id)dictionary
{
  v9.receiver = self;
  v9.super_class = LKLogKeychainItemAdditionEvent;
  v3 = [(LKLogEvent *)&v9 dictionary];
  v4 = [v3 mutableCopy];

  v5 = [(LKLogKeychainItemAdditionEvent *)self keychainItemAdded];
  if (v5)
  {
    [v4 setObject:v5 forKeyedSubscript:@"keychainItemAdded"];
  }

  else
  {
    v6 = objc_opt_new();
    [v4 setObject:v6 forKeyedSubscript:@"keychainItemAdded"];
  }

  v7 = [v4 copy];

  return v7;
}

@end
@interface LKLogKeychainItemAdditionEvent
+ (id)eventFromLKLogEvent:(id)event;
- (id)dictionary;
- (void)setKeychainItemAdded:(id)added;
@end

@implementation LKLogKeychainItemAdditionEvent

+ (id)eventFromLKLogEvent:(id)event
{
  eventCopy = event;
  v4 = objc_opt_new();
  process = [eventCopy process];
  v6 = [process copy];
  [v4 setProcess:v6];

  date = [eventCopy date];
  v8 = [date copy];
  [v4 setDate:v8];

  senderImagePath = [eventCopy senderImagePath];
  v10 = [senderImagePath copy];
  [v4 setSenderImagePath:v10];

  [v4 setActivityIdentifier:{objc_msgSend(eventCopy, "activityIdentifier")}];
  composedMessage = [eventCopy composedMessage];

  v12 = [composedMessage copy];
  [v4 setComposedMessage:v12];

  return v4;
}

- (void)setKeychainItemAdded:(id)added
{
  addedCopy = added;
  if (self->_keychainItemAdded != addedCopy)
  {
    v6 = addedCopy;
    objc_storeStrong(&self->_keychainItemAdded, added);
    addedCopy = v6;
  }
}

- (id)dictionary
{
  v9.receiver = self;
  v9.super_class = LKLogKeychainItemAdditionEvent;
  dictionary = [(LKLogEvent *)&v9 dictionary];
  v4 = [dictionary mutableCopy];

  keychainItemAdded = [(LKLogKeychainItemAdditionEvent *)self keychainItemAdded];
  if (keychainItemAdded)
  {
    [v4 setObject:keychainItemAdded forKeyedSubscript:@"keychainItemAdded"];
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
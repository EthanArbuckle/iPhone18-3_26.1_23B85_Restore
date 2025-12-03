@interface DIIdentityIntentToStore
+ (DIIdentityIntentToStore)mayStoreIntent;
+ (DIIdentityIntentToStore)willNotStoreIntent;
+ (id)mayStoreIntentForDays:(int64_t)days;
- (DIIdentityIntentToStore)initWithIdentifier:(id)identifier;
@end

@implementation DIIdentityIntentToStore

- (DIIdentityIntentToStore)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = DIIdentityIntentToStore;
  v5 = [(DIIdentityIntentToStore *)&v8 init];
  identifier = v5->_identifier;
  v5->_identifier = identifierCopy;

  return v5;
}

+ (DIIdentityIntentToStore)willNotStoreIntent
{
  v2 = [DIIdentityIntentToStore alloc];
  v3 = +[_TtC7CoreIDV33IdentityIntentToStoreRawValueKeys willNotStore];
  v4 = [(DIIdentityIntentToStore *)v2 initWithIdentifier:v3];

  return v4;
}

+ (DIIdentityIntentToStore)mayStoreIntent
{
  v2 = [DIIdentityIntentToStore alloc];
  v3 = +[_TtC7CoreIDV33IdentityIntentToStoreRawValueKeys mayStore];
  v4 = [(DIIdentityIntentToStore *)v2 initWithIdentifier:v3];

  return v4;
}

+ (id)mayStoreIntentForDays:(int64_t)days
{
  v4 = [DIIdentityIntentToStore alloc];
  v5 = [_TtC7CoreIDV33IdentityIntentToStoreRawValueKeys mayStoreForDays:days];
  v6 = [(DIIdentityIntentToStore *)v4 initWithIdentifier:v5];

  return v6;
}

@end
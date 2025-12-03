@interface IdentityIntentToStoreRawValueKeys
+ (NSString)mayStore;
+ (NSString)willNotStore;
+ (id)mayStoreForDays:(int64_t)days;
- (_TtC7CoreIDV33IdentityIntentToStoreRawValueKeys)init;
@end

@implementation IdentityIntentToStoreRawValueKeys

+ (NSString)willNotStore
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (NSString)mayStore
{
  v2 = sub_21CD83B04();

  return v2;
}

+ (id)mayStoreForDays:(int64_t)days
{
  _s7CoreIDV33IdentityIntentToStoreRawValueKeysC03mayF7ForDaysySSSiFZ_0();
  v3 = sub_21CD83B04();

  return v3;
}

- (_TtC7CoreIDV33IdentityIntentToStoreRawValueKeys)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for IdentityIntentToStoreRawValueKeys();
  return [(IdentityIntentToStoreRawValueKeys *)&v3 init];
}

@end
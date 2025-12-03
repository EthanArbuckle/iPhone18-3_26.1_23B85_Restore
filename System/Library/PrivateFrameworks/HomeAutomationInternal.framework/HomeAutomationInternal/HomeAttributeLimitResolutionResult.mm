@interface HomeAttributeLimitResolutionResult
+ (id)confirmationRequiredWithHomeAttributeLimitToConfirm:(int64_t)confirm;
+ (id)successWithResolvedHomeAttributeLimit:(int64_t)limit;
- (HomeAttributeLimitResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeAttributeLimitResolutionResult

+ (id)successWithResolvedHomeAttributeLimit:(int64_t)limit
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(limit);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeLimitToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(confirm);

  return v4;
}

- (HomeAttributeLimitResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeLimitResolutionResult();
  v8 = [(HomeAttributeLimitResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end
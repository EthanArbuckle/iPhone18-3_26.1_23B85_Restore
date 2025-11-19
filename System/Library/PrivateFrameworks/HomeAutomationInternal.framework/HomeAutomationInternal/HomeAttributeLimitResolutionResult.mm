@interface HomeAttributeLimitResolutionResult
+ (id)confirmationRequiredWithHomeAttributeLimitToConfirm:(int64_t)a3;
+ (id)successWithResolvedHomeAttributeLimit:(int64_t)a3;
- (HomeAttributeLimitResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation HomeAttributeLimitResolutionResult

+ (id)successWithResolvedHomeAttributeLimit:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(a3);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeLimitToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(a3);

  return v4;
}

- (HomeAttributeLimitResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeLimitResolutionResult();
  v8 = [(HomeAttributeLimitResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end
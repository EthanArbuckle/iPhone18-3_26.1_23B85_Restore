@interface HomeAttributeStateTypeResolutionResult
+ (id)confirmationRequiredWithHomeAttributeStateTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedHomeAttributeStateType:(int64_t)a3;
- (HomeAttributeStateTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation HomeAttributeStateTypeResolutionResult

+ (id)successWithResolvedHomeAttributeStateType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(a3);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeStateTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(a3);

  return v4;
}

- (HomeAttributeStateTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeStateTypeResolutionResult();
  v8 = [(HomeAttributeStateTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end
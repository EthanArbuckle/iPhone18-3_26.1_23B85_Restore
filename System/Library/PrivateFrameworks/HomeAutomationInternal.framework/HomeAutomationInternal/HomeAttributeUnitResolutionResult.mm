@interface HomeAttributeUnitResolutionResult
+ (id)confirmationRequiredWithHomeAttributeUnitToConfirm:(int64_t)confirm;
+ (id)successWithResolvedHomeAttributeUnit:(int64_t)unit;
- (HomeAttributeUnitResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeAttributeUnitResolutionResult

+ (id)successWithResolvedHomeAttributeUnit:(int64_t)unit
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(unit);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeUnitToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(confirm);

  return v4;
}

- (HomeAttributeUnitResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeUnitResolutionResult();
  v8 = [(HomeAttributeUnitResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end
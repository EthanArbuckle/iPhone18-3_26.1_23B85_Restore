@interface HomeAttributeStateTypeResolutionResult
+ (id)confirmationRequiredWithHomeAttributeStateTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedHomeAttributeStateType:(int64_t)type;
- (HomeAttributeStateTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation HomeAttributeStateTypeResolutionResult

+ (id)successWithResolvedHomeAttributeStateType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(type);

  return v4;
}

+ (id)confirmationRequiredWithHomeAttributeStateTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(confirm);

  return v4;
}

- (HomeAttributeStateTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeAttributeStateTypeResolutionResult();
  v8 = [(HomeAttributeStateTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end
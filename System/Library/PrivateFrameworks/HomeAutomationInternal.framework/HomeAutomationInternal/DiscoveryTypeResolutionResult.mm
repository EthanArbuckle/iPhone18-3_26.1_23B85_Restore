@interface DiscoveryTypeResolutionResult
+ (id)confirmationRequiredWithDiscoveryTypeToConfirm:(int64_t)confirm;
+ (id)successWithResolvedDiscoveryType:(int64_t)type;
- (DiscoveryTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation DiscoveryTypeResolutionResult

+ (id)successWithResolvedDiscoveryType:(int64_t)type
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(type);

  return v4;
}

+ (id)confirmationRequiredWithDiscoveryTypeToConfirm:(int64_t)confirm
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(confirm);

  return v4;
}

- (DiscoveryTypeResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for DiscoveryTypeResolutionResult();
  v8 = [(DiscoveryTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end
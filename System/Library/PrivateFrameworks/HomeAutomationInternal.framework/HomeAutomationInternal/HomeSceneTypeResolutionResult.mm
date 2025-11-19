@interface HomeSceneTypeResolutionResult
+ (id)confirmationRequiredWithHomeSceneTypeToConfirm:(int64_t)a3;
+ (id)successWithResolvedHomeSceneType:(int64_t)a3;
- (HomeSceneTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation HomeSceneTypeResolutionResult

+ (id)successWithResolvedHomeSceneType:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E250C0(a3);

  return v4;
}

+ (id)confirmationRequiredWithHomeSceneTypeToConfirm:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E2514C(a3);

  return v4;
}

- (HomeSceneTypeResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for HomeSceneTypeResolutionResult();
  v8 = [(HomeSceneTypeResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end
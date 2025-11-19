@interface DiscoverHomeFiltersResolutionResult
+ (id)unsupportedForReason:(int64_t)a3;
- (DiscoverHomeFiltersResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4;
@end

@implementation DiscoverHomeFiltersResolutionResult

+ (id)unsupportedForReason:(int64_t)a3
{
  swift_getObjCClassMetadata();
  v4 = sub_252E20FF8(a3);

  return v4;
}

- (DiscoverHomeFiltersResolutionResult)initWithJSONDictionary:(id)a3 forIntent:(id)a4
{
  sub_252E36E44();
  v6 = a4;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for DiscoverHomeFiltersResolutionResult();
  v8 = [(HomeFilterResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:v6];

  if (v8)
  {
  }

  return v8;
}

@end
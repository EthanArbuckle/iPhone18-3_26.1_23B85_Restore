@interface DiscoverHomeFiltersResolutionResult
+ (id)unsupportedForReason:(int64_t)reason;
- (DiscoverHomeFiltersResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent;
@end

@implementation DiscoverHomeFiltersResolutionResult

+ (id)unsupportedForReason:(int64_t)reason
{
  swift_getObjCClassMetadata();
  v4 = sub_252E20FF8(reason);

  return v4;
}

- (DiscoverHomeFiltersResolutionResult)initWithJSONDictionary:(id)dictionary forIntent:(id)intent
{
  sub_252E36E44();
  intentCopy = intent;
  v7 = sub_252E36E24();

  v10.receiver = self;
  v10.super_class = type metadata accessor for DiscoverHomeFiltersResolutionResult();
  v8 = [(HomeFilterResolutionResult *)&v10 initWithJSONDictionary:v7 forIntent:intentCopy];

  if (v8)
  {
  }

  return v8;
}

@end
@interface MSSuggesterRequestOptions
+ (id)defaultRequest;
+ (id)nowPlayingSuggesterOptionsWithMaxSuggestions:(int)a3 bundleId:(id)a4 seedSuggestions:(id)a5 allowedBundleIdentifiers:(id)a6;
+ (id)nowPlayingSuggesterOptionsWithMaxSuggestions:(int)a3 bundleId:(id)a4 seedSuggestions:(id)a5 allowedBundleIdentifiers:(id)a6 suggestionSourceType:(int)a7;
+ (id)workoutSuggesterOptionsWithMaxSuggestions:(int)a3 bundleId:(id)a4 workoutType:(int)a5 seedSuggestions:(id)a6 allowedBundleIdentifiers:(id)a7;
+ (id)workoutSuggesterOptionsWithMaxSuggestions:(int)a3 bundleId:(id)a4 workoutType:(int)a5 seedSuggestions:(id)a6 allowedBundleIdentifiers:(id)a7 suggestionSourceType:(int)a8;
- (MSSuggesterRequestOptions)initWithMaxSuggestions:(int)a3 bundleId:(id)a4 workoutType:(int)a5 seedSuggestions:(id)a6 allowedBundleIdentifiers:(id)a7 requestDate:(double)a8 suggestionType:(int)a9;
- (MSSuggesterRequestOptions)initWithMaxSuggestions:(int)a3 bundleId:(id)a4 workoutType:(int)a5 seedSuggestions:(id)a6 allowedBundleIdentifiers:(id)a7 requestDate:(double)a8 suggestionType:(int)a9 suggestionSourceType:(int)a10;
- (NSArray)allowedBundleIdentifiers;
- (NSArray)seedSuggestions;
- (NSString)bundleId;
- (NSString)description;
- (id)copyWithZone:(void *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAllowedBundleIdentifiers:(id)a3;
- (void)setBundleId:(id)a3;
- (void)setSeedSuggestions:(id)a3;
@end

@implementation MSSuggesterRequestOptions

- (NSString)bundleId
{
  sub_22C9D87A0();
  v2 = sub_22CA20E10();

  return v2;
}

- (void)setBundleId:(id)a3
{
  v4 = sub_22CA20E20();
  v6 = v5;
  v7 = self;
  sub_22C9D884C(v4, v6);
}

- (NSArray)seedSuggestions
{
  sub_22C9D8924();
  type metadata accessor for MSSuggestion(0);
  v2 = sub_22CA20EB0();

  return v2;
}

- (void)setSeedSuggestions:(id)a3
{
  type metadata accessor for MSSuggestion(0);
  v4 = sub_22CA20EC0();
  v5 = self;
  sub_22C9D89A0(v4);
}

- (NSArray)allowedBundleIdentifiers
{
  sub_22C9D8A08();
  v2 = sub_22CA20EB0();

  return v2;
}

- (void)setAllowedBundleIdentifiers:(id)a3
{
  v4 = sub_22CA20EC0();
  v5 = self;
  sub_22C9D8A7C(v4);
}

- (MSSuggesterRequestOptions)initWithMaxSuggestions:(int)a3 bundleId:(id)a4 workoutType:(int)a5 seedSuggestions:(id)a6 allowedBundleIdentifiers:(id)a7 requestDate:(double)a8 suggestionType:(int)a9
{
  sub_22CA20E20();
  type metadata accessor for MSSuggestion(0);
  sub_22CA20EC0();
  sub_22CA20EC0();
  return MSSuggesterRequestOptions.init(maxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:requestDate:suggestionType:)();
}

- (MSSuggesterRequestOptions)initWithMaxSuggestions:(int)a3 bundleId:(id)a4 workoutType:(int)a5 seedSuggestions:(id)a6 allowedBundleIdentifiers:(id)a7 requestDate:(double)a8 suggestionType:(int)a9 suggestionSourceType:(int)a10
{
  sub_22CA20E20();
  type metadata accessor for MSSuggestion(0);
  sub_22CA20EC0();
  sub_22CA20EC0();
  MSSuggesterRequestOptions.init(maxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:requestDate:suggestionType:suggestionSourceType:)();
  return result;
}

+ (id)nowPlayingSuggesterOptionsWithMaxSuggestions:(int)a3 bundleId:(id)a4 seedSuggestions:(id)a5 allowedBundleIdentifiers:(id)a6
{
  sub_22CA20E20();
  type metadata accessor for MSSuggestion(0);
  sub_22CA20EC0();
  sub_22CA20EC0();
  swift_getObjCClassMetadata();
  static MSSuggesterRequestOptions.nowPlayingSuggesterOptions(withMaxSuggestions:bundleId:seedSuggestions:allowedBundleIdentifiers:)();
  v7 = v6;

  return v7;
}

+ (id)nowPlayingSuggesterOptionsWithMaxSuggestions:(int)a3 bundleId:(id)a4 seedSuggestions:(id)a5 allowedBundleIdentifiers:(id)a6 suggestionSourceType:(int)a7
{
  sub_22CA20E20();
  type metadata accessor for MSSuggestion(0);
  sub_22CA20EC0();
  sub_22CA20EC0();
  swift_getObjCClassMetadata();
  static MSSuggesterRequestOptions.nowPlayingSuggesterOptions(withMaxSuggestions:bundleId:seedSuggestions:allowedBundleIdentifiers:suggestionSourceType:)();
  v8 = v7;

  return v8;
}

+ (id)workoutSuggesterOptionsWithMaxSuggestions:(int)a3 bundleId:(id)a4 workoutType:(int)a5 seedSuggestions:(id)a6 allowedBundleIdentifiers:(id)a7
{
  sub_22CA20E20();
  type metadata accessor for MSSuggestion(0);
  sub_22CA20EC0();
  sub_22CA20EC0();
  swift_getObjCClassMetadata();
  static MSSuggesterRequestOptions.workoutSuggesterOptions(withMaxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:)();
  v8 = v7;

  return v8;
}

+ (id)workoutSuggesterOptionsWithMaxSuggestions:(int)a3 bundleId:(id)a4 workoutType:(int)a5 seedSuggestions:(id)a6 allowedBundleIdentifiers:(id)a7 suggestionSourceType:(int)a8
{
  sub_22CA20E20();
  type metadata accessor for MSSuggestion(0);
  sub_22CA20EC0();
  sub_22CA20EC0();
  swift_getObjCClassMetadata();
  static MSSuggesterRequestOptions.workoutSuggesterOptions(withMaxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:suggestionSourceType:)();
  v9 = v8;

  return v9;
}

+ (id)defaultRequest
{
  swift_getObjCClassMetadata();
  v2 = static MSSuggesterRequestOptions.defaultRequest()();

  return v2;
}

- (NSString)description
{
  v2 = self;
  MSSuggesterRequestOptions.description.getter();

  v3 = sub_22CA20E10();

  return v3;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  MSSuggesterRequestOptions.copy(with:)();

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  MSSuggesterRequestOptions.encode(with:)(v4);
}

@end
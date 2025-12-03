@interface MSSuggesterRequestOptions
+ (id)defaultRequest;
+ (id)nowPlayingSuggesterOptionsWithMaxSuggestions:(int)suggestions bundleId:(id)id seedSuggestions:(id)seedSuggestions allowedBundleIdentifiers:(id)identifiers;
+ (id)nowPlayingSuggesterOptionsWithMaxSuggestions:(int)suggestions bundleId:(id)id seedSuggestions:(id)seedSuggestions allowedBundleIdentifiers:(id)identifiers suggestionSourceType:(int)type;
+ (id)workoutSuggesterOptionsWithMaxSuggestions:(int)suggestions bundleId:(id)id workoutType:(int)type seedSuggestions:(id)seedSuggestions allowedBundleIdentifiers:(id)identifiers;
+ (id)workoutSuggesterOptionsWithMaxSuggestions:(int)suggestions bundleId:(id)id workoutType:(int)type seedSuggestions:(id)seedSuggestions allowedBundleIdentifiers:(id)identifiers suggestionSourceType:(int)sourceType;
- (MSSuggesterRequestOptions)initWithMaxSuggestions:(int)suggestions bundleId:(id)id workoutType:(int)type seedSuggestions:(id)seedSuggestions allowedBundleIdentifiers:(id)identifiers requestDate:(double)date suggestionType:(int)suggestionType;
- (MSSuggesterRequestOptions)initWithMaxSuggestions:(int)suggestions bundleId:(id)id workoutType:(int)type seedSuggestions:(id)seedSuggestions allowedBundleIdentifiers:(id)identifiers requestDate:(double)date suggestionType:(int)suggestionType suggestionSourceType:(int)self0;
- (NSArray)allowedBundleIdentifiers;
- (NSArray)seedSuggestions;
- (NSString)bundleId;
- (NSString)description;
- (id)copyWithZone:(void *)zone;
- (void)encodeWithCoder:(id)coder;
- (void)setAllowedBundleIdentifiers:(id)identifiers;
- (void)setBundleId:(id)id;
- (void)setSeedSuggestions:(id)suggestions;
@end

@implementation MSSuggesterRequestOptions

- (NSString)bundleId
{
  sub_22C9D87A0();
  v2 = sub_22CA20E10();

  return v2;
}

- (void)setBundleId:(id)id
{
  v4 = sub_22CA20E20();
  v6 = v5;
  selfCopy = self;
  sub_22C9D884C(v4, v6);
}

- (NSArray)seedSuggestions
{
  sub_22C9D8924();
  type metadata accessor for MSSuggestion(0);
  v2 = sub_22CA20EB0();

  return v2;
}

- (void)setSeedSuggestions:(id)suggestions
{
  type metadata accessor for MSSuggestion(0);
  v4 = sub_22CA20EC0();
  selfCopy = self;
  sub_22C9D89A0(v4);
}

- (NSArray)allowedBundleIdentifiers
{
  sub_22C9D8A08();
  v2 = sub_22CA20EB0();

  return v2;
}

- (void)setAllowedBundleIdentifiers:(id)identifiers
{
  v4 = sub_22CA20EC0();
  selfCopy = self;
  sub_22C9D8A7C(v4);
}

- (MSSuggesterRequestOptions)initWithMaxSuggestions:(int)suggestions bundleId:(id)id workoutType:(int)type seedSuggestions:(id)seedSuggestions allowedBundleIdentifiers:(id)identifiers requestDate:(double)date suggestionType:(int)suggestionType
{
  sub_22CA20E20();
  type metadata accessor for MSSuggestion(0);
  sub_22CA20EC0();
  sub_22CA20EC0();
  return MSSuggesterRequestOptions.init(maxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:requestDate:suggestionType:)();
}

- (MSSuggesterRequestOptions)initWithMaxSuggestions:(int)suggestions bundleId:(id)id workoutType:(int)type seedSuggestions:(id)seedSuggestions allowedBundleIdentifiers:(id)identifiers requestDate:(double)date suggestionType:(int)suggestionType suggestionSourceType:(int)self0
{
  sub_22CA20E20();
  type metadata accessor for MSSuggestion(0);
  sub_22CA20EC0();
  sub_22CA20EC0();
  MSSuggesterRequestOptions.init(maxSuggestions:bundleId:workoutType:seedSuggestions:allowedBundleIdentifiers:requestDate:suggestionType:suggestionSourceType:)();
  return result;
}

+ (id)nowPlayingSuggesterOptionsWithMaxSuggestions:(int)suggestions bundleId:(id)id seedSuggestions:(id)seedSuggestions allowedBundleIdentifiers:(id)identifiers
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

+ (id)nowPlayingSuggesterOptionsWithMaxSuggestions:(int)suggestions bundleId:(id)id seedSuggestions:(id)seedSuggestions allowedBundleIdentifiers:(id)identifiers suggestionSourceType:(int)type
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

+ (id)workoutSuggesterOptionsWithMaxSuggestions:(int)suggestions bundleId:(id)id workoutType:(int)type seedSuggestions:(id)seedSuggestions allowedBundleIdentifiers:(id)identifiers
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

+ (id)workoutSuggesterOptionsWithMaxSuggestions:(int)suggestions bundleId:(id)id workoutType:(int)type seedSuggestions:(id)seedSuggestions allowedBundleIdentifiers:(id)identifiers suggestionSourceType:(int)sourceType
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
  selfCopy = self;
  MSSuggesterRequestOptions.description.getter();

  v3 = sub_22CA20E10();

  return v3;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  MSSuggesterRequestOptions.copy(with:)();

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MSSuggesterRequestOptions.encode(with:)(coderCopy);
}

@end
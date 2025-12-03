@interface MSFeedbackAction
+ (id)abandonment;
+ (id)actionTypeDescription:(int)description;
- (BOOL)isEqual:(id)equal;
- (MSFeedbackAction)initWithType:(int)type suggestion:(id)suggestion suggestionBundleID:(id)d;
- (MSSuggestion)suggestion;
- (NSString)suggestionBundleID;
- (id)copyWithZone:(void *)zone;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setSuggestion:(id)suggestion;
- (void)setSuggestionBundleID:(id)d;
@end

@implementation MSFeedbackAction

- (MSSuggestion)suggestion
{
  v2 = sub_22C9FC5D4();

  return v2;
}

- (void)setSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  selfCopy = self;
  sub_22C9FC660(suggestion);
}

- (NSString)suggestionBundleID
{
  sub_22C9FC6CC();
  if (v2)
  {
    v3 = sub_22CA20E10();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSuggestionBundleID:(id)d
{
  if (d)
  {
    v4 = sub_22CA20E20();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_22C9FC788(v4, v6);
}

- (MSFeedbackAction)initWithType:(int)type suggestion:(id)suggestion suggestionBundleID:(id)d
{
  if (d)
  {
    v7 = sub_22CA20E20();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  suggestionCopy = suggestion;
  return sub_22C9FC7A4(type, suggestion, v7, v9);
}

+ (id)abandonment
{
  swift_getObjCClassMetadata();
  v2 = sub_22C9FC87C();

  return v2;
}

- (id)copyWithZone:(void *)zone
{
  selfCopy = self;
  MSFeedbackAction.copy(with:)(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  MSFeedbackAction.encode(with:)(coderCopy);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = MSFeedbackAction.isEqual(_:)(v8);

  sub_22C9D027C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = MSFeedbackAction.hash.getter();

  return v3;
}

+ (id)actionTypeDescription:(int)description
{
  swift_getObjCClassMetadata();
  sub_22C9FD150();
  v3 = sub_22CA20E10();

  return v3;
}

@end
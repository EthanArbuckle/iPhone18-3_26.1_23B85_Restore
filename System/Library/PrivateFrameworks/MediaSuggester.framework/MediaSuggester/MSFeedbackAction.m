@interface MSFeedbackAction
+ (id)abandonment;
+ (id)actionTypeDescription:(int)a3;
- (BOOL)isEqual:(id)a3;
- (MSFeedbackAction)initWithType:(int)a3 suggestion:(id)a4 suggestionBundleID:(id)a5;
- (MSSuggestion)suggestion;
- (NSString)suggestionBundleID;
- (id)copyWithZone:(void *)a3;
- (int64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setSuggestion:(id)a3;
- (void)setSuggestionBundleID:(id)a3;
@end

@implementation MSFeedbackAction

- (MSSuggestion)suggestion
{
  v2 = sub_22C9FC5D4();

  return v2;
}

- (void)setSuggestion:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_22C9FC660(a3);
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

- (void)setSuggestionBundleID:(id)a3
{
  if (a3)
  {
    v4 = sub_22CA20E20();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_22C9FC788(v4, v6);
}

- (MSFeedbackAction)initWithType:(int)a3 suggestion:(id)a4 suggestionBundleID:(id)a5
{
  if (a5)
  {
    v7 = sub_22CA20E20();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a4;
  return sub_22C9FC7A4(a3, a4, v7, v9);
}

+ (id)abandonment
{
  swift_getObjCClassMetadata();
  v2 = sub_22C9FC87C();

  return v2;
}

- (id)copyWithZone:(void *)a3
{
  v3 = self;
  MSFeedbackAction.copy(with:)(v6);

  sub_22C9D05CC(v6, v6[3]);
  v4 = sub_22CA21350();
  sub_22C9D04CC(v6);
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  MSFeedbackAction.encode(with:)(v4);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_22CA21130();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = MSFeedbackAction.isEqual(_:)(v8);

  sub_22C9D027C(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = MSFeedbackAction.hash.getter();

  return v3;
}

+ (id)actionTypeDescription:(int)a3
{
  swift_getObjCClassMetadata();
  sub_22C9FD150();
  v3 = sub_22CA20E10();

  return v3;
}

@end
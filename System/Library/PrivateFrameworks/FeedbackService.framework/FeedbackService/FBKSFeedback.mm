@interface FBKSFeedback
- (FBKSFeedback)initWithSwiftObject:(id)a3;
- (NSDate)submissionDate;
- (NSString)build;
- (NSString)formIdentifier;
- (id)description;
- (int64_t)ID;
@end

@implementation FBKSFeedback

- (FBKSFeedback)initWithSwiftObject:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v10.receiver = self;
    v10.super_class = FBKSFeedback;
    v6 = [(FBKSFeedback *)&v10 init];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_swiftObject, a3);
    }

    self = v7;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NSString)formIdentifier
{
  v2 = [(FBKSFeedback *)self swiftObject];
  v3 = [v2 formIdentifier];

  return v3;
}

- (NSDate)submissionDate
{
  v2 = [(FBKSFeedback *)self swiftObject];
  v3 = [v2 submissionDate];

  return v3;
}

- (NSString)build
{
  v2 = [(FBKSFeedback *)self swiftObject];
  v3 = [v2 build];

  return v3;
}

- (int64_t)ID
{
  v2 = [(FBKSFeedback *)self swiftObject];
  v3 = [v2 id];

  return v3;
}

- (id)description
{
  v2 = [(FBKSFeedback *)self swiftObject];
  v3 = [v2 description];

  return v3;
}

@end
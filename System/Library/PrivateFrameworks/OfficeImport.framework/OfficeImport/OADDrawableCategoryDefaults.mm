@interface OADDrawableCategoryDefaults
- (OADDrawableCategoryDefaults)init;
- (OADDrawableCategoryDefaults)initWithDefaults;
- (id)description;
@end

@implementation OADDrawableCategoryDefaults

- (OADDrawableCategoryDefaults)init
{
  v10.receiver = self;
  v10.super_class = OADDrawableCategoryDefaults;
  v2 = [(OADDrawableCategoryDefaults *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(OADShapeProperties);
    mShapeProperties = v2->mShapeProperties;
    v2->mShapeProperties = v3;

    v5 = objc_alloc_init(OADTextBodyProperties);
    mTextBodyProperties = v2->mTextBodyProperties;
    v2->mTextBodyProperties = v5;

    v7 = objc_alloc_init(OADTextListStyle);
    mTextListStyle = v2->mTextListStyle;
    v2->mTextListStyle = v7;
  }

  return v2;
}

- (OADDrawableCategoryDefaults)initWithDefaults
{
  v10.receiver = self;
  v10.super_class = OADDrawableCategoryDefaults;
  v2 = [(OADDrawableCategoryDefaults *)&v10 init];
  if (v2)
  {
    initWithDefaults = [(OADGraphicProperties *)[OADShapeProperties alloc] initWithDefaults];
    mShapeProperties = v2->mShapeProperties;
    v2->mShapeProperties = initWithDefaults;

    initWithDefaults2 = [[OADTextBodyProperties alloc] initWithDefaults];
    mTextBodyProperties = v2->mTextBodyProperties;
    v2->mTextBodyProperties = initWithDefaults2;

    initWithDefaults3 = [[OADTextListStyle alloc] initWithDefaults];
    mTextListStyle = v2->mTextListStyle;
    v2->mTextListStyle = initWithDefaults3;
  }

  return v2;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADDrawableCategoryDefaults;
  v2 = [(OADDrawableCategoryDefaults *)&v4 description];

  return v2;
}

@end
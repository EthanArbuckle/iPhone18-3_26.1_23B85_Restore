@interface OADTextListStyle
+ (id)defaultObject;
- (OADTextListStyle)init;
- (OADTextListStyle)initWithDefaults;
- (id)description;
- (void)changeParentTextListStylePreservingEffectiveValues:(id)a3;
- (void)flatten;
- (void)overrideWithTextStyle:(id)a3;
- (void)removeUnnecessaryOverrides;
- (void)setParentTextListStyle:(id)a3;
@end

@implementation OADTextListStyle

- (OADTextListStyle)initWithDefaults
{
  v8.receiver = self;
  v8.super_class = OADTextListStyle;
  v2 = [(OADTextListStyle *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    mParagraphProperties = v2->mParagraphProperties;
    v2->mParagraphProperties = v3;

    v5 = 10;
    do
    {
      v6 = [[OADParagraphProperties alloc] initWithDefaults];
      [(NSMutableArray *)v2->mParagraphProperties addObject:v6];

      --v5;
    }

    while (v5);
  }

  return v2;
}

- (OADTextListStyle)init
{
  v8.receiver = self;
  v8.super_class = OADTextListStyle;
  v2 = [(OADTextListStyle *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    mParagraphProperties = v2->mParagraphProperties;
    v2->mParagraphProperties = v3;

    v5 = 10;
    do
    {
      v6 = objc_alloc_init(OADParagraphProperties);
      [(NSMutableArray *)v2->mParagraphProperties addObject:v6];

      --v5;
    }

    while (v5);
  }

  return v2;
}

- (void)removeUnnecessaryOverrides
{
  for (i = 0; i != 9; ++i)
  {
    v4 = [(OADTextListStyle *)self propertiesForListLevel:i];
    [v4 removeUnnecessaryOverrides];
  }
}

+ (id)defaultObject
{
  v2 = +[OADTextListStyle defaultObject]::defaultObject;
  if (!+[OADTextListStyle defaultObject]::defaultObject)
  {
    v3 = [[OADTextListStyle alloc] initWithDefaults];
    v4 = +[OADTextListStyle defaultObject]::defaultObject;
    +[OADTextListStyle defaultObject]::defaultObject = v3;

    v2 = +[OADTextListStyle defaultObject]::defaultObject;
  }

  return v2;
}

- (void)setParentTextListStyle:(id)a3
{
  v9 = a3;
  v4 = [(OADTextListStyle *)self defaultProperties];
  v5 = [v9 defaultProperties];
  [v4 setParent:v5];

  for (i = 0; i != 9; ++i)
  {
    v7 = [(OADTextListStyle *)self propertiesForListLevel:i];
    v8 = [v9 propertiesForListLevel:i];
    [v7 setParent:v8];
  }
}

- (void)changeParentTextListStylePreservingEffectiveValues:(id)a3
{
  v9 = a3;
  v4 = [(OADTextListStyle *)self defaultProperties];
  v5 = [v9 defaultProperties];
  [v4 changeParentPreservingEffectiveValues:v5];

  for (i = 0; i != 9; ++i)
  {
    v7 = [(OADTextListStyle *)self propertiesForListLevel:i];
    v8 = [v9 propertiesForListLevel:i];
    [v7 changeParentPreservingEffectiveValues:v8];
  }
}

- (void)flatten
{
  for (i = 0; i != 9; ++i)
  {
    v4 = [(OADTextListStyle *)self propertiesForListLevel:i];
    [v4 flatten];
  }
}

- (void)overrideWithTextStyle:(id)a3
{
  v7 = a3;
  for (i = 0; i != 9; ++i)
  {
    v5 = [(OADTextListStyle *)self propertiesForListLevel:i];
    v6 = [v7 propertiesForListLevel:i];
    [v5 overrideWithProperties:v6];
  }
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADTextListStyle;
  v2 = [(OADTextListStyle *)&v4 description];

  return v2;
}

@end
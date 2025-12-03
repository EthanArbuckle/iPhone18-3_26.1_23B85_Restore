@interface OADTextListStyle
+ (id)defaultObject;
- (OADTextListStyle)init;
- (OADTextListStyle)initWithDefaults;
- (id)description;
- (void)changeParentTextListStylePreservingEffectiveValues:(id)values;
- (void)flatten;
- (void)overrideWithTextStyle:(id)style;
- (void)removeUnnecessaryOverrides;
- (void)setParentTextListStyle:(id)style;
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
      initWithDefaults = [[OADParagraphProperties alloc] initWithDefaults];
      [(NSMutableArray *)v2->mParagraphProperties addObject:initWithDefaults];

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
    initWithDefaults = [[OADTextListStyle alloc] initWithDefaults];
    v4 = +[OADTextListStyle defaultObject]::defaultObject;
    +[OADTextListStyle defaultObject]::defaultObject = initWithDefaults;

    v2 = +[OADTextListStyle defaultObject]::defaultObject;
  }

  return v2;
}

- (void)setParentTextListStyle:(id)style
{
  styleCopy = style;
  defaultProperties = [(OADTextListStyle *)self defaultProperties];
  defaultProperties2 = [styleCopy defaultProperties];
  [defaultProperties setParent:defaultProperties2];

  for (i = 0; i != 9; ++i)
  {
    v7 = [(OADTextListStyle *)self propertiesForListLevel:i];
    v8 = [styleCopy propertiesForListLevel:i];
    [v7 setParent:v8];
  }
}

- (void)changeParentTextListStylePreservingEffectiveValues:(id)values
{
  valuesCopy = values;
  defaultProperties = [(OADTextListStyle *)self defaultProperties];
  defaultProperties2 = [valuesCopy defaultProperties];
  [defaultProperties changeParentPreservingEffectiveValues:defaultProperties2];

  for (i = 0; i != 9; ++i)
  {
    v7 = [(OADTextListStyle *)self propertiesForListLevel:i];
    v8 = [valuesCopy propertiesForListLevel:i];
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

- (void)overrideWithTextStyle:(id)style
{
  styleCopy = style;
  for (i = 0; i != 9; ++i)
  {
    v5 = [(OADTextListStyle *)self propertiesForListLevel:i];
    v6 = [styleCopy propertiesForListLevel:i];
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
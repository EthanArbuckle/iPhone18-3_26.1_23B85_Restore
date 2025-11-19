@interface OADConnectorProperties
+ (id)defaultProperties;
- (OADConnectorProperties)init;
- (OADConnectorProperties)initWithDefaults;
- (id)description;
@end

@implementation OADConnectorProperties

- (OADConnectorProperties)init
{
  v8.receiver = self;
  v8.super_class = OADConnectorProperties;
  v2 = [(OADProperties *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(OADConnection);
    v4 = *&v2->super.mIsTextBox;
    *&v2->super.mIsTextBox = v3;

    v5 = objc_alloc_init(OADConnection);
    mFrom = v2->mFrom;
    v2->mFrom = v5;
  }

  return v2;
}

+ (id)defaultProperties
{
  if (+[OADConnectorProperties defaultProperties]::once != -1)
  {
    +[OADConnectorProperties defaultProperties];
  }

  v3 = +[OADConnectorProperties defaultProperties]::defaultProperties;

  return v3;
}

- (OADConnectorProperties)initWithDefaults
{
  v8.receiver = self;
  v8.super_class = OADConnectorProperties;
  v2 = [(OADGraphicProperties *)&v8 initWithDefaults];
  if (v2)
  {
    v3 = objc_alloc_init(OADConnection);
    v4 = *&v2->super.mIsTextBox;
    *&v2->super.mIsTextBox = v3;

    v5 = objc_alloc_init(OADConnection);
    mFrom = v2->mFrom;
    v2->mFrom = v5;
  }

  return v2;
}

void __43__OADConnectorProperties_defaultProperties__block_invoke()
{
  v0 = [[OADConnectorProperties alloc] initWithDefaults];
  v1 = +[OADConnectorProperties defaultProperties]::defaultProperties;
  +[OADConnectorProperties defaultProperties]::defaultProperties = v0;
}

- (id)description
{
  v4.receiver = self;
  v4.super_class = OADConnectorProperties;
  v2 = [(OADGraphicProperties *)&v4 description];

  return v2;
}

@end
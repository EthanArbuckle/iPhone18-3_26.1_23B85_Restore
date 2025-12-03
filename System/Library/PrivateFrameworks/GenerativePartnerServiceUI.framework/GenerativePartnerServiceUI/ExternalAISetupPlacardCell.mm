@interface ExternalAISetupPlacardCell
- (_TtC26GenerativePartnerServiceUI26ExternalAISetupPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (_TtC26GenerativePartnerServiceUI26ExternalAISetupPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
@end

@implementation ExternalAISetupPlacardCell

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  specifierCopy = specifier;
  selfCopy = self;
  sub_1BE50AB94();
}

- (_TtC26GenerativePartnerServiceUI26ExternalAISetupPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  if (identifier)
  {
    v7 = sub_1BE54C70C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  specifierCopy = specifier;
  return sub_1BE50B348(style, v7, v9, specifier);
}

- (_TtC26GenerativePartnerServiceUI26ExternalAISetupPlacardCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1BE54C70C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1BE50B46C(style, identifier, v6);
}

@end
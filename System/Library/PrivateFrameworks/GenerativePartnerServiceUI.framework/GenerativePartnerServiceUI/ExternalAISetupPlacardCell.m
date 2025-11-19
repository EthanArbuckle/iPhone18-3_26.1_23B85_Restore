@interface ExternalAISetupPlacardCell
- (_TtC26GenerativePartnerServiceUI26ExternalAISetupPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (_TtC26GenerativePartnerServiceUI26ExternalAISetupPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ExternalAISetupPlacardCell

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BE50AB94();
}

- (_TtC26GenerativePartnerServiceUI26ExternalAISetupPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  if (a4)
  {
    v7 = sub_1BE54C70C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a5;
  return sub_1BE50B348(a3, v7, v9, a5);
}

- (_TtC26GenerativePartnerServiceUI26ExternalAISetupPlacardCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1BE54C70C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1BE50B46C(a3, a4, v6);
}

@end
@interface IdentityProofingFedStatsOptinTableViewCell
- (_TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setupBackgroundColor;
@end

@implementation IdentityProofingFedStatsOptinTableViewCell

- (_TtC9CoreIDVUI42IdentityProofingFedStatsOptinTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_245910A04();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_2457BC6F8(style, identifier, v6);
}

- (void)setupBackgroundColor
{
  selfCopy = self;
  sub_2457BCD8C();
}

@end
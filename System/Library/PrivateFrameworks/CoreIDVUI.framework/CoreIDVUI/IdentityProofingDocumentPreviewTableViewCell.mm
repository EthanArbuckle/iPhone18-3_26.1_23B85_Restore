@interface IdentityProofingDocumentPreviewTableViewCell
- (_TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)configureCellColorScheme;
@end

@implementation IdentityProofingDocumentPreviewTableViewCell

- (_TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_24584FE4C(style, identifier, v6);
}

- (void)configureCellColorScheme
{
  selfCopy = self;
  sub_2458509F4();
}

@end
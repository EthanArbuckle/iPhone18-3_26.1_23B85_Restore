@interface IdentityProofingDocumentPreviewTableViewCell
- (_TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)configureCellColorScheme;
@end

@implementation IdentityProofingDocumentPreviewTableViewCell

- (_TtC9CoreIDVUI44IdentityProofingDocumentPreviewTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_245910A04();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_24584FE4C(a3, a4, v6);
}

- (void)configureCellColorScheme
{
  v2 = self;
  sub_2458509F4();
}

@end
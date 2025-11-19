@interface HRConceptHeaderCell
+ (id)defaultReuseIdentifier;
- (HRConceptHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)title;
- (UIColor)categoryColor;
- (UIImage)headerImage;
- (int64_t)intendedPlacement;
- (void)_traitCollectionDidChange:(id)a3;
- (void)_updateForCurrentSizeCategory;
- (void)setCategoryColor:(id)a3;
- (void)setHeaderImage:(id)a3;
- (void)setIntendedPlacement:(int64_t)a3;
- (void)setTitle:(id)a3;
- (void)setUpConstraints;
- (void)setupSubviews;
@end

@implementation HRConceptHeaderCell

- (UIImage)headerImage
{
  v3 = OBJC_IVAR___HRConceptHeaderCell_headerImage;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setHeaderImage:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D1357124(a3);
}

- (NSString)title
{
  v2 = self + OBJC_IVAR___HRConceptHeaderCell_title;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1D139012C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_1D139016C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = self;
  sub_1D1357368(v4, v6);
}

- (UIColor)categoryColor
{
  v3 = OBJC_IVAR___HRConceptHeaderCell_categoryColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCategoryColor:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D1357668(a3);
}

+ (id)defaultReuseIdentifier
{
  swift_getObjCClassMetadata();
  sub_1D135857C();
  sub_1D13901EC();
  v2 = sub_1D139012C();

  return v2;
}

- (void)setupSubviews
{
  v2 = self;
  sub_1D1357964();
}

- (void)setUpConstraints
{
  v2 = self;
  sub_1D1357B08();
}

- (int64_t)intendedPlacement
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConceptHeaderCell();
  return [(WDMedicalRecordGroupableCell *)&v3 intendedPlacement];
}

- (void)setIntendedPlacement:(int64_t)a3
{
  v4 = self;
  sub_1D1357F10(a3);
}

- (void)_updateForCurrentSizeCategory
{
  v3 = *(self + OBJC_IVAR___HRConceptHeaderCell_titleLabel);
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69DDD80];
  v6 = self;
  v7 = [v4 _preferredFontForTextStyle_variant_];
  [v3 setFont_];
}

- (void)_traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1D1358070(a3);
}

- (HRConceptHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = sub_1D139016C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return ConceptHeaderCell.init(style:reuseIdentifier:)(a3, a4, v6);
}

@end
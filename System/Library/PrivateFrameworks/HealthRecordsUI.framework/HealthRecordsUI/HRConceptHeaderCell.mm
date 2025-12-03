@interface HRConceptHeaderCell
+ (id)defaultReuseIdentifier;
- (HRConceptHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)title;
- (UIColor)categoryColor;
- (UIImage)headerImage;
- (int64_t)intendedPlacement;
- (void)_traitCollectionDidChange:(id)change;
- (void)_updateForCurrentSizeCategory;
- (void)setCategoryColor:(id)color;
- (void)setHeaderImage:(id)image;
- (void)setIntendedPlacement:(int64_t)placement;
- (void)setTitle:(id)title;
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

- (void)setHeaderImage:(id)image
{
  imageCopy = image;
  selfCopy = self;
  sub_1D1357124(image);
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

- (void)setTitle:(id)title
{
  if (title)
  {
    v4 = sub_1D139016C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  sub_1D1357368(v4, v6);
}

- (UIColor)categoryColor
{
  v3 = OBJC_IVAR___HRConceptHeaderCell_categoryColor;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCategoryColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_1D1357668(color);
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
  selfCopy = self;
  sub_1D1357964();
}

- (void)setUpConstraints
{
  selfCopy = self;
  sub_1D1357B08();
}

- (int64_t)intendedPlacement
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ConceptHeaderCell();
  return [(WDMedicalRecordGroupableCell *)&v3 intendedPlacement];
}

- (void)setIntendedPlacement:(int64_t)placement
{
  selfCopy = self;
  sub_1D1357F10(placement);
}

- (void)_updateForCurrentSizeCategory
{
  v3 = *(self + OBJC_IVAR___HRConceptHeaderCell_titleLabel);
  v4 = objc_opt_self();
  v5 = *MEMORY[0x1E69DDD80];
  selfCopy = self;
  _preferredFontForTextStyle_variant_ = [v4 _preferredFontForTextStyle_variant_];
  [v3 setFont_];
}

- (void)_traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1D1358070(change);
}

- (HRConceptHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = sub_1D139016C();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return ConceptHeaderCell.init(style:reuseIdentifier:)(style, identifier, v6);
}

@end
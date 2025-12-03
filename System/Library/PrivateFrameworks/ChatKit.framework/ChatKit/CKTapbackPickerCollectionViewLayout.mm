@interface CKTapbackPickerCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CKTapbackPickerCollectionViewLayout)initWithCoder:(id)coder;
- (CKTapbackPickerCollectionViewLayout)initWithSection:(id)section;
- (CKTapbackPickerCollectionViewLayout)initWithSection:(id)section configuration:(id)configuration;
- (CKTapbackPickerCollectionViewLayout)initWithSection:(id)section sectionProvider:(id)provider configuration:(id)configuration;
- (CKTapbackPickerCollectionViewLayout)initWithSectionProvider:(id)provider;
- (CKTapbackPickerCollectionViewLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation CKTapbackPickerCollectionViewLayout

- (CKTapbackPickerCollectionViewLayout)initWithCoder:(id)coder
{
  *(&self->super.super._collectionView + OBJC_IVAR___CKTapbackPickerCollectionViewLayout_tapbackPickerLayoutDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR___CKTapbackPickerCollectionViewLayout____lazy_storage___dynamicAnimator) = 0;
  v4 = (&self->super.super.super.isa + OBJC_IVAR___CKTapbackPickerCollectionViewLayout_lastPanGestureRecognizerPositionInCollectionViewCoordinates);
  *v4 = 0;
  v4[1] = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (void)prepareLayout
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TapbackPickerCollectionViewLayout();
  v2 = v3.receiver;
  [(CKTapbackPickerCollectionViewLayout *)&v3 prepareLayout];
  sub_190CA5E7C();
  sub_190CA61B0();
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  selfCopy = self;
  if (UIAccessibilityIsReduceMotionEnabled() || UIAccessibilityIsVoiceOverRunning())
  {
    v9 = sub_190D51BB0();
    v10 = type metadata accessor for TapbackPickerCollectionViewLayout();
    v14.receiver = selfCopy;
    v14.super_class = v10;
    v11 = [(CKTapbackPickerCollectionViewLayout *)&v14 layoutAttributesForItemAtIndexPath:v9];
  }

  else
  {
    v12 = sub_190CA5A64();
    v9 = sub_190D51BB0();
    v11 = [(CKTapbackPickerCollectionViewLayout *)v12 layoutAttributesForCellAtIndexPath:v9];

    selfCopy = v12;
  }

  (*(v5 + 8))(v7, v4);

  return v11;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_190CA6880(x, y, width, height);

  if (v8)
  {
    sub_1902188FC(0, &qword_1EAD44F20);
    v9 = sub_190D57160();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  height = change.size.height;
  width = change.size.width;
  y = change.origin.y;
  x = change.origin.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for TapbackPickerCollectionViewLayout();
  v7 = v11.receiver;
  height = [(CKTapbackPickerCollectionViewLayout *)&v11 shouldInvalidateLayoutForBoundsChange:x, y, width, height];
  if (height)
  {
    v9 = sub_190CA5A64();
    [v9 removeAllBehaviors];
  }

  sub_190CA6B48(x, y, width, height);

  return height;
}

- (CKTapbackPickerCollectionViewLayout)initWithSection:(id)section
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CKTapbackPickerCollectionViewLayout)initWithSection:(id)section configuration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CKTapbackPickerCollectionViewLayout)initWithSectionProvider:(id)provider
{
  _Block_copy(provider);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CKTapbackPickerCollectionViewLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  _Block_copy(provider);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CKTapbackPickerCollectionViewLayout)initWithSection:(id)section sectionProvider:(id)provider configuration:(id)configuration
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
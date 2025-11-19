@interface CKSendMenuCollectionViewLayout
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3;
- (CGSize)collectionViewContentSize;
- (CKSendMenuCollectionViewLayout)initWithCoder:(id)a3;
- (CKSendMenuCollectionViewLayout)initWithSection:(id)a3;
- (CKSendMenuCollectionViewLayout)initWithSection:(id)a3 configuration:(id)a4;
- (CKSendMenuCollectionViewLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5;
- (CKSendMenuCollectionViewLayout)initWithSectionProvider:(id)a3;
- (CKSendMenuCollectionViewLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)_animationForReusableView:(id)a3 toLayoutAttributes:(id)a4 type:(unint64_t)a5;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
- (void)prepareLayout;
- (void)stretchSpringsAttachedToCellsForBoundsChange:(CGRect)a3;
@end

@implementation CKSendMenuCollectionViewLayout

- (CKSendMenuCollectionViewLayout)initWithCoder:(id)a3
{
  *(&self->super.super._collectionView + OBJC_IVAR___CKSendMenuCollectionViewLayout_sendMenuLayoutDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR___CKSendMenuCollectionViewLayout____lazy_storage___dynamicAnimator) = 0;
  v4 = self + OBJC_IVAR___CKSendMenuCollectionViewLayout_frozenCollectionViewContentSize;
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[16] = 1;
  v5 = (&self->super.super.super.isa + OBJC_IVAR___CKSendMenuCollectionViewLayout_lastPanGestureRecognizerPositionInCollectionViewCoordinates);
  *v5 = 0;
  v5[1] = 0;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (CGSize)collectionViewContentSize
{
  v2 = (self + OBJC_IVAR___CKSendMenuCollectionViewLayout_frozenCollectionViewContentSize);
  if (*(&self->super.super._collectionViewBoundsSize.width + OBJC_IVAR___CKSendMenuCollectionViewLayout_frozenCollectionViewContentSize))
  {
    v5.receiver = self;
    v5.super_class = type metadata accessor for SendMenuCollectionViewLayout();
    [(CKSendMenuCollectionViewLayout *)&v5 collectionViewContentSize];
  }

  else
  {
    v3 = *v2;
    v4 = v2[1];
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  v8 = self;
  v9 = sub_190D51BB0();
  v10 = type metadata accessor for SendMenuCollectionViewLayout();
  v14.receiver = v8;
  v14.super_class = v10;
  v11 = [(CKSendMenuCollectionViewLayout *)&v14 initialLayoutAttributesForAppearingItemAtIndexPath:v9];

  if (v11)
  {
    sub_19084E924(v7);
    if (v12)
    {
      sub_19084EC3C(v11);
    }

    else
    {

      v8 = v11;
      v11 = 0;
    }
  }

  (*(v5 + 8))(v7, v4);

  return v11;
}

- (id)_animationForReusableView:(id)a3 toLayoutAttributes:(id)a4 type:(unint64_t)a5
{
  v8 = self;
  v9 = a3;
  v10 = a4;
  v11 = sub_19084EE30(a3, a4, a5);
  v13 = v12;

  if (v11)
  {
    v15[4] = v11;
    v15[5] = v13;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_19084FB40;
    v15[3] = &block_descriptor_6;
    v11 = _Block_copy(v15);
  }

  return v11;
}

- (void)prepareLayout
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SendMenuCollectionViewLayout();
  v2 = v3.receiver;
  [(CKSendMenuCollectionViewLayout *)&v3 prepareLayout];
  sub_19084FBE8();
  sub_19084FF34();
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v4 = sub_190D51C00();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D51BC0();
  v8 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0xE8);
  v9 = self;
  if (v8())
  {
    v10 = sub_19084E244();
    v11 = sub_190D51BB0();
    v12 = [(CKSendMenuCollectionViewLayout *)v10 layoutAttributesForCellAtIndexPath:v11];

    v9 = v10;
  }

  else
  {
    v11 = sub_190D51BB0();
    v13 = type metadata accessor for SendMenuCollectionViewLayout();
    v15.receiver = v9;
    v15.super_class = v13;
    v12 = [(CKSendMenuCollectionViewLayout *)&v15 layoutAttributesForItemAtIndexPath:v11];
  }

  (*(v5 + 8))(v7, v4);

  return v12;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11.receiver = self;
  v11.super_class = type metadata accessor for SendMenuCollectionViewLayout();
  v7 = v11.receiver;
  v8 = [(CKSendMenuCollectionViewLayout *)&v11 shouldInvalidateLayoutForBoundsChange:x, y, width, height];
  if (v8)
  {
    v9 = sub_19084E244();
    [v9 removeAllBehaviors];
  }

  [v7 stretchSpringsAttachedToCellsForBoundsChange_];

  return v8;
}

- (CKSendMenuCollectionViewLayout)initWithSection:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CKSendMenuCollectionViewLayout)initWithSection:(id)a3 configuration:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CKSendMenuCollectionViewLayout)initWithSectionProvider:(id)a3
{
  _Block_copy(a3);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CKSendMenuCollectionViewLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  _Block_copy(a3);
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CKSendMenuCollectionViewLayout)initWithSection:(id)a3 sectionProvider:(id)a4 configuration:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)stretchSpringsAttachedToCellsForBoundsChange:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self;
  sub_190850CD4(x, y, width, height);
}

@end
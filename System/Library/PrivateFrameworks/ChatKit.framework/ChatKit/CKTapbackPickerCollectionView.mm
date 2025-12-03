@interface CKTapbackPickerCollectionView
- (BOOL)_shouldAnimatePropertyWithKey:(id)key;
- (CGPoint)contentOffset;
- (CKTapbackPickerCollectionView)initWithCoder:(id)coder;
- (void)setContentOffset:(CGPoint)offset;
@end

@implementation CKTapbackPickerCollectionView

- (CKTapbackPickerCollectionView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR___CKTapbackPickerCollectionView_scrollDelegate) = 0;
  swift_unknownObjectWeakInit();
  v4 = self + OBJC_IVAR___CKTapbackPickerCollectionView_xPointForBoundaryBetweenSections;
  *v4 = 0;
  v4[8] = 1;
  v5 = OBJC_IVAR___CKTapbackPickerCollectionView_itemWidth;
  sub_190CA73FC();
  sub_190CA7A78();
  v6 = sub_190CA73FC() * 44.0;
  v7 = sub_190CA8000();
  *(&self->super.super.super.super.super.isa + v5) = v6 + v7 + v7;
  result = sub_190D58510();
  __break(1u);
  return result;
}

- (BOOL)_shouldAnimatePropertyWithKey:(id)key
{
  if (key)
  {
    v4 = sub_190D56F10();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  selfCopy = self;
  v8 = sub_190CF0BA0(v4, v6);

  return v8 & 1;
}

- (CGPoint)contentOffset
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for TapbackPickerCollectionView();
  [(CKTapbackPickerCollectionView *)&v4 contentOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setContentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  v9.receiver = self;
  v9.super_class = type metadata accessor for TapbackPickerCollectionView();
  v5 = v9.receiver;
  [(CKTapbackPickerCollectionView *)&v9 setContentOffset:x, y];
  v6 = &v5[OBJC_IVAR___CKTapbackPickerCollectionView_scrollDelegate];
  if (swift_unknownObjectWeakLoadStrong())
  {
    v7 = *(v6 + 1);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v5, ObjectType, v7, x, y);
    swift_unknownObjectRelease();
  }
}

@end
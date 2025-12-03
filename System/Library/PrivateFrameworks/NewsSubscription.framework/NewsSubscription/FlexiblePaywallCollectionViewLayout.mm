@interface FlexiblePaywallCollectionViewLayout
- (CGSize)collectionViewContentSize;
- (_TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout)init;
- (_TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout)initWithCoder:(id)coder;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path;
- (void)prepareLayout;
@end

@implementation FlexiblePaywallCollectionViewLayout

- (_TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout)initWithCoder:(id)coder
{
  result = sub_1D78B6524();
  __break(1u);
  return result;
}

- (void)prepareLayout
{
  selfCopy = self;
  sub_1D78499E0();
}

- (CGSize)collectionViewContentSize
{
  __swift_project_boxed_opaque_existential_1((&self->super.super.isa + OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_layoutProvider), *(&self->super._collectionViewBoundsSize.height + OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_layoutProvider));
  selfCopy = self;

  sub_1D78B3AF4();

  v4 = v6;
  v5 = v7;
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v4 = sub_1D78B34F4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B34C4();
  selfCopy = self;
  v9 = sub_1D784AE20(v7, &OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_itemAttributes);

  (*(v5 + 8))(v7, v4);

  return v9;
}

- (id)layoutAttributesForSupplementaryViewOfKind:(id)kind atIndexPath:(id)path
{
  v5 = sub_1D78B34F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D78B34C4();
  selfCopy = self;
  v10 = sub_1D784AE20(v8, &OBJC_IVAR____TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout_supplementaryItemAttributes);

  (*(v6 + 8))(v8, v5);

  return v10;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  selfCopy = self;
  v8 = sub_1D784A994(x, y, width, height);

  if (v8)
  {
    sub_1D784ADD4();
    v9 = sub_1D78B5E94();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (_TtC16NewsSubscription35FlexiblePaywallCollectionViewLayout)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
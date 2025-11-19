@interface BucketCollectionViewLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3;
- (_TtC6MailUI26BucketCollectionViewLayout)initWithSection:(id)a3 configuration:(id)a4;
- (_TtC6MailUI26BucketCollectionViewLayout)initWithSectionProvider:(id)a3;
- (_TtC6MailUI26BucketCollectionViewLayout)initWithSectionProvider:(id)a3 configuration:(id)a4;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
- (id)layoutAttributesForElementsInRect:(CGRect)a3;
- (id)layoutAttributesForItemAtIndexPath:(id)a3;
@end

@implementation BucketCollectionViewLayout

- (_TtC6MailUI26BucketCollectionViewLayout)initWithSectionProvider:(id)a3
{
  v5 = _Block_copy(a3);
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  return BucketCollectionViewLayout.init(sectionProvider:)(sub_214A759EC, v3);
}

- (id)layoutAttributesForElementsInRect:(CGRect)a3
{
  MEMORY[0x277D82BE0](self);
  v8 = BucketCollectionViewLayout.layoutAttributesForElements(in:)(a3);
  MEMORY[0x277D82BD8](self);
  if (v8)
  {
    sub_214A77A7C();
    v4 = sub_214CCF7D4();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)a3
{
  MEMORY[0x277D82BE0](self);
  v3 = BucketCollectionViewLayout.targetContentOffset(forProposedContentOffset:)(a3);
  MEMORY[0x277D82BD8](self);
  x = v3.x;
  y = v3.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)a3
{
  v13 = self;
  v12 = a3;
  v10 = sub_214CCD374();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v11 = &v7 - v7;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v14 = BucketCollectionViewLayout.layoutAttributesForItem(at:)(v11);
  (*(v8 + 8))(v11, v10);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v5 = v14;

  return v5;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v13 = self;
  v12 = a3;
  v10 = sub_214CCD374();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v11 = &v7 - v7;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v14 = BucketCollectionViewLayout.initialLayoutAttributesForAppearingItem(at:)(v11);
  (*(v8 + 8))(v11, v10);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v5 = v14;

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v13 = self;
  v12 = a3;
  v10 = sub_214CCD374();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](v12);
  v11 = &v7 - v7;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v14 = BucketCollectionViewLayout.finalLayoutAttributesForDisappearingItem(at:)(v11);
  (*(v8 + 8))(v11, v10);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v5 = v14;

  return v5;
}

- (_TtC6MailUI26BucketCollectionViewLayout)initWithSection:(id)a3 configuration:(id)a4
{
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  return BucketCollectionViewLayout.init(section:configuration:)(a3, a4);
}

- (_TtC6MailUI26BucketCollectionViewLayout)initWithSectionProvider:(id)a3 configuration:(id)a4
{
  v6 = _Block_copy(a3);
  MEMORY[0x277D82BE0](a4);
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  return BucketCollectionViewLayout.init(sectionProvider:configuration:)(sub_214A759EC, v4, a4);
}

@end
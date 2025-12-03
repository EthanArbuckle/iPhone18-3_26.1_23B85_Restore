@interface BucketCollectionViewLayout
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset;
- (_TtC6MailUI26BucketCollectionViewLayout)initWithSection:(id)section configuration:(id)configuration;
- (_TtC6MailUI26BucketCollectionViewLayout)initWithSectionProvider:(id)provider;
- (_TtC6MailUI26BucketCollectionViewLayout)initWithSectionProvider:(id)provider configuration:(id)configuration;
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
@end

@implementation BucketCollectionViewLayout

- (_TtC6MailUI26BucketCollectionViewLayout)initWithSectionProvider:(id)provider
{
  v5 = _Block_copy(provider);
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  return BucketCollectionViewLayout.init(sectionProvider:)(sub_214A759EC, v3);
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  MEMORY[0x277D82BE0](self);
  v8 = BucketCollectionViewLayout.layoutAttributesForElements(in:)(rect);
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

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset
{
  MEMORY[0x277D82BE0](self);
  v3 = BucketCollectionViewLayout.targetContentOffset(forProposedContentOffset:)(offset);
  MEMORY[0x277D82BD8](self);
  x = v3.x;
  y = v3.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  selfCopy = self;
  pathCopy = path;
  v10 = sub_214CCD374();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](pathCopy);
  v11 = &v7 - v7;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v14 = BucketCollectionViewLayout.layoutAttributesForItem(at:)(v11);
  (*(v8 + 8))(v11, v10);
  MEMORY[0x277D82BD8](pathCopy);
  MEMORY[0x277D82BD8](selfCopy);
  v5 = v14;

  return v5;
}

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  selfCopy = self;
  pathCopy = path;
  v10 = sub_214CCD374();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](pathCopy);
  v11 = &v7 - v7;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v14 = BucketCollectionViewLayout.initialLayoutAttributesForAppearingItem(at:)(v11);
  (*(v8 + 8))(v11, v10);
  MEMORY[0x277D82BD8](pathCopy);
  MEMORY[0x277D82BD8](selfCopy);
  v5 = v14;

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  selfCopy = self;
  pathCopy = path;
  v10 = sub_214CCD374();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20](pathCopy);
  v11 = &v7 - v7;
  MEMORY[0x277D82BE0](v4);
  MEMORY[0x277D82BE0](self);
  sub_214CCD324();
  v14 = BucketCollectionViewLayout.finalLayoutAttributesForDisappearingItem(at:)(v11);
  (*(v8 + 8))(v11, v10);
  MEMORY[0x277D82BD8](pathCopy);
  MEMORY[0x277D82BD8](selfCopy);
  v5 = v14;

  return v5;
}

- (_TtC6MailUI26BucketCollectionViewLayout)initWithSection:(id)section configuration:(id)configuration
{
  MEMORY[0x277D82BE0](section);
  MEMORY[0x277D82BE0](configuration);
  return BucketCollectionViewLayout.init(section:configuration:)(section, configuration);
}

- (_TtC6MailUI26BucketCollectionViewLayout)initWithSectionProvider:(id)provider configuration:(id)configuration
{
  v6 = _Block_copy(provider);
  MEMORY[0x277D82BE0](configuration);
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  return BucketCollectionViewLayout.init(sectionProvider:configuration:)(sub_214A759EC, v4, configuration);
}

@end
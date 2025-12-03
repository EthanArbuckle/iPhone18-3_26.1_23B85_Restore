@interface DOCItemCollectionViewController.FooterView
- (_TtCC26DocumentManagerExecutables31DOCItemCollectionViewController10FooterView)initWithCoder:(id)coder;
- (_TtCC26DocumentManagerExecutables31DOCItemCollectionViewController10FooterView)initWithFrame:(CGRect)frame;
- (id)preferredLayoutAttributesFittingAttributes:(id)attributes;
@end

@implementation DOCItemCollectionViewController.FooterView

- (id)preferredLayoutAttributesFittingAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  v6 = specialized DOCItemCollectionViewController.FooterView.preferredLayoutAttributesFitting(_:)(attributesCopy);

  return v6;
}

- (_TtCC26DocumentManagerExecutables31DOCItemCollectionViewController10FooterView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCItemCollectionViewController.FooterView();
  return [(DOCItemCollectionViewController.FooterView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC26DocumentManagerExecutables31DOCItemCollectionViewController10FooterView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCItemCollectionViewController.FooterView();
  coderCopy = coder;
  v5 = [(DOCItemCollectionViewController.FooterView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
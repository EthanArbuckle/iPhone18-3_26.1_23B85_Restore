@interface DOCItemCollectionViewController.FooterView
- (_TtCC26DocumentManagerExecutables31DOCItemCollectionViewController10FooterView)initWithCoder:(id)a3;
- (_TtCC26DocumentManagerExecutables31DOCItemCollectionViewController10FooterView)initWithFrame:(CGRect)a3;
- (id)preferredLayoutAttributesFittingAttributes:(id)a3;
@end

@implementation DOCItemCollectionViewController.FooterView

- (id)preferredLayoutAttributesFittingAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = specialized DOCItemCollectionViewController.FooterView.preferredLayoutAttributesFitting(_:)(v4);

  return v6;
}

- (_TtCC26DocumentManagerExecutables31DOCItemCollectionViewController10FooterView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCItemCollectionViewController.FooterView();
  return [(DOCItemCollectionViewController.FooterView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtCC26DocumentManagerExecutables31DOCItemCollectionViewController10FooterView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for DOCItemCollectionViewController.FooterView();
  v4 = a3;
  v5 = [(DOCItemCollectionViewController.FooterView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
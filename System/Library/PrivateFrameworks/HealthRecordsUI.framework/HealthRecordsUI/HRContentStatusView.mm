@interface HRContentStatusView
- (HRContentStatusView)initWithTitle:(id)title subtitle:(id)subtitle;
- (void)layoutSubviews;
- (void)traitCollectionDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection;
@end

@implementation HRContentStatusView

- (HRContentStatusView)initWithTitle:(id)title subtitle:(id)subtitle
{
  if (!title)
  {
    v5 = 0;
    v7 = 0;
    if (subtitle)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    v10 = 0;
    return ContentStatusView.init(title:subtitle:)(v5, v7, v8, v10);
  }

  v5 = sub_1D139016C();
  v7 = v6;
  if (!subtitle)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1D139016C();
  v10 = v9;
  return ContentStatusView.init(title:subtitle:)(v5, v7, v8, v10);
}

- (void)traitCollectionDidChangeWithTraitEnvironment:(id)environment previousTraitCollection:(id)collection
{
  swift_unknownObjectRetain();
  collectionCopy = collection;
  selfCopy = self;
  sub_1D1263470(collection);
  swift_unknownObjectRelease();
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1D1262DA0();
}

@end
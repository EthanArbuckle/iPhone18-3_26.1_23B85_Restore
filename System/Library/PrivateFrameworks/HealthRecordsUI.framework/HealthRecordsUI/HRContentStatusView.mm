@interface HRContentStatusView
- (HRContentStatusView)initWithTitle:(id)a3 subtitle:(id)a4;
- (void)layoutSubviews;
- (void)traitCollectionDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4;
@end

@implementation HRContentStatusView

- (HRContentStatusView)initWithTitle:(id)a3 subtitle:(id)a4
{
  if (!a3)
  {
    v5 = 0;
    v7 = 0;
    if (a4)
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
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = sub_1D139016C();
  v10 = v9;
  return ContentStatusView.init(title:subtitle:)(v5, v7, v8, v10);
}

- (void)traitCollectionDidChangeWithTraitEnvironment:(id)a3 previousTraitCollection:(id)a4
{
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = self;
  sub_1D1263470(a4);
  swift_unknownObjectRelease();
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D1262DA0();
}

@end
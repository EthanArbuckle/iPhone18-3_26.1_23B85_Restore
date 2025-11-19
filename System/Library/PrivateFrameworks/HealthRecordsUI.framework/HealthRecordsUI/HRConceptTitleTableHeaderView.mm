@interface HRConceptTitleTableHeaderView
- (HRConceptTitleTableHeaderView)initWithCoder:(id)a3;
- (HRConceptTitleTableHeaderView)initWithFrame:(CGRect)a3;
- (NSString)title;
- (void)setTitle:(id)a3;
@end

@implementation HRConceptTitleTableHeaderView

- (NSString)title
{
  v2 = self + OBJC_IVAR___HRConceptTitleTableHeaderView_title;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = sub_1D139012C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_1D139016C();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___HRConceptTitleTableHeaderView_title);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
  v8 = self;

  sub_1D1386274();
}

- (HRConceptTitleTableHeaderView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR___HRConceptTitleTableHeaderView_titleLabel;
  *(self + v8) = sub_1D1385EB8();
  v9 = (self + OBJC_IVAR___HRConceptTitleTableHeaderView_title);
  v10 = type metadata accessor for ConceptTitleTableHeaderView();
  *v9 = 0;
  v9[1] = 0;
  v16.receiver = self;
  v16.super_class = v10;
  v11 = [(HRConceptTitleTableHeaderView *)&v16 initWithFrame:x, y, width, height];
  v12 = OBJC_IVAR___HRConceptTitleTableHeaderView_titleLabel;
  v13 = *(v11 + OBJC_IVAR___HRConceptTitleTableHeaderView_titleLabel);
  v14 = v11;
  [(HRConceptTitleTableHeaderView *)v14 addSubview:v13];
  [*(v11 + v12) hk:v14 alignConstraintsWithView:?];

  return v14;
}

- (HRConceptTitleTableHeaderView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR___HRConceptTitleTableHeaderView_titleLabel;
  *(self + v4) = sub_1D1385EB8();
  v5 = (self + OBJC_IVAR___HRConceptTitleTableHeaderView_title);
  *v5 = 0;
  v5[1] = 0;
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

@end
@interface HRConceptTitleTableHeaderView
- (HRConceptTitleTableHeaderView)initWithCoder:(id)coder;
- (HRConceptTitleTableHeaderView)initWithFrame:(CGRect)frame;
- (NSString)title;
- (void)setTitle:(id)title;
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

- (void)setTitle:(id)title
{
  if (title)
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
  selfCopy = self;

  sub_1D1386274();
}

- (HRConceptTitleTableHeaderView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR___HRConceptTitleTableHeaderView_titleLabel;
  *(self + v8) = sub_1D1385EB8();
  v9 = (self + OBJC_IVAR___HRConceptTitleTableHeaderView_title);
  v10 = type metadata accessor for ConceptTitleTableHeaderView();
  *v9 = 0;
  v9[1] = 0;
  v16.receiver = self;
  v16.super_class = v10;
  height = [(HRConceptTitleTableHeaderView *)&v16 initWithFrame:x, y, width, height];
  v12 = OBJC_IVAR___HRConceptTitleTableHeaderView_titleLabel;
  v13 = *(height + OBJC_IVAR___HRConceptTitleTableHeaderView_titleLabel);
  v14 = height;
  [(HRConceptTitleTableHeaderView *)v14 addSubview:v13];
  [*(height + v12) hk:v14 alignConstraintsWithView:?];

  return v14;
}

- (HRConceptTitleTableHeaderView)initWithCoder:(id)coder
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
@interface ContentSizedTableView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC28MomentsOnboardingAndSettings21ContentSizedTableView)initWithCoder:(id)a3;
- (_TtC28MomentsOnboardingAndSettings21ContentSizedTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)setContentSize:(CGSize)a3;
@end

@implementation ContentSizedTableView

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  [(ContentSizedTableView *)&v4 contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v5 = v6.receiver;
  [(ContentSizedTableView *)&v6 setContentSize:width, height];
  [v5 invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  ObjectType = swift_getObjectType();
  v4 = self;
  [(ContentSizedTableView *)v4 layoutIfNeeded];
  v5 = *MEMORY[0x277D77260];
  v10.receiver = v4;
  v10.super_class = ObjectType;
  [(ContentSizedTableView *)&v10 contentSize];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC28MomentsOnboardingAndSettings21ContentSizedTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  return [(ContentSizedTableView *)&v10 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC28MomentsOnboardingAndSettings21ContentSizedTableView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = [(ContentSizedTableView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
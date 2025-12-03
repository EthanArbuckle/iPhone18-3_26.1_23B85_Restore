@interface ContentSizedTableView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC28MomentsOnboardingAndSettings21ContentSizedTableView)initWithCoder:(id)coder;
- (_TtC28MomentsOnboardingAndSettings21ContentSizedTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)setContentSize:(CGSize)size;
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

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v5 = v6.receiver;
  [(ContentSizedTableView *)&v6 setContentSize:width, height];
  [v5 invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  ObjectType = swift_getObjectType();
  selfCopy = self;
  [(ContentSizedTableView *)selfCopy layoutIfNeeded];
  v5 = *MEMORY[0x277D77260];
  v10.receiver = selfCopy;
  v10.super_class = ObjectType;
  [(ContentSizedTableView *)&v10 contentSize];
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC28MomentsOnboardingAndSettings21ContentSizedTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = swift_getObjectType();
  return [(ContentSizedTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

- (_TtC28MomentsOnboardingAndSettings21ContentSizedTableView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  coderCopy = coder;
  v5 = [(ContentSizedTableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
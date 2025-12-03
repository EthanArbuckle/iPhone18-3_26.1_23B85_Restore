@interface ContentSizedTableView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC15HealthRecordsUIP33_8F81952E28F1531DFFBDDCE2B833C80321ContentSizedTableView)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUIP33_8F81952E28F1531DFFBDDCE2B833C80321ContentSizedTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)setContentSize:(CGSize)size;
@end

@implementation ContentSizedTableView

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ContentSizedTableView();
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
  v6.super_class = type metadata accessor for ContentSizedTableView();
  v5 = v6.receiver;
  [(ContentSizedTableView *)&v6 setContentSize:width, height];
  [v5 invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(ContentSizedTableView *)selfCopy layoutIfNeeded];
  v3 = *MEMORY[0x1E69DE788];
  [(ContentSizedTableView *)selfCopy contentSize];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC15HealthRecordsUIP33_8F81952E28F1531DFFBDDCE2B833C80321ContentSizedTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ContentSizedTableView();
  return [(ContentSizedTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

- (_TtC15HealthRecordsUIP33_8F81952E28F1531DFFBDDCE2B833C80321ContentSizedTableView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ContentSizedTableView();
  coderCopy = coder;
  v5 = [(ContentSizedTableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
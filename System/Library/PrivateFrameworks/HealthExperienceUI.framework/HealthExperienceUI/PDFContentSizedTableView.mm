@interface PDFContentSizedTableView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC18HealthExperienceUIP33_41892A8E3AE85A20C0CA0B347A3001CA24PDFContentSizedTableView)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUIP33_41892A8E3AE85A20C0CA0B347A3001CA24PDFContentSizedTableView)initWithFrame:(CGRect)frame style:(int64_t)style;
- (void)setContentSize:(CGSize)size;
@end

@implementation PDFContentSizedTableView

- (CGSize)contentSize
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for PDFContentSizedTableView();
  [(PDFContentSizedTableView *)&v4 contentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PDFContentSizedTableView();
  v5 = v6.receiver;
  [(PDFContentSizedTableView *)&v6 setContentSize:width, height];
  [v5 invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  [(PDFContentSizedTableView *)selfCopy layoutIfNeeded];
  v3 = *MEMORY[0x1E69DE788];
  [(PDFContentSizedTableView *)selfCopy contentSize];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC18HealthExperienceUIP33_41892A8E3AE85A20C0CA0B347A3001CA24PDFContentSizedTableView)initWithFrame:(CGRect)frame style:(int64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PDFContentSizedTableView();
  return [(PDFContentSizedTableView *)&v10 initWithFrame:style style:x, y, width, height];
}

- (_TtC18HealthExperienceUIP33_41892A8E3AE85A20C0CA0B347A3001CA24PDFContentSizedTableView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PDFContentSizedTableView();
  coderCopy = coder;
  v5 = [(PDFContentSizedTableView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end
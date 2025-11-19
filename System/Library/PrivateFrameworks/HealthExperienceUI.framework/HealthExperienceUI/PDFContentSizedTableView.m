@interface PDFContentSizedTableView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC18HealthExperienceUIP33_41892A8E3AE85A20C0CA0B347A3001CA24PDFContentSizedTableView)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUIP33_41892A8E3AE85A20C0CA0B347A3001CA24PDFContentSizedTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)setContentSize:(CGSize)a3;
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

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PDFContentSizedTableView();
  v5 = v6.receiver;
  [(PDFContentSizedTableView *)&v6 setContentSize:width, height];
  [v5 invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  [(PDFContentSizedTableView *)v2 layoutIfNeeded];
  v3 = *MEMORY[0x1E69DE788];
  [(PDFContentSizedTableView *)v2 contentSize];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC18HealthExperienceUIP33_41892A8E3AE85A20C0CA0B347A3001CA24PDFContentSizedTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for PDFContentSizedTableView();
  return [(PDFContentSizedTableView *)&v10 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC18HealthExperienceUIP33_41892A8E3AE85A20C0CA0B347A3001CA24PDFContentSizedTableView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for PDFContentSizedTableView();
  v4 = a3;
  v5 = [(PDFContentSizedTableView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
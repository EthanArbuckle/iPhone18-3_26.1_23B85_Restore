@interface ContentSizedTableView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (_TtC15HealthRecordsUIP33_8F81952E28F1531DFFBDDCE2B833C80321ContentSizedTableView)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUIP33_8F81952E28F1531DFFBDDCE2B833C80321ContentSizedTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4;
- (void)setContentSize:(CGSize)a3;
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

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6.receiver = self;
  v6.super_class = type metadata accessor for ContentSizedTableView();
  v5 = v6.receiver;
  [(ContentSizedTableView *)&v6 setContentSize:width, height];
  [v5 invalidateIntrinsicContentSize];
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  [(ContentSizedTableView *)v2 layoutIfNeeded];
  v3 = *MEMORY[0x1E69DE788];
  [(ContentSizedTableView *)v2 contentSize];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (_TtC15HealthRecordsUIP33_8F81952E28F1531DFFBDDCE2B833C80321ContentSizedTableView)initWithFrame:(CGRect)a3 style:(int64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10.receiver = self;
  v10.super_class = type metadata accessor for ContentSizedTableView();
  return [(ContentSizedTableView *)&v10 initWithFrame:a4 style:x, y, width, height];
}

- (_TtC15HealthRecordsUIP33_8F81952E28F1531DFFBDDCE2B833C80321ContentSizedTableView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ContentSizedTableView();
  v4 = a3;
  v5 = [(ContentSizedTableView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end
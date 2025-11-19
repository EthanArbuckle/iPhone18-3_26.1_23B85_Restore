@interface UnScrollableWebView
- (_TtC8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D19UnScrollableWebView)initWithCoder:(id)a3;
- (_TtC8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D19UnScrollableWebView)initWithFrame:(CGRect)a3 configuration:(id)a4;
@end

@implementation UnScrollableWebView

- (_TtC8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D19UnScrollableWebView)initWithFrame:(CGRect)a3 configuration:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for UnScrollableWebView();
  v9 = a4;
  v10 = [(UnScrollableWebView *)&v13 initWithFrame:v9 configuration:x, y, width, height];
  v11 = [(UnScrollableWebView *)v10 scrollView:v13.receiver];
  [v11 setBouncesVertically_];

  return v10;
}

- (_TtC8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D19UnScrollableWebView)initWithCoder:(id)a3
{
  result = sub_1B8C258A8();
  __break(1u);
  return result;
}

@end
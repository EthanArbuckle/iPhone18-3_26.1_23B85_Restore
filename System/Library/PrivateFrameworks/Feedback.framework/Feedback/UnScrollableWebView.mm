@interface UnScrollableWebView
- (_TtC8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D19UnScrollableWebView)initWithCoder:(id)coder;
- (_TtC8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D19UnScrollableWebView)initWithFrame:(CGRect)frame configuration:(id)configuration;
@end

@implementation UnScrollableWebView

- (_TtC8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D19UnScrollableWebView)initWithFrame:(CGRect)frame configuration:(id)configuration
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for UnScrollableWebView();
  configurationCopy = configuration;
  height = [(UnScrollableWebView *)&v13 initWithFrame:configurationCopy configuration:x, y, width, height];
  v11 = [(UnScrollableWebView *)height scrollView:v13.receiver];
  [v11 setBouncesVertically_];

  return height;
}

- (_TtC8FeedbackP33_A8ABDB21747C1062E707FA1890A6718D19UnScrollableWebView)initWithCoder:(id)coder
{
  result = sub_1B8C258A8();
  __break(1u);
  return result;
}

@end
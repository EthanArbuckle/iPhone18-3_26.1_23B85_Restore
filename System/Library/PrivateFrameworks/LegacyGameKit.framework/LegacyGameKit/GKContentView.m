@interface GKContentView
+ (CGSize)preferredSize;
- (GKContentView)initWithTitle:(id)a3 message:(id)a4 icon:(id)a5 cancelButtonTitle:(id)a6 otherButtonTitle:(id)a7;
- (int64_t)numberOfTitleLines;
@end

@implementation GKContentView

- (GKContentView)initWithTitle:(id)a3 message:(id)a4 icon:(id)a5 cancelButtonTitle:(id)a6 otherButtonTitle:(id)a7
{
  v8.receiver = self;
  v8.super_class = GKContentView;
  return [(GKContentView *)&v8 init:a3];
}

- (int64_t)numberOfTitleLines
{
  result = self->_titleLabel;
  if (result)
  {
    return [result numberOfLines];
  }

  return result;
}

+ (CGSize)preferredSize
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end
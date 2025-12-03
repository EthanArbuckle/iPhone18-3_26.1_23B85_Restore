@interface GKContentView
+ (CGSize)preferredSize;
- (GKContentView)initWithTitle:(id)title message:(id)message icon:(id)icon cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle;
- (int64_t)numberOfTitleLines;
@end

@implementation GKContentView

- (GKContentView)initWithTitle:(id)title message:(id)message icon:(id)icon cancelButtonTitle:(id)buttonTitle otherButtonTitle:(id)otherButtonTitle
{
  v8.receiver = self;
  v8.super_class = GKContentView;
  return [(GKContentView *)&v8 init:title];
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
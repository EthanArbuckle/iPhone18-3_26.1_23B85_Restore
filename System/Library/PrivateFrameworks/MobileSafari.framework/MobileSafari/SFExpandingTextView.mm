@interface SFExpandingTextView
- (CGSize)intrinsicContentSize;
- (SFExpandingTextView)initWithMaxHeight:(double)height;
- (void)setText:(id)text;
@end

@implementation SFExpandingTextView

- (SFExpandingTextView)initWithMaxHeight:(double)height
{
  v8.receiver = self;
  v8.super_class = SFExpandingTextView;
  v4 = [(SFExpandingTextView *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_maxHeight = height;
    [(SFExpandingTextView *)v4 setScrollEnabled:0];
    v6 = v5;
  }

  return v5;
}

- (CGSize)intrinsicContentSize
{
  v10.receiver = self;
  v10.super_class = SFExpandingTextView;
  [(SFExpandingTextView *)&v10 intrinsicContentSize];
  v5 = v4;
  v6 = v3;
  maxHeight = self->_maxHeight;
  if (maxHeight != 0.0)
  {
    [(SFExpandingTextView *)self setScrollEnabled:v3 >= maxHeight];
    if (v6 >= maxHeight)
    {
      v6 = self->_maxHeight;
    }
  }

  v8 = v5;
  v9 = v6;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = SFExpandingTextView;
  [(SFExpandingTextView *)&v4 setText:text];
  [(SFExpandingTextView *)self invalidateIntrinsicContentSize];
}

@end
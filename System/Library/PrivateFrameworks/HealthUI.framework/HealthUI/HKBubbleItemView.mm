@interface HKBubbleItemView
- (HKBubbleItemView)initWithBackground:(id)background bubbleContent:(id)content;
@end

@implementation HKBubbleItemView

- (HKBubbleItemView)initWithBackground:(id)background bubbleContent:(id)content
{
  backgroundCopy = background;
  contentCopy = content;
  v11.receiver = self;
  v11.super_class = HKBubbleItemView;
  v8 = [(HKBubbleItemView *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKBubbleItemView *)v8 setBackgroundView:backgroundCopy];
    [(HKBubbleItemView *)v9 setBubbleContent:contentCopy];
  }

  return v9;
}

@end
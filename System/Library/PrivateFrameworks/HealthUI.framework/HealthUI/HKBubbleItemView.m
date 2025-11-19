@interface HKBubbleItemView
- (HKBubbleItemView)initWithBackground:(id)a3 bubbleContent:(id)a4;
@end

@implementation HKBubbleItemView

- (HKBubbleItemView)initWithBackground:(id)a3 bubbleContent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = HKBubbleItemView;
  v8 = [(HKBubbleItemView *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(HKBubbleItemView *)v8 setBackgroundView:v6];
    [(HKBubbleItemView *)v9 setBubbleContent:v7];
  }

  return v9;
}

@end
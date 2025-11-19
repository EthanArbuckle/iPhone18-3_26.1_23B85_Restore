@interface ReadingListContentUnavailableView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation ReadingListContentUnavailableView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if ([v7 type] == 9)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ReadingListContentUnavailableView;
    v8 = [(ReadingListContentUnavailableView *)&v10 pointInside:v7 withEvent:x, y];
  }

  return v8;
}

@end
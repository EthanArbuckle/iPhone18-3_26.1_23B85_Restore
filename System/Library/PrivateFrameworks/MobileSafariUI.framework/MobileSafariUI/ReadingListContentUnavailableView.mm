@interface ReadingListContentUnavailableView
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
@end

@implementation ReadingListContentUnavailableView

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  if ([eventCopy type] == 9)
  {
    v8 = 0;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = ReadingListContentUnavailableView;
    v8 = [(ReadingListContentUnavailableView *)&v10 pointInside:eventCopy withEvent:x, y];
  }

  return v8;
}

@end
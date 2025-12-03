@interface EvergreenCollectionViewCell
- (id)hitTest:(CGPoint)test withEvent:(id)event;
@end

@implementation EvergreenCollectionViewCell

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for EvergreenCollectionViewCell();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(EvergreenCollectionViewCell *)&v13 hitTest:eventCopy withEvent:x, y];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIButton);
    isKindOfClass_ = [v10 isKindOfClass_];

    if (isKindOfClass_)
    {
      eventCopy = v7;
    }

    else
    {
      eventCopy = v10;
    }

    if (isKindOfClass_)
    {
      v7 = v10;
    }
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

@end
@interface EvergreenCollectionViewCell
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation EvergreenCollectionViewCell

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for EvergreenCollectionViewCell();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(EvergreenCollectionViewCell *)&v13 hitTest:v8 withEvent:x, y];
  if (v9)
  {
    v10 = v9;
    type metadata accessor for NSAttributedString(0, &lazy cache variable for type metadata for UIButton);
    v11 = [v10 isKindOfClass_];

    if (v11)
    {
      v8 = v7;
    }

    else
    {
      v8 = v10;
    }

    if (v11)
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
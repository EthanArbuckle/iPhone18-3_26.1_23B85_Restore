@interface MosaicCollectionViewCell
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)handleTraitChange;
@end

@implementation MosaicCollectionViewCell

- (void)handleTraitChange
{
  v2 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_containerView);
  v6 = self;
  v3 = v2;
  v4 = [(MosaicCollectionViewCell *)v6 traitCollection];
  v5 = [v4 userInterfaceStyle];

  specialized static CommonTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v3, v5);
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for MosaicCollectionViewCell();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(MosaicCollectionViewCell *)&v13 hitTest:v8 withEvent:x, y];
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
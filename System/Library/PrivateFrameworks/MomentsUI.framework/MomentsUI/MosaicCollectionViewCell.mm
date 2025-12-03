@interface MosaicCollectionViewCell
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)handleTraitChange;
@end

@implementation MosaicCollectionViewCell

- (void)handleTraitChange
{
  v2 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC9MomentsUI24MosaicCollectionViewCell_containerView);
  selfCopy = self;
  v3 = v2;
  traitCollection = [(MosaicCollectionViewCell *)selfCopy traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  specialized static CommonTheme.Styles.styleViewAsPlatter(view:traitCollection:)(v3, userInterfaceStyle);
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for MosaicCollectionViewCell();
  v7 = v13.receiver;
  eventCopy = event;
  v9 = [(MosaicCollectionViewCell *)&v13 hitTest:eventCopy withEvent:x, y];
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
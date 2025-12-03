@interface CoverViewActionButton
- (BOOL)isHighlighted;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation CoverViewActionButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CoverViewActionButton();
  return [(CoverViewActionButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CoverViewActionButton();
  v4 = v5.receiver;
  [(CoverViewActionButton *)&v5 setHighlighted:highlightedCopy];
  sub_1D6D96784();
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  selfCopy = self;
  [(CoverViewActionButton *)selfCopy bounds];
  v14.origin.x = UIEdgeInsetsInsetRect(v7, v8, v9, v10, *(&selfCopy->super.super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_touchInsets), *(&selfCopy->super.super.super.super._responderFlags + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_touchInsets));
  v13.x = x;
  v13.y = y;
  v11 = CGRectContainsPoint(v14, v13);

  return v11;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_1D6D96E68();

  return v7;
}

@end
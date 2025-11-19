@interface CoverViewActionButton
- (BOOL)isHighlighted;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation CoverViewActionButton

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CoverViewActionButton();
  return [(CoverViewActionButton *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for CoverViewActionButton();
  v4 = v5.receiver;
  [(CoverViewActionButton *)&v5 setHighlighted:v3];
  sub_1D6D96784();
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v6 = self;
  [(CoverViewActionButton *)v6 bounds];
  v14.origin.x = UIEdgeInsetsInsetRect(v7, v8, v9, v10, *(&v6->super.super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_touchInsets), *(&v6->super.super.super.super._responderFlags + OBJC_IVAR____TtC8NewsFeed21CoverViewActionButton_touchInsets));
  v13.x = x;
  v13.y = y;
  v11 = CGRectContainsPoint(v14, v13);

  return v11;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1D6D96E68();

  return v7;
}

@end
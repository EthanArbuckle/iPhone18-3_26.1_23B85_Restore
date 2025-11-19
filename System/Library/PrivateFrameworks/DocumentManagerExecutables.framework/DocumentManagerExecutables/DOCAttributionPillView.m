@interface DOCAttributionPillView
- (BOOL)isHighlighted;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
- (void)handleTap:(id)a3;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation DOCAttributionPillView

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCAttributionPillView();
  return [(DOCAttributionPillView *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for DOCAttributionPillView();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(DOCAttributionPillView *)&v9 isHighlighted];
  v8.receiver = v6;
  v8.super_class = v5;
  [(DOCAttributionPillView *)&v8 setHighlighted:v3];
  DOCAttributionPillView.isHighlighted.didset(v7);
}

- (void)handleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  if ([v4 state] == 3)
  {
    [(DOCAttributionPillView *)v5 sendActionsForControlEvents:64];
  }
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCAttributionPillView();
  v2 = v4.receiver;
  [(DOCAttributionPillView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC26DocumentManagerExecutables22DOCAttributionPillView_backgroundView];
  [v3 bounds];
  [v3 _setContinuousCornerRadius_];
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(0, 0, 0, closure #1 in DOCAttributionPillView.contextMenuInteraction(_:configurationForMenuAtLocation:)partial apply, v4);

  return v5;
}

@end
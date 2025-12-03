@interface DOCAttributionPillView
- (BOOL)isHighlighted;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
- (void)handleTap:(id)tap;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation DOCAttributionPillView

- (BOOL)isHighlighted
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCAttributionPillView();
  return [(DOCAttributionPillView *)&v3 isHighlighted];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v5 = type metadata accessor for DOCAttributionPillView();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHighlighted = [(DOCAttributionPillView *)&v9 isHighlighted];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(DOCAttributionPillView *)&v8 setHighlighted:highlightedCopy];
  DOCAttributionPillView.isHighlighted.didset(isHighlighted);
}

- (void)handleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  if ([tapCopy state] == 3)
  {
    [(DOCAttributionPillView *)selfCopy sendActionsForControlEvents:64];
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

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  type metadata accessor for NSMutableAttributedString(0, &lazy cache variable for type metadata for UIContextMenuConfiguration);
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = UIContextMenuConfiguration.init(identifier:previewProvider:actionProvider:)(0, 0, 0, closure #1 in DOCAttributionPillView.contextMenuInteraction(_:configurationForMenuAtLocation:)partial apply, v4);

  return v5;
}

@end
@interface DOCProgressCollectionIndicatorView
- (BOOL)isHidden;
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView)initWithFrame:(CGRect)frame;
- (id)pointerInteraction:(id)interaction styleForRegion:(id)region;
- (void)didMoveToWindow;
- (void)didTap;
- (void)setHidden:(BOOL)hidden;
@end

@implementation DOCProgressCollectionIndicatorView

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = 40.0;
  v4 = 40.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)didTap
{
  v2 = *((*MEMORY[0x277D85000] & self->super.super.super.super.isa) + 0xB8);
  selfCopy = self;
  v3 = v2();
  if (v3)
  {
    [v3 progressIndicatorViewDidReceiveTap_];
    swift_unknownObjectRelease();
  }
}

- (id)pointerInteraction:(id)interaction styleForRegion:(id)region
{
  interactionCopy = interaction;
  regionCopy = region;
  selfCopy = self;
  v9 = specialized DOCProgressCollectionIndicatorView.pointerInteraction(_:styleFor:)();

  return v9;
}

- (void)didMoveToWindow
{
  selfCopy = self;
  DOCProgressCollectionIndicatorView.didMoveToWindow()();
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCProgressCollectionIndicatorView();
  return [(DOCProgressCollectionIndicatorView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v5 = type metadata accessor for DOCProgressCollectionIndicatorView();
  v9.receiver = self;
  v9.super_class = v5;
  selfCopy = self;
  isHidden = [(DOCProgressCollectionIndicatorView *)&v9 isHidden];
  v8.receiver = selfCopy;
  v8.super_class = v5;
  [(DOCProgressCollectionIndicatorView *)&v8 setHidden:hiddenCopy];
  DOCProgressCollectionIndicatorView.isHidden.didset(isHidden);
}

- (_TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
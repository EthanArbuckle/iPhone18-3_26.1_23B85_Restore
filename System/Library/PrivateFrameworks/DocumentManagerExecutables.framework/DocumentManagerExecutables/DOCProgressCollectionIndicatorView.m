@interface DOCProgressCollectionIndicatorView
- (BOOL)isHidden;
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView)initWithFrame:(CGRect)a3;
- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4;
- (void)didMoveToWindow;
- (void)didTap;
- (void)setHidden:(BOOL)a3;
@end

@implementation DOCProgressCollectionIndicatorView

- (CGSize)sizeThatFits:(CGSize)a3
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
  v4 = self;
  v3 = v2();
  if (v3)
  {
    [v3 progressIndicatorViewDidReceiveTap_];
    swift_unknownObjectRelease();
  }
}

- (id)pointerInteraction:(id)a3 styleForRegion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized DOCProgressCollectionIndicatorView.pointerInteraction(_:styleFor:)();

  return v9;
}

- (void)didMoveToWindow
{
  v2 = self;
  DOCProgressCollectionIndicatorView.didMoveToWindow()();
}

- (BOOL)isHidden
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DOCProgressCollectionIndicatorView();
  return [(DOCProgressCollectionIndicatorView *)&v3 isHidden];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v5 = type metadata accessor for DOCProgressCollectionIndicatorView();
  v9.receiver = self;
  v9.super_class = v5;
  v6 = self;
  v7 = [(DOCProgressCollectionIndicatorView *)&v9 isHidden];
  v8.receiver = v6;
  v8.super_class = v5;
  [(DOCProgressCollectionIndicatorView *)&v8 setHidden:v3];
  DOCProgressCollectionIndicatorView.isHidden.didset(v7);
}

- (_TtC26DocumentManagerExecutables34DOCProgressCollectionIndicatorView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
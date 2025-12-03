@interface BackdropGradientView
- (_TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView)initWithCoder:(id)coder;
- (_TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView)initWithFrame:(CGRect)frame;
- (void)effectiveAppearanceDidChange:(id)change;
- (void)layoutSubviews;
@end

@implementation BackdropGradientView

- (_TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_gradientMaskLayer;
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CD9EB0]) init];
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_backdropConfiguration;
  if (one-time initialization token for sharedCaptureGroup != -1)
  {
    swift_once();
  }

  v6 = static BackdropGradientView.sharedCaptureGroup;
  type metadata accessor for DOCBackdropConfiguration();
  swift_allocObject();
  *(&self->super.super.super.super.super.isa + v5) = DOCBackdropConfiguration.init(renderMode:captureGroup:layoutHandler:)(1, v6, DOCGridLayout.specIconWidth.modify, 0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for BackdropGradientView();
  v2 = v5.receiver;
  [(_UIVisualEffectSubview *)&v5 layoutSubviews];
  v3 = *(**&v2[OBJC_IVAR____TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView_backdropConfiguration] + 296);

  v3(v4);
}

- (void)effectiveAppearanceDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for BackdropGradientView();
  changeCopy = change;
  v5 = v6.receiver;
  [(BackdropGradientView *)&v6 effectiveAppearanceDidChange:changeCopy];
  BackdropGradientView.updateAppearanceColorView(appearance:)(changeCopy);
}

- (_TtC26DocumentManagerExecutablesP33_0BFB980FCBDEF78F05FB1DEEFECAD8EF20BackdropGradientView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
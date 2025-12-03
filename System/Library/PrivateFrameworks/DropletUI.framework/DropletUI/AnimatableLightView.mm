@interface AnimatableLightView
- (_TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView)initWithFrame:(CGRect)frame preferringAudioReactivity:(BOOL)reactivity;
- (void)layoutSubviews;
@end

@implementation AnimatableLightView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AnimatableLightView();
  v2 = v5.receiver;
  [(AnimatableLightView *)&v5 layoutSubviews];
  v3 = sub_249ED289C();
  [v2 bounds];
  [v3 setFrame_];

  v4 = sub_249ED2960();
  [v2 bounds];
  [v4 setFrame_];
}

- (_TtC9DropletUIP33_1A307C73748F469B76839B7113A1F63419AnimatableLightView)initWithFrame:(CGRect)frame preferringAudioReactivity:(BOOL)reactivity
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
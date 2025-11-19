@interface DOCBackgroundColorView
- (_TtC26DocumentManagerExecutables22DOCBackgroundColorView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation DOCBackgroundColorView

- (_TtC26DocumentManagerExecutables22DOCBackgroundColorView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_backgroundLayer;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277CD9ED0]) init];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables22DOCBackgroundColorView_layerBackgroundColor) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  DOCBackgroundColorView.layoutSubviews()();
}

@end
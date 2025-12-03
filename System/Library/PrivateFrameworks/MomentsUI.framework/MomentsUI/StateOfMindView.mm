@interface StateOfMindView
- (_TtC9MomentsUI15StateOfMindView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation StateOfMindView

- (_TtC9MomentsUI15StateOfMindView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC9MomentsUI15StateOfMindView_gradientView;
  type metadata accessor for GradientView();
  *(&self->super.super.super.super.super.isa + v4) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(StateOfMindView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC9MomentsUI15StateOfMindView_gradientView];
  [v2 frame];
  [v3 setFrame_];
}

@end
@interface DOCTextFieldRoundedBackgroundView
- (BOOL)usePillShape;
- (CGRect)bounds;
- (_TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView)initWithCoder:(id)coder;
- (void)setBounds:(CGRect)bounds;
- (void)setUsePillShape:(BOOL)shape;
@end

@implementation DOCTextFieldRoundedBackgroundView

- (_TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView_usePillShape) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView____lazy_storage___backgroundProvidingTextField) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (BOOL)usePillShape
{
  v3 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView_usePillShape;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setUsePillShape:(BOOL)shape
{
  shapeCopy = shape;
  v5 = OBJC_IVAR____TtC26DocumentManagerExecutables33DOCTextFieldRoundedBackgroundView_usePillShape;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = shapeCopy;
  if (v6 != shapeCopy)
  {
    selfCopy = self;
    DOCTextFieldRoundedBackgroundView.updateStyling()();
  }
}

- (CGRect)bounds
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DOCTextFieldRoundedBackgroundView();
  [(DOCTextFieldRoundedBackgroundView *)&v6 bounds];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v8 = type metadata accessor for DOCTextFieldRoundedBackgroundView();
  v19.receiver = self;
  v19.super_class = v8;
  selfCopy = self;
  [(DOCTextFieldRoundedBackgroundView *)&v19 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18.receiver = selfCopy;
  v18.super_class = v8;
  [(DOCTextFieldRoundedBackgroundView *)&v18 setBounds:x, y, width, height];
  [(DOCTextFieldRoundedBackgroundView *)selfCopy bounds];
  v21.origin.x = v11;
  v21.origin.y = v13;
  v21.size.width = v15;
  v21.size.height = v17;
  if (!CGRectEqualToRect(v20, v21))
  {
    DOCTextFieldRoundedBackgroundView.updateStyling()();
  }
}

@end
@interface MUPlacePhotoObfuscationView
- (MUPlacePhotoObfuscationView)initWithCoder:(id)coder;
- (NSAttributedString)attributedText;
- (void)setAttributedText:(id)text;
@end

@implementation MUPlacePhotoObfuscationView

- (NSAttributedString)attributedText
{
  v3 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAttributedText:(id)text
{
  v5 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = text;
  textCopy = text;
  selfCopy = self;

  [*(&selfCopy->super.super.super.isa + OBJC_IVAR___MUPlacePhotoObfuscationView_label) setAttributedText_];
}

- (MUPlacePhotoObfuscationView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText) = 0;
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

@end
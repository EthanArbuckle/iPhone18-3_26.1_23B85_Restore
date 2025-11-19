@interface MUPlacePhotoObfuscationView
- (MUPlacePhotoObfuscationView)initWithCoder:(id)a3;
- (NSAttributedString)attributedText;
- (void)setAttributedText:(id)a3;
@end

@implementation MUPlacePhotoObfuscationView

- (NSAttributedString)attributedText
{
  v3 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (void)setAttributedText:(id)a3
{
  v5 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  swift_beginAccess();
  v6 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = a3;
  v7 = a3;
  v8 = self;

  [*(&v8->super.super.super.isa + OBJC_IVAR___MUPlacePhotoObfuscationView_label) setAttributedText_];
}

- (MUPlacePhotoObfuscationView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText) = 0;
  result = sub_1C584FD00();
  __break(1u);
  return result;
}

@end
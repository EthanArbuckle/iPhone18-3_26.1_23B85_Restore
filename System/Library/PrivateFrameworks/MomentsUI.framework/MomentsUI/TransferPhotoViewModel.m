@interface TransferPhotoViewModel
- (_TtC9MomentsUI22TransferPhotoViewModel)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TransferPhotoViewModel

- (_TtC9MomentsUI22TransferPhotoViewModel)initWithCoder:(id)a3
{
  v5 = OBJC_IVAR____TtC9MomentsUI22TransferPhotoViewModel_urlBasedImage;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI22TransferPhotoViewModel_urlBasedImage) = 0;
  type metadata accessor for URLBasedImage();
  v6 = a3;
  v7 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v8 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = v7;

  return TransferPhotoFamilyViewModel.init(coder:)(v6);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7 = self;
  TransferPhotoFamilyViewModel.encode(with:)(v4);
  v5 = (*((*MEMORY[0x277D85000] & v7->super.super.super.isa) + 0x298))();
  v6 = MEMORY[0x21CE91FC0](0x64657361426C7275, 0xED00006567616D49);
  [v4 encodeObject:v5 forKey:v6];
}

@end
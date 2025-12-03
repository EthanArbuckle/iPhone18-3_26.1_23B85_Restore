@interface TransferVideoViewModel
- (_TtC9MomentsUI22TransferVideoViewModel)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TransferVideoViewModel

- (_TtC9MomentsUI22TransferVideoViewModel)initWithCoder:(id)coder
{
  v5 = OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9MomentsUI22TransferVideoViewModel_urlBasedVideo) = 0;
  type metadata accessor for URLBasedVideo();
  coderCopy = coder;
  v7 = NSCoder.decodeObject<A>(of:forKey:)();
  swift_beginAccess();
  v8 = *(&self->super.super.super.isa + v5);
  *(&self->super.super.super.isa + v5) = v7;

  return TransferPhotoFamilyViewModel.init(coder:)(coderCopy);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  TransferPhotoFamilyViewModel.encode(with:)(coderCopy);
  v5 = (*((*MEMORY[0x277D85000] & selfCopy->super.super.super.isa) + 0x298))();
  v6 = MEMORY[0x21CE91FC0](0x64657361426C7275, 0xED00006F65646956);
  [coderCopy encodeObject:v5 forKey:v6];
}

@end
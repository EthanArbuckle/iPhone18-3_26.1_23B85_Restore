@interface BooksSettings
- (BooksSettings)init;
- (id)filterBrightImagesKey;
@end

@implementation BooksSettings

- (id)filterBrightImagesKey
{
  v0 = sub_241CF9008();

  return v0;
}

- (BooksSettings)init
{
  v2 = OBJC_IVAR___BooksSettings_defaults;
  if (qword_2810D56C8 != -1)
  {
    selfCopy = self;
    swift_once();
    self = selfCopy;
  }

  v3 = qword_2810D56D0;
  *(&self->super.isa + v2) = qword_2810D56D0;
  v7.receiver = self;
  v7.super_class = BooksSettings;
  v4 = v3;
  return [(BooksSettings *)&v7 init];
}

@end
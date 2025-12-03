@interface HealthPlatformContextProvider
- (void)storeDidUpdateWithNote:(id)note;
@end

@implementation HealthPlatformContextProvider

- (void)storeDidUpdateWithNote:(id)note
{
  v3 = sub_22855BE9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22855BE3C();

  HealthPlatformContextProvider.storeDidUpdate(note:)();

  (*(v4 + 8))(v7, v3);
}

@end
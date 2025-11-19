@interface ObjectAuthenticationObserver
- (void)handleNotification:(id)a3;
@end

@implementation ObjectAuthenticationObserver

- (void)handleNotification:(id)a3
{
  v3 = sub_1D4416E94();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();

  sub_1D43D2600();

  (*(v4 + 8))(v6, v3);
}

@end
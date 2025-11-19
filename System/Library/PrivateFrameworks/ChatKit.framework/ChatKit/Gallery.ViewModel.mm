@interface Gallery.ViewModel
- (void)handleBackgroundChannelChangeNotification:(id)a3;
@end

@implementation Gallery.ViewModel

- (void)handleBackgroundChannelChangeNotification:(id)a3
{
  v3 = sub_190D50FB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D50F60();
  sub_190D50920();
  sub_190AAD124();

  (*(v4 + 8))(v6, v3);
}

@end
@interface CommonNetworkObservation
- (void)networkStateDidChange:(id)change;
@end

@implementation CommonNetworkObservation

- (void)networkStateDidChange:(id)change
{
  v3 = sub_1AB45F284();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AB45F254();

  sub_1AB15A188();

  (*(v4 + 8))(v6, v3);
}

@end
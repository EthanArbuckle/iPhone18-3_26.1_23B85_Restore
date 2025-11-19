@interface OrganDonationRegisteredDataSource
- (void)listenForMedicalIDUpdatesWithNotification:(id)a3;
@end

@implementation OrganDonationRegisteredDataSource

- (void)listenForMedicalIDUpdatesWithNotification:(id)a3
{
  v3 = sub_1BA4A1018();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A0FC8();

  sub_1BA223460();

  (*(v4 + 8))(v6, v3);
}

@end
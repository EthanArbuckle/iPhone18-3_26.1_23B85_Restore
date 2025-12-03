@interface NetworkInfoPacketCaptureurDelegate
- (void)packetCaptureurTaskStatusChangedFor:(id)for toStatus:(int)status;
@end

@implementation NetworkInfoPacketCaptureurDelegate

- (void)packetCaptureurTaskStatusChangedFor:(id)for toStatus:(int)status
{
  (MEMORY[0x277D82BE0])();
  MEMORY[0x277D82BE0](self);
  v5 = sub_25B946F78();
  sub_25B89BFE4(v5, v6, status);

  MEMORY[0x277D82BD8](for);
  MEMORY[0x277D82BD8](self);
}

@end
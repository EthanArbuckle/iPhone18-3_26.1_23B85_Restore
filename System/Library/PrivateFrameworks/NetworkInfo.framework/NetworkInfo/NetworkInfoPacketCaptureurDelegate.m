@interface NetworkInfoPacketCaptureurDelegate
- (void)packetCaptureurTaskStatusChangedFor:(id)a3 toStatus:(int)a4;
@end

@implementation NetworkInfoPacketCaptureurDelegate

- (void)packetCaptureurTaskStatusChangedFor:(id)a3 toStatus:(int)a4
{
  (MEMORY[0x277D82BE0])();
  MEMORY[0x277D82BE0](self);
  v5 = sub_25B946F78();
  sub_25B89BFE4(v5, v6, a4);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

@end
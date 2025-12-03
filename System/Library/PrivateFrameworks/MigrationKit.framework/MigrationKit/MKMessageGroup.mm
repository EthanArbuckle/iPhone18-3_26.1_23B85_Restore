@interface MKMessageGroup
- (MKMessageGroup)init;
@end

@implementation MKMessageGroup

- (MKMessageGroup)init
{
  v7.receiver = self;
  v7.super_class = MKMessageGroup;
  v2 = [(MKMessageGroup *)&v7 init];
  if (v2)
  {
    generatedRoomNameForGroupChat = [MEMORY[0x277CCACA8] generatedRoomNameForGroupChat];
    [(MKMessageGroup *)v2 setRoomName:generatedRoomNameForGroupChat];

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(MKMessageGroup *)v2 setID:uUIDString];
  }

  return v2;
}

@end
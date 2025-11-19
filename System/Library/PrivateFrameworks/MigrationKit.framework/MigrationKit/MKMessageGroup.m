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
    v3 = [MEMORY[0x277CCACA8] generatedRoomNameForGroupChat];
    [(MKMessageGroup *)v2 setRoomName:v3];

    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    [(MKMessageGroup *)v2 setID:v5];
  }

  return v2;
}

@end
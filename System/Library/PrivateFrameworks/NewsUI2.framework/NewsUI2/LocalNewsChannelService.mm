@interface LocalNewsChannelService
- (NSArray)lastKnownChannelIDs;
- (void)setLastKnownChannelIDs:(id)a3;
@end

@implementation LocalNewsChannelService

- (NSArray)lastKnownChannelIDs
{

  sub_219BDC8E4();

  v2 = sub_219BF5904();

  return v2;
}

- (void)setLastKnownChannelIDs:(id)a3
{
  sub_219BF5924();

  sub_219BDC8F4();
}

@end
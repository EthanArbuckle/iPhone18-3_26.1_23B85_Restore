@interface GKSuggestedPlayerGroup
- (NSArray)players;
- (void)setPlayers:(id)players;
@end

@implementation GKSuggestedPlayerGroup

- (NSArray)players
{
  sub_24E331A14();
  sub_24DF95978();
  v2 = sub_24E347EE8();

  return v2;
}

- (void)setPlayers:(id)players
{
  sub_24DF95978();
  v4 = sub_24E347F08();
  selfCopy = self;
  sub_24E331ABC(v4);
}

@end
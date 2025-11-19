@interface GKSuggestedPlayerGroup
- (NSArray)players;
- (void)setPlayers:(id)a3;
@end

@implementation GKSuggestedPlayerGroup

- (NSArray)players
{
  sub_24E331A14();
  sub_24DF95978();
  v2 = sub_24E347EE8();

  return v2;
}

- (void)setPlayers:(id)a3
{
  sub_24DF95978();
  v4 = sub_24E347F08();
  v5 = self;
  sub_24E331ABC(v4);
}

@end
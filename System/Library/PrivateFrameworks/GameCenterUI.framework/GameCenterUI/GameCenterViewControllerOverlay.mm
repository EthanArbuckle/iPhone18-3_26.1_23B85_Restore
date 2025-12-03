@interface GameCenterViewControllerOverlay
- (void)didDismissDashboard;
- (void)finishAndPlay:(id)play;
- (void)finishWith:(id)with;
- (void)quitTurnBasedMatch:(id)match;
@end

@implementation GameCenterViewControllerOverlay

- (void)didDismissDashboard
{
  selfCopy = self;
  sub_24E0684E8();
}

- (void)finishAndPlay:(id)play
{
  playCopy = play;
  selfCopy = self;
  sub_24E068D00(playCopy, &unk_286119000, &unk_24E372530);
}

- (void)finishWith:(id)with
{
  withCopy = with;
  selfCopy = self;
  sub_24E068D00(withCopy, &unk_286118FD8, &unk_24E372520);
}

- (void)quitTurnBasedMatch:(id)match
{
  matchCopy = match;
  selfCopy = self;
  sub_24E068D00(matchCopy, &unk_286118FB0, &unk_24E372510);
}

@end
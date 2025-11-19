@interface GameCenterViewControllerOverlay
- (void)didDismissDashboard;
- (void)finishAndPlay:(id)a3;
- (void)finishWith:(id)a3;
- (void)quitTurnBasedMatch:(id)a3;
@end

@implementation GameCenterViewControllerOverlay

- (void)didDismissDashboard
{
  v2 = self;
  sub_24E0684E8();
}

- (void)finishAndPlay:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E068D00(v4, &unk_286119000, &unk_24E372530);
}

- (void)finishWith:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E068D00(v4, &unk_286118FD8, &unk_24E372520);
}

- (void)quitTurnBasedMatch:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_24E068D00(v4, &unk_286118FB0, &unk_24E372510);
}

@end
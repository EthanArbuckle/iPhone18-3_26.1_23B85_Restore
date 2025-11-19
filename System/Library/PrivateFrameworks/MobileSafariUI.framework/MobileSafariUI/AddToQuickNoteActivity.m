@interface AddToQuickNoteActivity
- (BOOL)canPerformWithTabDocument:(id)a3;
- (void)performActivityWithTabDocument:(id)a3;
@end

@implementation AddToQuickNoteActivity

- (void)performActivityWithTabDocument:(id)a3
{
  [a3 addAppHighlightCreatingLink:1];

  [(_SFActivity *)self activityDidFinish:1];
}

- (BOOL)canPerformWithTabDocument:(id)a3
{
  v3 = a3;
  v4 = +[Application sharedApplication];
  v5 = [v4 systemNoteTakingController];
  v6 = [v3 isPrivateBrowsingEnabled];

  LOBYTE(v3) = [v5 isNoteTakingSupportedWithPrivateBrowsing:v6];
  return v3;
}

@end
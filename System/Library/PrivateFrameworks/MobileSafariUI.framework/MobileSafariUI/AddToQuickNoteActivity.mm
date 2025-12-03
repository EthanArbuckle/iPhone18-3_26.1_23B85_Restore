@interface AddToQuickNoteActivity
- (BOOL)canPerformWithTabDocument:(id)document;
- (void)performActivityWithTabDocument:(id)document;
@end

@implementation AddToQuickNoteActivity

- (void)performActivityWithTabDocument:(id)document
{
  [document addAppHighlightCreatingLink:1];

  [(_SFActivity *)self activityDidFinish:1];
}

- (BOOL)canPerformWithTabDocument:(id)document
{
  documentCopy = document;
  v4 = +[Application sharedApplication];
  systemNoteTakingController = [v4 systemNoteTakingController];
  isPrivateBrowsingEnabled = [documentCopy isPrivateBrowsingEnabled];

  LOBYTE(documentCopy) = [systemNoteTakingController isNoteTakingSupportedWithPrivateBrowsing:isPrivateBrowsingEnabled];
  return documentCopy;
}

@end
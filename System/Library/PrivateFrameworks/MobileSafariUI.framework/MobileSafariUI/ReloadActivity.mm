@interface ReloadActivity
- (id)activityTitleWithTabDocument:(id)document;
- (id)systemImageNameWithTabDocument:(id)document;
- (void)performActivityWithTabDocument:(id)document;
@end

@implementation ReloadActivity

- (id)activityTitleWithTabDocument:(id)document
{
  [document canStopLoading];
  v3 = _WBSLocalizedString();

  return v3;
}

- (id)systemImageNameWithTabDocument:(id)document
{
  if ([document canStopLoading])
  {
    v3 = @"xmark";
  }

  else
  {
    v3 = @"arrow.clockwise";
  }

  return v3;
}

- (void)performActivityWithTabDocument:(id)document
{
  documentCopy = document;
  if ([documentCopy canStopLoading])
  {
    [documentCopy stopLoadingUserInitiated];
  }

  else
  {
    [documentCopy reloadUserInitiated];
  }

  [(_SFActivity *)self activityDidFinish:1];
}

@end
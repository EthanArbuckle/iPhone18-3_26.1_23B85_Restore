@interface ReloadActivity
- (id)activityTitleWithTabDocument:(id)a3;
- (id)systemImageNameWithTabDocument:(id)a3;
- (void)performActivityWithTabDocument:(id)a3;
@end

@implementation ReloadActivity

- (id)activityTitleWithTabDocument:(id)a3
{
  [a3 canStopLoading];
  v3 = _WBSLocalizedString();

  return v3;
}

- (id)systemImageNameWithTabDocument:(id)a3
{
  if ([a3 canStopLoading])
  {
    v3 = @"xmark";
  }

  else
  {
    v3 = @"arrow.clockwise";
  }

  return v3;
}

- (void)performActivityWithTabDocument:(id)a3
{
  v4 = a3;
  if ([v4 canStopLoading])
  {
    [v4 stopLoadingUserInitiated];
  }

  else
  {
    [v4 reloadUserInitiated];
  }

  [(_SFActivity *)self activityDidFinish:1];
}

@end
@interface SystemPaperViewControllerLinkDelegate
- (BOOL)linkingController:(id)controller shouldAddSynapseLinkItem:(id)item;
- (id)linkingControllerLinksMenuExcludedUserActivities:(id)activities;
- (void)linkingControllerLinksMightHaveChanged:(id)changed;
@end

@implementation SystemPaperViewControllerLinkDelegate

- (void)linkingControllerLinksMightHaveChanged:(id)changed
{
  changedCopy = changed;

  sub_21542951C(changedCopy);
}

- (BOOL)linkingController:(id)controller shouldAddSynapseLinkItem:(id)item
{
  controllerCopy = controller;
  itemCopy = item;

  v7 = sub_215429C30();

  return v7 & 1;
}

- (id)linkingControllerLinksMenuExcludedUserActivities:(id)activities
{
  activitiesCopy = activities;

  sub_2154297CC(activitiesCopy);

  sub_2151A6C9C(0, &qword_27CA5DBD0);
  v4 = sub_2154A1F3C();

  return v4;
}

@end
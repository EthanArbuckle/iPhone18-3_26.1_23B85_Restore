@interface SystemPaperViewControllerLinkDelegate
- (BOOL)linkingController:(id)a3 shouldAddSynapseLinkItem:(id)a4;
- (id)linkingControllerLinksMenuExcludedUserActivities:(id)a3;
- (void)linkingControllerLinksMightHaveChanged:(id)a3;
@end

@implementation SystemPaperViewControllerLinkDelegate

- (void)linkingControllerLinksMightHaveChanged:(id)a3
{
  v3 = a3;

  sub_21542951C(v3);
}

- (BOOL)linkingController:(id)a3 shouldAddSynapseLinkItem:(id)a4
{
  v5 = a3;
  v6 = a4;

  v7 = sub_215429C30();

  return v7 & 1;
}

- (id)linkingControllerLinksMenuExcludedUserActivities:(id)a3
{
  v3 = a3;

  sub_2154297CC(v3);

  sub_2151A6C9C(0, &qword_27CA5DBD0);
  v4 = sub_2154A1F3C();

  return v4;
}

@end
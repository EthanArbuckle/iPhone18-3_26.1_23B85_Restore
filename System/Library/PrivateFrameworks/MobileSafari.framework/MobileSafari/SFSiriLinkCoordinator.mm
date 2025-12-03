@interface SFSiriLinkCoordinator
+ (void)setApplicationProxy:(id)proxy;
- (SFSiriLinkActionPerformer)actionPerformer;
- (SFSiriLinkCoordinator)init;
- (id)changeReaderModeInteraction;
- (id)closeTabInteraction;
- (id)closeTabsInteraction;
- (id)closeViewInteraction;
- (id)createNewBookmarkInteraction;
- (id)createNewPrivateTabInteraction;
- (id)createNewTabGroupInteraction;
- (id)createReadingListItemInteraction;
- (id)findOnPageInteraction;
- (id)listenToPageSiriReaderInteraction;
- (id)navigateContinuousReadingListInteraction;
- (id)openBookmarkInTabInteraction;
- (id)openBookmarkInteraction;
- (id)openClearHistoryInteraction;
- (id)openReadingListItemInteraction;
- (id)openTabGroupInteraction;
- (id)openTabInteraction;
- (id)openViewInteraction;
- (id)searchTabsInteraction;
- (id)searchWebAssistantIntentInteraction;
- (id)webSearchInteraction;
@end

@implementation SFSiriLinkCoordinator

+ (void)setApplicationProxy:(id)proxy
{
  swift_unknownObjectRetain();
  _sSo21SFSiriLinkCoordinatorC12MobileSafariE19setApplicationProxyyySo09SFBrowsergH0_pFZ_0();

  swift_unknownObjectRelease();
}

- (SFSiriLinkCoordinator)init
{
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = SFSiriLinkCoordinator;
  return [(SFSiriLinkCoordinator *)&v4 init];
}

- (id)createNewBookmarkInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC4D340;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B8073C4();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)createReadingListItemInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC50F10;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B807638();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)openBookmarkInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC4D330;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B80783C();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)openBookmarkInTabInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC4D320;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B807A40();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)openReadingListItemInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC50F00;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B807C40();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)changeReaderModeInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC41D20;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B807EB0();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)openTabInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC4C7E0;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B8084B0();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)closeTabInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC4C7D0;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B8086B4();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)createNewPrivateTabInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC4F4A0;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B808924();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)createNewTabGroupInteraction
{
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v2 = objc_allocWithZone(sub_18BC1F038());
  sub_18B808B34();
  v3 = sub_18BC1F028();

  return v3;
}

- (id)openTabGroupInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC4D0B0;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B808D6C();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)closeViewInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC42AC0;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B808F6C();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)openViewInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC42AD0;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B8091E0();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)webSearchInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC52B70;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B809450();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)navigateContinuousReadingListInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC4B528;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B8096C0();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)openClearHistoryInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC47040;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B809930();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)listenToPageSiriReaderInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC42330;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B809BA0();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)closeTabsInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC4C7B8;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B809DA4();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)searchTabsInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC420C0;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B80A188();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)findOnPageInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC4C240;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B80A3F8();
  v5 = sub_18BC1F028();

  return v5;
}

- (id)searchWebAssistantIntentInteraction
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = &unk_18BC44418;
  *(v3 + 24) = v2;
  v4 = objc_allocWithZone(sub_18BC1F038());
  sub_18B80A668();
  v5 = sub_18BC1F028();

  return v5;
}

- (SFSiriLinkActionPerformer)actionPerformer
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end
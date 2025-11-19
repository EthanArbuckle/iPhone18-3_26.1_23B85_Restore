@interface HUSelectableActionSetItemModule
- (HUSelectableActionSetItemModule)initWithHome:(id)a3 itemUpdater:(id)a4;
- (NSString)sceneSectionHeaderTitle;
- (id)buildItemProviders;
- (id)buildSectionsWithDisplayedItems:(id)a3;
- (void)setSceneSectionHeaderTitle:(id)a3;
@end

@implementation HUSelectableActionSetItemModule

- (NSString)sceneSectionHeaderTitle
{
  v2 = self + OBJC_IVAR___HUSelectableActionSetItemModule_sceneSectionHeaderTitle;
  swift_beginAccess();
  if (*(v2 + 1))
  {
    sub_20D5663C8();
    v3 = sub_20D5677F8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSceneSectionHeaderTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_20D567838();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___HUSelectableActionSetItemModule_sceneSectionHeaderTitle);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (id)buildItemProviders
{
  v2 = self;
  v3 = sub_20CF3AD64();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81AF70);
    sub_20CEF9114();
    v4 = sub_20D567CD8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)buildSectionsWithDisplayedItems:(id)a3
{
  sub_20CECF940(0, &qword_281120AC0);
  sub_20CEF99B4();
  sub_20D567D08();
  v4 = self;
  sub_20CF3B044();

  sub_20CECF940(0, &unk_28111FFD0);
  v5 = sub_20D567A58();

  return v5;
}

- (HUSelectableActionSetItemModule)initWithHome:(id)a3 itemUpdater:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = sub_20CF3B8B4(v5, a4);

  swift_unknownObjectRelease();
  return v6;
}

@end
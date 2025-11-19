@interface HUTipsManager_Swift
+ (HUTipsManager_Swift)sharedManager;
- (HUTipsManager_Swift)init;
- (uint64_t)warmUp;
- (void)donateAppLaunchEvent;
- (void)toggleDidInteract;
@end

@implementation HUTipsManager_Swift

+ (HUTipsManager_Swift)sharedManager
{
  if (qword_281120898 != -1)
  {
    swift_once();
  }

  v3 = qword_2811208A0;

  return v3;
}

- (void)toggleDidInteract
{
  v3 = sub_20D566458();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *&self->tileQuickToggleTip[OBJC_IVAR___HUTipsManager_Swift_tileQuickToggleTip];
  v8[0] = *(&self->super.isa + OBJC_IVAR___HUTipsManager_Swift_tileQuickToggleTip);
  v8[1] = v7;
  (*(v4 + 104))(v6, *MEMORY[0x277CE1A08], v3);
  sub_20CF7B774();
  sub_20D5663C8();
  sub_20D5662C8();
  (*(v4 + 8))(v6, v3);
}

- (void)donateAppLaunchEvent
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;
  sub_20D567EC8();
  sub_20CECF940(0, &qword_28111FAB8);
  v5 = sub_20D568518();
  sub_20D565868();

  v6 = sub_20D567C58();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  sub_20CF18960(0, 0, v4, &unk_20D5BFEC0, v7);
}

- (HUTipsManager_Swift)init
{
  v2 = (&self->super.isa + OBJC_IVAR___HUTipsManager_Swift_tileQuickToggleTip);
  *v2 = 0xD000000000000017;
  v2[1] = 0x800000020D5D0CF0;
  v3 = (&self->super.isa + OBJC_IVAR___HUTipsManager_Swift_unanalyzedCameraClipTip);
  *v3 = 0xD000000000000021;
  v3[1] = 0x800000020D5D0D10;
  v4 = (&self->super.isa + OBJC_IVAR___HUTipsManager_Swift_homeEnergyTip);
  *v4 = 0xD000000000000018;
  v4[1] = 0x800000020D5D0D40;
  v6.receiver = self;
  v6.super_class = type metadata accessor for TipsManager();
  return [(HUTipsManager_Swift *)&v6 init];
}

- (uint64_t)warmUp
{
  v0 = sub_20D5664D8();
  v12 = *(v0 - 8);
  v13 = v0;
  MEMORY[0x28223BE20](v0);
  v15 = &v11 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20D5664A8();
  v2 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20D566478();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (HFForceTipsOnboarding())
  {
    sub_20D5663B8();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81DA58);
  sub_20D5664F8();
  *(swift_allocObject() + 16) = xmmword_20D5BEE70;
  sub_20D566468();
  sub_20D566488();
  (*(v6 + 8))(v8, v5);
  sub_20D566498();
  sub_20D5664B8();
  (*(v2 + 8))(v4, v14);
  v9 = v15;
  sub_20D5664C8();
  sub_20D5664E8();
  (*(v12 + 8))(v9, v13);
  sub_20D5665F8();
}

@end
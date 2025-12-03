@interface GlanceModel
+ (id)localizedTitleKeyForButtonID:(int64_t)d;
- (BOOL)isThrottling:(int64_t)throttling;
- (BOOL)readAndPopulateButtonLayoutAllowSaving:(BOOL)saving;
- (NCCButtonDelegate)buttonDelegate;
- (NSString)cellularDataIndicator;
- (NSString)phoneSymbolName;
- (NSString)volumeRouteButtonSymbolName;
- (_TtC17NanoControlCenter11GlanceModel)init;
- (double)volume;
- (id)collectStateOfCCButtons:(BOOL)buttons;
- (void)displayLinkFired:(id)fired scrollDelta:(CGPoint)delta updateDebounce:(BOOL)debounce;
- (void)localeDidChange;
- (void)performAppearanceTransition:(int64_t)transition animated:(BOOL)animated completion:(id)completion;
- (void)resetLocale;
- (void)setButtonDelegate:(id)delegate;
- (void)setCellularDataIndicator:(id)indicator;
- (void)setConnectionStatus:(unint64_t)status connectionType:(unint64_t)type directCompanionConnection:(BOOL)connection;
- (void)setPhoneSymbolName:(id)name;
- (void)setSchoolModeButtonNotInUse:(BOOL)use;
- (void)setVolume:(double)volume;
- (void)setVolumeRouteButtonSymbolName:(id)name;
- (void)throttle:(int64_t)throttle;
- (void)unthrottle:(int64_t)unthrottle;
- (void)updateAnnounceMessagesButtonEnabledState:(BOOL)state;
- (void)updateEditMode:(BOOL)mode scrollToTop:(BOOL)top animated:(BOOL)animated;
- (void)updateHearingDevicesButtonPresence;
@end

@implementation GlanceModel

- (NSString)phoneSymbolName
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  sub_25AFA048C(&qword_27FA25250, type metadata accessor for GlanceModel);
  selfCopy = self;
  sub_25B004234();

  swift_beginAccess();

  v4 = sub_25B005924();

  return v4;
}

- (void)setPhoneSymbolName:(id)name
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_25B005934();
  v6 = v5;
  selfCopy = self;
  GlanceModel.phoneSymbolName.setter(v4, v6);
}

- (NCCButtonDelegate)buttonDelegate
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setButtonDelegate:(id)delegate
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

- (_TtC17NanoControlCenter11GlanceModel)init
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)collectStateOfCCButtons:(BOOL)buttons
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  GlanceModel.collectStateOfCCButtons(isCellularInThermalTrap:)(buttons);

  v6 = sub_25B0058B4();

  return v6;
}

- (void)setConnectionStatus:(unint64_t)status connectionType:(unint64_t)type directCompanionConnection:(BOOL)connection
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)resetLocale
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (void)updateEditMode:(BOOL)mode scrollToTop:(BOOL)top animated:(BOOL)animated
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  sub_25AF9D170(top);
}

+ (id)localizedTitleKeyForButtonID:(int64_t)d
{
  v4 = sub_25B004204();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_25B005904();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v15[-v10];
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_25AFA7234(d);
  sub_25B005914();
  (*(v6 + 16))(v8, v11, v5);
  if (qword_27FA23728 != -1)
  {
    swift_once();
  }

  v12 = qword_27FA30B00;
  sub_25B0041F4();
  sub_25B005954();
  (*(v6 + 8))(v11, v5);
  v13 = sub_25B005924();

  return v13;
}

- (void)localeDidChange
{
  v3 = sub_25B004204();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = *(self + OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_batteryFormatter);
  selfCopy = self;
  sub_25B0041F4();
  v9 = sub_25B0041D4();
  (*(v4 + 8))(v6, v3);
  [v7 setLocale_];
}

- (void)throttle:(int64_t)throttle
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[0] = throttle;
  memset(&v8[1], 0, 24);
  v9 = 0;
  swift_beginAccess();
  selfCopy = self;
  sub_25AF90344(v6, v8);
  swift_endAccess();

  sub_25AF18128(v6[0], v6[1], v6[2], v6[3], v7);
}

- (void)unthrottle:(int64_t)unthrottle
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8[0] = unthrottle;
  memset(&v8[1], 0, 24);
  v9 = 0;
  swift_beginAccess();
  selfCopy = self;
  sub_25AF99908(v8, v6);
  swift_endAccess();

  sub_25AF231D0(v6[0], v6[1], v6[2], v6[3], v7);
}

- (BOOL)isThrottling:(int64_t)throttling
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = OBJC_IVAR____TtC17NanoControlCenter11GlanceModel_throttledButtonIDs;
  swift_beginAccess();
  v6 = *(self + v5);
  v10[0] = throttling;
  memset(&v10[1], 0, 24);
  v11 = 0;
  selfCopy = self;

  v8 = sub_25AF70EDC(v10, v6);

  return v8 & 1;
}

- (NSString)cellularDataIndicator
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  GlanceModel.cellularDataIndicator.getter();
  v5 = v4;

  if (v5)
  {
    v6 = sub_25B005924();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

- (void)setCellularDataIndicator:(id)indicator
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (indicator)
  {
    v5 = sub_25B005934();
    indicator = v6;
  }

  else
  {
    v5 = 0;
  }

  selfCopy = self;
  GlanceModel.cellularDataIndicator.setter(v5, indicator);
}

- (void)setSchoolModeButtonNotInUse:(BOOL)use
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  KeyPath = swift_getKeyPath();
  v7 = !use;
  p_KeyPath = &KeyPath;
  selfCopy = self;
  sub_25AF759BC(0x64, 2, &p_KeyPath);
}

- (double)volume
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  GlanceModel.volume.getter();
  v5 = v4;

  return v5;
}

- (void)setVolume:(double)volume
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  KeyPath = swift_getKeyPath();
  volumeCopy = volume;
  v8 = volumeCopy;
  v9 = 0;
  p_KeyPath = &KeyPath;
  selfCopy = self;
  sub_25AF75D34(0x19, 2, &p_KeyPath, &unk_27FA255F0);
}

- (NSString)volumeRouteButtonSymbolName
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  GlanceModel.volumeRouteButtonSymbolName.getter();

  v4 = sub_25B005924();

  return v4;
}

- (void)setVolumeRouteButtonSymbolName:(id)name
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_25B005934();
  v6 = v5;
  v8[0] = swift_getKeyPath();
  v8[1] = v4;
  v8[2] = v6;
  v9 = v8;
  selfCopy = self;
  sub_25AF75D34(0x19, 2, &v9, &qword_27FA242A0);
}

- (void)performAppearanceTransition:(int64_t)transition animated:(BOOL)animated completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = transition;
  *(v13 + 24) = animated;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_25B005B64();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_25B00EDB0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_25B00EDC0;
  v16[5] = v15;
  selfCopy = self;
  sub_25AF8E4E0(0, 0, v11, &unk_25B00EDD0, v16);
}

- (BOOL)readAndPopulateButtonLayoutAllowSaving:(BOOL)saving
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  GlanceModel.readAndPopulateButtonLayout(allowSaving:)(saving);

  return 1;
}

- (void)displayLinkFired:(id)fired scrollDelta:(CGPoint)delta updateDebounce:(BOOL)debounce
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  firedCopy = fired;
  selfCopy = self;
  _s17NanoControlCenter11GlanceModelC16displayLinkFired_11scrollDelta14updateDebounceySo09CADisplayG0C_So7CGPointVSbtF_0();
}

- (void)updateAnnounceMessagesButtonEnabledState:(BOOL)state
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  KeyPath = swift_getKeyPath();
  stateCopy = state;
  p_KeyPath = &KeyPath;
  selfCopy = self;
  sub_25AF759BC(0x12, 2, &p_KeyPath);
}

- (void)updateHearingDevicesButtonPresence
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  _s17NanoControlCenter11GlanceModelC34updateHearingDevicesButtonPresenceyyF_0();
}

@end
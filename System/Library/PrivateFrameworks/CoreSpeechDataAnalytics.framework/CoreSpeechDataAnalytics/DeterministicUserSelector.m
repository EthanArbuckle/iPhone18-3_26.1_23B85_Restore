@interface DeterministicUserSelector
+ (id)calculateAnchorDateWithTargetSlot:(int64_t)a3;
+ (id)calculateAnchorDateWithTargetSlot:(int64_t)a3 currentDate:(id)a4;
+ (id)calculateUserSlotWithDeviceID:(id)a3 siriSharedUserId:(id)a4 locale:(id)a5;
- (_TtC23CoreSpeechDataAnalytics25DeterministicUserSelector)init;
@end

@implementation DeterministicUserSelector

+ (id)calculateUserSlotWithDeviceID:(id)a3 siriSharedUserId:(id)a4 locale:(id)a5
{
  v6 = sub_24794EF04();
  v8 = v7;
  if (a4)
  {
    v9 = sub_24794EF04();
    a4 = v10;
  }

  else
  {
    v9 = 0;
  }

  v11 = sub_24794EF04();
  v13 = _s23CoreSpeechDataAnalytics25DeterministicUserSelectorC09calculateF4Slot8deviceID010siriSharedF2Id6localeSo8NSNumberCSgSS_SSSgSStFZ_0(v6, v8, v9, a4, v11, v12);

  return v13;
}

+ (id)calculateAnchorDateWithTargetSlot:(int64_t)a3 currentDate:(id)a4
{
  v5 = sub_24794EBB4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v19 - v12;
  sub_24794EB94();
  static DeterministicUserSelector.calculateAnchorDate(targetSlot:currentDate:)(a3, v13);
  v14 = *(v6 + 8);
  v14(v9, v5);
  v15 = (*(v6 + 48))(v13, 1, v5);
  v16 = 0;
  if (v15 != 1)
  {
    v17 = sub_24794EB34();
    v14(v13, v5);
    v16 = v17;
  }

  return v16;
}

+ (id)calculateAnchorDateWithTargetSlot:(int64_t)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE572D0, &unk_2479504E0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - v6;
  static DeterministicUserSelector.calculateAnchorDate(targetSlot:)(a3, &v14 - v6);
  v8 = sub_24794EBB4();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v7, 1, v8);
  v11 = 0;
  if (v10 != 1)
  {
    v12 = sub_24794EB34();
    (*(v9 + 8))(v7, v8);
    v11 = v12;
  }

  return v11;
}

- (_TtC23CoreSpeechDataAnalytics25DeterministicUserSelector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
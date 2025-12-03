@interface FirstGlanceAchievementUtilities
+ (void)achievementShouldSuggestRecoveryWithAchievement:(ACHAchievement *)achievement completion:(id)completion;
- (FirstGlanceAchievementUtilities)init;
@end

@implementation FirstGlanceAchievementUtilities

+ (void)achievementShouldSuggestRecoveryWithAchievement:(ACHAchievement *)achievement completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7D6570, &qword_2278C9AE0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = achievement;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_2278C7840();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_2278C9FE8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2278C9FF0;
  v15[5] = v14;
  achievementCopy = achievement;
  sub_227888270(0, 0, v10, &unk_2278CDDA0, v15);
}

- (FirstGlanceAchievementUtilities)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FirstGlanceAchievementUtilities();
  return [(FirstGlanceAchievementUtilities *)&v3 init];
}

@end
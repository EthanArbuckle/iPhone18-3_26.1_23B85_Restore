@interface AutoPlayVideoSettingsManager
- (BOOL)isAutoPlayAllowed;
- (void)dealloc;
- (void)restoreFullScreenAudioSettings;
- (void)saveFullScreenAudioSettings;
- (void)updateAutoPlayVideoSettings;
@end

@implementation AutoPlayVideoSettingsManager

- (void)dealloc
{
  v3 = self + OBJC_IVAR____TtC12GameStoreKit28AutoPlayVideoSettingsManager_networkObservation;
  swift_beginAccess();
  if (*(v3 + 3))
  {
    sub_24E615E00(v3, v10);
    v4 = v11;
    v5 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v6 = *(v5 + 8);
    v7 = self;
    v6(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  else
  {
    v8 = self;
  }

  v9 = type metadata accessor for AutoPlayVideoSettingsManager();
  v13.receiver = self;
  v13.super_class = v9;
  [(AutoPlayVideoSettingsManager *)&v13 dealloc];
}

- (void)updateAutoPlayVideoSettings
{
  v2 = self;
  sub_24F2DBA44();
}

- (BOOL)isAutoPlayAllowed
{
  v2 = self;
  v3 = sub_24F2DAE78();

  return v3 & 1;
}

- (void)restoreFullScreenAudioSettings
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_24F91F648();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = [objc_opt_self() standardUserDefaults];
  sub_24EE32E48(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_24E601704(v2, &unk_27F22EC30);
    v14 = sub_24F92B098();
    [v13 setBool:0 forKey:v14];
  }

  else
  {
    (*(v4 + 32))(v12, v2, v3);
    sub_24F91F568();
    sub_24F91F638();
    sub_24F2DD150(&qword_27F2363D0, MEMORY[0x277CC9578]);
    v15 = sub_24F92AF78();
    v16 = *(v4 + 8);
    v16(v6, v3);
    v17 = sub_24F92B098();
    [v13 setBool:(v15 & 1) == 0 forKey:v17];

    v16(v9, v3);
    v16(v12, v3);
  }
}

- (void)saveFullScreenAudioSettings
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = [objc_opt_self() standardUserDefaults];
  if (sub_24EE331D8())
  {
    sub_24F91F638();
    v4 = sub_24F91F648();
    (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  }

  else
  {
    v5 = sub_24F91F648();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  }

  sub_24EE32FA0(v2);
}

@end
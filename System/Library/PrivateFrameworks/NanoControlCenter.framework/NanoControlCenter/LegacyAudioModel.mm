@interface LegacyAudioModel
- (_TtC17NanoControlCenter16LegacyAudioModel)init;
- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4;
@end

@implementation LegacyAudioModel

- (_TtC17NanoControlCenter16LegacyAudioModel)init
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = LegacyAudioModel.init()();

  return v2;
}

- (void)volumeController:(id)a3 volumeValueDidChange:(float)a4
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = sub_25B005B64();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_25B005B34();
  v9 = self;
  v10 = sub_25B005B24();
  v11 = swift_allocObject();
  v12 = MEMORY[0x277D85700];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = v9;
  sub_25AF6C7F8(0, 0, v7, &unk_25B00E7E8, v11);
}

@end
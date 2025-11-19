@interface ControlsModel
- (_TtC17NanoControlCenter13ControlsModel)init;
- (void)extensionsDidChangeForExtensionProvider:(id)a3;
@end

@implementation ControlsModel

- (_TtC17NanoControlCenter13ControlsModel)init
{
  sub_25B005B34();
  sub_25B005B24();
  sub_25B005AE4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_25AF10014();

  return v2;
}

- (void)extensionsDidChangeForExtensionProvider:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FA24790);
  MEMORY[0x28223BE20]();
  v5 = &v11 - v4;
  v6 = sub_25B005B64();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  sub_25B005B34();
  v7 = self;
  v8 = sub_25B005B24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = v7;
  sub_25AF6C7F8(0, 0, v5, &unk_25B009178, v9);
}

@end
@interface FBScene.Observer
- (_TtCE12DrawingBoardCSo7FBScene8Observer)init;
- (id)scene:(id)scene handleActions:(id)actions;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidActivate:(id)activate;
- (void)sceneWillActivate:(id)activate;
@end

@implementation FBScene.Observer

- (_TtCE12DrawingBoardCSo7FBScene8Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sceneContentStateDidChange:(id)change
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_249D39124(&qword_27EF1B090, _s8ObserverCMa);
  changeCopy = change;
  selfCopy = self;
  sub_249D72864();
}

- (void)sceneWillActivate:(id)activate
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  memset(v5, 0, sizeof(v5));
  v6 = 0;
  v7 = 0xA000000000000000;
  v8 = 0;
  v9 = 0;
  selfCopy = self;
  sub_249D379B0(v5);
}

- (void)sceneDidActivate:(id)activate
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  MEMORY[0x28223BE20]();
  sub_249D39124(&qword_27EF1B090, _s8ObserverCMa);
  selfCopy = self;
  sub_249D72864();
}

- (id)scene:(id)scene handleActions:(id)actions
{
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_249D38A20(0, &qword_27EF1B0A0);
  sub_249D38A68();
  v6 = sub_249D732D4();
  sceneCopy = scene;
  selfCopy = self;
  sub_249D38AD0(v6);
  v10 = v9;

  if (v10)
  {
    v11 = sub_249D732C4();
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

@end
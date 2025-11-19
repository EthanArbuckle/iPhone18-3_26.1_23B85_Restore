@interface FBScene.Observer
- (_TtCE12DrawingBoardCSo7FBScene8Observer)init;
- (id)scene:(id)a3 handleActions:(id)a4;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneWillActivate:(id)a3;
@end

@implementation FBScene.Observer

- (_TtCE12DrawingBoardCSo7FBScene8Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sceneContentStateDidChange:(id)a3
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
  v5 = a3;
  v6 = self;
  sub_249D72864();
}

- (void)sceneWillActivate:(id)a3
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
  v4 = self;
  sub_249D379B0(v5);
}

- (void)sceneDidActivate:(id)a3
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
  v4 = self;
  sub_249D72864();
}

- (id)scene:(id)a3 handleActions:(id)a4
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
  v7 = a3;
  v8 = self;
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
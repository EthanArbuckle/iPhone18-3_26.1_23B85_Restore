@interface UIPresenterObserver
- (_TtC12DrawingBoard19UIPresenterObserver)init;
- (void)scenePresenter:(id)presenter hostingWillChange:(BOOL)change;
@end

@implementation UIPresenterObserver

- (void)scenePresenter:(id)presenter hostingWillChange:(BOOL)change
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF1C1A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_249D73294();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_249D73274();
  selfCopy = self;
  v11 = sub_249D73264();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  *(v12 + 16) = v11;
  *(v12 + 24) = v13;
  *(v12 + 32) = selfCopy;
  *(v12 + 40) = change;
  sub_249D41820(0, 0, v8, &unk_249D76590, v12);
}

- (_TtC12DrawingBoard19UIPresenterObserver)init
{
  ObjectType = swift_getObjectType();
  sub_249D73274();
  sub_249D73264();
  sub_249D73254();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *(&self->super.isa + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__isHosting) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12DrawingBoard19UIPresenterObserver__presenter) = 0;
  sub_249D728A4();
  v6.receiver = self;
  v6.super_class = ObjectType;
  v4 = [(UIPresenterObserver *)&v6 init];

  return v4;
}

@end
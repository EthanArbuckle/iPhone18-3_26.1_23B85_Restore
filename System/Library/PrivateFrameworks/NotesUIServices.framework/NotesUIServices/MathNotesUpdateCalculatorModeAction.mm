@interface MathNotesUpdateCalculatorModeAction
- (_TtC15NotesUIServices35MathNotesUpdateCalculatorModeAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler;
- (void)performActionForSceneController:(id)controller;
@end

@implementation MathNotesUpdateCalculatorModeAction

- (void)performActionForSceneController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  MathNotesUpdateCalculatorModeAction.performAction(forSceneController:)(controllerCopy);
}

- (_TtC15NotesUIServices35MathNotesUpdateCalculatorModeAction)initWithInfo:(id)info timeout:(double)timeout forResponseOnQueue:(id)queue withHandler:(id)handler
{
  v9 = _Block_copy(handler);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_25C7A1BB4;
  }

  else
  {
    v10 = 0;
  }

  infoCopy = info;
  queueCopy = queue;
  return MathNotesUpdateCalculatorModeAction.init(info:timeout:forResponseOn:withHandler:)(info, queue, v9, v10, timeout);
}

@end
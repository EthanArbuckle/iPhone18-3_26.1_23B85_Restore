@interface MathNotesUpdateCalculatorModeAction
- (_TtC15NotesUIServices35MathNotesUpdateCalculatorModeAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (void)performActionForSceneController:(id)a3;
@end

@implementation MathNotesUpdateCalculatorModeAction

- (void)performActionForSceneController:(id)a3
{
  v4 = a3;
  v5 = self;
  MathNotesUpdateCalculatorModeAction.performAction(forSceneController:)(v4);
}

- (_TtC15NotesUIServices35MathNotesUpdateCalculatorModeAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  v9 = _Block_copy(a6);
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

  v11 = a3;
  v12 = a5;
  return MathNotesUpdateCalculatorModeAction.init(info:timeout:forResponseOn:withHandler:)(a3, a5, v9, v10, a4);
}

@end
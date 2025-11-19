@interface MathNotesUpdateSafeAreaInsetsAction
- (_TtC15NotesUIServices35MathNotesUpdateSafeAreaInsetsAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6;
- (void)performActionForSceneController:(id)a3;
@end

@implementation MathNotesUpdateSafeAreaInsetsAction

- (void)performActionForSceneController:(id)a3
{
  v4 = a3;
  v5 = self;
  MathNotesUpdateSafeAreaInsetsAction.performAction(forSceneController:)(v4);
}

- (_TtC15NotesUIServices35MathNotesUpdateSafeAreaInsetsAction)initWithInfo:(id)a3 timeout:(double)a4 forResponseOnQueue:(id)a5 withHandler:(id)a6
{
  v9 = _Block_copy(a6);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_25C7A1F28;
  }

  else
  {
    v10 = 0;
  }

  v11 = a3;
  v12 = a5;
  return MathNotesUpdateSafeAreaInsetsAction.init(info:timeout:forResponseOn:withHandler:)(a3, a5, v9, v10, a4);
}

@end
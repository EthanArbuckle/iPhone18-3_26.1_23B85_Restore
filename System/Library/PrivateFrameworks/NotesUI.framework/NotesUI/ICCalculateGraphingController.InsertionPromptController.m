@interface ICCalculateGraphingController.InsertionPromptController
- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4;
- (_TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController)init;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)noteWillPerformMerge:(id)a3;
- (void)promptTimerDidFire:(id)a3;
@end

@implementation ICCalculateGraphingController.InsertionPromptController

- (void)promptTimerDidFire:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D437A41C();
}

- (void)noteWillPerformMerge:(id)a3
{
  v4 = sub_1D4416E94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();
  v8 = *(v5 + 8);
  v9 = self;
  v8(v7, v4);
  *(&v9->super.isa + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_noteIsMerging) = 1;
}

- (_TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGRect)editMenuInteraction:(id)a3 targetRectForConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1D437A594();
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  if (self->state[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state] == 1)
  {
    v7 = [*(&self->super.isa + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state) makeMenu];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_1D437A89C();

  swift_unknownObjectRelease();
}

@end
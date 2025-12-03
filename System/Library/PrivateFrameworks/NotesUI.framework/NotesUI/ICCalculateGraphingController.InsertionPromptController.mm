@interface ICCalculateGraphingController.InsertionPromptController
- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration;
- (_TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController)init;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)noteWillPerformMerge:(id)merge;
- (void)promptTimerDidFire:(id)fire;
@end

@implementation ICCalculateGraphingController.InsertionPromptController

- (void)promptTimerDidFire:(id)fire
{
  fireCopy = fire;
  selfCopy = self;
  sub_1D437A41C();
}

- (void)noteWillPerformMerge:(id)merge
{
  v4 = sub_1D4416E94();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4416E54();
  v8 = *(v5 + 8);
  selfCopy = self;
  v8(v7, v4);
  *(&selfCopy->super.isa + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_noteIsMerging) = 1;
}

- (_TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (CGRect)editMenuInteraction:(id)interaction targetRectForConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
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

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  if (self->state[OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state] == 1)
  {
    makeMenu = [*(&self->super.isa + OBJC_IVAR____TtCE7NotesUICSo29ICCalculateGraphingController25InsertionPromptController_state) makeMenu];
  }

  else
  {
    makeMenu = 0;
  }

  return makeMenu;
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1D437A89C();

  swift_unknownObjectRelease();
}

@end
@interface DOCViewEditMenuInteraction
- (_TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction)init;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
- (void)longPressGesture:(id)gesture;
@end

@implementation DOCViewEditMenuInteraction

- (void)longPressGesture:(id)gesture
{
  gestureCopy = gesture;
  selfCopy = self;
  DOCViewEditMenuInteraction.longPressGesture(_:)(gestureCopy);
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  specialized DOCViewEditMenuInteraction.editMenuInteraction(_:menuFor:suggestedActions:)();
  v11 = v10;

  return v11;
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  v5 = self + OBJC_IVAR____TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction_activePresentationContext;
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[24] = 0;
  *(v5 + 2) = 0;
}

- (_TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
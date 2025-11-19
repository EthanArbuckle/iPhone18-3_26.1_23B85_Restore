@interface DOCViewEditMenuInteraction
- (_TtC26DocumentManagerExecutables26DOCViewEditMenuInteraction)init;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
- (void)longPressGesture:(id)a3;
@end

@implementation DOCViewEditMenuInteraction

- (void)longPressGesture:(id)a3
{
  v4 = a3;
  v5 = self;
  DOCViewEditMenuInteraction.longPressGesture(_:)(v4);
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  specialized DOCViewEditMenuInteraction.editMenuInteraction(_:menuFor:suggestedActions:)();
  v11 = v10;

  return v11;
}

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
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
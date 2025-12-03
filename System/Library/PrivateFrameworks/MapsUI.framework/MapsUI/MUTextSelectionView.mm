@interface MUTextSelectionView
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)didLongPress:(id)press;
- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator;
@end

@implementation MUTextSelectionView

- (void)didLongPress:(id)press
{
  v4 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_isSelected;
  swift_beginAccess();
  v5 = *(&self->super.super.super.isa + v4);
  *(&self->super.super.super.isa + v4) = 1;
  selfCopy = self;
  sub_1C565D83C(v5);
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v10 = sub_1C565E04C();

  return v10;
}

- (void)editMenuInteraction:(id)interaction willDismissMenuForConfiguration:(id)configuration animator:(id)animator
{
  v7 = swift_allocObject();
  *(v7 + 16) = self;
  v10[4] = sub_1C565E340;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C56444F8;
  v10[3] = &block_descriptor_8;
  v8 = _Block_copy(v10);
  selfCopy = self;
  swift_unknownObjectRetain();

  [animator addAnimations_];
  swift_unknownObjectRelease();

  _Block_release(v8);
}

@end
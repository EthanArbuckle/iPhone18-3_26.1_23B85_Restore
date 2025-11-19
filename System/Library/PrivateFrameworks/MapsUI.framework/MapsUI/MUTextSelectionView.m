@interface MUTextSelectionView
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (void)didLongPress:(id)a3;
- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5;
@end

@implementation MUTextSelectionView

- (void)didLongPress:(id)a3
{
  v4 = OBJC_IVAR____TtC6MapsUI19MUTextSelectionView_isSelected;
  swift_beginAccess();
  v5 = *(&self->super.super.super.isa + v4);
  *(&self->super.super.super.isa + v4) = 1;
  v6 = self;
  sub_1C565D83C(v5);
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_1C565E04C();

  return v10;
}

- (void)editMenuInteraction:(id)a3 willDismissMenuForConfiguration:(id)a4 animator:(id)a5
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
  v9 = self;
  swift_unknownObjectRetain();

  [a5 addAnimations_];
  swift_unknownObjectRelease();

  _Block_release(v8);
}

@end
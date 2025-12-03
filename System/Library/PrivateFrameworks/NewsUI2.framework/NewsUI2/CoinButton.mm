@interface CoinButton
- (_TtC7NewsUI210CoinButton)initWithCoder:(id)coder;
@end

@implementation CoinButton

- (_TtC7NewsUI210CoinButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC7NewsUI210CoinButton_linkedToggle) = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC7NewsUI210CoinButton_toggleState;
  v5 = *MEMORY[0x277D6D338];
  v6 = sub_219BE5C64();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7NewsUI210CoinButton_isBouncingEnabled) = 1;
  v7 = OBJC_IVAR____TtC7NewsUI210CoinButton_onTap;
  sub_218803FE0();
  *(&self->super.super.super.super.super.isa + v7) = [objc_allocWithZone(v8) init];
  result = sub_219BF7514();
  __break(1u);
  return result;
}

@end
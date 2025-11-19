@interface DetailsViewPresentationState
- (_TtC7ChatKit28DetailsViewPresentationState)init;
@end

@implementation DetailsViewPresentationState

- (_TtC7ChatKit28DetailsViewPresentationState)init
{
  v3 = sub_190D53FB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D53FA0();
  (*(v4 + 32))(self + OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationPath, v6, v3);
  v7 = (&self->super.isa + OBJC_IVAR____TtC7ChatKit28DetailsViewPresentationState__navigationTitle);
  *v7 = 0;
  v7[1] = 0;
  sub_190D51C50();
  v8 = type metadata accessor for DetailsViewPresentationState();
  v10.receiver = self;
  v10.super_class = v8;
  return [(DetailsViewPresentationState *)&v10 init];
}

@end
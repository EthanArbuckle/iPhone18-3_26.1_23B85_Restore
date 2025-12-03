@interface WidgetLocalNewsChannelService
- (_TtC7NewsUI229WidgetLocalNewsChannelService)init;
- (void)fetchWidgetLocalNewsChannelIDWithCompletion:(id)completion;
@end

@implementation WidgetLocalNewsChannelService

- (void)fetchWidgetLocalNewsChannelIDWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_2186D0BA8();
  selfCopy = self;
  sub_219BE3204();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_219AE8E24;
  *(v7 + 24) = v5;

  v8 = sub_219BE2E54();
  sub_219BE2F74();

  v9 = swift_allocObject();
  *(v9 + 16) = sub_219AE8E24;
  *(v9 + 24) = v5;

  v10 = sub_219BE2E54();
  sub_219BE2FD4();
}

- (_TtC7NewsUI229WidgetLocalNewsChannelService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
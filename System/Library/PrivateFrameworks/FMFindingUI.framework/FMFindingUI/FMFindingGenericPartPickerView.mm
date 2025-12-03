@interface FMFindingGenericPartPickerView
- (_TtC11FMFindingUI30FMFindingGenericPartPickerView)initWithFrame:(CGRect)frame;
- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration;
- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location;
@end

@implementation FMFindingGenericPartPickerView

- (_TtC11FMFindingUI30FMFindingGenericPartPickerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)_contextMenuInteraction:(id)interaction styleForMenuWithConfiguration:(id)configuration
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
  v9 = sub_24A50D4E8();

  return v9;
}

- (id)contextMenuInteraction:(id)interaction configurationForMenuAtLocation:(CGPoint)location
{
  sub_24A50D7EC(0, &qword_27EF4F3E0, 0x277D753B0);
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  selfCopy = self;
  v7 = sub_24A50CB44(0, 0, 0, sub_24A50D330, v5);

  return v7;
}

@end
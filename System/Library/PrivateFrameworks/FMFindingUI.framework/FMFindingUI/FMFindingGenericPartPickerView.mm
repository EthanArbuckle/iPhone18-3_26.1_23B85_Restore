@interface FMFindingGenericPartPickerView
- (_TtC11FMFindingUI30FMFindingGenericPartPickerView)initWithFrame:(CGRect)a3;
- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4;
- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4;
@end

@implementation FMFindingGenericPartPickerView

- (_TtC11FMFindingUI30FMFindingGenericPartPickerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)_contextMenuInteraction:(id)a3 styleForMenuWithConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_24A50D4E8();

  return v9;
}

- (id)contextMenuInteraction:(id)a3 configurationForMenuAtLocation:(CGPoint)a4
{
  sub_24A50D7EC(0, &qword_27EF4F3E0, 0x277D753B0);
  v5 = swift_allocObject();
  *(v5 + 16) = self;
  v6 = self;
  v7 = sub_24A50CB44(0, 0, 0, sub_24A50D330, v5);

  return v7;
}

@end
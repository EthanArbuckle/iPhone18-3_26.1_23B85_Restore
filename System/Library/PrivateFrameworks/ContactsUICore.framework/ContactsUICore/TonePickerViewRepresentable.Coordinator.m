@interface TonePickerViewRepresentable.Coordinator
- (_TtCV14ContactsUICoreP33_EA00BFAD0B6A1DB4F54018AB8FB6008727TonePickerViewRepresentable11Coordinator)init;
- (void)picker:(id)a3 didPickItem:(id)a4;
@end

@implementation TonePickerViewRepresentable.Coordinator

- (void)picker:(id)a3 didPickItem:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    swift_unknownObjectRetain();
    sub_1A34CD920();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v8 = a3;
    v9 = self;
  }

  sub_1A3331A78(v10);

  sub_1A3288FDC(v10, &qword_1EB0C7690);
}

- (_TtCV14ContactsUICoreP33_EA00BFAD0B6A1DB4F54018AB8FB6008727TonePickerViewRepresentable11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
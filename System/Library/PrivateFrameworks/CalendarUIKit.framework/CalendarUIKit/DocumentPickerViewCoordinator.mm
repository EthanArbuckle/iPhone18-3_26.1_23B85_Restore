@interface DocumentPickerViewCoordinator
- (_TtC13CalendarUIKit29DocumentPickerViewCoordinator)init;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
@end

@implementation DocumentPickerViewCoordinator

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  sub_1CAD4BFF4();
  v6 = sub_1CAD4E214();
  pickerCopy = picker;
  selfCopy = self;
  sub_1CAC3EA18(pickerCopy, v6);
}

- (_TtC13CalendarUIKit29DocumentPickerViewCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
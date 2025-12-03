@interface HomeWiFiPickerContext
- (_TtC6HomeUI21HomeWiFiPickerContext)init;
- (_TtC6HomeUI21HomeWiFiPickerContext)initWithMediaAccessory:(id)accessory home:(id)home delegate:(id)delegate;
- (void)associateTo:(WiFiNetwork_Swift *)to completionHandler:(id)handler;
- (void)networkStatusWithCompletionHandler:(id)handler;
- (void)performScanWithCompletionHandler:(id)handler;
- (void)tearDown;
- (void)wifiPickerViewDidAppear;
- (void)wifiPickerViewDidDisappear;
@end

@implementation HomeWiFiPickerContext

- (_TtC6HomeUI21HomeWiFiPickerContext)initWithMediaAccessory:(id)accessory home:(id)home delegate:(id)delegate
{
  accessoryCopy = accessory;
  homeCopy = home;
  swift_unknownObjectRetain();
  return HomeWiFiPickerContext.init(with:home:delegate:)(accessoryCopy, homeCopy, delegate);
}

- (void)tearDown
{
  selfCopy = self;
  HomeWiFiPickerContext.tearDown()();
}

- (void)performScanWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5C9ED0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5C9ED8;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5C9EE0, v12);
}

- (void)associateTo:(WiFiNetwork_Swift *)to completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = to;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_20D567C58();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_20D5C9EB0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_20D5C9EB8;
  v14[5] = v13;
  toCopy = to;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v9, &unk_20D5C9EC0, v14);
}

- (void)networkStatusWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_20D567C58();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_20D5C9EA0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_20D5C5200;
  v12[5] = v11;
  selfCopy = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5BCD00, v12);
}

- (void)wifiPickerViewDidAppear
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_delegate);
  if (v2)
  {
    [v2 wifiPickerViewDidAppear];
  }
}

- (void)wifiPickerViewDidDisappear
{
  selfCopy = self;
  HomeWiFiPickerContext.tearDown()();
  v2 = *(&selfCopy->super.isa + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_delegate);
  if (v2)
  {
    [v2 wifiPickerViewDidDisappear];
  }
}

- (_TtC6HomeUI21HomeWiFiPickerContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
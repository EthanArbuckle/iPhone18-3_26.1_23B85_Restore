@interface HomeWiFiPickerContext
- (_TtC6HomeUI21HomeWiFiPickerContext)init;
- (_TtC6HomeUI21HomeWiFiPickerContext)initWithMediaAccessory:(id)a3 home:(id)a4 delegate:(id)a5;
- (void)associateTo:(WiFiNetwork_Swift *)a3 completionHandler:(id)a4;
- (void)networkStatusWithCompletionHandler:(id)a3;
- (void)performScanWithCompletionHandler:(id)a3;
- (void)tearDown;
- (void)wifiPickerViewDidAppear;
- (void)wifiPickerViewDidDisappear;
@end

@implementation HomeWiFiPickerContext

- (_TtC6HomeUI21HomeWiFiPickerContext)initWithMediaAccessory:(id)a3 home:(id)a4 delegate:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  return HomeWiFiPickerContext.init(with:home:delegate:)(v7, v8, a5);
}

- (void)tearDown
{
  v2 = self;
  HomeWiFiPickerContext.tearDown()();
}

- (void)performScanWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  sub_20D11C1C8(0, 0, v7, &unk_20D5C9EE0, v12);
}

- (void)associateTo:(WiFiNetwork_Swift *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
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
  v15 = a3;
  v16 = self;
  sub_20D11C1C8(0, 0, v9, &unk_20D5C9EC0, v14);
}

- (void)networkStatusWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C81C610);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
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
  v3 = self;
  HomeWiFiPickerContext.tearDown()();
  v2 = *(&v3->super.isa + OBJC_IVAR____TtC6HomeUI21HomeWiFiPickerContext_delegate);
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
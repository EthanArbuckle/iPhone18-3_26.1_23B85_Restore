@interface DBWidgetLayoutVehicleDataProvider
- (BOOL)isEnabled;
- (DBWidgetLayoutVehicleDataProvider)init;
- (DBWidgetLayoutVehicleDataProvider)initWithVehicleID:(id)a3 iconLayoutService:(id)a4 viewAreas:(id)a5;
- (NSArray)viewAreas;
- (NSString)vehicleID;
- (void)getWidgetStateWithCompletion:(id)a3;
- (void)resetWidgetState;
- (void)setCachedWidgetState:(id)a3;
- (void)setViewAreas:(id)a3;
- (void)setWidgetState:(id)a3 initiatedBy:(unint64_t)a4;
- (void)updateViewAreas:(id)a3 completion:(id)a4;
@end

@implementation DBWidgetLayoutVehicleDataProvider

- (NSString)vehicleID
{

  v2 = sub_248383930();

  return v2;
}

- (void)setCachedWidgetState:(id)a3
{
  v4 = *(self + OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_cachedWidgetState);
  *(self + OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_cachedWidgetState) = a3;
  v3 = a3;
}

- (NSArray)viewAreas
{
  type metadata accessor for CGRect(0);

  v2 = sub_248383B00();

  return v2;
}

- (void)setViewAreas:(id)a3
{
  type metadata accessor for CGRect(0);
  *(self + OBJC_IVAR___DBWidgetLayoutVehicleDataProvider_viewAreas) = sub_248383B10();
}

- (DBWidgetLayoutVehicleDataProvider)initWithVehicleID:(id)a3 iconLayoutService:(id)a4 viewAreas:(id)a5
{
  v7 = sub_248383960();
  v9 = v8;
  if (a5)
  {
    sub_24814FB28(0, &unk_27EE90E00);
    a5 = sub_248383B10();
  }

  return sub_2482F0EBC(v7, v9, a4, a5);
}

- (BOOL)isEnabled
{
  v2 = self;
  v3 = sub_2482F1C7C();

  return v3 & 1;
}

- (void)updateViewAreas:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_24814FB28(0, &unk_27EE90E00);
  v6 = sub_248383B10();
  _Block_copy(v5);
  v7 = self;
  sub_2482FB548(v6, v7, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)getWidgetStateWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE90480);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_248383BE0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_248383BB0();
  v11 = self;

  v12 = sub_248383BA0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v11;
  v13[5] = sub_2482FB450;
  v13[6] = v9;
  sub_2482E9E44(0, 0, v7, 0, 0, &unk_2483A0C38, v13);

  sub_24822D578(v7, &qword_27EE90480);
}

- (void)setWidgetState:(id)a3 initiatedBy:(unint64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_2482F539C(v6, a4);
}

- (void)resetWidgetState
{
  v2 = self;
  DBWidgetLayoutVehicleDataProvider.resetWidgetState()();
}

- (DBWidgetLayoutVehicleDataProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
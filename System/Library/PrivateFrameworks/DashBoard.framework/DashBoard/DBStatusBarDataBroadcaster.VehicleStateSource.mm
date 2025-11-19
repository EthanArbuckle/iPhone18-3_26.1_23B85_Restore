@interface DBStatusBarDataBroadcaster.VehicleStateSource
- (void)automakerStatusItemService:(id)a3 didUpdateHidden:(BOOL)a4;
- (void)automakerStatusItemService:(id)a3 didUpdateSortOrder:(unsigned __int8)a4;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)currentUserStatusService:(id)a3 didUpdateImage:(id)a4;
- (void)exteriorConditionsService:(id)a3 didUpdateAqi:(id)a4;
- (void)exteriorConditionsService:(id)a3 didUpdateTemperature:(id)a4;
- (void)statusItemService:(id)a3 didUpdateName:(id)a4;
@end

@implementation DBStatusBarDataBroadcaster.VehicleStateSource

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2482AB7B4(a4);
}

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2482ACD78();
}

- (void)exteriorConditionsService:(id)a3 didUpdateTemperature:(id)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91C40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  sub_24814FB28(0, &qword_27EE91C48);
  sub_248380FC0();
  v10 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x78);
  v11 = a3;
  v12 = self;
  if (v10())
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    v15 = swift_allocObject();
    *(v15 + 16) = v11;
    v16 = v6;
    v17 = *(v14 + 16);
    v18 = v11;
    v17(sub_2482ADAA8, v15, ObjectType, v14);
    v6 = v16;

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v7 + 8))(v9, v6);
}

- (void)exteriorConditionsService:(id)a3 didUpdateAqi:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91C28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  if (a4)
  {
    sub_24814FB28(0, &qword_27EE91C38);
    sub_248380FC0();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91C30);
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91C30);
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  v12 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x78);
  v13 = a3;
  v14 = self;
  if (v12())
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    v18 = swift_allocObject();
    *(v18 + 16) = v13;
    v19 = *(v16 + 16);
    v20 = v13;
    v19(sub_2482ADAA8, v18, ObjectType, v16);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_24822D578(v9, &qword_27EE91C28);
}

- (void)currentUserStatusService:(id)a3 didUpdateImage:(id)a4
{
  if (a4)
  {
    v6 = a3;
    v7 = self;
    v8 = a4;
    v9 = sub_2483811B0();
    sub_24823BD70(v9, v10);
  }

  else
  {
    v11 = a3;
    v12 = self;
  }

  if ((*((*MEMORY[0x277D85000] & self->super.isa) + 0x78))())
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    v17 = *(v14 + 16);
    v18 = a3;
    v17(sub_2482ADAB8, v16, ObjectType, v14);

    swift_unknownObjectRelease();
  }
}

- (void)statusItemService:(id)a3 didUpdateName:(id)a4
{
  v4 = self;
  sub_2482A5EF0();
}

- (void)automakerStatusItemService:(id)a3 didUpdateSortOrder:(unsigned __int8)a4
{
  v4 = self;
  sub_2482A5EF0();
}

- (void)automakerStatusItemService:(id)a3 didUpdateHidden:(BOOL)a4
{
  v4 = self;
  sub_2482A5EF0();
}

@end
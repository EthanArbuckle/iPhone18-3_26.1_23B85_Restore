@interface DBStatusBarDataBroadcaster.VehicleStateSource
- (void)automakerStatusItemService:(id)service didUpdateHidden:(BOOL)hidden;
- (void)automakerStatusItemService:(id)service didUpdateSortOrder:(unsigned __int8)order;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)currentUserStatusService:(id)service didUpdateImage:(id)image;
- (void)exteriorConditionsService:(id)service didUpdateAqi:(id)aqi;
- (void)exteriorConditionsService:(id)service didUpdateTemperature:(id)temperature;
- (void)statusItemService:(id)service didUpdateName:(id)name;
@end

@implementation DBStatusBarDataBroadcaster.VehicleStateSource

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  sub_2482AB7B4(car);
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  sub_2482ACD78();
}

- (void)exteriorConditionsService:(id)service didUpdateTemperature:(id)temperature
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91C40);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - v8;
  sub_24814FB28(0, &qword_27EE91C48);
  sub_248380FC0();
  v10 = *((*MEMORY[0x277D85000] & self->super.isa) + 0x78);
  serviceCopy = service;
  selfCopy = self;
  if (v10())
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    v15 = swift_allocObject();
    *(v15 + 16) = serviceCopy;
    v16 = v6;
    v17 = *(v14 + 16);
    v18 = serviceCopy;
    v17(sub_2482ADAA8, v15, ObjectType, v14);
    v6 = v16;

    swift_unknownObjectRelease();
  }

  else
  {
  }

  (*(v7 + 8))(v9, v6);
}

- (void)exteriorConditionsService:(id)service didUpdateAqi:(id)aqi
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE91C28);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v21 - v8;
  if (aqi)
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
  serviceCopy = service;
  selfCopy = self;
  if (v12())
  {
    v16 = v15;
    ObjectType = swift_getObjectType();
    v18 = swift_allocObject();
    *(v18 + 16) = serviceCopy;
    v19 = *(v16 + 16);
    v20 = serviceCopy;
    v19(sub_2482ADAA8, v18, ObjectType, v16);

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_24822D578(v9, &qword_27EE91C28);
}

- (void)currentUserStatusService:(id)service didUpdateImage:(id)image
{
  if (image)
  {
    serviceCopy = service;
    selfCopy = self;
    imageCopy = image;
    v9 = sub_2483811B0();
    sub_24823BD70(v9, v10);
  }

  else
  {
    serviceCopy2 = service;
    selfCopy2 = self;
  }

  if ((*((*MEMORY[0x277D85000] & self->super.isa) + 0x78))())
  {
    v14 = v13;
    ObjectType = swift_getObjectType();
    v16 = swift_allocObject();
    *(v16 + 16) = service;
    v17 = *(v14 + 16);
    serviceCopy3 = service;
    v17(sub_2482ADAB8, v16, ObjectType, v14);

    swift_unknownObjectRelease();
  }
}

- (void)statusItemService:(id)service didUpdateName:(id)name
{
  selfCopy = self;
  sub_2482A5EF0();
}

- (void)automakerStatusItemService:(id)service didUpdateSortOrder:(unsigned __int8)order
{
  selfCopy = self;
  sub_2482A5EF0();
}

- (void)automakerStatusItemService:(id)service didUpdateHidden:(BOOL)hidden
{
  selfCopy = self;
  sub_2482A5EF0();
}

@end
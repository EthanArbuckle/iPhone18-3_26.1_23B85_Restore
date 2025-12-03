@interface DBCAFCarManager
- (CAFCar)car;
- (_TtP9DashBoard23DBCAFCarManagerDelegate_)delegate;
- (void)carDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)positionManager:(id)manager didUpdateState:(unint64_t)state;
- (void)setCar:(id)car;
- (void)setDelegate:(id)delegate;
@end

@implementation DBCAFCarManager

- (_TtP9DashBoard23DBCAFCarManagerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4 = *((*MEMORY[0x277D85000] & *self) + 0x78);
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = v4();
  _s9DashBoard15DBCAFCarManagerC23carDidUpdateAccessoriesyySo6CAFCarCF_0(v6);
  swift_unknownObjectRelease();
}

- (CAFCar)car
{
  v3 = OBJC_IVAR____TtC9DashBoard15DBCAFCarManager_car;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setCar:(id)car
{
  v5 = OBJC_IVAR____TtC9DashBoard15DBCAFCarManager_car;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = car;
  carCopy = car;
  selfCopy = self;

  sub_24827B060();
}

- (void)positionManager:(id)manager didUpdateState:(unint64_t)state
{
  if (state != 3)
  {
    return;
  }

  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *self) + 0x78);
  managerCopy = manager;
  selfCopy = self;
  v8 = v6();
  if (v8)
  {
    v11 = v8;
    v9 = (*((*v5 & *selfCopy) + 0x60))();
    if (v9)
    {
      [v9 carManager:selfCopy didUpdateCar:v11];

      swift_unknownObjectRelease();
      return;
    }

    v10 = v11;
  }

  else
  {

    v10 = selfCopy;
  }
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  sub_24827B568(car);
}

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  _s9DashBoard15DBCAFCarManagerC23carDidUpdateAccessoriesyySo6CAFCarCF_0(accessories);
}

- (void)carDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  _s9DashBoard15DBCAFCarManagerC23carDidUpdateAccessoriesyySo6CAFCarCF_0(update);
}

@end
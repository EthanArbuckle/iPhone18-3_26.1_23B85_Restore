@interface DBCAFCarManager
- (CAFCar)car;
- (_TtP9DashBoard23DBCAFCarManagerDelegate_)delegate;
- (void)carDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)positionManager:(id)a3 didUpdateState:(unint64_t)a4;
- (void)setCar:(id)a3;
- (void)setDelegate:(id)a3;
@end

@implementation DBCAFCarManager

- (_TtP9DashBoard23DBCAFCarManagerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)a3
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  v4 = *((*MEMORY[0x277D85000] & *self) + 0x78);
  swift_unknownObjectRetain();
  v5 = self;
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

- (void)setCar:(id)a3
{
  v5 = OBJC_IVAR____TtC9DashBoard15DBCAFCarManager_car;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = a3;
  v7 = a3;
  v8 = self;

  sub_24827B060();
}

- (void)positionManager:(id)a3 didUpdateState:(unint64_t)a4
{
  if (a4 != 3)
  {
    return;
  }

  v5 = MEMORY[0x277D85000];
  v6 = *((*MEMORY[0x277D85000] & *self) + 0x78);
  v7 = a3;
  v12 = self;
  v8 = v6();
  if (v8)
  {
    v11 = v8;
    v9 = (*((*v5 & *v12) + 0x60))();
    if (v9)
    {
      [v9 carManager:v12 didUpdateCar:v11];

      swift_unknownObjectRelease();
      return;
    }

    v10 = v11;
  }

  else
  {

    v10 = v12;
  }
}

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_24827B568(a4);
}

- (void)carDidUpdateAccessories:(id)a3
{
  v5 = a3;
  v6 = self;
  _s9DashBoard15DBCAFCarManagerC23carDidUpdateAccessoriesyySo6CAFCarCF_0(a3);
}

- (void)carDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  _s9DashBoard15DBCAFCarManagerC23carDidUpdateAccessoriesyySo6CAFCarCF_0(a3);
}

@end
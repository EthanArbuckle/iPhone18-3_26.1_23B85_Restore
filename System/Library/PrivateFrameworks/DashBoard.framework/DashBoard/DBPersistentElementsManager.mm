@interface DBPersistentElementsManager
- (BOOL)hasClientWithPersistentElements;
- (BOOL)hasPersistentElementsForClient:(int64_t)a3;
- (_TtC9DashBoard27DBPersistentElementsManager)init;
- (_TtP9DashBoard35DBPersistentElementsManagerDelegate_)delegate;
- (id)observerFor:(int64_t)a3;
- (void)addObserver:(id)a3 for:(int64_t)a4;
- (void)clearPersistentElements;
- (void)removeObserverFor:(int64_t)a3;
- (void)updateWithPersistentElements:(id)a3;
@end

@implementation DBPersistentElementsManager

- (_TtP9DashBoard35DBPersistentElementsManagerDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC9DashBoard27DBPersistentElementsManager)init
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_observers;
  *(self + v4) = sub_2482C2390(MEMORY[0x277D84F90]);
  v5 = OBJC_IVAR____TtC9DashBoard27DBPersistentElementsManager_currentPersistentElements;
  v6 = sub_248381500();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(DBPersistentElementsManager *)&v8 init];
}

- (void)clearPersistentElements
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  v6 = sub_248381500();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = self;
  sub_2482BF01C(v5);

  sub_24822D578(v5, &qword_27EE923D8);
}

- (void)updateWithPersistentElements:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v14 - v6;
  v8 = sub_248381500();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a3;
  v13 = self;
  [v12 integerValue];
  sub_2483814E0();
  (*(v9 + 16))(v7, v11, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  sub_2482BF01C(v7);

  sub_24822D578(v7, &qword_27EE923D8);
  (*(v9 + 8))(v11, v8);
}

- (BOOL)hasClientWithPersistentElements
{
  v2 = self;
  v3 = DBPersistentElementsManager.hasClientWithPersistentElements.getter();

  return v3 & 1;
}

- (BOOL)hasPersistentElementsForClient:(int64_t)a3
{
  v4 = self;
  LOBYTE(a3) = DBPersistentElementsManager.hasPersistentElements(client:)(a3);

  return a3 & 1;
}

- (void)addObserver:(id)a3 for:(int64_t)a4
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  swift_unknownObjectRetain_n();
  v9 = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F0);
  sub_248382610();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923F8);
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  swift_beginAccess();
  sub_2482C0E00(v8, a4);
  swift_endAccess();
  if (DBPersistentElementsManager.hasPersistentElements(client:)(a4))
  {
    sub_2482C05D8(a4);
  }

  swift_unknownObjectRelease();
}

- (void)removeObserverFor:(int64_t)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE923E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  swift_beginAccess();
  v8 = self;
  sub_2482C13D0(a3, v7);
  swift_endAccess();

  sub_24822D578(v7, &qword_27EE923E8);
}

- (id)observerFor:(int64_t)a3
{
  v4 = self;
  v5 = DBPersistentElementsManager.observer(for:)(a3);

  return v5;
}

@end
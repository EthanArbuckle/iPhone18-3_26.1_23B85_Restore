@interface GestureNodeCoordinatorShim
- (BOOL)hasUnresolvedFailureDependenciesForNode:(id)a3;
- (NSArray)nodes;
- (_TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim)init;
- (id)failureDependentsForNode:(id)a3;
- (void)enqueueUpdatesForNodes:(id)a3 inBlock:(id)a4 reason:(id)a5;
- (void)processUpdatesWithReason:(id)a3;
- (void)setDidUpdateHandler:(id)a3;
- (void)setWillProcessUpdateQueueHandler:(id)a3;
- (void)setWillUpdateHandler:(id)a3;
- (void)updateWithNodes:(id)a3 reason:(id)a4 updateHandler:(id)a5;
@end

@implementation GestureNodeCoordinatorShim

- (BOOL)hasUnresolvedFailureDependenciesForNode:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  v5 = (*((*MEMORY[0x1E69E7D40] & *a3) + 0x78))();
  v6 = *(v4 + 112);
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_18E68B020(v5);

  swift_unknownObjectRelease();

  if (v8)
  {
  }

  return v8 != 0;
}

- (_TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim)init
{
  ObjectType = swift_getObjectType();
  v4 = (self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_willUpdateHandler);
  *v4 = 0;
  v4[1] = 0;
  v5 = (self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_willProcessUpdateQueueHandler);
  *v5 = 0;
  v5[1] = 0;
  v6 = (self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_didUpdateHandler);
  *v6 = 0;
  v6[1] = 0;
  type metadata accessor for GestureNodeCoordinator();
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v7 = swift_allocObject();
  *(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator) = sub_18E6934C4(v10, 0, v7);
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(GestureNodeCoordinatorShim *)&v9 init];
}

- (void)setWillProcessUpdateQueueHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_18E68F550;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_willProcessUpdateQueueHandler);
  v7 = *(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_willProcessUpdateQueueHandler);
  v8 = *(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_willProcessUpdateQueueHandler + 8);
  *v6 = v4;
  v6[1] = v5;
  v12 = self;
  sub_18E68CB70(v4);
  sub_18E6826D0(v7);
  v9 = *(v12 + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  sub_18E6826D0(v10);
}

- (void)updateWithNodes:(id)a3 reason:(id)a4 updateHandler:(id)a5
{
  v6 = _Block_copy(a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FA78, &qword_18E731688);
  v7 = sub_18E72B178();
  v8 = sub_18E72AFD8();
  v10 = v9;
  _Block_copy(v6);
  v11 = self;
  sub_18E694C5C(v7, v11, v6);
  _Block_release(v6);

  v12 = *(v11 + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  sub_18E688698(v8, v10, 1);
  _Block_release(v6);
}

- (void)enqueueUpdatesForNodes:(id)a3 inBlock:(id)a4 reason:(id)a5
{
  v6 = _Block_copy(a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FA78, &qword_18E731688);
  v7 = sub_18E72B178();
  _Block_copy(v6);
  v8 = self;
  sub_18E694C5C(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (NSArray)nodes
{
  v2 = *(*(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator) + 64);
  v3 = self;

  sub_18E718364(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FA78, &qword_18E731688);
  v5 = sub_18E72B168();

  return v5;
}

- (void)setWillUpdateHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_18E68F550;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_willUpdateHandler);
  v7 = *(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_willUpdateHandler);
  v8 = *(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_willUpdateHandler + 8);
  *v6 = v4;
  v6[1] = v5;
  v12 = self;
  sub_18E68CB70(v4);
  sub_18E6826D0(v7);
  v9 = *(v12 + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  sub_18E6826D0(v10);
}

- (void)setDidUpdateHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_18E68F550;
  }

  else
  {
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_didUpdateHandler);
  v7 = *(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_didUpdateHandler);
  v8 = *(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_didUpdateHandler + 8);
  *v6 = v4;
  v6[1] = v5;
  v12 = self;
  sub_18E68CB70(v4);
  sub_18E6826D0(v7);
  v9 = *(v12 + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  v10 = *(v9 + 48);
  v11 = *(v9 + 56);
  *(v9 + 48) = v4;
  *(v9 + 56) = v5;
  sub_18E6826D0(v10);
}

- (void)processUpdatesWithReason:(id)a3
{
  v4 = sub_18E72AFD8();
  v6 = v5;
  v7 = *(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  v8 = self;
  sub_18E688698(v4, v6, 1);
}

- (id)failureDependentsForNode:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_18E71897C(a3);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FA78, &qword_18E731688);
  v6 = sub_18E72B168();

  return v6;
}

@end
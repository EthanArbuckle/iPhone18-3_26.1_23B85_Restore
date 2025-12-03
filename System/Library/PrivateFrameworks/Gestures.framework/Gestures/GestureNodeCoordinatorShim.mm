@interface GestureNodeCoordinatorShim
- (BOOL)hasUnresolvedFailureDependenciesForNode:(id)node;
- (NSArray)nodes;
- (_TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim)init;
- (id)failureDependentsForNode:(id)node;
- (void)enqueueUpdatesForNodes:(id)nodes inBlock:(id)block reason:(id)reason;
- (void)processUpdatesWithReason:(id)reason;
- (void)setDidUpdateHandler:(id)handler;
- (void)setWillProcessUpdateQueueHandler:(id)handler;
- (void)setWillUpdateHandler:(id)handler;
- (void)updateWithNodes:(id)nodes reason:(id)reason updateHandler:(id)handler;
@end

@implementation GestureNodeCoordinatorShim

- (BOOL)hasUnresolvedFailureDependenciesForNode:(id)node
{
  v4 = *(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  v5 = (*((*MEMORY[0x1E69E7D40] & *node) + 0x78))();
  v6 = *(v4 + 112);
  swift_unknownObjectRetain();
  selfCopy = self;
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

- (void)setWillProcessUpdateQueueHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_18E68CB70(v4);
  sub_18E6826D0(v7);
  v9 = *(selfCopy + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  *(v9 + 32) = v4;
  *(v9 + 40) = v5;
  sub_18E6826D0(v10);
}

- (void)updateWithNodes:(id)nodes reason:(id)reason updateHandler:(id)handler
{
  v6 = _Block_copy(handler);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FA78, &qword_18E731688);
  v7 = sub_18E72B178();
  v8 = sub_18E72AFD8();
  v10 = v9;
  _Block_copy(v6);
  selfCopy = self;
  sub_18E694C5C(v7, selfCopy, v6);
  _Block_release(v6);

  v12 = *(selfCopy + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  sub_18E688698(v8, v10, 1);
  _Block_release(v6);
}

- (void)enqueueUpdatesForNodes:(id)nodes inBlock:(id)block reason:(id)reason
{
  v6 = _Block_copy(block);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FA78, &qword_18E731688);
  v7 = sub_18E72B178();
  _Block_copy(v6);
  selfCopy = self;
  sub_18E694C5C(v7, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (NSArray)nodes
{
  v2 = *(*(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator) + 64);
  selfCopy = self;

  sub_18E718364(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FA78, &qword_18E731688);
  v5 = sub_18E72B168();

  return v5;
}

- (void)setWillUpdateHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_18E68CB70(v4);
  sub_18E6826D0(v7);
  v9 = *(selfCopy + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  *(v9 + 16) = v4;
  *(v9 + 24) = v5;
  sub_18E6826D0(v10);
}

- (void)setDidUpdateHandler:(id)handler
{
  v4 = _Block_copy(handler);
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
  selfCopy = self;
  sub_18E68CB70(v4);
  sub_18E6826D0(v7);
  v9 = *(selfCopy + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  v10 = *(v9 + 48);
  v11 = *(v9 + 56);
  *(v9 + 48) = v4;
  *(v9 + 56) = v5;
  sub_18E6826D0(v10);
}

- (void)processUpdatesWithReason:(id)reason
{
  v4 = sub_18E72AFD8();
  v6 = v5;
  v7 = *(self + OBJC_IVAR____TtC8GesturesP33_A53607C86F339F8E27637A5709BD2DC526GestureNodeCoordinatorShim_coordinator);
  selfCopy = self;
  sub_18E688698(v4, v6, 1);
}

- (id)failureDependentsForNode:(id)node
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_18E71897C(node);
  swift_unknownObjectRelease();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8FA78, &qword_18E731688);
  v6 = sub_18E72B168();

  return v6;
}

@end
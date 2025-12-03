@interface ULPeripheralControl
- (BOOL)teardownPolarisGraphsAndReturnError:(id *)error;
- (_TtC19MicroLocationDaemon19ULPeripheralControl)init;
- (_TtC19MicroLocationDaemon19ULPeripheralControl)initWithQueue:(id)queue delegate:(id)delegate darwinNotificationHelper:(id)helper conclaveManager:(id)manager fullWakeConclaveModeEnabled:(BOOL)enabled;
- (_TtP19MicroLocationDaemon20RelativePoseHandling_)relativePoseHandler;
- (_TtP19MicroLocationDaemon25ULConclaveManagerProtocol_)conclaveManager;
- (_TtP19MicroLocationDaemon27ULPeripheralControlDelegate_)delegate;
- (id)getPoseEstimation;
- (void)_registerForDescriptorsReceivedNotification;
- (void)_unregisterDescriptorsReceivedNotification;
- (void)loadKeyFramesFor:(id)for;
- (void)setDependenciesWithRelativePoseHandler:(id)handler;
- (void)setupPolarisGraphsWithCompletionHandler:(id)handler;
- (void)unloadKeyFrames;
- (void)updateWithDatabaseUpdateRequest:(id)request;
@end

@implementation ULPeripheralControl

- (_TtP19MicroLocationDaemon25ULConclaveManagerProtocol_)conclaveManager
{
  v2 = *(self + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_conclaveManager);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (_TtP19MicroLocationDaemon20RelativePoseHandling_)relativePoseHandler
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtP19MicroLocationDaemon27ULPeripheralControlDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (_TtC19MicroLocationDaemon19ULPeripheralControl)initWithQueue:(id)queue delegate:(id)delegate darwinNotificationHelper:(id)helper conclaveManager:(id)manager fullWakeConclaveModeEnabled:(BOOL)enabled
{
  queueCopy = queue;
  swift_unknownObjectRetain();
  helperCopy = helper;
  swift_unknownObjectRetain();
  v13 = sub_2591F3258(queueCopy, delegate, helperCopy, manager, enabled);

  swift_unknownObjectRelease();
  return v13;
}

- (void)setDependenciesWithRelativePoseHandler:(id)handler
{
  v4 = sub_259212580();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(self + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x277D85200], v4, v7);
  swift_unknownObjectRetain();
  selfCopy = self;
  v12 = v10;
  LOBYTE(v10) = sub_259212590();
  (*(v5 + 8))(v9, v4);
  if (v10)
  {
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

- (void)setupPolarisGraphsWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F99B9F8, &qword_2592261D0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_259212920();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_2592261E0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_259225EB0;
  v13[5] = v12;
  selfCopy = self;
  sub_2591F2F9C(0, 0, v8, &unk_259226200, v13);
}

- (BOOL)teardownPolarisGraphsAndReturnError:(id *)error
{
  selfCopy = self;
  ULPeripheralControl.teardownPolarisGraphs()();

  if (v5)
  {
    if (error)
    {
      v6 = sub_259212030();

      v7 = v6;
      *error = v6;
    }

    else
    {
    }
  }

  return v5 == 0;
}

- (void)_registerForDescriptorsReceivedNotification
{
  v2 = *(self + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_darwinNotificationHelper);
  selfCopy = self;
  v4 = sub_259212830();
  v5 = swift_allocObject();
  *(v5 + 16) = selfCopy;
  v8[4] = sub_2591F37B0;
  v8[5] = v5;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_2591F37A8;
  v8[3] = &block_descriptor_18;
  v6 = _Block_copy(v8);
  v7 = selfCopy;

  [v2 addObserverForNotificationName:v4 handler:v6];
  _Block_release(v6);
}

- (void)_unregisterDescriptorsReceivedNotification
{
  v2 = *(self + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_darwinNotificationHelper);
  selfCopy = self;
  v4 = sub_259212830();
  [v2 removeObserverForNotificationName_];
}

- (void)loadKeyFramesFor:(id)for
{
  v4 = sub_259212580();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2592121D0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_259212190();
  v14 = *(self + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v8 = v14;
  (*(v5 + 104))(v8, *MEMORY[0x277D85200], v4);
  v15 = v14;
  LOBYTE(v14) = sub_259212590();
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
  if ((v14 & 1) == 0)
  {
    __break(1u);
  }
}

- (void)unloadKeyFrames
{
  v3 = sub_259212580();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = (&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(self + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v8 = v9;
  (*(v4 + 104))(v8, *MEMORY[0x277D85200], v3, v6);
  v10 = v9;
  LOBYTE(v9) = sub_259212590();
  (*(v4 + 8))(v8, v3);
  if ((v9 & 1) == 0)
  {
    __break(1u);
  }
}

- (void)updateWithDatabaseUpdateRequest:(id)request
{
  v4 = sub_259212580();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(self + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_queue);
  *v9 = v10;
  (*(v5 + 104))(v9, *MEMORY[0x277D85200], v4, v7);
  v11 = v10;
  LOBYTE(v10) = sub_259212590();
  (*(v5 + 8))(v9, v4);
  if ((v10 & 1) == 0)
  {
    __break(1u);
  }
}

- (id)getPoseEstimation
{
  getPoseEstimation = [*(self + OBJC_IVAR____TtC19MicroLocationDaemon19ULPeripheralControl_conclaveManager) getPoseEstimation];

  return getPoseEstimation;
}

- (_TtC19MicroLocationDaemon19ULPeripheralControl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
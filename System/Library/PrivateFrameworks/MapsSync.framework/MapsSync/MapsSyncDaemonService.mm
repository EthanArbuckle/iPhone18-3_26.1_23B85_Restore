@interface MapsSyncDaemonService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC9mapssyncd21MapsSyncDaemonService)init;
- (void)cloudKitAccountChangedWithNotification:(id)notification;
- (void)cloudKitContainerEventWithNotification:(id)notification;
- (void)cloudKitSyncAllowedWithCompletionHandler:(id)handler;
- (void)fetchSyncedAnalyticsIdentifierWithCompletion:(id)completion;
- (void)getLastSyncDateWithCompletionHandler:(id)handler;
- (void)prepareLibraryWithCompletionHandler:(id)handler;
- (void)setSyncedAnalyticsIdentifier:(id)identifier deleteIdenifiers:(id)idenifiers completion:(id)completion;
@end

@implementation MapsSyncDaemonService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v7 = objc_opt_self();
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v11 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP9mapssyncd31MapsSyncDaemonCompositeProtocol_];
  [connectionCopy setExportedInterface:v11];

  v12 = [v7 interfaceWithProtocol:&OBJC_PROTOCOL____TtP9mapssyncd31MapsSyncDaemonCompositeProtocol_];
  [connectionCopy setRemoteObjectInterface:v12];

  [connectionCopy setExportedObject:selfCopy];
  [connectionCopy resume];

  return 1;
}

- (void)cloudKitSyncAllowedWithCompletionHandler:(id)handler
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1000290C8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10002B370;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10002B378;
  v12[5] = v11;
  selfCopy = self;
  sub_100010930(0, 0, v7, &unk_10002B380, v12);
}

- (void)cloudKitContainerEventWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_10000B4C0(notificationCopy);
}

- (void)cloudKitAccountChangedWithNotification:(id)notification
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v10 - v5;
  v7 = sub_1000290C8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  sub_10000BAC8(0, 0, v6, &unk_10002B3B0, v9);
}

- (void)fetchSyncedAnalyticsIdentifierWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10000C368(sub_100011460, v5);
}

- (void)setSyncedAnalyticsIdentifier:(id)identifier deleteIdenifiers:(id)idenifiers completion:(id)completion
{
  v7 = _Block_copy(completion);
  if (identifier)
  {
    idenifiersCopy = idenifiers;
    selfCopy = self;
    identifierCopy = identifier;
    identifier = sub_100028D28();
    v12 = v11;

    if (idenifiers)
    {
LABEL_3:
      v13 = sub_100029048();

      goto LABEL_6;
    }
  }

  else
  {
    idenifiersCopy2 = idenifiers;
    selfCopy2 = self;
    v12 = 0xF000000000000000;
    if (idenifiers)
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
LABEL_6:
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  sub_10000CCEC(identifier, v12, v13, sub_100011444, v16);

  sub_10001144C(identifier, v12);
}

- (void)prepareLibraryWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1000290C8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10002B390;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10002B398;
  v13[5] = v12;
  selfCopy = self;
  sub_100010930(0, 0, v8, &unk_10002B3A0, v13);
}

- (void)getLastSyncDateWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_100046B40, &qword_10002B318);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1000290C8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10002B328;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10002B338;
  v13[5] = v12;
  selfCopy = self;
  sub_100010930(0, 0, v8, &unk_10002B348, v13);
}

- (_TtC9mapssyncd21MapsSyncDaemonService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
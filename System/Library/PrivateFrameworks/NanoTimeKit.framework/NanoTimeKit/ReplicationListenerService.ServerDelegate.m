@interface ReplicationListenerService.ServerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtCC11NanoTimeKit26ReplicationListenerServiceP33_AE83D9433EE81C01A115B3EC259ECD2214ServerDelegate)init;
- (void)registerWithCompletion:(id)a3;
- (void)sendGalleryRefreshMessageWithCompletion:(id)a3;
@end

@implementation ReplicationListenerService.ServerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;

  v7 = sub_22DC89630(v6);

  return v7 & 1;
}

- (void)registerWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_22DC89CD4(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)sendGalleryRefreshMessageWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA2D440);
  MEMORY[0x28223BE20](v5 - 8, v6, v7);
  v9 = &v14 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_22DCB62BC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = self;
  v13[5] = sub_22DC8B3F8;
  v13[6] = v11;

  sub_22DC95460(0, 0, v9, &unk_22DCEBE20, v13);
}

- (_TtCC11NanoTimeKit26ReplicationListenerServiceP33_AE83D9433EE81C01A115B3EC259ECD2214ServerDelegate)init
{
  ObjectType = swift_getObjectType();
  swift_defaultActor_initialize();
  type metadata accessor for SnapshotReplicationStore();
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA2D4B8);
  v5 = swift_allocObject();
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0;
  *(v4 + 16) = v5;
  *&self->_anon_60[8] = v4;
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(ReplicationListenerService.ServerDelegate *)&v7 init];
}

@end
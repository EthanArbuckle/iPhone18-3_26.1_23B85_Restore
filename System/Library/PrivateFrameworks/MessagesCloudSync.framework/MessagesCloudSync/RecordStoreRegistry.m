@interface RecordStoreRegistry
- (id)assetStore;
- (id)deletingStoreFor:(int64_t)a3;
- (id)recordStoreFor:(int64_t)a3;
- (void)registerRecordStoreWithType:(int64_t)a3 store:(id)a4;
@end

@implementation RecordStoreRegistry

- (id)recordStoreFor:(int64_t)a3
{
  v3 = sub_22B9754DC(a3);

  return v3;
}

- (id)deletingStoreFor:(int64_t)a3
{
  v3 = sub_22B97557C(a3);

  return v3;
}

- (id)assetStore
{
  v2 = sub_22B975648();

  return v2;
}

- (void)registerRecordStoreWithType:(int64_t)a3 store:(id)a4
{
  swift_beginAccess();
  swift_unknownObjectRetain_n();

  v7 = *self->recordStore;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *self->recordStore;
  *self->recordStore = 0x8000000000000000;
  sub_22B9BB368(a4, a3, isUniquelyReferenced_nonNull_native);
  *self->recordStore = v9;
  swift_endAccess();
  swift_unknownObjectRelease();
}

@end
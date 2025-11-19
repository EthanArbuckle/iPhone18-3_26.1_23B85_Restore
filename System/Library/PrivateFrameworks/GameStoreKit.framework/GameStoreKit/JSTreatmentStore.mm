@interface JSTreatmentStore
- (_TtC12GameStoreKit16JSTreatmentStore)init;
- (id)treatmentForArea:(id)a3;
- (id)treatmentsForAreas:(id)a3;
@end

@implementation JSTreatmentStore

- (id)treatmentForArea:(id)a3
{
  v4 = sub_24F92B0D8();
  v6 = v5;
  v7 = self;
  v8 = sub_24ED6A5CC(v4, v6);

  return v8;
}

- (id)treatmentsForAreas:(id)a3
{
  v4 = sub_24F92B5A8();
  v5 = self;
  v6 = sub_24ED6AA80(v4);

  return v6;
}

- (_TtC12GameStoreKit16JSTreatmentStore)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(JSTreatmentStore *)&v3 init];
}

@end
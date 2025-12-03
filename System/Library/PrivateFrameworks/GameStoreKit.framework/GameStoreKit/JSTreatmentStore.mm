@interface JSTreatmentStore
- (_TtC12GameStoreKit16JSTreatmentStore)init;
- (id)treatmentForArea:(id)area;
- (id)treatmentsForAreas:(id)areas;
@end

@implementation JSTreatmentStore

- (id)treatmentForArea:(id)area
{
  v4 = sub_24F92B0D8();
  v6 = v5;
  selfCopy = self;
  v8 = sub_24ED6A5CC(v4, v6);

  return v8;
}

- (id)treatmentsForAreas:(id)areas
{
  v4 = sub_24F92B5A8();
  selfCopy = self;
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
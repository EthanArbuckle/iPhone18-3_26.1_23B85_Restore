@interface MFSafetyCheckWhenBlocking
+ (_TtC12MobileMailUI25MFSafetyCheckWhenBlocking)shared;
- (void)prefetchSharing;
- (void)presentSafetyCheckIfNeededForContact:(id)a3 completion:(id)a4;
- (void)presentSafetyCheckIfNeededForEmailAddresses:(id)a3 completion:(id)a4;
@end

@implementation MFSafetyCheckWhenBlocking

+ (_TtC12MobileMailUI25MFSafetyCheckWhenBlocking)shared
{
  swift_getObjCClassMetadata();
  swift_getObjCClassMetadata();
  v2 = static MFSafetyCheckWhenBlocking.shared.getter();

  return v2;
}

- (void)prefetchSharing
{
  MEMORY[0x277D82BE0](self, a2);
  sub_214A0FF68();
  MEMORY[0x277D82BD8](self);
}

- (void)presentSafetyCheckIfNeededForContact:(id)a3 completion:(id)a4
{
  MEMORY[0x277D82BE0](a3, a2);
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self, v5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_214A1389C(a3, sub_214A16AB4, v8);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

- (void)presentSafetyCheckIfNeededForEmailAddresses:(id)a3 completion:(id)a4
{
  MEMORY[0x277D82BE0](a3, a2);
  v7 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self, v5);
  sub_214A16BFC();
  v9 = sub_214A1A6F4();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_214A13EBC(v9, sub_214A16AB4, v8);

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
}

@end
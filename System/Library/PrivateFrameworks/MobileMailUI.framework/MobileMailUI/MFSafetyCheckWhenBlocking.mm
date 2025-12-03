@interface MFSafetyCheckWhenBlocking
+ (_TtC12MobileMailUI25MFSafetyCheckWhenBlocking)shared;
- (void)prefetchSharing;
- (void)presentSafetyCheckIfNeededForContact:(id)contact completion:(id)completion;
- (void)presentSafetyCheckIfNeededForEmailAddresses:(id)addresses completion:(id)completion;
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

- (void)presentSafetyCheckIfNeededForContact:(id)contact completion:(id)completion
{
  MEMORY[0x277D82BE0](contact, a2);
  v7 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self, v5);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_214A1389C(contact, sub_214A16AB4, v8);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](contact);
}

- (void)presentSafetyCheckIfNeededForEmailAddresses:(id)addresses completion:(id)completion
{
  MEMORY[0x277D82BE0](addresses, a2);
  v7 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self, v5);
  sub_214A16BFC();
  v9 = sub_214A1A6F4();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_214A13EBC(v9, sub_214A16AB4, v8);

  MEMORY[0x277D82BD8](addresses);
  MEMORY[0x277D82BD8](self);
}

@end
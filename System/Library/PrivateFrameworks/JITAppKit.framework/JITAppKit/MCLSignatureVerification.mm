@interface MCLSignatureVerification
+ (BOOL)verifySignatureOf:(id)of with:(id)with using:(id)using;
@end

@implementation MCLSignatureVerification

+ (BOOL)verifySignatureOf:(id)of with:(id)with using:(id)using
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](of);
  MEMORY[0x277D82BE0](with);
  MEMORY[0x277D82BE0](using);
  sub_255600AAC();
  sub_255600AAC();
  sub_255600AAC();
  swift_getObjCClassMetadata();
  sub_2555F794C();

  MEMORY[0x277D82BD8](using);

  MEMORY[0x277D82BD8](with);

  MEMORY[0x277D82BD8](of);
  return sub_25560076C() & 1;
}

@end
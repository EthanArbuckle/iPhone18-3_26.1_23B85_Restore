@interface MCLSignatureVerification
+ (BOOL)verifySignatureOf:(id)a3 with:(id)a4 using:(id)a5;
@end

@implementation MCLSignatureVerification

+ (BOOL)verifySignatureOf:(id)a3 with:(id)a4 using:(id)a5
{
  swift_getObjCClassMetadata();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  MEMORY[0x277D82BE0](a5);
  sub_255600AAC();
  sub_255600AAC();
  sub_255600AAC();
  swift_getObjCClassMetadata();
  sub_2555F794C();

  MEMORY[0x277D82BD8](a5);

  MEMORY[0x277D82BD8](a4);

  MEMORY[0x277D82BD8](a3);
  return sub_25560076C() & 1;
}

@end
@interface CESRPhoneticEmbedder
- (CESRPhoneticEmbedder)initWithLocaleIdentifier:(id)a3 clientID:(id)a4;
- (id)findAlternativesForString:(id)a3 maxResults:(int64_t)a4;
- (void)findAlternativesForString:(NSString *)a3 maxResults:(int64_t)a4 completion:(id)a5;
@end

@implementation CESRPhoneticEmbedder

- (CESRPhoneticEmbedder)initWithLocaleIdentifier:(id)a3 clientID:(id)a4
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](a4);
  v8 = sub_226099A08();
  v9 = v4;
  v5 = sub_226099A08();
  v12 = CESRPhoneticEmbedder.init(localeIdentifier:clientID:)(v8, v9, v5, v6);
  MEMORY[0x277D82BD8](a4);
  MEMORY[0x277D82BD8](a3);
  return v12;
}

- (void)findAlternativesForString:(NSString *)a3 maxResults:(int64_t)a4 completion:(id)a5
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  v9 = _Block_copy(a5);
  MEMORY[0x277D82BE0](self);
  v5 = swift_allocObject();
  v5[2] = a3;
  v5[3] = a4;
  v5[4] = v9;
  v5[5] = self;
  sub_22603B274(&unk_2260A13C8, v5);
}

- (id)findAlternativesForString:(id)a3 maxResults:(int64_t)a4
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  MEMORY[0x277D82BE0](self);
  sub_226099A08();
  CESRPhoneticEmbedder.findAlternatives(for:maxResults:)();

  MEMORY[0x277D82BD8](a3);
  MEMORY[0x277D82BD8](self);
  v8 = sub_226099C78();

  return v8;
}

@end
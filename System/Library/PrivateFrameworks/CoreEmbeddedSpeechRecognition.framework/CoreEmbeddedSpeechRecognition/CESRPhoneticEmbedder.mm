@interface CESRPhoneticEmbedder
- (CESRPhoneticEmbedder)initWithLocaleIdentifier:(id)identifier clientID:(id)d;
- (id)findAlternativesForString:(id)string maxResults:(int64_t)results;
- (void)findAlternativesForString:(NSString *)string maxResults:(int64_t)results completion:(id)completion;
@end

@implementation CESRPhoneticEmbedder

- (CESRPhoneticEmbedder)initWithLocaleIdentifier:(id)identifier clientID:(id)d
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](identifier);
  MEMORY[0x277D82BE0](d);
  v8 = sub_226099A08();
  v9 = v4;
  v5 = sub_226099A08();
  v12 = CESRPhoneticEmbedder.init(localeIdentifier:clientID:)(v8, v9, v5, v6);
  MEMORY[0x277D82BD8](d);
  MEMORY[0x277D82BD8](identifier);
  return v12;
}

- (void)findAlternativesForString:(NSString *)string maxResults:(int64_t)results completion:(id)completion
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](string);
  v9 = _Block_copy(completion);
  MEMORY[0x277D82BE0](self);
  v5 = swift_allocObject();
  v5[2] = string;
  v5[3] = results;
  v5[4] = v9;
  v5[5] = self;
  sub_22603B274(&unk_2260A13C8, v5);
}

- (id)findAlternativesForString:(id)string maxResults:(int64_t)results
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](string);
  MEMORY[0x277D82BE0](self);
  sub_226099A08();
  CESRPhoneticEmbedder.findAlternatives(for:maxResults:)();

  MEMORY[0x277D82BD8](string);
  MEMORY[0x277D82BD8](self);
  v8 = sub_226099C78();

  return v8;
}

@end
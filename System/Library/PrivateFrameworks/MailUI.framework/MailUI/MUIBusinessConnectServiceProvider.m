@interface MUIBusinessConnectServiceProvider
- (BCSBusinessQueryService)service;
- (EMMessageRepository)messageRepository;
- (MUIBusinessConnectServiceProvider)initWithMessageRepository:(id)a3;
- (void)businessLogoForContext:(id)a3 handler:(id)a4;
@end

@implementation MUIBusinessConnectServiceProvider

- (MUIBusinessConnectServiceProvider)initWithMessageRepository:(id)a3
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  return sub_214A61638(a3);
}

- (BCSBusinessQueryService)service
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214C01EB8();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (EMMessageRepository)messageRepository
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](self);
  v5 = sub_214C01F74();
  MEMORY[0x277D82BD8](self);

  return v5;
}

- (void)businessLogoForContext:(id)a3 handler:(id)a4
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](a3);
  v6 = _Block_copy(a4);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  MUIBusinessConnectServiceProvider.businessLogo(for:handler:)(a3, sub_214C097E4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](a3);
}

@end
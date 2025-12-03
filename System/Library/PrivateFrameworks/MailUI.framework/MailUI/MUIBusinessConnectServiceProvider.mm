@interface MUIBusinessConnectServiceProvider
- (BCSBusinessQueryService)service;
- (EMMessageRepository)messageRepository;
- (MUIBusinessConnectServiceProvider)initWithMessageRepository:(id)repository;
- (void)businessLogoForContext:(id)context handler:(id)handler;
@end

@implementation MUIBusinessConnectServiceProvider

- (MUIBusinessConnectServiceProvider)initWithMessageRepository:(id)repository
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](repository);
  return sub_214A61638(repository);
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

- (void)businessLogoForContext:(id)context handler:(id)handler
{
  swift_getObjectType();
  MEMORY[0x277D82BE0](context);
  v6 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  MUIBusinessConnectServiceProvider.businessLogo(for:handler:)(context, sub_214C097E4, v7);

  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](context);
}

@end
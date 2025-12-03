@interface FeedbackListViewModel
- (_TtC6MailUI21FeedbackListViewModel)initWithDaemonInterface:(id)interface diagnosticsHelper:(id)helper viewModelHelper:(id)modelHelper;
- (id)_cancellationHandler;
- (id)cancellationHandler;
- (id)messageListItemsForDiagnosticsHelper:(id)helper;
- (void)setCancellationHandler:(id)handler;
- (void)set_cancellationHandler:(id)handler;
@end

@implementation FeedbackListViewModel

- (id)_cancellationHandler
{
  MEMORY[0x277D82BE0](self);
  v8 = sub_214B860B8();
  v7 = v2;
  MEMORY[0x277D82BD8](self);
  if (v8)
  {
    v14 = v8;
    v15 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = 0;
    v12 = sub_214A746A8;
    v13 = &block_descriptor_117;
    v4 = _Block_copy(&aBlock);

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)set_cancellationHandler:(id)handler
{
  v7 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  if (v7)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v7;
    v4 = sub_214B8ACA0;
    v5 = v3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  sub_214B86238(v4, v5);
  MEMORY[0x277D82BD8](self);
}

- (id)cancellationHandler
{
  MEMORY[0x277D82BE0](self);
  v8 = FeedbackListViewModel.cancellationHandler.getter();
  v7 = v2;
  MEMORY[0x277D82BD8](self);
  if (v8)
  {
    v14 = v8;
    v15 = v7;
    aBlock = MEMORY[0x277D85DD0];
    v10 = 1107296256;
    v11 = 0;
    v12 = sub_214A746A8;
    v13 = &block_descriptor_123;
    v4 = _Block_copy(&aBlock);

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setCancellationHandler:(id)handler
{
  v7 = _Block_copy(handler);
  MEMORY[0x277D82BE0](self);
  if (v7)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v7;
    v4 = sub_214B8ACA0;
    v5 = v3;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  FeedbackListViewModel.cancellationHandler.setter(v4, v5);
  MEMORY[0x277D82BD8](self);
}

- (_TtC6MailUI21FeedbackListViewModel)initWithDaemonInterface:(id)interface diagnosticsHelper:(id)helper viewModelHelper:(id)modelHelper
{
  MEMORY[0x277D82BE0](interface);
  MEMORY[0x277D82BE0](helper);
  MEMORY[0x277D82BE0](modelHelper);
  return FeedbackListViewModel.init(daemonInterface:diagnosticsHelper:viewModelHelper:)(interface, helper, modelHelper);
}

- (id)messageListItemsForDiagnosticsHelper:(id)helper
{
  MEMORY[0x277D82BE0](helper);
  MEMORY[0x277D82BE0](self);
  v9 = FeedbackListViewModel.messageListItems(for:)(helper);
  MEMORY[0x277D82BD8](self);
  MEMORY[0x277D82BD8](helper);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CA34E80);
    v5 = sub_214CCF7D4();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
@interface _CRSCardServiceBundle
- (BOOL)canSatisfyCardRequest:(id)a3;
- (id)underlyingService;
- (unint64_t)servicePriorityForRequest:(id)a3;
- (void)_initializeCardServiceWithClass:(Class)a3;
- (void)requestCard:(id)a3 reply:(id)a4;
@end

@implementation _CRSCardServiceBundle

- (id)underlyingService
{
  v3 = [(_CRSCardServiceBundle *)self principalClass];
  if (!self->_cardService)
  {
    v4 = v3;
    if ([v3 conformsToProtocol:&unk_2855F2AE0])
    {
      [(_CRSCardServiceBundle *)self _initializeCardServiceWithClass:v4];
    }
  }

  cardService = self->_cardService;

  return cardService;
}

- (void)_initializeCardServiceWithClass:(Class)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = NSStringFromClass(a3);
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_243268000, v6, OS_LOG_TYPE_INFO, "Initializing a card service of class %@", &v11, 0xCu);
  }

  v8 = objc_alloc_init(a3);
  cardService = self->_cardService;
  self->_cardService = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestCard:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(_CRSCardServiceBundle *)self underlyingService];
  [v8 requestCard:v7 reply:v6];
}

- (BOOL)canSatisfyCardRequest:(id)a3
{
  v4 = a3;
  v5 = [(_CRSCardServiceBundle *)self underlyingService];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 canSatisfyCardRequest:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)servicePriorityForRequest:(id)a3
{
  v4 = a3;
  v5 = [(_CRSCardServiceBundle *)self underlyingService];
  if (objc_opt_respondsToSelector())
  {
    v6 = [v5 servicePriorityForRequest:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
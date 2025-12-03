@interface _CRSCardServiceBundle
- (BOOL)canSatisfyCardRequest:(id)request;
- (id)underlyingService;
- (unint64_t)servicePriorityForRequest:(id)request;
- (void)_initializeCardServiceWithClass:(Class)class;
- (void)requestCard:(id)card reply:(id)reply;
@end

@implementation _CRSCardServiceBundle

- (id)underlyingService
{
  principalClass = [(_CRSCardServiceBundle *)self principalClass];
  if (!self->_cardService)
  {
    v4 = principalClass;
    if ([principalClass conformsToProtocol:&unk_2855F2AE0])
    {
      [(_CRSCardServiceBundle *)self _initializeCardServiceWithClass:v4];
    }
  }

  cardService = self->_cardService;

  return cardService;
}

- (void)_initializeCardServiceWithClass:(Class)class
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = NSStringFromClass(class);
    v11 = 138412290;
    v12 = v7;
    _os_log_impl(&dword_243268000, v6, OS_LOG_TYPE_INFO, "Initializing a card service of class %@", &v11, 0xCu);
  }

  v8 = objc_alloc_init(class);
  cardService = self->_cardService;
  self->_cardService = v8;

  v10 = *MEMORY[0x277D85DE8];
}

- (void)requestCard:(id)card reply:(id)reply
{
  replyCopy = reply;
  cardCopy = card;
  underlyingService = [(_CRSCardServiceBundle *)self underlyingService];
  [underlyingService requestCard:cardCopy reply:replyCopy];
}

- (BOOL)canSatisfyCardRequest:(id)request
{
  requestCopy = request;
  underlyingService = [(_CRSCardServiceBundle *)self underlyingService];
  if (objc_opt_respondsToSelector())
  {
    v6 = [underlyingService canSatisfyCardRequest:requestCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)servicePriorityForRequest:(id)request
{
  requestCopy = request;
  underlyingService = [(_CRSCardServiceBundle *)self underlyingService];
  if (objc_opt_respondsToSelector())
  {
    v6 = [underlyingService servicePriorityForRequest:requestCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end
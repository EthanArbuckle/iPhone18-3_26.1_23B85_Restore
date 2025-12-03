@interface _CRKProviderBundle
- (NSString)providerIdentifier;
- (id)cardViewControllerForCard:(id)card;
- (id)provider;
- (unint64_t)displayPriorityForCard:(id)card;
- (void)_initializeProviderWithClass:(Class)class;
- (void)presentation:(id)presentation didApplyCardSectionViewSource:(id)source toCardViewController:(id)controller;
- (void)requestCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply;
- (void)requestIdentifiedCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply;
- (void)unregisterCardViewController:(id)controller;
@end

@implementation _CRKProviderBundle

- (id)provider
{
  principalClass = [(_CRKProviderBundle *)self principalClass];
  if (!self->_provider)
  {
    v4 = principalClass;
    if ([principalClass conformsToProtocol:&unk_285603878])
    {
      [(_CRKProviderBundle *)self _initializeProviderWithClass:v4];
    }
  }

  provider = self->_provider;

  return provider;
}

- (void)_initializeProviderWithClass:(Class)class
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CF93F0];
  v5 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = NSStringFromClass(class);
    *buf = 138412290;
    v34 = v7;
    _os_log_impl(&dword_243247000, v6, OS_LOG_TYPE_INFO, "Initializing a provider of class %@", buf, 0xCu);
  }

  v8 = objc_alloc_init(class);
  provider = self->_provider;
  self->_provider = v8;

  infoDictionary = [(_CRKProviderBundle *)self infoDictionary];
  v11 = [infoDictionary objectForKey:@"Card section view controller classes"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v11;
    v27 = infoDictionary;
    v12 = v11;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v30;
      do
      {
        v16 = 0;
        do
        {
          if (*v30 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = NSClassFromString(*(*(&v29 + 1) + 8 * v16));
          v18 = [(objc_class *)v17 isSubclassOfClass:objc_opt_class()];
          v19 = *v4;
          if (v18)
          {
            if (os_log_type_enabled(*v4, OS_LOG_TYPE_INFO))
            {
              v20 = v19;
              v21 = NSStringFromClass(v17);
              *buf = 138412546;
              v34 = v21;
              v35 = 2112;
              selfCopy2 = self;
              _os_log_impl(&dword_243247000, v20, OS_LOG_TYPE_INFO, "Registering card section view controller %@ for plugin bundle %@", buf, 0x16u);
            }

            [(objc_class *)v17 _registerWithCardKit:v26];
          }

          else if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
          {
            v22 = v19;
            v23 = NSStringFromClass(v17);
            v24 = objc_opt_class();
            v25 = NSStringFromClass(v24);
            *buf = 138412802;
            v34 = v23;
            v35 = 2112;
            selfCopy2 = self;
            v37 = 2112;
            v38 = v25;
            _os_log_error_impl(&dword_243247000, v22, OS_LOG_TYPE_ERROR, "Cannot register card section view controller %@ for plugin bundle %@ as it is not a subclass of %@", buf, 0x20u);
          }

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v14);
    }

    v11 = v26;
    infoDictionary = v27;
  }
}

- (NSString)providerIdentifier
{
  bundleIdentifier = [(_CRKProviderBundle *)self bundleIdentifier];
  v3 = bundleIdentifier;
  if (bundleIdentifier)
  {
    v4 = bundleIdentifier;
  }

  else
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v4 = [v5 stringWithFormat:@"%@%@", @"com.apple.cardkitbundleprovider.", v7];
  }

  return v4;
}

- (void)requestCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply
{
  cardCopy = card;
  delegateCopy = delegate;
  replyCopy = reply;
  provider = [(_CRKProviderBundle *)self provider];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    provider2 = [(_CRKProviderBundle *)self provider];
    [provider2 requestCardSectionViewProviderForCard:cardCopy delegate:delegateCopy reply:replyCopy];
  }

  else if (replyCopy)
  {
    (*(replyCopy + 2))(replyCopy, 0, 0);
  }
}

- (void)requestIdentifiedCardSectionViewProviderForCard:(id)card delegate:(id)delegate reply:(id)reply
{
  cardCopy = card;
  delegateCopy = delegate;
  replyCopy = reply;
  if (replyCopy)
  {
    provider = [(_CRKProviderBundle *)self provider];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      provider2 = [(_CRKProviderBundle *)self provider];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __85___CRKProviderBundle_requestIdentifiedCardSectionViewProviderForCard_delegate_reply___block_invoke;
      v14[3] = &unk_278DA3838;
      v14[4] = self;
      v15 = replyCopy;
      [provider2 requestCardSectionViewProviderForCard:cardCopy delegate:delegateCopy reply:v14];
    }

    else
    {
      (*(replyCopy + 2))(replyCopy, 0, 0);
    }
  }
}

- (id)cardViewControllerForCard:(id)card
{
  cardCopy = card;
  provider = [(_CRKProviderBundle *)self provider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    provider2 = [(_CRKProviderBundle *)self provider];
    v8 = [provider2 cardViewControllerForCard:cardCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)unregisterCardViewController:(id)controller
{
  controllerCopy = controller;
  provider = [(_CRKProviderBundle *)self provider];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    provider2 = [(_CRKProviderBundle *)self provider];
    [provider2 unregisterCardViewController:controllerCopy];
  }
}

- (unint64_t)displayPriorityForCard:(id)card
{
  cardCopy = card;
  provider = [(_CRKProviderBundle *)self provider];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    provider2 = [(_CRKProviderBundle *)self provider];
    v8 = [provider2 displayPriorityForCard:cardCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)presentation:(id)presentation didApplyCardSectionViewSource:(id)source toCardViewController:(id)controller
{
  presentationCopy = presentation;
  sourceCopy = source;
  controllerCopy = controller;
  provider = [(_CRKProviderBundle *)self provider];
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    provider2 = [(_CRKProviderBundle *)self provider];
    [provider2 presentation:presentationCopy didApplyCardSectionViewSource:sourceCopy toCardViewController:controllerCopy];
  }
}

@end
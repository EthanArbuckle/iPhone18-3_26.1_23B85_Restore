@interface _CRKCardSectionViewControllerRegistry
- (Class)cardSectionViewControllerClassForCardSectionClass:(Class)a3;
- (_CRKCardSectionViewControllerRegistry)init;
- (void)registerCardSectionViewControllerClass:(Class)a3 forCardSectionClass:(Class)a4;
@end

@implementation _CRKCardSectionViewControllerRegistry

- (_CRKCardSectionViewControllerRegistry)init
{
  v6.receiver = self;
  v6.super_class = _CRKCardSectionViewControllerRegistry;
  v2 = [(_CRKCardSectionViewControllerRegistry *)&v6 init];
  if (v2)
  {
    CRLogInitIfNeeded();
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    cardSectionViewControllerClassNameForCardSectionClassName = v2->_cardSectionViewControllerClassNameForCardSectionClassName;
    v2->_cardSectionViewControllerClassNameForCardSectionClassName = v3;
  }

  return v2;
}

- (void)registerCardSectionViewControllerClass:(Class)a3 forCardSectionClass:(Class)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CF93F0];
  v8 = *MEMORY[0x277CF93F0];
  if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = NSStringFromClass(a3);
    v11 = NSStringFromClass(a4);
    v22 = 138412546;
    v23 = v10;
    v24 = 2112;
    v25 = v11;
    _os_log_impl(&dword_243247000, v9, OS_LOG_TYPE_INFO, "Registering card section view controller class %@ for card section class %@", &v22, 0x16u);
  }

  cardSectionViewControllerClassNameForCardSectionClassName = self->_cardSectionViewControllerClassNameForCardSectionClassName;
  v13 = NSStringFromClass(a4);
  v14 = [(NSMutableDictionary *)cardSectionViewControllerClassNameForCardSectionClassName objectForKey:v13];

  if (v14)
  {
    v15 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
    {
      v19 = v15;
      v20 = NSStringFromClass(a4);
      v21 = NSStringFromClass(a3);
      v22 = 138412802;
      v23 = v20;
      v24 = 2112;
      v25 = v14;
      v26 = 2112;
      v27 = v21;
      _os_log_error_impl(&dword_243247000, v19, OS_LOG_TYPE_ERROR, "Overwriting existing card section view controller class with new card section view controller class in registry\n    Card section class: %@\n    Existing CSVC class: %@\n    New CSVC class: %@", &v22, 0x20u);
    }
  }

  v16 = self->_cardSectionViewControllerClassNameForCardSectionClassName;
  v17 = NSStringFromClass(a3);
  v18 = NSStringFromClass(a4);
  [(NSMutableDictionary *)v16 setObject:v17 forKey:v18];
}

- (Class)cardSectionViewControllerClassForCardSectionClass:(Class)a3
{
  v21 = *MEMORY[0x277D85DE8];
  cardSectionViewControllerClassNameForCardSectionClassName = self->_cardSectionViewControllerClassNameForCardSectionClassName;
  v5 = NSStringFromClass(a3);
  v6 = [(NSMutableDictionary *)cardSectionViewControllerClassNameForCardSectionClassName objectForKey:v5];

  v7 = *MEMORY[0x277CF93F0];
  v8 = os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = v7;
      v10 = NSStringFromClass(a3);
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_243247000, v9, OS_LOG_TYPE_DEFAULT, "Found card section view controller for card section\n    Card section: %@\n    CSVC: %@", &v17, 0x16u);
    }

    v11 = NSClassFromString(v6);
  }

  else
  {
    if (v8)
    {
      v12 = v7;
      v13 = NSStringFromClass(a3);
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&dword_243247000, v12, OS_LOG_TYPE_DEFAULT, "Defaulting to base class view controller for card section\n    Card section: %@", &v17, 0xCu);
    }

    v11 = objc_opt_class();
  }

  v14 = v11;
  v15 = v11;

  return v14;
}

@end
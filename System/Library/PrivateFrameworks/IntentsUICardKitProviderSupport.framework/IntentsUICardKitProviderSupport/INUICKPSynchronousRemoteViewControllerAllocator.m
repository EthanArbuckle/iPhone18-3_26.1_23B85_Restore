@interface INUICKPSynchronousRemoteViewControllerAllocator
- (INUICKPSynchronousRemoteViewControllerAllocator)init;
- (INUICKPViewControllerAllocatingDelegate)delegate;
- (NSArray)allocatedViewControllers;
- (NSArray)redundantInterfaceSections;
- (NSDictionary)viewControllersByInitialInterfaceSection;
- (double)boundingWidthForSynchronousRemoteViewController:(id)a3;
- (id)_unhandledParametersForInterfaceSection:(id)a3;
- (id)organizedInterfaceSections;
- (void)_recursivelyConnectForInterfaceSectionQueue:(id)a3 recursionDepth:(unint64_t)a4 completion:(id)a5;
- (void)performAllocationsFromInteraction:(id)a3 initialInterfaceSections:(id)a4 completion:(id)a5;
- (void)setSynchronousRemoteViewControllerClass:(Class)a3;
@end

@implementation INUICKPSynchronousRemoteViewControllerAllocator

- (INUICKPSynchronousRemoteViewControllerAllocator)init
{
  v14.receiver = self;
  v14.super_class = INUICKPSynchronousRemoteViewControllerAllocator;
  v2 = [(INUICKPSynchronousRemoteViewControllerAllocator *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableSynchronousRemoteViewControllers = v2->_mutableSynchronousRemoteViewControllers;
    v2->_mutableSynchronousRemoteViewControllers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    finalInterfaceSections = v2->_finalInterfaceSections;
    v2->_finalInterfaceSections = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    handledParameters = v2->_handledParameters;
    v2->_handledParameters = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mutableSynchronousRemoteViewControllersByInitialInterfaceSection = v2->_mutableSynchronousRemoteViewControllersByInitialInterfaceSection;
    v2->_mutableSynchronousRemoteViewControllersByInitialInterfaceSection = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    mutableRedundantInterfaceSections = v2->_mutableRedundantInterfaceSections;
    v2->_mutableRedundantInterfaceSections = v11;

    v2->_synchronousRemoteViewControllerClass = objc_opt_class();
    v2->_requiresUserConsent = 1;
  }

  return v2;
}

- (void)setSynchronousRemoteViewControllerClass:(Class)a3
{
  if ([(objc_class *)a3 isSubclassOfClass:objc_opt_class()])
  {
    self->_synchronousRemoteViewControllerClass = a3;
  }
}

- (void)performAllocationsFromInteraction:(id)a3 initialInterfaceSections:(id)a4 completion:(id)a5
{
  v8 = a5;
  mutableSynchronousRemoteViewControllers = self->_mutableSynchronousRemoteViewControllers;
  v10 = a4;
  v11 = a3;
  [(NSMutableArray *)mutableSynchronousRemoteViewControllers removeAllObjects];
  [(NSMutableDictionary *)self->_mutableSynchronousRemoteViewControllersByInitialInterfaceSection removeAllObjects];
  [(NSMutableArray *)self->_mutableRedundantInterfaceSections removeAllObjects];
  [(NSMutableArray *)self->_finalInterfaceSections removeAllObjects];
  [(NSMutableSet *)self->_handledParameters removeAllObjects];
  [(INUICKPSynchronousRemoteViewControllerAllocator *)self setInteraction:v11];

  v12 = [v10 mutableCopy];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __121__INUICKPSynchronousRemoteViewControllerAllocator_performAllocationsFromInteraction_initialInterfaceSections_completion___block_invoke;
  v14[3] = &unk_2797EB960;
  v15 = v8;
  v13 = v8;
  [(INUICKPSynchronousRemoteViewControllerAllocator *)self _beginRecursivelyConnectingForInterfaceSectionQueue:v12 completion:v14];
}

uint64_t __121__INUICKPSynchronousRemoteViewControllerAllocator_performAllocationsFromInteraction_initialInterfaceSections_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

- (NSArray)allocatedViewControllers
{
  v2 = [(NSMutableArray *)self->_mutableSynchronousRemoteViewControllers copy];

  return v2;
}

- (NSDictionary)viewControllersByInitialInterfaceSection
{
  v2 = [(NSMutableDictionary *)self->_mutableSynchronousRemoteViewControllersByInitialInterfaceSection copy];

  return v2;
}

- (NSArray)redundantInterfaceSections
{
  v2 = [(NSMutableArray *)self->_mutableRedundantInterfaceSections copy];

  return v2;
}

- (void)_recursivelyConnectForInterfaceSectionQueue:(id)a3 recursionDepth:(unint64_t)a4 completion:(id)a5
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [v8 firstObject];
  if (v10)
  {
    [v8 removeObject:v10];
    v11 = [v10 parameters];

    v12 = [(INUICKPSynchronousRemoteViewControllerAllocator *)self _unhandledParametersForInterfaceSection:v10];
    v33 = [v12 count];
    v44[0] = MEMORY[0x277D85DD0];
    v44[1] = 3221225472;
    v44[2] = __121__INUICKPSynchronousRemoteViewControllerAllocator__recursivelyConnectForInterfaceSectionQueue_recursionDepth_completion___block_invoke;
    v44[3] = &unk_2797EB988;
    v45 = v8;
    v46 = self;
    v48 = a4;
    v13 = v9;
    v47 = v13;
    v14 = MEMORY[0x259C37D70](v44);
    objc_initWeak(&location, self);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __121__INUICKPSynchronousRemoteViewControllerAllocator__recursivelyConnectForInterfaceSectionQueue_recursionDepth_completion___block_invoke_2;
    v36[3] = &unk_2797EB9D8;
    objc_copyWeak(&v42, &location);
    v34 = v12;
    v37 = v34;
    v15 = v10;
    v38 = v15;
    v39 = self;
    v35 = v14;
    v40 = v35;
    v41 = v13;
    v16 = MEMORY[0x259C37D70](v36);
    if ([v15 isWildCardSection])
    {
      v17 = *MEMORY[0x277CF93F0];
      v18 = os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO);
      v19 = v16;
      if (v18)
      {
        *buf = 138412290;
        v50 = v15;
        v20 = "Interface section %@ is a wild card section; attempting connection to RVC";
        v21 = v17;
        v22 = 12;
LABEL_17:
        _os_log_impl(&dword_255550000, v21, OS_LOG_TYPE_INFO, v20, buf, v22);
        v19 = v16;
      }
    }

    else
    {
      if (a4)
      {
        v23 = v33 == 0;
      }

      else
      {
        v23 = 0;
      }

      v24 = !v23;
      if (!v11 || !v24)
      {
        v27 = *MEMORY[0x277CF93F0];
        v28 = os_log_type_enabled(v27, OS_LOG_TYPE_INFO);
        if (!v11 || v33)
        {
          if (v28)
          {
            v31 = [v15 parameters];
            *buf = 138412546;
            v50 = v31;
            v51 = 2112;
            v52 = v15;
            _os_log_impl(&dword_255550000, v27, OS_LOG_TYPE_INFO, "Interface section has no parameters - continuing\n    Parameters: %@\n    Interface section: %@", buf, 0x16u);
          }
        }

        else
        {
          if (v28)
          {
            v29 = [v15 parameters];
            *buf = 138412546;
            v50 = v29;
            v51 = 2112;
            v52 = v15;
            _os_log_impl(&dword_255550000, v27, OS_LOG_TYPE_INFO, "All parameters are currently handled by another interface section - continuing\n    Parameters: %@\n    Interface section: %@", buf, 0x16u);
          }

          v30 = [(INUICKPSynchronousRemoteViewControllerAllocator *)self mutableRedundantInterfaceSections];
          [v30 addObject:v15];
        }

        v19 = v35;
        goto LABEL_27;
      }

      v25 = *MEMORY[0x277CF93F0];
      v26 = os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_INFO);
      v19 = v16;
      if (v26)
      {
        *buf = 138412546;
        v50 = v15;
        v51 = 2112;
        v52 = v34;
        v20 = "Still have parameters to handle for interface section %@ - attempting to connect to RVC\n    Unhandled parameters: %@";
        v21 = v25;
        v22 = 22;
        goto LABEL_17;
      }
    }

LABEL_27:
    v19[2]();

    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);

    goto LABEL_28;
  }

  if (v9)
  {
    v9[2](v9);
  }

LABEL_28:

  v32 = *MEMORY[0x277D85DE8];
}

uint64_t __121__INUICKPSynchronousRemoteViewControllerAllocator__recursivelyConnectForInterfaceSectionQueue_recursionDepth_completion___block_invoke(uint64_t *a1)
{
  if ([a1[4] count])
  {
    v3 = a1[4];
    v2 = a1[5];
    v4 = a1[6];
    v5 = a1[7] + 1;

    return [v2 _recursivelyConnectForInterfaceSectionQueue:v3 recursionDepth:v5 completion:v4];
  }

  else
  {
    result = a1[6];
    if (result)
    {
      v7 = *(result + 16);

      return v7();
    }
  }

  return result;
}

void __121__INUICKPSynchronousRemoteViewControllerAllocator__recursivelyConnectForInterfaceSectionQueue_recursionDepth_completion___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v3 = objc_alloc(MEMORY[0x277CD45E0]);
    v4 = [WeakRetained interaction];
    v5 = [v3 initWithInteraction:v4];

    [v5 setRequiresUserConsent:{objc_msgSend(WeakRetained, "requiresUserConsent")}];
    v6 = WeakRetained[1];
    v7 = [objc_alloc(MEMORY[0x277CD45E8]) initWithParameters:*(a1 + 32) interactiveBehavior:objc_msgSend(*(a1 + 40) hostedViewContext:{"interactiveBehavior"), 0}];
    v8 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __121__INUICKPSynchronousRemoteViewControllerAllocator__recursivelyConnectForInterfaceSectionQueue_recursionDepth_completion___block_invoke_3;
    v9[3] = &unk_2797EB9B0;
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = WeakRetained;
    v13 = *(a1 + 56);
    [v6 requestInstanceWithInfo:v5 configuration:v7 synchronousRemoteViewControllerDelegate:v8 reply:v9];
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __121__INUICKPSynchronousRemoteViewControllerAllocator__recursivelyConnectForInterfaceSectionQueue_recursionDepth_completion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = *MEMORY[0x277CF93F0];
    if (os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_ERROR))
    {
      __121__INUICKPSynchronousRemoteViewControllerAllocator__recursivelyConnectForInterfaceSectionQueue_recursionDepth_completion___block_invoke_3_cold_1(v6, a1, v7);
    }
  }

  else
  {
    v8 = *MEMORY[0x277CF93F0];
    v9 = os_log_type_enabled(*MEMORY[0x277CF93F0], OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v9)
      {
        v11 = *(a1 + 32);
        v10 = *(a1 + 40);
        v20 = 138412802;
        v21 = v10;
        v22 = 2112;
        v23 = v11;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_255550000, v8, OS_LOG_TYPE_DEFAULT, "Synchronous remote view controller retrieved\n    Interface section: %@\n    Parameters: %@\n    Synchronous remote view controller: %@", &v20, 0x20u);
      }

      [v5 setInterfaceSectionOrganizer:*(a1 + 48)];
      v12 = [*(a1 + 48) mutableSynchronousRemoteViewControllers];
      [v12 addObject:v5];

      v13 = [v5 cachedRepresentedParameters];
      v14 = [*(a1 + 40) copyWithZone:0];
      [v14 setParameters:v13];
      v15 = [*(a1 + 48) handledParameters];
      [v15 unionSet:v13];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = [*(a1 + 48) finalInterfaceSections];
        [v16 addObject:v14];
      }

      v17 = [*(a1 + 48) mutableSynchronousRemoteViewControllersByInitialInterfaceSection];
      [v17 setObject:v5 forKey:*(a1 + 40)];
    }

    else if (v9)
    {
      v18 = *(a1 + 32);
      v20 = 138412290;
      v21 = v18;
      _os_log_impl(&dword_255550000, v8, OS_LOG_TYPE_DEFAULT, "No synchronous remote view controller retrieved\n    Parameters: %@", &v20, 0xCu);
    }
  }

  (*(*(a1 + 56) + 16))();

  v19 = *MEMORY[0x277D85DE8];
}

- (id)_unhandledParametersForInterfaceSection:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v20 = [MEMORY[0x277CBEB58] set];
  v5 = self->_handledParameters;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v4 parameters];
  v7 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v12 = v5;
        v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v22;
          while (2)
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v22 != v15)
              {
                objc_enumerationMutation(v12);
              }

              if ([v11 isSubParameterOf:*(*(&v21 + 1) + 8 * j)])
              {

                goto LABEL_18;
              }
            }

            v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        [v20 addObject:v11];
LABEL_18:
        ;
      }

      v8 = [v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)organizedInterfaceSections
{
  v2 = [(NSMutableArray *)self->_finalInterfaceSections copy];

  return v2;
}

- (double)boundingWidthForSynchronousRemoteViewController:(id)a3
{
  v4 = [(INUICKPSynchronousRemoteViewControllerAllocator *)self delegate];
  [v4 boundingWidthForViewControllerAllocator:self];
  v6 = v5;

  return v6;
}

- (INUICKPViewControllerAllocatingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

void __121__INUICKPSynchronousRemoteViewControllerAllocator__recursivelyConnectForInterfaceSectionQueue_recursionDepth_completion___block_invoke_3_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v5 = 138412546;
  v6 = a1;
  v7 = 2112;
  v8 = v3;
  _os_log_error_impl(&dword_255550000, log, OS_LOG_TYPE_ERROR, "Error retrieving synchronous remote view controller\n    Error: %@\n    Parameters: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

@end
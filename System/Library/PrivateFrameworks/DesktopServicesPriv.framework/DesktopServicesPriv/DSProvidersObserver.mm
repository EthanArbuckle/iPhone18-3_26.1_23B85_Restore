@interface DSProvidersObserver
- (id).cxx_construct;
- (id)providers;
- (id)providersByAddingProviderIfNeeded:(id)needed;
- (void)receivedChanges:(id)changes;
- (void)setProviders:(id)providers;
- (void)startObserving;
- (void)stopObserving;
@end

@implementation DSProvidersObserver

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 4) = 0;
  return self;
}

- (void)startObserving
{
  selfCopy = self;
  if (!self->_token)
  {
    operator new();
  }
}

void __37__DSProvidersObserver_startObserving__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  if (v8)
  {
    v9 = LogObj(4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_1E5674000, v9, OS_LOG_TYPE_ERROR, "-beginMonitoringProviderDomainChangesWithHandler: received an error: %{public}@", &v11, 0xCu);
    }
  }

  else
  {
    [*(a1 + 32) receivedChanges:v7];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (id)providers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = Copy<NSMutableArray<FILocalAppContainerNode *>>(selfCopy->_providers);
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)receivedChanges:(id)changes
{
  v39 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  selfCopy = self;
  providers = [(DSProvidersObserver *)self providers];
  allKeys = [changesCopy allKeys];
  v5 = [allKeys sortedArrayUsingSelector:sel_compare_];
  IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(v30, v5);
  IDContainerIteratorAdaptor<NSArray<NSString *>>::IDContainerIteratorAdaptor(v29, -1, v5);
  v6 = algorithm_extras::distance_or_zero<IDContainerIteratorAdaptor<NSArray<NSString *>>>(v30, v29);

  v25 = type_traits_extras::CopyAsHelper<NSArray<FPSandboxingURLWrapper *> * {__strong}>::MakeWithCapacity(v6);
  IDContainerIteratorAdaptor<NSArray<NSString *>>::NSForwardIterator<NSArray<NSString *>>::NSForwardIterator(buf, v5);
  IDContainerIteratorAdaptor<NSArray<NSString *>>::IDContainerIteratorAdaptor(v31, -1, v5);
  v7 = v25;
  while (*buf != v31[0] || v38 != v31[16])
  {
    v8 = *(v33 + 8 * v37);
    v9 = [changesCopy objectForKeyedSubscript:v8];
    if (([v9 supportsEnumeration] & 1) == 0)
    {

LABEL_9:
      v9 = v8;
      goto LABEL_12;
    }

    v10 = [FIProviderDomain providerDomainForDomain:v9];
    if ([v10 isUsingFPFS])
    {
      storageURLs = [v9 storageURLs];
      v12 = [storageURLs count] == 0;

      if (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    v8 = v7;
    [v8 addObject:v9];
LABEL_12:

    v13 = v37;
    if (v37 >= v36 - 1)
    {
      v14 = [*buf countByEnumeratingWithState:&buf[8] objects:v35 count:4];
      v13 = -1;
      v36 = v14;
      v37 = -1;
    }

    if (v35[4] != *v34)
    {
      objc_enumerationMutation(*buf);
      v13 = v37;
    }

    v37 = v13 + 1;
    ++v38;
  }

  if (![v7 isEqualToArray:providers])
  {
    goto LABEL_23;
  }

  if ([v7 count])
  {
    v15 = 0;
    while (1)
    {
      v16 = [v7 objectAtIndexedSubscript:v15];
      v17 = [providers objectAtIndexedSubscript:v15];
      HaveEquivalentProperties = FileProviderDomainsHaveEquivalentProperties(v17, v16);

      if (!HaveEquivalentProperties)
      {
        break;
      }

      if (++v15 >= [v7 count])
      {
        goto LABEL_34;
      }
    }

LABEL_23:
    v19 = LogObj(4);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v7;
      _os_log_impl(&dword_1E5674000, v19, OS_LOG_TYPE_DEFAULT, "Provider list update = %{public}@", buf, 0xCu);
    }

    v20 = [(DSProvidersObserver *)selfCopy setProviders:v7];
    populated = selfCopy->_populated;
    selfCopy->_populated = 1;
    if (!populated)
    {
      v20 = std::unique_ptr<AutoSignpostInterval_FPProvider_Gathering>::reset[abi:ne200100](&selfCopy->_gatheringSignpost.__ptr_, 0);
    }

    if (TNode::IsContextOpen(v20))
    {
      if (populated)
      {
        v22 = 0x1000000;
      }

      else
      {
        v23 = TNodeFromFINode(selfCopy->fParentNode.fFINode);
        if (TNode::IsPopulated(v23))
        {
          v22 = 0x1000000;
        }

        else
        {
          v22 = 20971520;
        }
      }

      TNodeFromFINode(selfCopy->fParentNode.fFINode);
      LODWORD(v33) = 0;
      std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,BOOL,unsigned char,short,int,long long,unsigned int,double,Point,Blob,NSObject * {__strong},TString,TRef<__CFString const*,TRetainReleasePolicy<__CFString const*>>,TRef<__CFNumber const*,TRetainReleasePolicy<__CFNumber const*>>,TRef<__CFData const*,TRetainReleasePolicy<__CFData const*>>,TRef<__CFDictionary const*,TRetainReleasePolicy<__CFDictionary const*>>,TRef<__CFURL const*,TRetainReleasePolicy<__CFURL const*>>,TRef<__CFArray const*,TRetainReleasePolicy<__CFArray const*>>,TRef<__CFFileSecurity *,TRetainReleasePolicy<__CFFileSecurity *>>,TRef<TReferenceCounted *,TRetainReleasePolicy<TReferenceCounted *>>,Property,NodeRequestOptions,NodeDSStoreStatus,DSBladeRunnerFlags>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](buf);
      LODWORD(v33) = 21;
      *buf = v22;
      TNode::RequestInternalTask();
    }
  }

LABEL_34:

  v24 = *MEMORY[0x1E69E9840];
}

- (void)stopObserving
{
  [FPProviderDomainClass() endMonitoringProviderDomainChanges:self->_token];
  token = self->_token;
  self->_token = 0;

  std::unique_ptr<AutoSignpostInterval_FPProvider_Gathering>::reset[abi:ne200100](&self->_gatheringSignpost.__ptr_, 0);
}

- (void)setProviders:(id)providers
{
  v12 = *MEMORY[0x1E69E9840];
  providersCopy = providers;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (![(NSArray *)selfCopy->_providers isEqualToArray:providersCopy])
  {
    v6 = LogObj(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = 138543362;
      v11 = providersCopy;
      _os_log_impl(&dword_1E5674000, v6, OS_LOG_TYPE_INFO, "FPProviders update: %{public}@", &v10, 0xCu);
    }
  }

  v7 = Copy<NSMutableArray<FILocalAppContainerNode *>>(providersCopy);
  providers = selfCopy->_providers;
  selfCopy->_providers = v7;

  objc_sync_exit(selfCopy);
  v9 = *MEMORY[0x1E69E9840];
}

- (id)providersByAddingProviderIfNeeded:(id)needed
{
  v14[1] = *MEMORY[0x1E69E9840];
  neededCopy = needed;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (neededCopy && !selfCopy->_populated && ![(NSArray *)selfCopy->_providers containsObject:neededCopy])
  {
    providers = selfCopy->_providers;
    if (providers)
    {
      v7 = [(NSArray *)providers arrayByAddingObject:neededCopy];
      v8 = selfCopy->_providers;
      selfCopy->_providers = v7;
    }

    else
    {
      v14[0] = neededCopy;
      v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
      v10 = selfCopy->_providers;
      selfCopy->_providers = v9;
    }
  }

  v11 = selfCopy->_providers;
  objc_sync_exit(selfCopy);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end
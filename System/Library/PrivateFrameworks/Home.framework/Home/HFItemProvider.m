@interface HFItemProvider
- (HFItemProvider)init;
- (NSSet)items;
- (id)asGeneric;
- (id)copyWithZone:(_NSZone *)a3;
- (id)reloadItems;
- (id)reloadItemsWithHomeKitObjects:(id)a3 filter:(id)a4 itemMap:(id)a5;
- (id)reloadItemsWithObjects:(id)a3 keyAdaptor:(id)a4 itemAdaptor:(id)a5 filter:(id)a6 itemMap:(id)a7;
- (void)setClientInvalidationReasons:(id)a3;
@end

@implementation HFItemProvider

- (id)asGeneric
{
  sub_20DA65948();
  v2 = HFItemProvider.asGeneric()();

  return v2;
}

- (HFItemProvider)init
{
  v6.receiver = self;
  v6.super_class = HFItemProvider;
  v2 = [(HFItemProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB98]);
    clientInvalidationReasons = v2->_clientInvalidationReasons;
    v2->_clientInvalidationReasons = v3;
  }

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_opt_class();

  return objc_alloc_init(v3);
}

- (id)reloadItems
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFItemProvider.m" lineNumber:104 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFItemProvider reloadItems]", objc_opt_class()}];

  v5 = MEMORY[0x277D2C900];
  v6 = [MEMORY[0x277CCA9B8] hf_errorWithCode:36];
  v7 = [v5 futureWithError:v6];

  return v7;
}

- (NSSet)items
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"HFItemProvider.m" lineNumber:110 description:{@"%s is an abstract method that must be overriden by subclass %@", "-[HFItemProvider items]", objc_opt_class()}];

  return 0;
}

- (void)setClientInvalidationReasons:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB98]);
  }

  clientInvalidationReasons = self->_clientInvalidationReasons;
  self->_clientInvalidationReasons = v5;
}

- (id)reloadItemsWithObjects:(id)a3 keyAdaptor:(id)a4 itemAdaptor:(id)a5 filter:(id)a6 itemMap:(id)a7
{
  v112 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v75 = a5;
  v14 = a6;
  v74 = a7;
  if (!v74)
  {
    v67 = [MEMORY[0x277CCA890] currentHandler];
    [v67 handleFailureInMethod:a2 object:self file:@"HFItemProvider.m" lineNumber:147 description:{@"Invalid parameter not satisfying: %@", @"itemMap"}];
  }

  v70 = v14;
  if (!v13)
  {
    v68 = [MEMORY[0x277CCA890] currentHandler];
    [v68 handleFailureInMethod:a2 object:self file:@"HFItemProvider.m" lineNumber:148 description:{@"Invalid parameter not satisfying: %@", @"keyAdaptor"}];
  }

  v77 = [MEMORY[0x277CBEB38] dictionary];
  v97 = 0u;
  v98 = 0u;
  v99 = 0u;
  v100 = 0u;
  v15 = [(HFItemProvider *)self items];
  v16 = [v15 countByEnumeratingWithState:&v97 objects:v111 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v98;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v98 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v97 + 1) + 8 * i);
        v21 = v75[2](v75, v20);
        if (v21)
        {
          [v77 setObject:v20 forKeyedSubscript:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v97 objects:v111 count:16];
    }

    while (v17);
  }

  v78 = [MEMORY[0x277CBEB38] dictionary];
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = v12;
  v22 = [obj countByEnumeratingWithState:&v93 objects:v110 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v94;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v94 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v93 + 1) + 8 * j);
        v27 = v13[2](v13, v26);
        if (v27)
        {
          v28 = [v78 objectForKeyedSubscript:v27];

          if (!v28 && (!v70 || v70[2](v70, v26)))
          {
            [v78 setObject:v26 forKeyedSubscript:v27];
          }
        }
      }

      v23 = [obj countByEnumeratingWithState:&v93 objects:v110 count:16];
    }

    while (v23);
  }

  v69 = v13;

  v29 = MEMORY[0x277CBEB98];
  v30 = [v77 allKeys];
  v31 = [v29 setWithArray:v30];
  v32 = MEMORY[0x277CBEB98];
  v33 = [v78 allKeys];
  v34 = [v32 setWithArray:v33];
  v35 = [HFSetDiff diffFromSet:v31 toSet:v34];

  v76 = [MEMORY[0x277CBEB58] set];
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v71 = v35;
  v36 = [v35 deletions];
  v37 = [v36 countByEnumeratingWithState:&v89 objects:v109 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v90;
    do
    {
      for (k = 0; k != v38; ++k)
      {
        if (*v90 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = *(*(&v89 + 1) + 8 * k);
        v42 = [v77 objectForKeyedSubscript:v41];
        v43 = HFLogForCategory(0x2CuLL);
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412802;
          v104 = self;
          v105 = 2112;
          v106 = v41;
          v107 = 2112;
          v108 = v42;
          _os_log_impl(&dword_20D9BF000, v43, OS_LOG_TYPE_DEFAULT, "%@: Removing HomeKit item for identifier %@: %@", buf, 0x20u);
        }

        [v76 addObject:v42];
      }

      v38 = [v36 countByEnumeratingWithState:&v89 objects:v109 count:16];
    }

    while (v38);
  }

  v44 = [MEMORY[0x277CBEB58] set];
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v45 = [v71 additions];
  v46 = [v45 countByEnumeratingWithState:&v85 objects:v102 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v86;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v86 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v85 + 1) + 8 * m);
        v51 = [v78 objectForKeyedSubscript:v50];
        v52 = v74[2](v74, v51);
        if (v52)
        {
          v53 = HFLogForCategory(0x2CuLL);
          if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v104 = self;
            v105 = 2112;
            v106 = v50;
            v107 = 2112;
            v108 = v51;
            _os_log_impl(&dword_20D9BF000, v53, OS_LOG_TYPE_DEFAULT, "%@: Adding item for identifier %@: %@", buf, 0x20u);
          }

          [v44 addObject:v52];
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v85 objects:v102 count:16];
    }

    while (v47);
  }

  v54 = [v71 updates];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __100__HFItemProvider_HFForSubclassesOnly__reloadItemsWithObjects_keyAdaptor_itemAdaptor_filter_itemMap___block_invoke;
  v83[3] = &unk_277DFB590;
  v55 = v77;
  v84 = v55;
  v56 = [v54 na_map:v83];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v57 = [(HFItemProvider *)self items];
  v58 = [v57 countByEnumeratingWithState:&v79 objects:v101 count:16];
  if (v58)
  {
    v59 = v58;
    v60 = *v80;
    do
    {
      for (n = 0; n != v59; ++n)
      {
        if (*v80 != v60)
        {
          objc_enumerationMutation(v57);
        }

        v62 = *(*(&v79 + 1) + 8 * n);
        if (([v44 containsObject:v62] & 1) == 0 && (objc_msgSend(v56, "containsObject:", v62) & 1) == 0)
        {
          [v76 addObject:v62];
        }
      }

      v59 = [v57 countByEnumeratingWithState:&v79 objects:v101 count:16];
    }

    while (v59);
  }

  v63 = [[HFItemProviderReloadResults alloc] initWithAddedItems:v44 removedItems:v76 existingItems:v56];
  v64 = [MEMORY[0x277D2C900] futureWithResult:v63];

  v65 = *MEMORY[0x277D85DE8];

  return v64;
}

- (id)reloadItemsWithHomeKitObjects:(id)a3 filter:(id)a4 itemMap:(id)a5
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__HFItemProvider_HFForSubclassesOnly__reloadItemsWithHomeKitObjects_filter_itemMap___block_invoke_2;
  v7[3] = &unk_277DFB5D8;
  v7[4] = self;
  v7[5] = a2;
  v5 = [(HFItemProvider *)self reloadItemsWithObjects:a3 keyAdaptor:&__block_literal_global_111 itemAdaptor:v7 filter:a4 itemMap:a5];

  return v5;
}

id __84__HFItemProvider_HFForSubclassesOnly__reloadItemsWithHomeKitObjects_filter_itemMap___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 conformsToProtocol:&unk_28252A8F8] & 1) == 0)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"HFItemProvider.m" lineNumber:221 description:@"-reloadItemsWithHomeKitObjects expects all existing items to conform to HFHomeKitItemProtocol"];
  }

  v4 = [v3 homeKitObject];
  v5 = [v4 uniqueIdentifier];

  return v5;
}

@end
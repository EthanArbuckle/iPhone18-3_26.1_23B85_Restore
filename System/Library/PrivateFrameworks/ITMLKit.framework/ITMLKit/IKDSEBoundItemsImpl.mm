@interface IKDSEBoundItemsImpl
+ (BOOL)_canProxiedItemElementsBeUpdatedWithLoadedElements;
- (BOOL)canProxyUnloadedChildElement:(id)a3;
- (IKDSEBoundItemsImpl)initWithDataSourceElement:(id)a3;
- (IKDataSourceElement)dataSourceElement;
- (NSArray)masterPrototypes;
- (NSArray)prototypes;
- (NSArray)proxiedItemElements;
- (NSDictionary)indexTitles;
- (NSString)debugDescription;
- (id)_elementForItemAtIndex:(int64_t)a3;
- (id)_prototypeMappingForItemAtIndex:(int64_t)a3;
- (id)elementForItemAtIndex:(int64_t)a3;
- (id)masterPrototypeForItemAtIndex:(unint64_t)a3;
- (id)prototypeForItemAtIndex:(int64_t)a3;
- (id)proxyElementForLoadedChildElement:(id)a3;
- (int64_t)indexOfItemForElement:(id)a3;
- (int64_t)numberOfItems;
- (void)_appendVisibleIndexSetWithIndex:(int64_t)a3;
- (void)_initializePrototypeBundleIfNeeded;
- (void)applyUpdatesWithImplementation:(id)a3 usingUpdater:(id)a4;
- (void)configureUpdatesWithImplementation:(id)a3;
- (void)initializeWithElementFactory:(id)a3;
- (void)resetImplicitUpdates;
- (void)unloadIndex:(int64_t)a3;
- (void)updateStylesUsingUpdater:(id)a3;
@end

@implementation IKDSEBoundItemsImpl

- (IKDSEBoundItemsImpl)initWithDataSourceElement:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IKDSEBoundItemsImpl;
  v5 = [(IKDSEBoundItemsImpl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSourceElement, v4);
  }

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
  v7 = [v3 stringWithFormat:@"<%@: %p, visibleIndexSet = %@>", v5, self, v6];

  return v7;
}

- (NSArray)prototypes
{
  [(IKDSEBoundItemsImpl *)self _initializePrototypeBundleIfNeeded];
  v3 = [(IKDSEBoundItemsImpl *)self prototypeBundle];
  v4 = [v3 allPrototypes];

  return v4;
}

- (int64_t)numberOfItems
{
  v2 = [(IKDSEBoundItemsImpl *)self dataSet];
  v3 = [v2 items];
  v4 = [v3 count];

  return v4;
}

- (id)prototypeForItemAtIndex:(int64_t)a3
{
  [(IKDSEBoundItemsImpl *)self _initializePrototypeBundleIfNeeded];
  v5 = [(IKDSEBoundItemsImpl *)self prototypeBundle];
  v6 = [v5 prototypeForItemAtIndex:a3];

  return v6;
}

- (id)elementForItemAtIndex:(int64_t)a3
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__20;
  v13 = __Block_byref_object_dispose__20;
  v14 = 0;
  v5 = [(IKDSEBoundItemsImpl *)self dataSourceElement];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__IKDSEBoundItemsImpl_elementForItemAtIndex___block_invoke;
  v8[3] = &unk_27979B678;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = a3;
  [v5 performImplicitUpdates:v8];

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

uint64_t __45__IKDSEBoundItemsImpl_elementForItemAtIndex___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _elementForItemAtIndex:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

- (int64_t)indexOfItemForElement:(id)a3
{
  v4 = [a3 attributes];
  v5 = [v4 objectForKeyedSubscript:@"itemID"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 length];

    if (!v7)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_7;
    }

    v4 = [(IKDSEBoundItemsImpl *)self dataSet];
    v8 = [v4 itemIDs];
    v9 = [v8 indexOfObject:v6];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_7:
  return v9;
}

- (NSDictionary)indexTitles
{
  v2 = [(IKDSEBoundItemsImpl *)self dataSet];
  v3 = [v2 indexTitles];

  return v3;
}

- (void)unloadIndex:(int64_t)a3
{
  v4 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
  [v4 removeIndex:a3];
}

- (void)initializeWithElementFactory:(id)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v4 = [(IKDSEBoundItemsImpl *)self dataSourceElement];
  v34 = [v4 updateType];
  v5 = [(IKDSEBoundItemsImpl *)self dataSourceElement];
  v6 = [v5 bindingController];
  v7 = [v6 domElement];

  v37 = v7;
  v8 = [v7 domib_appDataSet];
  [(IKDSEBoundItemsImpl *)self setDataSet:v8];

  v38 = self;
  v9 = [(IKDSEBoundItemsImpl *)self dataSet];
  v10 = [v9 usedPrototypesByIdentifier];

  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v10, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v36 = v10;
  v12 = [v10 allValues];
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v45;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v45 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        v18 = [v17 usageIndexes];
        v19 = [v18 count];

        if (v19)
        {
          v20 = [IKDSEPrototypeMapping prototypeMappingFromAppPrototype:v17 dataSourceElement:v4 elementFactory:v39];
          v21 = [v17 identifier];
          [v11 setObject:v20 forKeyedSubscript:v21];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v14);
  }

  [(IKDSEBoundItemsImpl *)v38 setUsedPrototypeMappingsByIdentifier:v11];
  if ((v34 & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    v35 = v4;
    v22 = [v4 unfilteredChildren];
    v23 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v22, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v24 = v22;
    v25 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v41;
      do
      {
        for (j = 0; j != v26; ++j)
        {
          if (*v41 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v40 + 1) + 8 * j);
          v30 = [v29 attributes];
          v31 = [v30 objectForKeyedSubscript:@"itemID"];

          if ([v31 length])
          {
            [v23 setObject:v29 forKeyedSubscript:v31];
          }
        }

        v26 = [v24 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v26);
    }

    v32 = [v23 copy];
    [(IKDSEBoundItemsImpl *)v38 setChildrenByItemID:v32];

    v4 = v35;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)configureUpdatesWithImplementation:(id)a3
{
  v4 = [(IKDSEBoundItemsImpl *)self dataSourceElement];
  v21 = [v4 bindingController];

  v5 = [v21 domElement];
  v6 = [v5 domib_itemsChangeSet];

  if (v6)
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [(IKDSEBoundItemsImpl *)self dataSourceElement];
    v9 = [v8 updateType];

    if (v9 == 4)
    {
      v10 = [(IKDSEBoundItemsImpl *)self dataSet];
      v11 = [v10 items];
      v12 = [v11 count];

      if (v12)
      {
        v13 = 0;
        do
        {
          v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
          [v7 setObject:v14 forKey:v15];

          ++v13;
          v16 = [(IKDSEBoundItemsImpl *)self dataSet];
          v17 = [v16 items];
          v18 = [v17 count];
        }

        while (v13 < v18);
      }

      v19 = [[IKChangeSet alloc] initWithAddedIndexes:0 removedIndexes:0 movedIndexesByNewIndex:0 updatedIndexesByNewIndex:v7];
      v20 = [v6 changeSetByConcatenatingChangeSet:v19];

      v6 = v20;
    }
  }

  [(IKDSEBoundItemsImpl *)self setItemsChangeSet:v6];
}

- (void)applyUpdatesWithImplementation:(id)a3 usingUpdater:(id)a4
{
  v97 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v6;
  v9 = [v8 dataSourceElement];
  v10 = [v9 updateType];

  [(IKDSEBoundItemsImpl *)self setPrototypeBundle:0];
  v74 = objc_opt_new();
  v11 = [v8 itemsChangeSet];
  v12 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
  v13 = v12;
  v75 = v11;
  v77 = self;
  if (v11)
  {

    if (v13)
    {
      v14 = [MEMORY[0x277CCAB58] indexSet];
      v15 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
      v16 = [v15 firstIndex];

      while (v16 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [v11 newIndexForOldIndex:v16];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = v17;
          [v14 addIndex:v17];
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:v16];
          v20 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
          [v74 setObject:v19 forKeyedSubscript:v20];

          v11 = v75;
        }

        v21 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
        v16 = [v21 indexGreaterThanIndex:v16];
      }

      [(IKDSEBoundItemsImpl *)self setVisibleIndexSet:v14];
    }

    v22 = [v11 removedIndexes];
    v23 = [v22 mutableCopy];
    v24 = v23;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = [MEMORY[0x277CCAB58] indexSet];
    }

    v26 = v25;

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v27 = [v11 updatedIndexesByNewIndex];
    v28 = [v27 allValues];

    v29 = [v28 countByEnumeratingWithState:&v88 objects:v96 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v89;
      do
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v89 != v31)
          {
            objc_enumerationMutation(v28);
          }

          [v26 addIndex:{objc_msgSend(*(*(&v88 + 1) + 8 * i), "integerValue")}];
        }

        v30 = [v28 countByEnumeratingWithState:&v88 objects:v96 count:16];
      }

      while (v30);
    }

    v33 = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];
    v34 = [(IKDSEBoundItemsImpl *)self dataSet];
    v35 = [v34 itemIDs];
    v36 = [v35 objectsAtIndexes:v26];
    [v33 removeObjectsForKeys:v36];

    self = v77;
  }

  else
  {
    [v12 removeAllIndexes];

    v26 = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];
    [v26 removeAllObjects];
  }

  if ((v10 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v37 = [v8 dataSet];
    [(IKDSEBoundItemsImpl *)self setDataSet:v37];
  }

  v38 = v7[2](v7);
  v39 = v38;
  if ((v10 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v73 = v8;
    v40 = MEMORY[0x277CBEB38];
    v41 = [v38 unfilteredChildren];
    v78 = [v40 dictionaryWithCapacity:{objc_msgSend(v41, "count")}];

    v76 = [MEMORY[0x277CBEB38] dictionary];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v72 = v39;
    v42 = [v39 unfilteredChildren];
    v43 = [v42 countByEnumeratingWithState:&v84 objects:v95 count:16];
    if (v43)
    {
      v44 = v43;
      v45 = *v85;
      do
      {
        for (j = 0; j != v44; ++j)
        {
          if (*v85 != v45)
          {
            objc_enumerationMutation(v42);
          }

          v47 = *(*(&v84 + 1) + 8 * j);
          v48 = [v47 attributes];
          v49 = [v48 objectForKeyedSubscript:@"itemID"];

          if ([v49 length])
          {
            [v78 setObject:v47 forKeyedSubscript:v49];
            if ([v47 updateType])
            {
              v50 = [(IKDSEBoundItemsImpl *)v77 dataSet];
              v51 = [v50 itemIDs];
              v52 = [v51 indexOfObject:v49];

              if (v52 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v53 = ITMLKitGetLogObject(0);
                if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v94 = v49;
                  _os_log_error_impl(&dword_2549A4000, v53, OS_LOG_TYPE_ERROR, "child element not found in data set: %@", buf, 0xCu);
                }
              }

              v54 = [MEMORY[0x277CCABB0] numberWithInteger:v52];
              v55 = [MEMORY[0x277CCABB0] numberWithInteger:v52];
              [v76 setObject:v54 forKey:v55];
            }
          }
        }

        v44 = [v42 countByEnumeratingWithState:&v84 objects:v95 count:16];
      }

      while (v44);
    }

    [(IKDSEBoundItemsImpl *)v77 setChildrenByItemID:v78];
    v56 = [[IKChangeSet alloc] initWithAddedIndexes:0 removedIndexes:0 movedIndexesByNewIndex:0 updatedIndexesByNewIndex:v76];
    if (v75)
    {
      v57 = [v75 changeSetByConcatenatingChangeSet:v56];
      [(IKDSEBoundItemsImpl *)v77 setItemsChangeSet:v57];
    }

    else
    {
      [(IKDSEBoundItemsImpl *)v77 setItemsChangeSet:v56];
    }

    v59 = [v73 usedPrototypeMappingsByIdentifier];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v60 = [v59 allValues];
    v61 = [v60 countByEnumeratingWithState:&v80 objects:v92 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v81;
      do
      {
        for (k = 0; k != v62; ++k)
        {
          if (*v81 != v63)
          {
            objc_enumerationMutation(v60);
          }

          v65 = *(*(&v80 + 1) + 8 * k);
          v66 = [(IKDSEBoundItemsImpl *)v77 dataSourceElement];
          v67 = [v65 viewElement];
          [v66 adoptElement:v67];
        }

        v62 = [v60 countByEnumeratingWithState:&v80 objects:v92 count:16];
      }

      while (v62);
    }

    [(IKDSEBoundItemsImpl *)v77 setUsedPrototypeMappingsByIdentifier:v59];
    v68 = [(IKDSEBoundItemsImpl *)v77 proxiedItemElementsByItemID];
    v69 = [(IKDSEBoundItemsImpl *)v77 childrenByItemID];
    v70 = [v69 allKeys];
    [v68 removeObjectsForKeys:v70];

    v8 = v73;
    v58 = v75;
    v39 = v72;
  }

  else
  {
    v58 = v75;
    if (v10 == 4)
    {
      v79 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
      [v8 setVisibleIndexSet:?];
    }
  }

  v71 = *MEMORY[0x277D85DE8];
}

- (void)updateStylesUsingUpdater:(id)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(IKDSEBoundItemsImpl *)self setPrototypeBundle:0];
  v4[2](v4);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = [(IKDSEBoundItemsImpl *)self prototypes];
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v31 + 1) + 8 * i) appDocumentDidMarkStylesDirty];
      }

      v7 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [(IKDSEBoundItemsImpl *)self proxiedItemElements];
  v11 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v28;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v28 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [*(*(&v27 + 1) + 8 * j) appDocumentDidMarkStylesDirty];
      }

      v12 = [v10 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v12);
  }

  v15 = [MEMORY[0x277CBEB38] dictionary];
  v16 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
  v17 = v16;
  if (v16)
  {
    v18 = [v16 firstIndex];
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (k = v18; k != 0x7FFFFFFFFFFFFFFFLL; k = [v17 indexGreaterThanIndex:k])
      {
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:k];
        v21 = [MEMORY[0x277CCABB0] numberWithInteger:k];
        [v15 setObject:v20 forKey:v21];
      }
    }
  }

  v22 = [[IKChangeSet alloc] initWithAddedIndexes:0 removedIndexes:0 movedIndexesByNewIndex:0 updatedIndexesByNewIndex:v15];
  v23 = [(IKDSEBoundItemsImpl *)self itemsChangeSet];
  if (v23)
  {
    v24 = [(IKDSEBoundItemsImpl *)self itemsChangeSet];
    v25 = [v24 changeSetByConcatenatingChangeSet:v22];
    [(IKDSEBoundItemsImpl *)self setItemsChangeSet:v25];
  }

  else
  {
    [(IKDSEBoundItemsImpl *)self setItemsChangeSet:v22];
  }

  v26 = *MEMORY[0x277D85DE8];
}

- (NSArray)masterPrototypes
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(IKDSEBoundItemsImpl *)self usedPrototypeMappingsByIdentifier];
  v3 = [v2 allValues];

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) viewElement];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    v11 = [v4 copy];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (NSArray)proxiedItemElements
{
  v2 = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];
  v3 = [v2 allValues];

  return v3;
}

- (id)masterPrototypeForItemAtIndex:(unint64_t)a3
{
  v3 = [(IKDSEBoundItemsImpl *)self _prototypeMappingForItemAtIndex:a3];
  v4 = [v3 viewElement];

  return v4;
}

- (void)resetImplicitUpdates
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(IKDSEBoundItemsImpl *)self proxiedItemElements];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetImplicitUpdates];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)proxyElementForLoadedChildElement:(id)a3
{
  v4 = a3;
  if ([objc_opt_class() _canProxiedItemElementsBeUpdatedWithLoadedElements])
  {
    v5 = [v4 attributes];
    v6 = [v5 objectForKeyedSubscript:@"itemID"];

    if (v6)
    {
      v7 = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];
      v8 = [v7 objectForKeyedSubscript:v6];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)canProxyUnloadedChildElement:(id)a3
{
  v4 = [a3 attributes];
  v5 = [v4 objectForKeyedSubscript:@"itemID"];

  v6 = [(IKDSEBoundItemsImpl *)self dataSet];
  v7 = [v6 itemIDs];
  v8 = [v7 containsObject:v5];

  return v8;
}

+ (BOOL)_canProxiedItemElementsBeUpdatedWithLoadedElements
{
  if (_canProxiedItemElementsBeUpdatedWithLoadedElements_onceToken != -1)
  {
    +[IKDSEBoundItemsImpl _canProxiedItemElementsBeUpdatedWithLoadedElements];
  }

  return _canProxiedItemElementsBeUpdatedWithLoadedElements_canProxiedItemElementsBeUpdatedWithActualElements;
}

void __73__IKDSEBoundItemsImpl__canProxiedItemElementsBeUpdatedWithLoadedElements__block_invoke()
{
  v1 = [MEMORY[0x277CCA8D8] mainBundle];
  v0 = [v1 bundleIdentifier];
  _canProxiedItemElementsBeUpdatedWithLoadedElements_canProxiedItemElementsBeUpdatedWithActualElements = [v0 isEqualToString:@"com.apple.TVHomeSharing"] ^ 1;
}

- (id)_prototypeMappingForItemAtIndex:(int64_t)a3
{
  v5 = [(IKDSEBoundItemsImpl *)self dataSet];
  v6 = [v5 items];
  v7 = [v6 objectAtIndexedSubscript:a3];

  v8 = [(IKDSEBoundItemsImpl *)self usedPrototypeMappingsByIdentifier];
  v9 = [v7 prototypeIdentifier];
  v10 = [v8 objectForKeyedSubscript:v9];

  return v10;
}

- (id)_elementForItemAtIndex:(int64_t)a3
{
  v5 = [(IKDSEBoundItemsImpl *)self dataSet];
  v6 = [v5 items];
  v7 = [v6 objectAtIndexedSubscript:a3];

  v8 = [(IKDSEBoundItemsImpl *)self childrenByItemID];
  v9 = [v7 identifier];
  v10 = [v8 objectForKeyedSubscript:v9];

  if (!v10)
  {
    v11 = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];
    v12 = [v7 identifier];
    v10 = [v11 objectForKeyedSubscript:v12];

    if (!v10)
    {
      v13 = [(IKDSEBoundItemsImpl *)self _prototypeMappingForItemAtIndex:a3];
      v14 = [v13 viewElement];

      v15 = objc_alloc(objc_opt_class());
      v16 = [(IKDSEBoundItemsImpl *)self dataSourceElement];
      v10 = [v15 initWithPrototypeElement:v14 parent:v16 appDataItem:v7];

      v17 = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];

      if (!v17)
      {
        v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
        [(IKDSEBoundItemsImpl *)self setProxiedItemElementsByItemID:v18];
      }

      v19 = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];
      v20 = [v7 identifier];
      [v19 setObject:v10 forKeyedSubscript:v20];
    }
  }

  return v10;
}

- (void)_appendVisibleIndexSetWithIndex:(int64_t)a3
{
  v5 = [(IKDSEBoundItemsImpl *)self dataSet];
  if (v5)
  {
    v6 = v5;
    v7 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
    v8 = [v7 containsIndex:a3];

    if ((v8 & 1) == 0)
    {
      v9 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];

      if (!v9)
      {
        v10 = objc_alloc_init(MEMORY[0x277CCAB58]);
        [(IKDSEBoundItemsImpl *)self setVisibleIndexSet:v10];
      }

      v11 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
      [v11 addIndex:a3];

      if (!self->_visibleIndexRangeIsDirty)
      {
        self->_visibleIndexRangeIsDirty = 1;
        v25[0] = 0;
        v25[1] = v25;
        v25[2] = 0x3010000000;
        v25[4] = 0;
        v25[5] = 0;
        v25[3] = &unk_254A77479;
        objc_initWeak(&location, self);
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __55__IKDSEBoundItemsImpl__appendVisibleIndexSetWithIndex___block_invoke;
        v22[3] = &unk_27979B6A0;
        objc_copyWeak(&v23, &location);
        v22[4] = self;
        v22[5] = v25;
        v12 = MEMORY[0x259C21BA0](v22);
        v16 = MEMORY[0x277D85DD0];
        v17 = 3221225472;
        v18 = __55__IKDSEBoundItemsImpl__appendVisibleIndexSetWithIndex___block_invoke_2;
        v19 = &unk_27979B6C8;
        objc_copyWeak(&v21, &location);
        v20 = v25;
        v13 = MEMORY[0x259C21BA0](&v16);
        v14 = [(IKDSEBoundItemsImpl *)self dataSourceElement:v16];
        v15 = [v14 bindingController];
        [v15 scheduleUpdateUsingPreUpdate:v12 update:v13];

        objc_destroyWeak(&v21);
        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);
        _Block_object_dispose(v25, 8);
      }
    }
  }
}

uint64_t __55__IKDSEBoundItemsImpl__appendVisibleIndexSetWithIndex___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained visibleIndexSet];
    v5 = [v4 copy];

    v6 = [*(a1 + 32) dataSet];
    v7 = [v6 itemIDs];
    v8 = [v5 cyclicRangeForItemCount:objc_msgSend(v7 includeAllIndexes:{"count"), 1}];
    v9 = *(*(a1 + 40) + 8);
    *(v9 + 32) = v8;
    *(v9 + 40) = v10;

    v3[8] = 0;
  }

  return 1;
}

void __55__IKDSEBoundItemsImpl__appendVisibleIndexSetWithIndex___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v9 = WeakRetained;
    v3 = [WeakRetained dataSourceElement];
    v4 = [v3 bindingController];
    v5 = [v4 domElement];
    v6 = *(*(a1 + 32) + 8);
    if (*(v6 + 32) != [v5 domib_visibleIndexRange] || *(v6 + 40) != v7)
    {
      [v5 domib_setVisibleIndexRange:{*(*(*(a1 + 32) + 8) + 32), *(*(*(a1 + 32) + 8) + 40)}];
      [v5 childrenUpdatedWithUpdatedChildNodes:0 notify:0];
    }

    WeakRetained = v9;
  }
}

- (void)_initializePrototypeBundleIfNeeded
{
  v3 = [(IKDSEBoundItemsImpl *)self prototypeBundle];

  if (!v3)
  {
    v4 = [(IKDSEBoundItemsImpl *)self dataSourceElement];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __57__IKDSEBoundItemsImpl__initializePrototypeBundleIfNeeded__block_invoke;
    v5[3] = &unk_279799488;
    v5[4] = self;
    [v4 performImplicitUpdates:v5];
  }
}

void __57__IKDSEBoundItemsImpl__initializePrototypeBundleIfNeeded__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v3 = [*(a1 + 32) usedPrototypeMappingsByIdentifier];
  v4 = [v3 allValues];

  obj = v4;
  v22 = [v4 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v22)
  {
    v21 = *v24;
    v5 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        v7 = v5;
        if (*v24 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v23 + 1) + 8 * i);
        v9 = [v8 viewElement];
        v10 = [v8 usageIndexes];
        v11 = [v9 style];
        v12 = [v11 prototype];
        v13 = [v12 isEqualToString:@"abstract"];

        if (v13)
        {
          v14 = [v10 firstIndex];
          v5 = v7;
          if (v14 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v15 = v14;
            do
            {
              v16 = [*(a1 + 32) _elementForItemAtIndex:v15];
              v17 = [*(v5 + 2680) indexSetWithIndex:v15];
              [v2 addPrototype:v16 forIndexes:v17];

              v5 = v7;
              v18 = [v8 usageIndexes];
              v15 = [v18 indexGreaterThanIndex:v15];
            }

            while (v15 != 0x7FFFFFFFFFFFFFFFLL);
          }
        }

        else
        {
          [v2 addPrototype:v9 forIndexes:v10];
          v5 = v7;
        }
      }

      v22 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v22);
  }

  [*(a1 + 32) setPrototypeBundle:v2];
  v19 = *MEMORY[0x277D85DE8];
}

- (IKDataSourceElement)dataSourceElement
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSourceElement);

  return WeakRetained;
}

@end
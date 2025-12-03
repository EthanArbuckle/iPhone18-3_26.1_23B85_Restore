@interface IKDSEBoundItemsImpl
+ (BOOL)_canProxiedItemElementsBeUpdatedWithLoadedElements;
- (BOOL)canProxyUnloadedChildElement:(id)element;
- (IKDSEBoundItemsImpl)initWithDataSourceElement:(id)element;
- (IKDataSourceElement)dataSourceElement;
- (NSArray)masterPrototypes;
- (NSArray)prototypes;
- (NSArray)proxiedItemElements;
- (NSDictionary)indexTitles;
- (NSString)debugDescription;
- (id)_elementForItemAtIndex:(int64_t)index;
- (id)_prototypeMappingForItemAtIndex:(int64_t)index;
- (id)elementForItemAtIndex:(int64_t)index;
- (id)masterPrototypeForItemAtIndex:(unint64_t)index;
- (id)prototypeForItemAtIndex:(int64_t)index;
- (id)proxyElementForLoadedChildElement:(id)element;
- (int64_t)indexOfItemForElement:(id)element;
- (int64_t)numberOfItems;
- (void)_appendVisibleIndexSetWithIndex:(int64_t)index;
- (void)_initializePrototypeBundleIfNeeded;
- (void)applyUpdatesWithImplementation:(id)implementation usingUpdater:(id)updater;
- (void)configureUpdatesWithImplementation:(id)implementation;
- (void)initializeWithElementFactory:(id)factory;
- (void)resetImplicitUpdates;
- (void)unloadIndex:(int64_t)index;
- (void)updateStylesUsingUpdater:(id)updater;
@end

@implementation IKDSEBoundItemsImpl

- (IKDSEBoundItemsImpl)initWithDataSourceElement:(id)element
{
  elementCopy = element;
  v8.receiver = self;
  v8.super_class = IKDSEBoundItemsImpl;
  v5 = [(IKDSEBoundItemsImpl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSourceElement, elementCopy);
  }

  return v6;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  visibleIndexSet = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
  v7 = [v3 stringWithFormat:@"<%@: %p, visibleIndexSet = %@>", v5, self, visibleIndexSet];

  return v7;
}

- (NSArray)prototypes
{
  [(IKDSEBoundItemsImpl *)self _initializePrototypeBundleIfNeeded];
  prototypeBundle = [(IKDSEBoundItemsImpl *)self prototypeBundle];
  allPrototypes = [prototypeBundle allPrototypes];

  return allPrototypes;
}

- (int64_t)numberOfItems
{
  dataSet = [(IKDSEBoundItemsImpl *)self dataSet];
  items = [dataSet items];
  v4 = [items count];

  return v4;
}

- (id)prototypeForItemAtIndex:(int64_t)index
{
  [(IKDSEBoundItemsImpl *)self _initializePrototypeBundleIfNeeded];
  prototypeBundle = [(IKDSEBoundItemsImpl *)self prototypeBundle];
  v6 = [prototypeBundle prototypeForItemAtIndex:index];

  return v6;
}

- (id)elementForItemAtIndex:(int64_t)index
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__20;
  v13 = __Block_byref_object_dispose__20;
  v14 = 0;
  dataSourceElement = [(IKDSEBoundItemsImpl *)self dataSourceElement];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __45__IKDSEBoundItemsImpl_elementForItemAtIndex___block_invoke;
  v8[3] = &unk_27979B678;
  v8[4] = self;
  v8[5] = &v9;
  v8[6] = index;
  [dataSourceElement performImplicitUpdates:v8];

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

- (int64_t)indexOfItemForElement:(id)element
{
  attributes = [element attributes];
  v5 = [attributes objectForKeyedSubscript:@"itemID"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 length];

    if (!v7)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_7;
    }

    attributes = [(IKDSEBoundItemsImpl *)self dataSet];
    itemIDs = [attributes itemIDs];
    v9 = [itemIDs indexOfObject:v6];
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
  dataSet = [(IKDSEBoundItemsImpl *)self dataSet];
  indexTitles = [dataSet indexTitles];

  return indexTitles;
}

- (void)unloadIndex:(int64_t)index
{
  visibleIndexSet = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
  [visibleIndexSet removeIndex:index];
}

- (void)initializeWithElementFactory:(id)factory
{
  v50 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  dataSourceElement = [(IKDSEBoundItemsImpl *)self dataSourceElement];
  updateType = [dataSourceElement updateType];
  dataSourceElement2 = [(IKDSEBoundItemsImpl *)self dataSourceElement];
  bindingController = [dataSourceElement2 bindingController];
  domElement = [bindingController domElement];

  v37 = domElement;
  domib_appDataSet = [domElement domib_appDataSet];
  [(IKDSEBoundItemsImpl *)self setDataSet:domib_appDataSet];

  selfCopy = self;
  dataSet = [(IKDSEBoundItemsImpl *)self dataSet];
  usedPrototypesByIdentifier = [dataSet usedPrototypesByIdentifier];

  v11 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(usedPrototypesByIdentifier, "count")}];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v36 = usedPrototypesByIdentifier;
  allValues = [usedPrototypesByIdentifier allValues];
  v13 = [allValues countByEnumeratingWithState:&v44 objects:v49 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v17 = *(*(&v44 + 1) + 8 * i);
        usageIndexes = [v17 usageIndexes];
        v19 = [usageIndexes count];

        if (v19)
        {
          v20 = [IKDSEPrototypeMapping prototypeMappingFromAppPrototype:v17 dataSourceElement:dataSourceElement elementFactory:factoryCopy];
          identifier = [v17 identifier];
          [v11 setObject:v20 forKeyedSubscript:identifier];
        }
      }

      v14 = [allValues countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v14);
  }

  [(IKDSEBoundItemsImpl *)selfCopy setUsedPrototypeMappingsByIdentifier:v11];
  if ((updateType & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    v35 = dataSourceElement;
    unfilteredChildren = [dataSourceElement unfilteredChildren];
    v23 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(unfilteredChildren, "count")}];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v24 = unfilteredChildren;
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
          attributes = [v29 attributes];
          v31 = [attributes objectForKeyedSubscript:@"itemID"];

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
    [(IKDSEBoundItemsImpl *)selfCopy setChildrenByItemID:v32];

    dataSourceElement = v35;
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)configureUpdatesWithImplementation:(id)implementation
{
  dataSourceElement = [(IKDSEBoundItemsImpl *)self dataSourceElement];
  bindingController = [dataSourceElement bindingController];

  domElement = [bindingController domElement];
  domib_itemsChangeSet = [domElement domib_itemsChangeSet];

  if (domib_itemsChangeSet)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dataSourceElement2 = [(IKDSEBoundItemsImpl *)self dataSourceElement];
    updateType = [dataSourceElement2 updateType];

    if (updateType == 4)
    {
      dataSet = [(IKDSEBoundItemsImpl *)self dataSet];
      items = [dataSet items];
      v12 = [items count];

      if (v12)
      {
        v13 = 0;
        do
        {
          v14 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
          v15 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
          [dictionary setObject:v14 forKey:v15];

          ++v13;
          dataSet2 = [(IKDSEBoundItemsImpl *)self dataSet];
          items2 = [dataSet2 items];
          v18 = [items2 count];
        }

        while (v13 < v18);
      }

      v19 = [[IKChangeSet alloc] initWithAddedIndexes:0 removedIndexes:0 movedIndexesByNewIndex:0 updatedIndexesByNewIndex:dictionary];
      v20 = [domib_itemsChangeSet changeSetByConcatenatingChangeSet:v19];

      domib_itemsChangeSet = v20;
    }
  }

  [(IKDSEBoundItemsImpl *)self setItemsChangeSet:domib_itemsChangeSet];
}

- (void)applyUpdatesWithImplementation:(id)implementation usingUpdater:(id)updater
{
  v97 = *MEMORY[0x277D85DE8];
  implementationCopy = implementation;
  updaterCopy = updater;
  v8 = implementationCopy;
  dataSourceElement = [v8 dataSourceElement];
  updateType = [dataSourceElement updateType];

  [(IKDSEBoundItemsImpl *)self setPrototypeBundle:0];
  v74 = objc_opt_new();
  itemsChangeSet = [v8 itemsChangeSet];
  visibleIndexSet = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
  v13 = visibleIndexSet;
  v75 = itemsChangeSet;
  selfCopy = self;
  if (itemsChangeSet)
  {

    if (v13)
    {
      indexSet = [MEMORY[0x277CCAB58] indexSet];
      visibleIndexSet2 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
      firstIndex = [visibleIndexSet2 firstIndex];

      while (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = [itemsChangeSet newIndexForOldIndex:firstIndex];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = v17;
          [indexSet addIndex:v17];
          v19 = [MEMORY[0x277CCABB0] numberWithInteger:firstIndex];
          v20 = [MEMORY[0x277CCABB0] numberWithInteger:v18];
          [v74 setObject:v19 forKeyedSubscript:v20];

          itemsChangeSet = v75;
        }

        visibleIndexSet3 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
        firstIndex = [visibleIndexSet3 indexGreaterThanIndex:firstIndex];
      }

      [(IKDSEBoundItemsImpl *)self setVisibleIndexSet:indexSet];
    }

    removedIndexes = [itemsChangeSet removedIndexes];
    v23 = [removedIndexes mutableCopy];
    v24 = v23;
    if (v23)
    {
      indexSet2 = v23;
    }

    else
    {
      indexSet2 = [MEMORY[0x277CCAB58] indexSet];
    }

    proxiedItemElementsByItemID2 = indexSet2;

    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    updatedIndexesByNewIndex = [itemsChangeSet updatedIndexesByNewIndex];
    allValues = [updatedIndexesByNewIndex allValues];

    v29 = [allValues countByEnumeratingWithState:&v88 objects:v96 count:16];
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
            objc_enumerationMutation(allValues);
          }

          [proxiedItemElementsByItemID2 addIndex:{objc_msgSend(*(*(&v88 + 1) + 8 * i), "integerValue")}];
        }

        v30 = [allValues countByEnumeratingWithState:&v88 objects:v96 count:16];
      }

      while (v30);
    }

    proxiedItemElementsByItemID = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];
    dataSet = [(IKDSEBoundItemsImpl *)self dataSet];
    itemIDs = [dataSet itemIDs];
    v36 = [itemIDs objectsAtIndexes:proxiedItemElementsByItemID2];
    [proxiedItemElementsByItemID removeObjectsForKeys:v36];

    self = selfCopy;
  }

  else
  {
    [visibleIndexSet removeAllIndexes];

    proxiedItemElementsByItemID2 = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];
    [proxiedItemElementsByItemID2 removeAllObjects];
  }

  if ((updateType & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    dataSet2 = [v8 dataSet];
    [(IKDSEBoundItemsImpl *)self setDataSet:dataSet2];
  }

  v38 = updaterCopy[2](updaterCopy);
  v39 = v38;
  if ((updateType & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v73 = v8;
    v40 = MEMORY[0x277CBEB38];
    unfilteredChildren = [v38 unfilteredChildren];
    v78 = [v40 dictionaryWithCapacity:{objc_msgSend(unfilteredChildren, "count")}];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v84 = 0u;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    v72 = v39;
    unfilteredChildren2 = [v39 unfilteredChildren];
    v43 = [unfilteredChildren2 countByEnumeratingWithState:&v84 objects:v95 count:16];
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
            objc_enumerationMutation(unfilteredChildren2);
          }

          v47 = *(*(&v84 + 1) + 8 * j);
          attributes = [v47 attributes];
          v49 = [attributes objectForKeyedSubscript:@"itemID"];

          if ([v49 length])
          {
            [v78 setObject:v47 forKeyedSubscript:v49];
            if ([v47 updateType])
            {
              dataSet3 = [(IKDSEBoundItemsImpl *)selfCopy dataSet];
              itemIDs2 = [dataSet3 itemIDs];
              v52 = [itemIDs2 indexOfObject:v49];

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
              [dictionary setObject:v54 forKey:v55];
            }
          }
        }

        v44 = [unfilteredChildren2 countByEnumeratingWithState:&v84 objects:v95 count:16];
      }

      while (v44);
    }

    [(IKDSEBoundItemsImpl *)selfCopy setChildrenByItemID:v78];
    v56 = [[IKChangeSet alloc] initWithAddedIndexes:0 removedIndexes:0 movedIndexesByNewIndex:0 updatedIndexesByNewIndex:dictionary];
    if (v75)
    {
      v57 = [v75 changeSetByConcatenatingChangeSet:v56];
      [(IKDSEBoundItemsImpl *)selfCopy setItemsChangeSet:v57];
    }

    else
    {
      [(IKDSEBoundItemsImpl *)selfCopy setItemsChangeSet:v56];
    }

    usedPrototypeMappingsByIdentifier = [v73 usedPrototypeMappingsByIdentifier];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    allValues2 = [usedPrototypeMappingsByIdentifier allValues];
    v61 = [allValues2 countByEnumeratingWithState:&v80 objects:v92 count:16];
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
            objc_enumerationMutation(allValues2);
          }

          v65 = *(*(&v80 + 1) + 8 * k);
          dataSourceElement2 = [(IKDSEBoundItemsImpl *)selfCopy dataSourceElement];
          viewElement = [v65 viewElement];
          [dataSourceElement2 adoptElement:viewElement];
        }

        v62 = [allValues2 countByEnumeratingWithState:&v80 objects:v92 count:16];
      }

      while (v62);
    }

    [(IKDSEBoundItemsImpl *)selfCopy setUsedPrototypeMappingsByIdentifier:usedPrototypeMappingsByIdentifier];
    proxiedItemElementsByItemID3 = [(IKDSEBoundItemsImpl *)selfCopy proxiedItemElementsByItemID];
    childrenByItemID = [(IKDSEBoundItemsImpl *)selfCopy childrenByItemID];
    allKeys = [childrenByItemID allKeys];
    [proxiedItemElementsByItemID3 removeObjectsForKeys:allKeys];

    v8 = v73;
    v58 = v75;
    v39 = v72;
  }

  else
  {
    v58 = v75;
    if (updateType == 4)
    {
      visibleIndexSet4 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
      [v8 setVisibleIndexSet:?];
    }
  }

  v71 = *MEMORY[0x277D85DE8];
}

- (void)updateStylesUsingUpdater:(id)updater
{
  v37 = *MEMORY[0x277D85DE8];
  updaterCopy = updater;
  [(IKDSEBoundItemsImpl *)self setPrototypeBundle:0];
  updaterCopy[2](updaterCopy);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  prototypes = [(IKDSEBoundItemsImpl *)self prototypes];
  v6 = [prototypes countByEnumeratingWithState:&v31 objects:v36 count:16];
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
          objc_enumerationMutation(prototypes);
        }

        [*(*(&v31 + 1) + 8 * i) appDocumentDidMarkStylesDirty];
      }

      v7 = [prototypes countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v7);
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  proxiedItemElements = [(IKDSEBoundItemsImpl *)self proxiedItemElements];
  v11 = [proxiedItemElements countByEnumeratingWithState:&v27 objects:v35 count:16];
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
          objc_enumerationMutation(proxiedItemElements);
        }

        [*(*(&v27 + 1) + 8 * j) appDocumentDidMarkStylesDirty];
      }

      v12 = [proxiedItemElements countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v12);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  visibleIndexSet = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
  v17 = visibleIndexSet;
  if (visibleIndexSet)
  {
    firstIndex = [visibleIndexSet firstIndex];
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      for (k = firstIndex; k != 0x7FFFFFFFFFFFFFFFLL; k = [v17 indexGreaterThanIndex:k])
      {
        v20 = [MEMORY[0x277CCABB0] numberWithInteger:k];
        v21 = [MEMORY[0x277CCABB0] numberWithInteger:k];
        [dictionary setObject:v20 forKey:v21];
      }
    }
  }

  v22 = [[IKChangeSet alloc] initWithAddedIndexes:0 removedIndexes:0 movedIndexesByNewIndex:0 updatedIndexesByNewIndex:dictionary];
  itemsChangeSet = [(IKDSEBoundItemsImpl *)self itemsChangeSet];
  if (itemsChangeSet)
  {
    itemsChangeSet2 = [(IKDSEBoundItemsImpl *)self itemsChangeSet];
    v25 = [itemsChangeSet2 changeSetByConcatenatingChangeSet:v22];
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
  usedPrototypeMappingsByIdentifier = [(IKDSEBoundItemsImpl *)self usedPrototypeMappingsByIdentifier];
  allValues = [usedPrototypeMappingsByIdentifier allValues];

  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(allValues, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = allValues;
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

        viewElement = [*(*(&v14 + 1) + 8 * i) viewElement];
        [v4 addObject:viewElement];
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
  proxiedItemElementsByItemID = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];
  allValues = [proxiedItemElementsByItemID allValues];

  return allValues;
}

- (id)masterPrototypeForItemAtIndex:(unint64_t)index
{
  v3 = [(IKDSEBoundItemsImpl *)self _prototypeMappingForItemAtIndex:index];
  viewElement = [v3 viewElement];

  return viewElement;
}

- (void)resetImplicitUpdates
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  proxiedItemElements = [(IKDSEBoundItemsImpl *)self proxiedItemElements];
  v3 = [proxiedItemElements countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(proxiedItemElements);
        }

        [*(*(&v8 + 1) + 8 * v6++) resetImplicitUpdates];
      }

      while (v4 != v6);
      v4 = [proxiedItemElements countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (id)proxyElementForLoadedChildElement:(id)element
{
  elementCopy = element;
  if ([objc_opt_class() _canProxiedItemElementsBeUpdatedWithLoadedElements])
  {
    attributes = [elementCopy attributes];
    v6 = [attributes objectForKeyedSubscript:@"itemID"];

    if (v6)
    {
      proxiedItemElementsByItemID = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];
      v8 = [proxiedItemElementsByItemID objectForKeyedSubscript:v6];
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

- (BOOL)canProxyUnloadedChildElement:(id)element
{
  attributes = [element attributes];
  v5 = [attributes objectForKeyedSubscript:@"itemID"];

  dataSet = [(IKDSEBoundItemsImpl *)self dataSet];
  itemIDs = [dataSet itemIDs];
  v8 = [itemIDs containsObject:v5];

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

- (id)_prototypeMappingForItemAtIndex:(int64_t)index
{
  dataSet = [(IKDSEBoundItemsImpl *)self dataSet];
  items = [dataSet items];
  v7 = [items objectAtIndexedSubscript:index];

  usedPrototypeMappingsByIdentifier = [(IKDSEBoundItemsImpl *)self usedPrototypeMappingsByIdentifier];
  prototypeIdentifier = [v7 prototypeIdentifier];
  v10 = [usedPrototypeMappingsByIdentifier objectForKeyedSubscript:prototypeIdentifier];

  return v10;
}

- (id)_elementForItemAtIndex:(int64_t)index
{
  dataSet = [(IKDSEBoundItemsImpl *)self dataSet];
  items = [dataSet items];
  v7 = [items objectAtIndexedSubscript:index];

  childrenByItemID = [(IKDSEBoundItemsImpl *)self childrenByItemID];
  identifier = [v7 identifier];
  v10 = [childrenByItemID objectForKeyedSubscript:identifier];

  if (!v10)
  {
    proxiedItemElementsByItemID = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];
    identifier2 = [v7 identifier];
    v10 = [proxiedItemElementsByItemID objectForKeyedSubscript:identifier2];

    if (!v10)
    {
      v13 = [(IKDSEBoundItemsImpl *)self _prototypeMappingForItemAtIndex:index];
      viewElement = [v13 viewElement];

      v15 = objc_alloc(objc_opt_class());
      dataSourceElement = [(IKDSEBoundItemsImpl *)self dataSourceElement];
      v10 = [v15 initWithPrototypeElement:viewElement parent:dataSourceElement appDataItem:v7];

      proxiedItemElementsByItemID2 = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];

      if (!proxiedItemElementsByItemID2)
      {
        v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
        [(IKDSEBoundItemsImpl *)self setProxiedItemElementsByItemID:v18];
      }

      proxiedItemElementsByItemID3 = [(IKDSEBoundItemsImpl *)self proxiedItemElementsByItemID];
      identifier3 = [v7 identifier];
      [proxiedItemElementsByItemID3 setObject:v10 forKeyedSubscript:identifier3];
    }
  }

  return v10;
}

- (void)_appendVisibleIndexSetWithIndex:(int64_t)index
{
  dataSet = [(IKDSEBoundItemsImpl *)self dataSet];
  if (dataSet)
  {
    v6 = dataSet;
    visibleIndexSet = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
    v8 = [visibleIndexSet containsIndex:index];

    if ((v8 & 1) == 0)
    {
      visibleIndexSet2 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];

      if (!visibleIndexSet2)
      {
        v10 = objc_alloc_init(MEMORY[0x277CCAB58]);
        [(IKDSEBoundItemsImpl *)self setVisibleIndexSet:v10];
      }

      visibleIndexSet3 = [(IKDSEBoundItemsImpl *)self visibleIndexSet];
      [visibleIndexSet3 addIndex:index];

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
        bindingController = [v14 bindingController];
        [bindingController scheduleUpdateUsingPreUpdate:v12 update:v13];

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
  prototypeBundle = [(IKDSEBoundItemsImpl *)self prototypeBundle];

  if (!prototypeBundle)
  {
    dataSourceElement = [(IKDSEBoundItemsImpl *)self dataSourceElement];
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __57__IKDSEBoundItemsImpl__initializePrototypeBundleIfNeeded__block_invoke;
    v5[3] = &unk_279799488;
    v5[4] = self;
    [dataSourceElement performImplicitUpdates:v5];
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
@interface IKDOMItemsBindingStrategy
- (IKDOMItemsBindingStrategy)initWithDOMBindingController:(id)controller;
- (_NSRange)visibleItemsRange;
- (id)_appDataItemFromDataItem:(id)item binding:(id)binding prototypeIdentifier:(id)identifier autoHighlighted:(BOOL *)highlighted;
- (void)_reevaluateVisibleIndexRange;
- (void)_updateChildDOMElements;
- (void)didResolveKeys:(id)keys;
- (void)willUpdateWithItems:(id)items indexTitles:(id)titles usedPrototypesByIdentifier:(id)identifier changeSet:(id)set;
@end

@implementation IKDOMItemsBindingStrategy

- (IKDOMItemsBindingStrategy)initWithDOMBindingController:(id)controller
{
  v4.receiver = self;
  v4.super_class = IKDOMItemsBindingStrategy;
  return [(IKDOMBindingStrategy *)&v4 initWithDOMBindingController:controller itemsBindingKey:@"items"];
}

- (void)didResolveKeys:(id)keys
{
  v8.receiver = self;
  v8.super_class = IKDOMItemsBindingStrategy;
  [(IKDOMBindingStrategy *)&v8 didResolveKeys:keys];
  domBindingController = [(IKDOMBindingStrategy *)self domBindingController];
  domElement = [domBindingController domElement];
  [(IKDOMItemsBindingStrategy *)self _updateChildDOMElements];
  itemsChangeSet = [(IKDOMItemsBindingStrategy *)self itemsChangeSet];
  [domElement domib_setItemsChangeSet:itemsChangeSet];

  v7 = objc_opt_new();
  [(IKDOMItemsBindingStrategy *)self setItemsChangeSet:v7];
}

- (_NSRange)visibleItemsRange
{
  domBindingController = [(IKDOMBindingStrategy *)self domBindingController];
  domElement = [domBindingController domElement];
  domib_visibleIndexRange = [domElement domib_visibleIndexRange];
  v6 = v5;

  v7 = domib_visibleIndexRange;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)willUpdateWithItems:(id)items indexTitles:(id)titles usedPrototypesByIdentifier:(id)identifier changeSet:(id)set
{
  v144 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  titlesCopy = titles;
  selfCopy = self;
  v13 = titlesCopy;
  identifierCopy = identifier;
  setCopy = set;
  domBindingController = [(IKDOMBindingStrategy *)selfCopy domBindingController];
  domElement = [domBindingController domElement];
  v106 = setCopy;
  if (setCopy)
  {
    v16 = setCopy;
  }

  else
  {
    v17 = [IKChangeSet alloc];
    v18 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(itemsCopy, "count")}];
    v16 = [(IKChangeSet *)v17 initWithAddedIndexes:v18 removedIndexes:0 movedIndexesByNewIndex:0 updatedIndexesByNewIndex:0];
  }

  domib_appDataSet = [domElement domib_appDataSet];
  items = [domib_appDataSet items];

  v108 = items;
  v21 = [items mutableCopy];
  v22 = v21;
  if (v21)
  {
    array = v21;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v118 = array;

  v115 = selfCopy;
  usedAppPrototypesByIdentifier = [(IKDOMItemsBindingStrategy *)selfCopy usedAppPrototypesByIdentifier];
  v25 = [usedAppPrototypesByIdentifier mutableCopy];
  v26 = v25;
  v107 = v13;
  if (v25)
  {
    dictionary = v25;
  }

  else
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v28 = dictionary;

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v116 = v28;
  allValues = [v28 allValues];
  v30 = [allValues countByEnumeratingWithState:&v136 objects:v143 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v137;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v137 != v32)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v136 + 1) + 8 * i) updateUsageIndexesWithChangeSet:v16];
      }

      v31 = [allValues countByEnumeratingWithState:&v136 objects:v143 count:16];
    }

    while (v31);
  }

  removedIndexes = [(IKChangeSet *)v16 removedIndexes];
  v35 = [removedIndexes mutableCopy];
  v36 = v35;
  if (v35)
  {
    indexSet2 = v35;
  }

  else
  {
    indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  }

  v38 = indexSet2;

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  movedIndexesByNewIndex = [(IKChangeSet *)v16 movedIndexesByNewIndex];
  allValues2 = [movedIndexesByNewIndex allValues];

  v41 = [allValues2 countByEnumeratingWithState:&v132 objects:v142 count:16];
  if (v41)
  {
    v42 = v41;
    v43 = *v133;
    do
    {
      for (j = 0; j != v42; ++j)
      {
        if (*v133 != v43)
        {
          objc_enumerationMutation(allValues2);
        }

        [v38 addIndex:{objc_msgSend(*(*(&v132 + 1) + 8 * j), "integerValue")}];
      }

      v42 = [allValues2 countByEnumeratingWithState:&v132 objects:v142 count:16];
    }

    while (v42);
  }

  lastIndex = [v38 lastIndex];
  if (lastIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (k = lastIndex; k != 0x7FFFFFFFFFFFFFFFLL; k = [v38 indexLessThanIndex:k])
    {
      [v118 removeObjectAtIndex:k];
    }
  }

  addedIndexes = [(IKChangeSet *)v16 addedIndexes];
  v48 = [addedIndexes mutableCopy];
  v49 = v48;
  v104 = domElement;
  if (v48)
  {
    indexSet3 = v48;
  }

  else
  {
    indexSet3 = [MEMORY[0x277CCAB58] indexSet];
  }

  v51 = indexSet3;

  v130 = 0u;
  v131 = 0u;
  v129 = 0u;
  v128 = 0u;
  movedIndexesByNewIndex2 = [(IKChangeSet *)v16 movedIndexesByNewIndex];
  allKeys = [movedIndexesByNewIndex2 allKeys];

  v54 = [allKeys countByEnumeratingWithState:&v128 objects:v141 count:16];
  if (v54)
  {
    v55 = v54;
    v56 = *v129;
    do
    {
      for (m = 0; m != v55; ++m)
      {
        if (*v129 != v56)
        {
          objc_enumerationMutation(allKeys);
        }

        [v51 addIndex:{objc_msgSend(*(*(&v128 + 1) + 8 * m), "integerValue")}];
      }

      v55 = [allKeys countByEnumeratingWithState:&v128 objects:v141 count:16];
    }

    while (v55);
  }

  v110 = v51;
  firstIndex = [v51 firstIndex];
  v109 = v16;
  v103 = v38;
  if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = firstIndex;
    do
    {
      v60 = [itemsCopy objectAtIndexedSubscript:v59];
      prototypeIdentifier = [v60 prototypeIdentifier];
      v62 = [identifierCopy objectForKeyedSubscript:prototypeIdentifier];
      v63 = [v62 variantForDataItem:v60];

      v64 = [(IKChangeSet *)v16 oldIndexForNewIndex:v59];
      if (v64 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v65 = prototypeIdentifier;
        v66 = [[IKAppPrototype alloc] initWithPrototype:v63 dataItem:v60];
        identifier = [(IKAppPrototype *)v66 identifier];
        v68 = [v116 objectForKeyedSubscript:identifier];

        identifier2 = [(IKAppPrototype *)v66 identifier];
        if (v68)
        {
          v70 = [v116 objectForKeyedSubscript:identifier2];

          v66 = v70;
        }

        else
        {
          [v116 setObject:v66 forKeyedSubscript:identifier2];
        }

        [(IKAppPrototype *)v66 addUsageForIndex:v59];
        v127 = 0;
        domElement2 = [v63 domElement];
        v73 = [IKDOMBindingController parsedBindingForDOMElement:domElement2];
        identifier3 = [(IKAppPrototype *)v66 identifier];
        v71 = [(IKDOMItemsBindingStrategy *)v115 _appDataItemFromDataItem:v60 binding:v73 prototypeIdentifier:identifier3 autoHighlighted:&v127];

        if (v127 == 1)
        {
          [indexSet addIndex:v59];
        }

        v16 = v109;
        prototypeIdentifier = v65;
      }

      else
      {
        v71 = [v108 objectAtIndexedSubscript:v64];
      }

      [v118 insertObject:v71 atIndex:v59];
      v59 = [v110 indexGreaterThanIndex:v59];
    }

    while (v59 != 0x7FFFFFFFFFFFFFFFLL);
  }

  v125 = 0u;
  v126 = 0u;
  v123 = 0u;
  v124 = 0u;
  updatedIndexesByNewIndex = [(IKChangeSet *)v16 updatedIndexesByNewIndex];
  allKeys2 = [updatedIndexesByNewIndex allKeys];

  obj = allKeys2;
  v77 = v118;
  v119 = [allKeys2 countByEnumeratingWithState:&v123 objects:v140 count:16];
  if (v119)
  {
    v113 = *v124;
    v114 = itemsCopy;
    do
    {
      for (n = 0; n != v119; ++n)
      {
        if (*v124 != v113)
        {
          objc_enumerationMutation(obj);
        }

        integerValue = [*(*(&v123 + 1) + 8 * n) integerValue];
        v80 = [itemsCopy objectAtIndexedSubscript:integerValue];
        prototypeIdentifier2 = [v80 prototypeIdentifier];
        v81 = [identifierCopy objectForKeyedSubscript:?];
        v82 = [v81 variantForDataItem:v80];

        v83 = [v77 objectAtIndexedSubscript:integerValue];
        prototypeIdentifier3 = [v83 prototypeIdentifier];
        v85 = [v116 objectForKeyedSubscript:prototypeIdentifier3];
        [v85 removeUsageForIndex:integerValue];

        v86 = [[IKAppPrototype alloc] initWithPrototype:v82 dataItem:v80];
        identifier4 = [(IKAppPrototype *)v86 identifier];
        v88 = [v116 objectForKeyedSubscript:identifier4];

        identifier5 = [(IKAppPrototype *)v86 identifier];
        if (v88)
        {
          v90 = [v116 objectForKeyedSubscript:identifier5];

          v86 = v90;
        }

        else
        {
          [v116 setObject:v86 forKeyedSubscript:identifier5];
        }

        [(IKAppPrototype *)v86 addUsageForIndex:integerValue];
        v127 = 0;
        domElement3 = [v82 domElement];
        v92 = [IKDOMBindingController parsedBindingForDOMElement:domElement3];
        identifier6 = [(IKAppPrototype *)v86 identifier];
        v94 = [(IKDOMItemsBindingStrategy *)v115 _appDataItemFromDataItem:v80 binding:v92 prototypeIdentifier:identifier6 autoHighlighted:&v127];

        if (v127 == 1)
        {
          [indexSet addIndex:integerValue];
        }

        v77 = v118;
        [v118 replaceObjectAtIndex:integerValue withObject:v94];

        itemsCopy = v114;
      }

      v119 = [obj countByEnumeratingWithState:&v123 objects:v140 count:16];
    }

    while (v119);
  }

  array2 = [MEMORY[0x277CBEB18] array];
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = __98__IKDOMItemsBindingStrategy_willUpdateWithItems_indexTitles_usedPrototypesByIdentifier_changeSet___block_invoke;
  v121[3] = &unk_2797993E0;
  v96 = array2;
  v122 = v96;
  [v116 enumerateKeysAndObjectsUsingBlock:v121];
  [v116 removeObjectsForKeys:v96];
  v97 = [IKAppDataSet alloc];
  v98 = [v77 copy];
  v99 = [(IKAppDataSet *)v97 initWithItems:v98 usedPrototypesByIdentifier:v116 indexTitles:v107];
  [v104 domib_setAppDataSet:v99];

  if ([indexSet count])
  {
    v100 = [indexSet copy];
    v101 = v115;
    [(IKDOMItemsBindingStrategy *)v115 setAutoHighlightedIndexes:v100];
  }

  else
  {
    v101 = v115;
    [(IKDOMItemsBindingStrategy *)v115 setAutoHighlightedIndexes:0];
  }

  [(IKDOMItemsBindingStrategy *)v101 setUsedAppPrototypesByIdentifier:v116];
  [(IKDOMItemsBindingStrategy *)v101 setItemsChangeSet:v106];
  [(IKDOMItemsBindingStrategy *)v101 _reevaluateVisibleIndexRange];

  v102 = *MEMORY[0x277D85DE8];
}

void __98__IKDOMItemsBindingStrategy_willUpdateWithItems_indexTitles_usedPrototypesByIdentifier_changeSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 usageIndexes];
  v6 = [v5 count];

  if (!v6)
  {
    [*(a1 + 32) addObject:v7];
  }
}

- (void)_updateChildDOMElements
{
  v55 = *MEMORY[0x277D85DE8];
  domBindingController = [(IKDOMBindingStrategy *)self domBindingController];
  domElement = [domBindingController domElement];
  items = [(IKDOMBindingStrategy *)self items];
  domib_appDataSet = [domElement domib_appDataSet];
  items2 = [domib_appDataSet items];
  v37 = domib_appDataSet;
  usedPrototypesByIdentifier = [domib_appDataSet usedPrototypesByIdentifier];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  childElements = [domElement childElements];
  v7 = [childElements countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v50;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(childElements);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v12 = [v11 getAttribute:@"itemID"];
        if ([v12 length])
        {
          [dictionary setObject:v11 forKeyedSubscript:v12];
        }
      }

      v8 = [childElements countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v8);
  }

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  v14 = MEMORY[0x277CCAA78];
  domib_visibleIndexRange = [domElement domib_visibleIndexRange];
  v17 = [v14 indexSetWithIndexesInCyclicRange:domib_visibleIndexRange itemCount:{v16, objc_msgSend(items, "count")}];
  [indexSet addIndexes:v17];

  autoHighlightedIndexes = [(IKDOMItemsBindingStrategy *)self autoHighlightedIndexes];

  if (autoHighlightedIndexes)
  {
    autoHighlightedIndexes2 = [(IKDOMItemsBindingStrategy *)self autoHighlightedIndexes];
    [indexSet addIndexes:autoHighlightedIndexes2];

    [(IKDOMItemsBindingStrategy *)self setAutoHighlightedIndexes:0];
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __52__IKDOMItemsBindingStrategy__updateChildDOMElements__block_invoke;
  v42[3] = &unk_279799408;
  v33 = items;
  v43 = v33;
  v20 = dictionary;
  v44 = v20;
  v21 = items2;
  v45 = v21;
  v22 = usedPrototypesByIdentifier;
  v46 = v22;
  v23 = domBindingController;
  v47 = v23;
  v24 = domElement;
  v48 = v24;
  [indexSet enumerateIndexesUsingBlock:v42];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  allValues = [v20 allValues];
  v26 = [allValues countByEnumeratingWithState:&v38 objects:v53 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v39;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v39 != v28)
        {
          objc_enumerationMutation(allValues);
        }

        v30 = [v24 removeChild:*(*(&v38 + 1) + 8 * j)];
      }

      v27 = [allValues countByEnumeratingWithState:&v38 objects:v53 count:16];
    }

    while (v27);
  }

  v31 = *MEMORY[0x277D85DE8];
}

void __52__IKDOMItemsBindingStrategy__updateChildDOMElements__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = [*(a1 + 32) objectAtIndexedSubscript:a2];
  if (([v13 isPlaceholder] & 1) == 0)
  {
    v4 = [v13 identifier];
    v5 = [*(a1 + 40) objectForKeyedSubscript:v4];
    if (v5)
    {
      [*(a1 + 40) removeObjectForKey:v4];
    }

    v6 = [*(a1 + 48) objectAtIndexedSubscript:a2];
    v7 = *(a1 + 56);
    v8 = [v6 prototypeIdentifier];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [v9 prototype];

    v11 = *(a1 + 64);
    v12 = [objc_opt_class() instantiateDOMElementForItem:v13 withPrototype:v10 parentDOMElement:*(a1 + 72) existingDOMElement:v5];
  }
}

- (id)_appDataItemFromDataItem:(id)item binding:(id)binding prototypeIdentifier:(id)identifier autoHighlighted:(BOOL *)highlighted
{
  itemCopy = item;
  bindingCopy = binding;
  identifierCopy = identifier;
  if (highlighted)
  {
    keyValues = [bindingCopy keyValues];
    v13 = [@"@" stringByAppendingString:@"autoHighlight"];
    v14 = [keyValues objectForKeyedSubscript:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [itemCopy valueForPropertyPath:v14 boxed:0];
      if ([v15 isString])
      {
        *highlighted = 1;
      }
    }
  }

  v16 = [IKAppDataItem alloc];
  type = [itemCopy type];
  string = type;
  if (!type)
  {
    string = [MEMORY[0x277CCACA8] string];
  }

  identifier = [itemCopy identifier];
  dataDictionary = [itemCopy dataDictionary];
  v21 = [(IKAppDataItem *)v16 initWithType:string identifier:identifier prototypeIdentifier:identifierCopy dataDictionary:dataDictionary];

  if (!type)
  {
  }

  return v21;
}

- (void)_reevaluateVisibleIndexRange
{
  v31 = *MEMORY[0x277D85DE8];
  itemsChangeSet = [(IKDOMItemsBindingStrategy *)self itemsChangeSet];
  if (itemsChangeSet)
  {
    v4 = itemsChangeSet;
    itemsChangeSet2 = [(IKDOMItemsBindingStrategy *)self itemsChangeSet];
    addedIndexes = [itemsChangeSet2 addedIndexes];
    if (!addedIndexes)
    {
      addedIndexes = [(IKDOMItemsBindingStrategy *)self itemsChangeSet];
      removedIndexes = [addedIndexes removedIndexes];
      if (!removedIndexes)
      {
        itemsChangeSet3 = [(IKDOMItemsBindingStrategy *)self itemsChangeSet];
        movedIndexesByNewIndex = [itemsChangeSet3 movedIndexesByNewIndex];

        if (!movedIndexesByNewIndex)
        {
          goto LABEL_19;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_6:
  domBindingController = [(IKDOMBindingStrategy *)self domBindingController];
  domElement = [domBindingController domElement];
  domib_appDataSet = [domElement domib_appDataSet];
  itemIDs = [domib_appDataSet itemIDs];
  v10 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  childElements = [domElement childElements];
  v12 = [childElements countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v27;
    do
    {
      v15 = 0;
      do
      {
        if (*v27 != v14)
        {
          objc_enumerationMutation(childElements);
        }

        v16 = [*(*(&v26 + 1) + 8 * v15) getAttribute:@"itemID"];
        v17 = [itemIDs indexOfObject:v16];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v10 addIndex:v17];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [childElements countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    v18 = [v10 cyclicRangeForItemCount:objc_msgSend(itemIDs includeAllIndexes:{"count"), 0}];
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  [domElement domib_setVisibleIndexRange:{v18, v20}];

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
}

@end
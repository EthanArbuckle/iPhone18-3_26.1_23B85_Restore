@interface IKDOMItemsBindingStrategy
- (IKDOMItemsBindingStrategy)initWithDOMBindingController:(id)a3;
- (_NSRange)visibleItemsRange;
- (id)_appDataItemFromDataItem:(id)a3 binding:(id)a4 prototypeIdentifier:(id)a5 autoHighlighted:(BOOL *)a6;
- (void)_reevaluateVisibleIndexRange;
- (void)_updateChildDOMElements;
- (void)didResolveKeys:(id)a3;
- (void)willUpdateWithItems:(id)a3 indexTitles:(id)a4 usedPrototypesByIdentifier:(id)a5 changeSet:(id)a6;
@end

@implementation IKDOMItemsBindingStrategy

- (IKDOMItemsBindingStrategy)initWithDOMBindingController:(id)a3
{
  v4.receiver = self;
  v4.super_class = IKDOMItemsBindingStrategy;
  return [(IKDOMBindingStrategy *)&v4 initWithDOMBindingController:a3 itemsBindingKey:@"items"];
}

- (void)didResolveKeys:(id)a3
{
  v8.receiver = self;
  v8.super_class = IKDOMItemsBindingStrategy;
  [(IKDOMBindingStrategy *)&v8 didResolveKeys:a3];
  v4 = [(IKDOMBindingStrategy *)self domBindingController];
  v5 = [v4 domElement];
  [(IKDOMItemsBindingStrategy *)self _updateChildDOMElements];
  v6 = [(IKDOMItemsBindingStrategy *)self itemsChangeSet];
  [v5 domib_setItemsChangeSet:v6];

  v7 = objc_opt_new();
  [(IKDOMItemsBindingStrategy *)self setItemsChangeSet:v7];
}

- (_NSRange)visibleItemsRange
{
  v2 = [(IKDOMBindingStrategy *)self domBindingController];
  v3 = [v2 domElement];
  v4 = [v3 domib_visibleIndexRange];
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (void)willUpdateWithItems:(id)a3 indexTitles:(id)a4 usedPrototypesByIdentifier:(id)a5 changeSet:(id)a6
{
  v144 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = self;
  v13 = v11;
  v117 = a5;
  v14 = a6;
  v105 = [(IKDOMBindingStrategy *)v12 domBindingController];
  v15 = [v105 domElement];
  v106 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v17 = [IKChangeSet alloc];
    v18 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, objc_msgSend(v10, "count")}];
    v16 = [(IKChangeSet *)v17 initWithAddedIndexes:v18 removedIndexes:0 movedIndexesByNewIndex:0 updatedIndexesByNewIndex:0];
  }

  v19 = [v15 domib_appDataSet];
  v20 = [v19 items];

  v108 = v20;
  v21 = [v20 mutableCopy];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = [MEMORY[0x277CBEB18] array];
  }

  v118 = v23;

  v115 = v12;
  v24 = [(IKDOMItemsBindingStrategy *)v12 usedAppPrototypesByIdentifier];
  v25 = [v24 mutableCopy];
  v26 = v25;
  v107 = v13;
  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = [MEMORY[0x277CBEB38] dictionary];
  }

  v28 = v27;

  v111 = [MEMORY[0x277CCAB58] indexSet];
  v136 = 0u;
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v116 = v28;
  v29 = [v28 allValues];
  v30 = [v29 countByEnumeratingWithState:&v136 objects:v143 count:16];
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
          objc_enumerationMutation(v29);
        }

        [*(*(&v136 + 1) + 8 * i) updateUsageIndexesWithChangeSet:v16];
      }

      v31 = [v29 countByEnumeratingWithState:&v136 objects:v143 count:16];
    }

    while (v31);
  }

  v34 = [(IKChangeSet *)v16 removedIndexes];
  v35 = [v34 mutableCopy];
  v36 = v35;
  if (v35)
  {
    v37 = v35;
  }

  else
  {
    v37 = [MEMORY[0x277CCAB58] indexSet];
  }

  v38 = v37;

  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v39 = [(IKChangeSet *)v16 movedIndexesByNewIndex];
  v40 = [v39 allValues];

  v41 = [v40 countByEnumeratingWithState:&v132 objects:v142 count:16];
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
          objc_enumerationMutation(v40);
        }

        [v38 addIndex:{objc_msgSend(*(*(&v132 + 1) + 8 * j), "integerValue")}];
      }

      v42 = [v40 countByEnumeratingWithState:&v132 objects:v142 count:16];
    }

    while (v42);
  }

  v45 = [v38 lastIndex];
  if (v45 != 0x7FFFFFFFFFFFFFFFLL)
  {
    for (k = v45; k != 0x7FFFFFFFFFFFFFFFLL; k = [v38 indexLessThanIndex:k])
    {
      [v118 removeObjectAtIndex:k];
    }
  }

  v47 = [(IKChangeSet *)v16 addedIndexes];
  v48 = [v47 mutableCopy];
  v49 = v48;
  v104 = v15;
  if (v48)
  {
    v50 = v48;
  }

  else
  {
    v50 = [MEMORY[0x277CCAB58] indexSet];
  }

  v51 = v50;

  v130 = 0u;
  v131 = 0u;
  v129 = 0u;
  v128 = 0u;
  v52 = [(IKChangeSet *)v16 movedIndexesByNewIndex];
  v53 = [v52 allKeys];

  v54 = [v53 countByEnumeratingWithState:&v128 objects:v141 count:16];
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
          objc_enumerationMutation(v53);
        }

        [v51 addIndex:{objc_msgSend(*(*(&v128 + 1) + 8 * m), "integerValue")}];
      }

      v55 = [v53 countByEnumeratingWithState:&v128 objects:v141 count:16];
    }

    while (v55);
  }

  v110 = v51;
  v58 = [v51 firstIndex];
  v109 = v16;
  v103 = v38;
  if (v58 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v59 = v58;
    do
    {
      v60 = [v10 objectAtIndexedSubscript:v59];
      v61 = [v60 prototypeIdentifier];
      v62 = [v117 objectForKeyedSubscript:v61];
      v63 = [v62 variantForDataItem:v60];

      v64 = [(IKChangeSet *)v16 oldIndexForNewIndex:v59];
      if (v64 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v65 = v61;
        v66 = [[IKAppPrototype alloc] initWithPrototype:v63 dataItem:v60];
        v67 = [(IKAppPrototype *)v66 identifier];
        v68 = [v116 objectForKeyedSubscript:v67];

        v69 = [(IKAppPrototype *)v66 identifier];
        if (v68)
        {
          v70 = [v116 objectForKeyedSubscript:v69];

          v66 = v70;
        }

        else
        {
          [v116 setObject:v66 forKeyedSubscript:v69];
        }

        [(IKAppPrototype *)v66 addUsageForIndex:v59];
        v127 = 0;
        v72 = [v63 domElement];
        v73 = [IKDOMBindingController parsedBindingForDOMElement:v72];
        v74 = [(IKAppPrototype *)v66 identifier];
        v71 = [(IKDOMItemsBindingStrategy *)v115 _appDataItemFromDataItem:v60 binding:v73 prototypeIdentifier:v74 autoHighlighted:&v127];

        if (v127 == 1)
        {
          [v111 addIndex:v59];
        }

        v16 = v109;
        v61 = v65;
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
  v75 = [(IKChangeSet *)v16 updatedIndexesByNewIndex];
  v76 = [v75 allKeys];

  obj = v76;
  v77 = v118;
  v119 = [v76 countByEnumeratingWithState:&v123 objects:v140 count:16];
  if (v119)
  {
    v113 = *v124;
    v114 = v10;
    do
    {
      for (n = 0; n != v119; ++n)
      {
        if (*v124 != v113)
        {
          objc_enumerationMutation(obj);
        }

        v79 = [*(*(&v123 + 1) + 8 * n) integerValue];
        v80 = [v10 objectAtIndexedSubscript:v79];
        v120 = [v80 prototypeIdentifier];
        v81 = [v117 objectForKeyedSubscript:?];
        v82 = [v81 variantForDataItem:v80];

        v83 = [v77 objectAtIndexedSubscript:v79];
        v84 = [v83 prototypeIdentifier];
        v85 = [v116 objectForKeyedSubscript:v84];
        [v85 removeUsageForIndex:v79];

        v86 = [[IKAppPrototype alloc] initWithPrototype:v82 dataItem:v80];
        v87 = [(IKAppPrototype *)v86 identifier];
        v88 = [v116 objectForKeyedSubscript:v87];

        v89 = [(IKAppPrototype *)v86 identifier];
        if (v88)
        {
          v90 = [v116 objectForKeyedSubscript:v89];

          v86 = v90;
        }

        else
        {
          [v116 setObject:v86 forKeyedSubscript:v89];
        }

        [(IKAppPrototype *)v86 addUsageForIndex:v79];
        v127 = 0;
        v91 = [v82 domElement];
        v92 = [IKDOMBindingController parsedBindingForDOMElement:v91];
        v93 = [(IKAppPrototype *)v86 identifier];
        v94 = [(IKDOMItemsBindingStrategy *)v115 _appDataItemFromDataItem:v80 binding:v92 prototypeIdentifier:v93 autoHighlighted:&v127];

        if (v127 == 1)
        {
          [v111 addIndex:v79];
        }

        v77 = v118;
        [v118 replaceObjectAtIndex:v79 withObject:v94];

        v10 = v114;
      }

      v119 = [obj countByEnumeratingWithState:&v123 objects:v140 count:16];
    }

    while (v119);
  }

  v95 = [MEMORY[0x277CBEB18] array];
  v121[0] = MEMORY[0x277D85DD0];
  v121[1] = 3221225472;
  v121[2] = __98__IKDOMItemsBindingStrategy_willUpdateWithItems_indexTitles_usedPrototypesByIdentifier_changeSet___block_invoke;
  v121[3] = &unk_2797993E0;
  v96 = v95;
  v122 = v96;
  [v116 enumerateKeysAndObjectsUsingBlock:v121];
  [v116 removeObjectsForKeys:v96];
  v97 = [IKAppDataSet alloc];
  v98 = [v77 copy];
  v99 = [(IKAppDataSet *)v97 initWithItems:v98 usedPrototypesByIdentifier:v116 indexTitles:v107];
  [v104 domib_setAppDataSet:v99];

  if ([v111 count])
  {
    v100 = [v111 copy];
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
  v36 = [(IKDOMBindingStrategy *)self domBindingController];
  v3 = [v36 domElement];
  v32 = [(IKDOMBindingStrategy *)self items];
  v4 = [v3 domib_appDataSet];
  v34 = [v4 items];
  v37 = v4;
  v35 = [v4 usedPrototypesByIdentifier];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = [v3 childElements];
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v54 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v12 = [v11 getAttribute:@"itemID"];
        if ([v12 length])
        {
          [v5 setObject:v11 forKeyedSubscript:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v8);
  }

  v13 = [MEMORY[0x277CCAB58] indexSet];
  v14 = MEMORY[0x277CCAA78];
  v15 = [v3 domib_visibleIndexRange];
  v17 = [v14 indexSetWithIndexesInCyclicRange:v15 itemCount:{v16, objc_msgSend(v32, "count")}];
  [v13 addIndexes:v17];

  v18 = [(IKDOMItemsBindingStrategy *)self autoHighlightedIndexes];

  if (v18)
  {
    v19 = [(IKDOMItemsBindingStrategy *)self autoHighlightedIndexes];
    [v13 addIndexes:v19];

    [(IKDOMItemsBindingStrategy *)self setAutoHighlightedIndexes:0];
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __52__IKDOMItemsBindingStrategy__updateChildDOMElements__block_invoke;
  v42[3] = &unk_279799408;
  v33 = v32;
  v43 = v33;
  v20 = v5;
  v44 = v20;
  v21 = v34;
  v45 = v21;
  v22 = v35;
  v46 = v22;
  v23 = v36;
  v47 = v23;
  v24 = v3;
  v48 = v24;
  [v13 enumerateIndexesUsingBlock:v42];
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v25 = [v20 allValues];
  v26 = [v25 countByEnumeratingWithState:&v38 objects:v53 count:16];
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
          objc_enumerationMutation(v25);
        }

        v30 = [v24 removeChild:*(*(&v38 + 1) + 8 * j)];
      }

      v27 = [v25 countByEnumeratingWithState:&v38 objects:v53 count:16];
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

- (id)_appDataItemFromDataItem:(id)a3 binding:(id)a4 prototypeIdentifier:(id)a5 autoHighlighted:(BOOL *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a6)
  {
    v12 = [v10 keyValues];
    v13 = [@"@" stringByAppendingString:@"autoHighlight"];
    v14 = [v12 objectForKeyedSubscript:v13];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v9 valueForPropertyPath:v14 boxed:0];
      if ([v15 isString])
      {
        *a6 = 1;
      }
    }
  }

  v16 = [IKAppDataItem alloc];
  v17 = [v9 type];
  v18 = v17;
  if (!v17)
  {
    v18 = [MEMORY[0x277CCACA8] string];
  }

  v19 = [v9 identifier];
  v20 = [v9 dataDictionary];
  v21 = [(IKAppDataItem *)v16 initWithType:v18 identifier:v19 prototypeIdentifier:v11 dataDictionary:v20];

  if (!v17)
  {
  }

  return v21;
}

- (void)_reevaluateVisibleIndexRange
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [(IKDOMItemsBindingStrategy *)self itemsChangeSet];
  if (v3)
  {
    v4 = v3;
    v5 = [(IKDOMItemsBindingStrategy *)self itemsChangeSet];
    v6 = [v5 addedIndexes];
    if (!v6)
    {
      v6 = [(IKDOMItemsBindingStrategy *)self itemsChangeSet];
      v7 = [v6 removedIndexes];
      if (!v7)
      {
        v22 = [(IKDOMItemsBindingStrategy *)self itemsChangeSet];
        v23 = [v22 movedIndexesByNewIndex];

        if (!v23)
        {
          goto LABEL_19;
        }

        goto LABEL_6;
      }
    }
  }

LABEL_6:
  v25 = [(IKDOMBindingStrategy *)self domBindingController];
  v8 = [v25 domElement];
  v24 = [v8 domib_appDataSet];
  v9 = [v24 itemIDs];
  v10 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = [v8 childElements];
  v12 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v26 + 1) + 8 * v15) getAttribute:@"itemID"];
        v17 = [v9 indexOfObject:v16];
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v10 addIndex:v17];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    v18 = [v10 cyclicRangeForItemCount:objc_msgSend(v9 includeAllIndexes:{"count"), 0}];
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  [v8 domib_setVisibleIndexRange:{v18, v20}];

LABEL_19:
  v21 = *MEMORY[0x277D85DE8];
}

@end
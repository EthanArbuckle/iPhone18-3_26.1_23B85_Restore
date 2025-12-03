@interface BMAprioriPatternMiner
- (BMAprioriPatternMiner)initWithBaskets:(id)baskets;
- (id)getItemIndexSetsWithMinSupport:(double)support itemIndexSets:(id)sets;
- (id)minePatternsWithMinSupport:(unint64_t)support constrainedToPatternsWithTypes:(id)types;
- (id)supportOfItemIndexSet:(id)set;
@end

@implementation BMAprioriPatternMiner

- (BMAprioriPatternMiner)initWithBaskets:(id)baskets
{
  v44 = *MEMORY[0x277D85DE8];
  basketsCopy = baskets;
  v41.receiver = self;
  v41.super_class = BMAprioriPatternMiner;
  v5 = [(BMAprioriPatternMiner *)&v41 init];
  v6 = v5;
  if (v5)
  {
    v26 = v5;
    v5->_maxItemsetSize = 0;
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    orderedSet = [MEMORY[0x277CBEB40] orderedSet];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v27 = basketsCopy;
    obj = basketsCopy;
    v31 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    if (v31)
    {
      v29 = *v38;
      do
      {
        v9 = 0;
        do
        {
          if (*v38 != v29)
          {
            objc_enumerationMutation(obj);
          }

          v32 = v9;
          v10 = *(*(&v37 + 1) + 8 * v9);
          indexSet = [MEMORY[0x277CCAB58] indexSet];
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v36 = 0u;
          v12 = v10;
          v13 = [v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v34;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v34 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v33 + 1) + 8 * i);
                v18 = [orderedSet indexOfObject:v17];
                if (v18 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  [orderedSet addObject:v17];
                  v18 = [orderedSet indexOfObject:v17];
                  [array addObject:v17];
                }

                [indexSet addIndex:v18];
              }

              v14 = [v12 countByEnumeratingWithState:&v33 objects:v42 count:16];
            }

            while (v14);
          }

          v19 = [indexSet copy];
          [array2 addObject:v19];

          v9 = v32 + 1;
        }

        while (v32 + 1 != v31);
        v31 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
      }

      while (v31);
    }

    v20 = [array copy];
    v6 = v26;
    items = v26->_items;
    v26->_items = v20;

    v22 = [array2 copy];
    indexBaskets = v26->_indexBaskets;
    v26->_indexBaskets = v22;

    v26->_shouldStop = 0;
    basketsCopy = v27;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)supportOfItemIndexSet:(id)set
{
  v19 = *MEMORY[0x277D85DE8];
  setCopy = set;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  indexBaskets = [(BMAprioriPatternMiner *)self indexBaskets];
  v6 = [indexBaskets countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(indexBaskets);
        }

        v8 += [*(*(&v14 + 1) + 8 * i) containsIndexes:setCopy];
      }

      v7 = [indexBaskets countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)getItemIndexSetsWithMinSupport:(double)support itemIndexSets:(id)sets
{
  v24 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = setsCopy;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        if ([(BMAprioriPatternMiner *)self shouldStop])
        {

          v16 = MEMORY[0x277CBEC10];
          goto LABEL_13;
        }

        v14 = [(BMAprioriPatternMiner *)self supportOfItemIndexSet:v13];
        integerValue = [v14 integerValue];
        if (integerValue >= support)
        {
          [dictionary setObject:v14 forKey:{v13, integerValue}];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = dictionary;
LABEL_13:

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)minePatternsWithMinSupport:(unint64_t)support constrainedToPatternsWithTypes:(id)types
{
  typesCopy = types;
  indexSet = [MEMORY[0x277CCAB58] indexSet];
  items = [(BMAprioriPatternMiner *)self items];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __83__BMAprioriPatternMiner_minePatternsWithMinSupport_constrainedToPatternsWithTypes___block_invoke;
  v46[3] = &unk_278D065F8;
  v40 = typesCopy;
  v47 = v40;
  v9 = indexSet;
  v48 = v9;
  [items enumerateObjectsUsingBlock:v46];

  v39 = v9;
  v45 = [v9 copy];
  v10 = 0x277CBE000uLL;
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  items2 = [(BMAprioriPatternMiner *)self items];
  v13 = [items2 count];

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = [MEMORY[0x277CCAA78] indexSetWithIndex:v14];
      [v11 addObject:v15];

      ++v14;
      items3 = [(BMAprioriPatternMiner *)self items];
      v17 = [items3 count];
    }

    while (v17 > v14);
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  supportCopy = support;
  v38 = v11;
  v20 = [(BMAprioriPatternMiner *)self getItemIndexSetsWithMinSupport:v11 itemIndexSets:support];
  v21 = 0;
  if ([v20 count])
  {
    v22 = 2;
    v23 = v20;
    v37 = dictionary;
    while (1)
    {
      [dictionary addEntriesFromDictionary:v23];
      v43 = objc_alloc_init(*(v10 + 2840));

      v41 = v23;
      allKeys = [v23 allKeys];
      if ([allKeys count])
      {
        break;
      }

LABEL_17:
      if ([(BMAprioriPatternMiner *)self maxItemsetSize]&& v22 > [(BMAprioriPatternMiner *)self maxItemsetSize])
      {
        v35 = BMLog();
        v21 = v43;
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          [BMAprioriPatternMiner minePatternsWithMinSupport:v35 constrainedToPatternsWithTypes:?];
        }

        v20 = v41;
        dictionary = v37;
        goto LABEL_25;
      }

      v21 = v43;
      v20 = [(BMAprioriPatternMiner *)self getItemIndexSetsWithMinSupport:v43 itemIndexSets:supportCopy];

      ++v22;
      v23 = v20;
      v10 = 0x277CBE000;
      dictionary = v37;
      if (![v20 count])
      {
        goto LABEL_25;
      }
    }

    v25 = 0;
    v44 = allKeys;
    while (1)
    {
      v42 = v25 + 1;
      if (v25 + 1 < [allKeys count])
      {
        break;
      }

LABEL_16:
      v25 = v42;
      if (v42 >= [allKeys count])
      {
        goto LABEL_17;
      }
    }

    v26 = v25 + 1;
    while (![(BMAprioriPatternMiner *)self shouldStop])
    {
      v27 = [allKeys objectAtIndexedSubscript:v25];
      v28 = [allKeys objectAtIndexedSubscript:v26];
      v29 = objc_alloc_init(MEMORY[0x277CCAB58]);
      [v29 addIndexes:v27];
      [v29 addIndexes:v28];
      if ([v29 count] == v22)
      {
        v30 = v25;
        v31 = v22;
        v32 = [v45 mutableCopy];
        [v32 removeIndexes:v29];
        v33 = [v32 count];
        if (v33 != [v45 count])
        {
          [v43 addObject:v29];
        }

        v22 = v31;
        v25 = v30;
        allKeys = v44;
      }

      if (++v26 >= [allKeys count])
      {
        goto LABEL_16;
      }
    }

    v34 = MEMORY[0x277CBEC10];
    dictionary = v37;
    v21 = v43;
    v20 = v41;
  }

  else
  {
LABEL_25:
    v34 = dictionary;
  }

  return v34;
}

void __83__BMAprioriPatternMiner_minePatternsWithMinSupport_constrainedToPatternsWithTypes___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = [a2 type];
  LODWORD(v5) = [v5 containsObject:v6];

  if (v5)
  {
    v7 = *(a1 + 40);

    [v7 addIndex:a3];
  }
}

- (void)minePatternsWithMinSupport:(void *)a1 constrainedToPatternsWithTypes:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(a1, "maxItemsetSize")}];
  v5 = 138412290;
  v6 = v3;
  _os_log_debug_impl(&dword_241ACA000, a2, OS_LOG_TYPE_DEBUG, "Finished mining patterns due to max items in itemset (%@) reached", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end
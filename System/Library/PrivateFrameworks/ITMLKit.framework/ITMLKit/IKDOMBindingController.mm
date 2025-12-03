@interface IKDOMBindingController
+ (id)_parsedMutationRulesForDOMElement:(id)element;
+ (id)_prototypeGroupsByTypeForDOMElement:(id)element;
+ (id)instantiateDOMElementForItem:(id)item withPrototype:(id)prototype parentDOMElement:(id)element existingDOMElement:(id)mElement;
+ (id)parsedBindingForDOMElement:(id)element;
+ (void)prepareForDOMElement:(id)element;
- (BOOL)_canBeReused;
- (IKAppContext)appContext;
- (IKDOMBindingController)initWithDOMElement:(id)element;
- (IKDOMBindingController)parent;
- (IKDOMElement)domElement;
- (IKJSDataItem)dataItem;
- (id)findPrototypeForDataItem:(id)item;
- (void)_evaluateMutationRules;
- (void)_resolveBinding;
- (void)dataObservable:(id)observable didChangePropertyPathWithString:(id)string extraInfo:(id)info;
- (void)dealloc;
- (void)scheduleUpdateUsingPreUpdate:(id)update update:(id)a4;
@end

@implementation IKDOMBindingController

+ (id)parsedBindingForDOMElement:(id)element
{
  v52 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  domb_dataBinding = [elementCopy domb_dataBinding];
  if (domb_dataBinding)
  {
    jsNodeData = [elementCopy jsNodeData];
    isBindingParsed = [jsNodeData isBindingParsed];

    if (isBindingParsed)
    {
      v7 = domb_dataBinding;
      goto LABEL_35;
    }
  }

  v42 = domb_dataBinding;
  array = [MEMORY[0x277CBEB18] array];
  v43 = elementCopy;
  v41 = [elementCopy getAttribute:@"binding"];
  [v41 componentsSeparatedByString:@";"];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = v50 = 0u;
  v8 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (!v8)
  {
    goto LABEL_34;
  }

  v9 = v8;
  v10 = *v48;
  v11 = 0x277CCA000uLL;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v48 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v13 = [*(*(&v47 + 1) + 8 * i) componentsSeparatedByString:@":"];
      if ([v13 count] == 2)
      {
        v14 = [v13 objectAtIndexedSubscript:0];
        whitespaceCharacterSet = [*(v11 + 2304) whitespaceCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

        v17 = [v13 objectAtIndexedSubscript:1];
        whitespaceCharacterSet2 = [*(v11 + 2304) whitespaceCharacterSet];
        v19 = [v17 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];

        if ([v16 hasPrefix:@"prototype."])
        {
          v20 = [v16 substringFromIndex:{objc_msgSend(@"prototype.", "length")}];
          whitespaceCharacterSet3 = [*(v11 + 2304) whitespaceCharacterSet];
          v22 = [v20 stringByTrimmingCharactersInSet:whitespaceCharacterSet3];

          v16 = v22;
          v23 = 2;
        }

        else if ([v16 isEqualToString:@"dataItem"])
        {
          v23 = 1;
        }

        else
        {
          v23 = 4;
        }

        if ([v19 hasPrefix:@"{"] && (objc_msgSend(v19, "hasSuffix:", @"}") & 1) != 0)
        {
          v24 = 0;
          goto LABEL_23;
        }

        if ([v19 hasSuffix:@"'"] && (objc_msgSend(v19, "hasPrefix:", @"'") & 1) != 0)
        {
          v24 = 1;
          goto LABEL_23;
        }

        if ([v19 hasSuffix:@""])
        {
          v24 = 1;
          if ([v19 hasPrefix:@""])
          {
LABEL_23:
            [v19 substringWithRange:{1, objc_msgSend(v19, "length") - 2}];
            v46 = v13;
            v25 = v16;
            v27 = v26 = v24;
            whitespaceCharacterSet4 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
            [v27 stringByTrimmingCharactersInSet:whitespaceCharacterSet4];
            v29 = v9;
            v31 = v30 = v10;

            v24 = v26;
            v16 = v25;
            v13 = v46;
            v19 = v31;
            v10 = v30;
            v9 = v29;
          }
        }

        else
        {
          v24 = 1;
        }

        if ([v16 length])
        {
          if (v24)
          {
            v32 = [[IKDataBindingLiteral alloc] initWithLiteral:v19];
            goto LABEL_30;
          }

          if ([v19 length])
          {
            v32 = [[IKDataBindingPropertyPath alloc] initWithString:v19];
LABEL_30:
            v33 = v32;
            v34 = [[IKDataBindingEntry alloc] initWithKey:v16 value:v32 attributes:v23];
            [array addObject:v34];
          }
        }

        v11 = 0x277CCA000;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  }

  while (v9);
LABEL_34:
  v35 = [IKDataBinding alloc];
  v36 = [array copy];
  v37 = [(IKDataBinding *)v35 initWithEntries:v36];

  elementCopy = v43;
  [v43 domb_setDataBinding:v37];
  jsNodeData2 = [v43 jsNodeData];
  [jsNodeData2 setBindingParsed:1];

  v7 = v37;
LABEL_35:

  v39 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)prepareForDOMElement:(id)element
{
  elementCopy = element;
  domb_domBindingController = [elementCopy domb_domBindingController];
  if ([domb_domBindingController _canBeReused])
  {
    [domb_domBindingController _resolveBinding];
    [domb_domBindingController _evaluateMutationRules];
  }

  else
  {
    v4 = [[IKDOMBindingController alloc] initWithDOMElement:elementCopy];

    [elementCopy domb_setDOMBindingController:v4];
    domb_domBindingController = v4;
  }
}

- (IKDOMBindingController)initWithDOMElement:(id)element
{
  v121 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v116.receiver = self;
  v116.super_class = IKDOMBindingController;
  v5 = [(IKDOMBindingController *)&v116 init];
  if (!v5)
  {
    goto LABEL_58;
  }

  v6 = +[IKAppContext currentAppContext];
  objc_storeWeak(&v5->_appContext, v6);

  objc_storeWeak(&v5->_domElement, elementCopy);
  parentNode = [elementCopy parentNode];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parentNode2 = [elementCopy parentNode];
    domb_domBindingController = [parentNode2 domb_domBindingController];
    objc_storeWeak(&v5->_parent, domb_domBindingController);
  }

  else
  {
    objc_storeWeak(&v5->_parent, 0);
  }

  v10 = [objc_opt_class() parsedBindingForDOMElement:elementCopy];
  binding = v5->_binding;
  v5->_binding = v10;

  v12 = [objc_opt_class() _parsedMutationRulesForDOMElement:elementCopy];
  mutationRuleSet = v5->_mutationRuleSet;
  v5->_mutationRuleSet = v12;

  _isPartOfPrototypeElement = [elementCopy _isPartOfPrototypeElement];
  v15 = 7;
  if (_isPartOfPrototypeElement)
  {
    v15 = 3;
  }

  v5->_resolutionTarget = v15;
  keyValues = [(IKDataBinding *)v5->_binding keyValues];
  v17 = [keyValues objectForKeyedSubscript:@"items"];
  if (v17)
  {
    v18 = [[IKDOMItemsBindingStrategy alloc] initWithDOMBindingController:v5];
    strategy = v5->_strategy;
    v5->_strategy = &v18->super;
  }

  else
  {
    strategy = [(IKDataBinding *)v5->_binding keyValues];
    v20 = [strategy objectForKeyedSubscript:@"children"];
    v21 = v20;
    if (v20)
    {
      v20 = [[IKDOMChildrenBindingStrategy alloc] initWithDOMBindingController:v5];
    }

    v22 = v5->_strategy;
    v5->_strategy = &v20->super;
  }

  v23 = v5->_strategy;
  v5->_strategyFlags.hasKeysAffectingChildren = objc_opt_respondsToSelector() & 1;
  v24 = v5->_strategy;
  v5->_strategyFlags.hasKeysAffectingSubtree = objc_opt_respondsToSelector() & 1;
  v25 = v5->_strategy;
  v5->_strategyFlags.hasPrototypeDependentKeys = objc_opt_respondsToSelector() & 1;
  v26 = v5->_strategy;
  v5->_strategyFlags.hasValueDidChangeForKey = objc_opt_respondsToSelector() & 1;
  v27 = v5->_strategy;
  v5->_strategyFlags.hasDidResolveKeys = objc_opt_respondsToSelector() & 1;
  WeakRetained = objc_loadWeakRetained(&v5->_domElement);
  jsNodeData = [WeakRetained jsNodeData];
  isDataResolved = [jsNodeData isDataResolved];

  if ((isDataResolved & 1) == 0)
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    dataBoundKeys = [(IKDataBinding *)v5->_binding dataBoundKeys];
    v32 = [dataBoundKeys countByEnumeratingWithState:&v112 objects:v120 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v113;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v113 != v34)
          {
            objc_enumerationMutation(dataBoundKeys);
          }

          [(IKDataBinding *)v5->_binding setNeedsResolutionForKey:*(*(&v112 + 1) + 8 * i)];
        }

        v33 = [dataBoundKeys countByEnumeratingWithState:&v112 objects:v120 count:16];
      }

      while (v33);
    }
  }

  parent = [(IKDOMBindingController *)v5 parent];
  dataItem = [parent dataItem];

  unresolvedKeys = [(IKDataBinding *)v5->_binding unresolvedKeys];
  v39 = [unresolvedKeys containsObject:@"dataItem"];

  if (v39)
  {
    dataBoundKeys2 = [(IKDataBinding *)v5->_binding dataBoundKeys];
    v41 = [dataBoundKeys2 containsObject:@"dataItem"];

    if (v41)
    {
      keyValues2 = [(IKDataBinding *)v5->_binding keyValues];
      v43 = [keyValues2 objectForKeyedSubscript:@"dataItem"];

      v44 = objc_loadWeakRetained(&v5->_domElement);
      v45 = [dataItem valueForPropertyPath:v43 boxed:0];
      [v44 setDataItem:v45];

      string = [v43 string];
      [dataItem addObserver:v5 forPropertyPathWithString:string];
    }

    [(IKDataBinding *)v5->_binding markResolvedForKey:@"dataItem"];
  }

  v47 = objc_loadWeakRetained(&v5->_domElement);
  dataItem2 = [v47 dataItem];

  if (dataItem2)
  {
    v49 = objc_loadWeakRetained(&v5->_domElement);
    dataItem3 = [v49 dataItem];
    v111 = 0;
    v51 = [(IKJSDataObservable *)IKJSDataItem toDataObservable:dataItem3 proxy:&v111];
    v52 = v111;
    objc_storeWeak(&v5->_dataItem, v51);

    v53 = objc_loadWeakRetained(&v5->_domElement);
    dataItem4 = [v53 dataItem];

    if (v52 != dataItem4)
    {
      v55 = objc_loadWeakRetained(&v5->_domElement);
      [v55 setDataItem:v52];
    }

    v56 = objc_loadWeakRetained(&v5->_dataItem);
    [v56 addObserver:v5 forPropertyPathWithString:&stru_2866C1E60];
  }

  else
  {
    objc_storeWeak(&v5->_dataItem, dataItem);
  }

  v57 = objc_loadWeakRetained(&v5->_domElement);
  jsNodeData2 = [v57 jsNodeData];
  [jsNodeData2 setDataResolved:1];

  v59 = objc_opt_class();
  v60 = objc_loadWeakRetained(&v5->_domElement);
  v61 = [v59 _prototypeGroupsByTypeForDOMElement:v60];
  prototypeGroupsByType = v5->_prototypeGroupsByType;
  v5->_prototypeGroupsByType = v61;

  prototypeDependentKeys = objc_loadWeakRetained(&v5->_domElement);
  jsNodeData3 = [prototypeDependentKeys jsNodeData];
  if ([jsNodeData3 arePrototypesResolved])
  {

LABEL_40:
    goto LABEL_41;
  }

  hasPrototypeDependentKeys = v5->_strategyFlags.hasPrototypeDependentKeys;

  if (hasPrototypeDependentKeys)
  {
    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    strategy = [(IKDOMBindingController *)v5 strategy];
    prototypeDependentKeys = [strategy prototypeDependentKeys];

    v67 = [prototypeDependentKeys countByEnumeratingWithState:&v107 objects:v119 count:16];
    if (v67)
    {
      v68 = v67;
      v69 = *v108;
      do
      {
        for (j = 0; j != v68; ++j)
        {
          if (*v108 != v69)
          {
            objc_enumerationMutation(prototypeDependentKeys);
          }

          [(IKDataBinding *)v5->_binding setNeedsResolutionForKey:*(*(&v107 + 1) + 8 * j)];
        }

        v68 = [prototypeDependentKeys countByEnumeratingWithState:&v107 objects:v119 count:16];
      }

      while (v68);
    }

    goto LABEL_40;
  }

LABEL_41:
  v71 = objc_loadWeakRetained(&v5->_domElement);
  jsNodeData4 = [v71 jsNodeData];
  [jsNodeData4 setPrototypesResolved:1];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v74 = [(IKDataBinding *)v5->_binding keysWithAnyOfAttributes:v5->_resolutionTarget];
  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __45__IKDOMBindingController_initWithDOMElement___block_invoke;
  v104[3] = &unk_27979B2B0;
  v75 = v5;
  v105 = v75;
  v76 = dictionary;
  v106 = v76;
  [v74 enumerateObjectsUsingBlock:v104];

  v77 = [v76 copy];
  v78 = v75[1];
  v75[1] = v77;

  v79 = objc_loadWeakRetained(v75 + 8);
  if (v79)
  {
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    allKeys = [v75[1] allKeys];
    v81 = [allKeys countByEnumeratingWithState:&v100 objects:v118 count:16];
    if (v81)
    {
      v82 = v81;
      v83 = *v101;
      do
      {
        for (k = 0; k != v82; ++k)
        {
          if (*v101 != v83)
          {
            objc_enumerationMutation(allKeys);
          }

          v85 = *(*(&v100 + 1) + 8 * k);
          v86 = objc_loadWeakRetained(v75 + 8);
          [v86 addObserver:v75 forPropertyPathWithString:v85];
        }

        v82 = [allKeys countByEnumeratingWithState:&v100 objects:v118 count:16];
      }

      while (v82);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    dependentPathStrings = [(_IKDOMMutationRuleSet *)v5->_mutationRuleSet dependentPathStrings];
    v88 = [dependentPathStrings countByEnumeratingWithState:&v96 objects:v117 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = *v97;
      do
      {
        for (m = 0; m != v89; ++m)
        {
          if (*v97 != v90)
          {
            objc_enumerationMutation(dependentPathStrings);
          }

          v92 = *(*(&v96 + 1) + 8 * m);
          v93 = objc_loadWeakRetained(v75 + 8);
          [v93 addObserver:v75 forPropertyPathWithString:v92];
        }

        v89 = [dependentPathStrings countByEnumeratingWithState:&v96 objects:v117 count:16];
      }

      while (v89);
    }
  }

  [v75 _resolveBinding];
  [v75 _evaluateMutationRules];

LABEL_58:
  v94 = *MEMORY[0x277D85DE8];
  return v5;
}

void __45__IKDOMBindingController_initWithDOMElement___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  if (([v12 isEqualToString:@"dataItem"] & 1) == 0)
  {
    v3 = [*(*(a1 + 32) + 56) keyValues];
    v4 = [v3 objectForKeyedSubscript:v12];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v5 = [v4 string];
      v6 = [*(a1 + 40) objectForKeyedSubscript:v5];
      v7 = [v6 mutableCopy];
      v8 = v7;
      if (v7)
      {
        v9 = v7;
      }

      else
      {
        v9 = [MEMORY[0x277CBEB58] set];
      }

      v10 = v9;

      [v10 addObject:v12];
      v11 = [v10 copy];
      [*(a1 + 40) setObject:v11 forKeyedSubscript:v5];
    }
  }
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  dataItem = [WeakRetained dataItem];
  [dataItem removeObserver:self];

  v5 = objc_loadWeakRetained(&self->_dataItem);
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = IKDOMBindingController;
  [(IKDOMBindingController *)&v6 dealloc];
}

- (void)scheduleUpdateUsingPreUpdate:(id)update update:(id)a4
{
  updateCopy = update;
  v7 = a4;
  parent = [(IKDOMBindingController *)self parent];

  if (parent)
  {
    parent2 = [(IKDOMBindingController *)self parent];
    [parent2 scheduleUpdateUsingPreUpdate:updateCopy update:v7];
  }

  else
  {
    if (!self->_scheduledUpdaters)
    {
      v10 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
      scheduledUpdaters = self->_scheduledUpdaters;
      self->_scheduledUpdaters = v10;
    }

    v12 = objc_alloc_init(_IKDOMBindingControllerUpdateRecord);
    [(_IKDOMBindingControllerUpdateRecord *)v12 setPreUpdate:updateCopy];
    [(_IKDOMBindingControllerUpdateRecord *)v12 setUpdate:v7];
    [(NSMutableArray *)self->_scheduledUpdaters addObject:v12];
    if ([(NSMutableArray *)self->_scheduledUpdaters count]== 1)
    {
      objc_initWeak(&location, self);
      appContext = [(IKDOMBindingController *)self appContext];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __62__IKDOMBindingController_scheduleUpdateUsingPreUpdate_update___block_invoke;
      v14[3] = &unk_279799998;
      v14[4] = self;
      objc_copyWeak(&v15, &location);
      [appContext evaluate:v14 completionBlock:0];

      objc_destroyWeak(&v15);
      objc_destroyWeak(&location);
    }
  }
}

void __62__IKDOMBindingController_scheduleUpdateUsingPreUpdate_update___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__21;
  v22 = __Block_byref_object_dispose__21;
  v23 = 0;
  v4 = [*(a1 + 32) appContext];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__IKDOMBindingController_scheduleUpdateUsingPreUpdate_update___block_invoke_109;
  v16[3] = &unk_27979AB10;
  objc_copyWeak(&v17, (a1 + 40));
  v16[4] = &v18;
  [v4 evaluateDelegateBlockSync:v16];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v19[5];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v24 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isCancelled] & 1) == 0)
        {
          v10 = [v9 update];
          (v10)[2](v10, v3);
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v24 count:16];
    }

    while (v6);
  }

  objc_destroyWeak(&v17);
  _Block_object_dispose(&v18, 8);

  v11 = *MEMORY[0x277D85DE8];
}

void __62__IKDOMBindingController_scheduleUpdateUsingPreUpdate_update___block_invoke_109(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained[3] copy];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    [v3[3] removeAllObjects];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = *(*(*(a1 + 32) + 8) + 40);
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [v12 preUpdate];

          if (v13)
          {
            v14 = [v12 preUpdate];
            [v12 setCancelled:v14[2]() ^ 1];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

+ (id)instantiateDOMElementForItem:(id)item withPrototype:(id)prototype parentDOMElement:(id)element existingDOMElement:(id)mElement
{
  itemCopy = item;
  prototypeCopy = prototype;
  elementCopy = element;
  mElementCopy = mElement;
  identifier = [itemCopy identifier];
  identifier2 = [prototypeCopy identifier];
  v15 = mElementCopy;
  v16 = v15;
  if (v15)
  {
    v17 = [v15 getAttribute:@"prototypeID"];
    if ([v17 isEqualToString:identifier2])
    {

      v18 = 0;
      instantiateDOMElement = v16;
      goto LABEL_12;
    }
  }

  instantiateDOMElement = [prototypeCopy instantiateDOMElement];
  [instantiateDOMElement setAttributeValue:identifier withName:@"itemID"];
  [instantiateDOMElement setAttributeValue:identifier2 withName:@"prototypeID"];
  if (v16 && instantiateDOMElement != v16)
  {
    ownerDocument = [v16 ownerDocument];
    [ownerDocument swapITMLIDForNode:instantiateDOMElement withITMLIDForNode:v16];

    goto LABEL_9;
  }

  if (instantiateDOMElement != v16)
  {
LABEL_9:
    parentNode = [v16 parentNode];

    if (parentNode == elementCopy)
    {
      v22 = [elementCopy replaceChild:instantiateDOMElement :v16];
    }
  }

  v18 = 1;
LABEL_12:
  parentNode2 = [instantiateDOMElement parentNode];

  if (parentNode2 != elementCopy)
  {
    v24 = [elementCopy appendChild:instantiateDOMElement];
  }

  dataItem = [instantiateDOMElement dataItem];
  v26 = [IKJSDataObservable toDataObservable:dataItem];

  if (v26 == itemCopy)
  {
    if (!v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    exportValue = [itemCopy exportValue];
    [instantiateDOMElement setDataItem:exportValue];
  }

  jsNodeData = [elementCopy jsNodeData];
  containsUpdates = [jsNodeData containsUpdates];

  if (containsUpdates)
  {
    jsNodeData2 = [instantiateDOMElement jsNodeData];
    [jsNodeData2 setUpdated:1];
  }

  v31 = [IKDOMEvent alloc];
  v32 = +[IKAppContext currentAppContext];
  v33 = [(IKDOMEvent *)v31 initWithAppContext:v32 type:@"dataitemresolved" xmlAttribute:@"ondataitemresolved" canBubble:1 isCancelable:0];

  [instantiateDOMElement dispatchEvent:v33];
LABEL_20:

  return instantiateDOMElement;
}

- (id)findPrototypeForDataItem:(id)item
{
  itemCopy = item;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __51__IKDOMBindingController_findPrototypeForDataItem___block_invoke;
  v18 = &unk_27979B6F0;
  selfCopy = self;
  v5 = itemCopy;
  v20 = v5;
  v6 = MEMORY[0x259C21BA0](&v15);
  type = [v5 type];
  v8 = (v6)[2](v6, type);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    type2 = [v5 type];
    string = [MEMORY[0x277CCACA8] string];
    if (type2 == string)
    {
      v10 = 0;
    }

    else
    {
      string2 = [MEMORY[0x277CCACA8] string];
      v10 = (v6)[2](v6, string2);
    }
  }

  return v10;
}

id __51__IKDOMBindingController_findPrototypeForDataItem___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = v4;
    do
    {
      v6 = [v5 prototypeGroupsByType];
      v7 = [v6 objectForKeyedSubscript:v3];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = *v17;
        while (2)
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = *(*(&v16 + 1) + 8 * i);
            if ([v12 passesForDataItem:*(a1 + 40) default:1])
            {
              v9 = v12;
              goto LABEL_13;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

LABEL_13:

      v13 = [v5 parent];

      if (v9)
      {
        break;
      }

      v5 = v13;
    }

    while (v13);
  }

  else
  {
    v13 = 0;
    v9 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)dataObservable:(id)observable didChangePropertyPathWithString:(id)string extraInfo:(id)info
{
  v64 = *MEMORY[0x277D85DE8];
  observableCopy = observable;
  stringCopy = string;
  infoCopy = info;
  v11 = [[IKDataBindingPropertyPath alloc] initWithString:stringCopy];
  v12 = [(NSDictionary *)self->_bindingKeysByPathString objectForKeyedSubscript:stringCopy];
  parent = [(IKDOMBindingController *)self parent];
  dataItem = [parent dataItem];
  v15 = dataItem;
  if (dataItem == observableCopy)
  {
    v16 = [v12 containsObject:@"dataItem"];

    if (v16)
    {
      domElement = [(IKDOMBindingController *)self domElement];
      jsNodeData = [domElement jsNodeData];
      [jsNodeData setDataResolved:0];

      domElement2 = [(IKDOMBindingController *)self domElement];
      v20 = domElement2;
      v21 = 1;
LABEL_7:
      [domElement2 updatedAndMark:v21 notify:0];

      goto LABEL_41;
    }
  }

  else
  {
  }

  if ([stringCopy isEqualToString:&stru_2866C1E60])
  {
    domElement2 = [(IKDOMBindingController *)self domElement];
    v20 = domElement2;
    v21 = 0;
    goto LABEL_7;
  }

  if (dataObservable_didChangePropertyPathWithString_extraInfo__onceToken != -1)
  {
    [IKDOMBindingController dataObservable:didChangePropertyPathWithString:extraInfo:];
  }

  v52 = observableCopy;
  v53 = v12;
  if (self->_strategyFlags.hasValueDidChangeForKey)
  {
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v22 = v12;
    v23 = [v22 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v59;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v59 != v25)
          {
            objc_enumerationMutation(v22);
          }

          v27 = *(*(&v58 + 1) + 8 * i);
          strategy = [(IKDOMBindingController *)self strategy];
          [strategy valueDidChangeForKey:v27 propertyPath:v11 extraInfo:infoCopy];
        }

        v24 = [v22 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v24);
    }

    v12 = v53;
  }

  v29 = [MEMORY[0x277CBEB58] setWithSet:v12];
  binding = [(IKDOMBindingController *)self binding];
  unresolvedKeys = [binding unresolvedKeys];
  [v29 minusSet:unresolvedKeys];

  if ([v29 count])
  {
    if (([dataObservable_didChangePropertyPathWithString_extraInfo__bindingKeysForChildren intersectsSet:v29] & 1) != 0 || self->_strategyFlags.hasKeysAffectingChildren && (-[IKDOMBindingController strategy](self, "strategy"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "keysAffectingChildren"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "intersectsSet:", v29), v34, v33, v35))
    {
      domElement3 = [(IKDOMBindingController *)self domElement];
      [domElement3 childrenUpdatedWithUpdatedChildNodes:0 notify:0];
    }

    else
    {
      if ([dataObservable_didChangePropertyPathWithString_extraInfo__bindingKeysForSubtree intersectsSet:v12])
      {
        v36 = 0;
      }

      else if (self->_strategyFlags.hasKeysAffectingSubtree)
      {
        strategy2 = [(IKDOMBindingController *)self strategy];
        keysAffectingSubtree = [strategy2 keysAffectingSubtree];
        v36 = [keysAffectingSubtree intersectsSet:v29] ^ 1;
      }

      else
      {
        v36 = 1;
      }

      domElement3 = [(IKDOMBindingController *)self domElement];
      [domElement3 updatedAndMark:v36 notify:0];
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v51 = v29;
    v39 = v29;
    v40 = [v39 countByEnumeratingWithState:&v54 objects:v62 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v55;
      do
      {
        for (j = 0; j != v41; ++j)
        {
          if (*v55 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v54 + 1) + 8 * j);
          binding2 = [(IKDOMBindingController *)self binding];
          [binding2 setNeedsResolutionForKey:v44];
        }

        v41 = [v39 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v41);
    }

    v12 = v53;
    v29 = v51;
  }

  mutationRuleSet = [(IKDOMBindingController *)self mutationRuleSet];
  dependentPathStrings = [mutationRuleSet dependentPathStrings];
  v48 = [dependentPathStrings containsObject:stringCopy];

  if (v48)
  {
    domElement4 = [(IKDOMBindingController *)self domElement];
    [domElement4 childrenUpdatedWithUpdatedChildNodes:0 notify:0];
  }

  observableCopy = v52;
LABEL_41:

  v50 = *MEMORY[0x277D85DE8];
}

void __83__IKDOMBindingController_dataObservable_didChangePropertyPathWithString_extraInfo___block_invoke()
{
  v8[1] = *MEMORY[0x277D85DE8];
  v0 = [MEMORY[0x277CBEB98] set];
  v1 = dataObservable_didChangePropertyPathWithString_extraInfo__bindingKeysForChildren;
  dataObservable_didChangePropertyPathWithString_extraInfo__bindingKeysForChildren = v0;

  v2 = MEMORY[0x277CBEB98];
  v3 = [@"@" stringByAppendingString:@"autoHighlight"];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [v2 setWithArray:v4];
  v6 = dataObservable_didChangePropertyPathWithString_extraInfo__bindingKeysForSubtree;
  dataObservable_didChangePropertyPathWithString_extraInfo__bindingKeysForSubtree = v5;

  v7 = *MEMORY[0x277D85DE8];
}

+ (id)_parsedMutationRulesForDOMElement:(id)element
{
  v40 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  domb_mutationRuleSet = [elementCopy domb_mutationRuleSet];
  if (domb_mutationRuleSet && ([elementCopy jsNodeData], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "areRulesParsed"), v5, v6))
  {
    v7 = domb_mutationRuleSet;
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    childElements = [elementCopy childElements];
    v9 = [childElements countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(childElements);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          nodeName = [v13 nodeName];
          v15 = [nodeName isEqualToString:@"rules"];

          if (v15)
          {
            v16 = v13;
            goto LABEL_14;
          }
        }

        v10 = [childElements countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_14:

    v17 = MEMORY[0x277CBEB18];
    childElements2 = [v16 childElements];
    v19 = [v17 arrayWithCapacity:{objc_msgSend(childElements2, "count")}];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    childElements3 = [v16 childElements];
    v21 = [childElements3 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(childElements3);
          }

          v25 = [IKDOMMutationRule mutationRuleWithDOMElement:*(*(&v30 + 1) + 8 * j) mutable:1];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [childElements3 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v22);
    }

    if ([v19 count])
    {
      v26 = [[_IKDOMMutationRuleSet alloc] initWithMutationRules:v19];
    }

    else
    {
      v26 = 0;
    }

    [elementCopy domb_setMutationRuleSet:v26];
    jsNodeData = [elementCopy jsNodeData];
    [jsNodeData setRulesParsed:1];

    v7 = v26;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_prototypeGroupsByTypeForDOMElement:(id)element
{
  v58 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  elementName = [elementCopy elementName];
  if ([(objc_class *)[IKViewElementFactory elementClassByTagName:?]])
  {
  }

  else
  {
    elementName2 = [elementCopy elementName];
    v7 = [elementName2 isEqualToString:@"fragment"];

    if (!v7)
    {
      goto LABEL_31;
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [elementCopy childElements];
  v8 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v50;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v49 + 1) + 8 * i);
        elementName3 = [v12 elementName];
        v14 = [elementName3 isEqualToString:@"prototypes"];

        if (v14)
        {
          v39 = elementCopy;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          childElements = [v12 childElements];
          v16 = [childElements countByEnumeratingWithState:&v45 objects:v56 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v46;
            do
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v46 != v18)
                {
                  objc_enumerationMutation(childElements);
                }

                v20 = *(*(&v45 + 1) + 8 * j);
                elementName4 = [v20 elementName];
                v22 = [v20 getAttribute:@"prototype"];
                v23 = v22;
                if (v22)
                {
                  string = v22;
                }

                else
                {
                  string = [MEMORY[0x277CCACA8] string];
                }

                v25 = string;

                if ([IKViewElementFactory elementClassByTagName:elementName4])
                {
                  v26 = [dictionary objectForKeyedSubscript:v25];
                  if (!v26)
                  {
                    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
                    [dictionary setObject:v26 forKeyedSubscript:v25];
                  }

                  v27 = [IKDOMPrototype prototypeWithDOMElement:v20];
                  [v26 addObject:v27];
                }

                else
                {
                  v26 = ITMLKitGetLogObject(0);
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
                  {
                    *buf = 138412290;
                    v55 = elementName4;
                    _os_log_impl(&dword_2549A4000, v26, OS_LOG_TYPE_INFO, "Invalid prototype tag: %@", buf, 0xCu);
                  }
                }
              }

              v17 = [childElements countByEnumeratingWithState:&v45 objects:v56 count:16];
            }

            while (v17);
          }

          elementCopy = v39;
          goto LABEL_30;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:

LABEL_31:
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  allKeys = [dictionary allKeys];
  v29 = [allKeys countByEnumeratingWithState:&v41 objects:v53 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v42;
    do
    {
      for (k = 0; k != v30; ++k)
      {
        if (*v42 != v31)
        {
          objc_enumerationMutation(allKeys);
        }

        v33 = *(*(&v41 + 1) + 8 * k);
        v34 = [dictionary objectForKeyedSubscript:v33];
        v35 = [v34 copy];
        [dictionary setObject:v35 forKeyedSubscript:v33];
      }

      v30 = [allKeys countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v30);
  }

  if ([dictionary count])
  {
    v36 = [dictionary copy];
  }

  else
  {
    v36 = 0;
  }

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

- (BOOL)_canBeReused
{
  domElement = [(IKDOMBindingController *)self domElement];
  parentNode = [domElement parentNode];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    domElement2 = [(IKDOMBindingController *)self domElement];
    parentNode2 = [domElement2 parentNode];
    domb_domBindingController = [parentNode2 domb_domBindingController];
  }

  else
  {
    domb_domBindingController = 0;
  }

  parent = [(IKDOMBindingController *)self parent];
  if (parent == domb_domBindingController)
  {
    domElement3 = [(IKDOMBindingController *)self domElement];
    jsNodeData = [domElement3 jsNodeData];
    if ([jsNodeData isBindingParsed])
    {
      domElement4 = [(IKDOMBindingController *)self domElement];
      jsNodeData2 = [domElement4 jsNodeData];
      if ([jsNodeData2 areRulesParsed])
      {
        domElement5 = [(IKDOMBindingController *)self domElement];
        jsNodeData3 = [domElement5 jsNodeData];
        if ([jsNodeData3 arePrototypesResolved])
        {
          domElement6 = [(IKDOMBindingController *)self domElement];
          jsNodeData4 = [domElement6 jsNodeData];
          isDataResolved = [jsNodeData4 isDataResolved];
        }

        else
        {
          isDataResolved = 0;
        }
      }

      else
      {
        isDataResolved = 0;
      }
    }

    else
    {
      isDataResolved = 0;
    }
  }

  else
  {
    isDataResolved = 0;
  }

  return isDataResolved;
}

- (void)_resolveBinding
{
  if (_resolveBinding_onceToken != -1)
  {
    [IKDOMBindingController _resolveBinding];
  }

  domElement = [(IKDOMBindingController *)self domElement];
  binding = [(IKDOMBindingController *)self binding];
  dataItem = [(IKDOMBindingController *)self dataItem];
  keyValues = [binding keyValues];
  v7 = objc_opt_new();
  [dataItem setObserversEnabled:0];
  v8 = [binding unresolvedKeysWithAnyOfAttributes:{-[IKDOMBindingController resolutionTarget](self, "resolutionTarget")}];
  v9 = [v8 mutableCopy];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [MEMORY[0x277CBEB58] set];
  }

  v12 = v11;

  allObjects = [v12 allObjects];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __41__IKDOMBindingController__resolveBinding__block_invoke_2;
  v33[3] = &unk_27979B718;
  v14 = keyValues;
  v34 = v14;
  v15 = [allObjects sortedArrayUsingComparator:v33];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __41__IKDOMBindingController__resolveBinding__block_invoke_3;
  v26[3] = &unk_27979B858;
  v16 = v14;
  v27 = v16;
  v17 = dataItem;
  v28 = v17;
  selfCopy = self;
  v18 = binding;
  v30 = v18;
  v19 = domElement;
  v31 = v19;
  v20 = v7;
  v32 = v20;
  [v15 enumerateObjectsUsingBlock:v26];
  domb_boundCSSRule = [v19 domb_boundCSSRule];
  if ([v20 count])
  {
    v22 = ITMLKitGetLogObject(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [(IKDOMBindingController *)v19 _resolveBinding];
    }

    v23 = objc_opt_new();
    [v23 setDeclarationList:v20];
    domb_boundCSSRule = v23;
  }

  [v19 domb_setBoundCSSRule:domb_boundCSSRule];
  if (self->_strategyFlags.hasDidResolveKeys)
  {
    strategy = [(IKDOMBindingController *)self strategy];
    v25 = [MEMORY[0x277CBEB98] setWithArray:v15];
    [strategy didResolveKeys:v25];
  }

  [v17 setObserversEnabled:1];
}

void __41__IKDOMBindingController__resolveBinding__block_invoke()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v1 = [@"@" stringByAppendingString:@"autoHighlight"];
  v6[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  v3 = [v0 setWithArray:v2];
  v4 = _resolveBinding_messagingKeys;
  _resolveBinding_messagingKeys = v3;

  v5 = *MEMORY[0x277D85DE8];
}

uint64_t __41__IKDOMBindingController__resolveBinding__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:a2];
  v8 = [*(a1 + 32) objectForKeyedSubscript:v6];

  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v9 = [v7 string];
    v10 = [v8 string];
    v11 = [v9 compare:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

void __41__IKDOMBindingController__resolveBinding__block_invoke_3(id *a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [a1[4] objectForKeyedSubscript:v3];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v6 = 0;
LABEL_5:
    v10 = isKindOfClass & 1;
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __41__IKDOMBindingController__resolveBinding__block_invoke_130;
    v38[3] = &unk_27979B740;
    v41 = isKindOfClass & 1;
    v11 = v4;
    v39 = v11;
    v12 = v6;
    v40 = v12;
    v13 = MEMORY[0x259C21BA0](v38);
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __41__IKDOMBindingController__resolveBinding__block_invoke_2_132;
    v34[3] = &unk_27979B768;
    v37 = v10;
    v14 = v11;
    v35 = v14;
    v15 = v12;
    v36 = v15;
    v16 = MEMORY[0x259C21BA0](v34);
    *&buf = 0;
    *(&buf + 1) = &buf;
    v43 = 0x2020000000;
    v44 = [_resolveBinding_messagingKeys containsObject:v3];
    if ([v3 hasPrefix:@"@"])
    {
      v17 = [v3 substringFromIndex:1];
      if ([v17 length])
      {
        if ([v17 isEqualToString:@"itemID"])
        {
          v18 = v32;
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __41__IKDOMBindingController__resolveBinding__block_invoke_3_134;
          v32[3] = &unk_27979B790;
          v32[4] = a1[5];
          v32[5] = a1[8];
          v33 = v17;
          (v13)[2](v13, v32);
        }

        else if ([v17 isEqualToString:@"autoHighlight"])
        {
          v18 = v31;
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __41__IKDOMBindingController__resolveBinding__block_invoke_136;
          v31[3] = &unk_27979B7B8;
          v31[4] = a1[8];
          v31[5] = v17;
          (v16)[2](v16, v31);
        }

        else
        {
          v18 = v30;
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __41__IKDOMBindingController__resolveBinding__block_invoke_2_139;
          v30[3] = &unk_27979B7E0;
          v30[4] = a1[8];
          v30[5] = v17;
          (v13)[2](v13, v30);
        }
      }
    }

    else if ([v3 hasPrefix:@"#"])
    {
      v19 = [v3 substringFromIndex:1];
      if ([v19 length])
      {
        v27[0] = MEMORY[0x277D85DD0];
        v27[1] = 3221225472;
        v27[2] = __41__IKDOMBindingController__resolveBinding__block_invoke_3_143;
        v27[3] = &unk_27979B7B8;
        v28 = v19;
        v29 = a1[9];
        (v16)[2](v16, v27);
      }
    }

    else if ([v3 isEqualToString:@"textContent"])
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __41__IKDOMBindingController__resolveBinding__block_invoke_145;
      v25[3] = &unk_27979B808;
      v26 = a1[8];
      (v13)[2](v13, v25);
    }

    else
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __41__IKDOMBindingController__resolveBinding__block_invoke_2_146;
      v22[3] = &unk_27979B830;
      v20 = a1[6];
      p_buf = &buf;
      v22[4] = v20;
      v23 = v3;
      (v16)[2](v16, v22);
    }

    if (*(*(&buf + 1) + 24) == 1 && v15)
    {
      [a1[5] resetValueForPropertyPath:v14];
    }

    _Block_object_dispose(&buf, 8);

    goto LABEL_27;
  }

  if (a1[5])
  {
    v7 = [a1[6] strategy];
    v8 = [v7 prototypeDependentKeys];
    v9 = [v8 containsObject:v3];

    v6 = [a1[5] valueForPropertyPath:v4 boxed:v9];
    [a1[7] markResolvedForKey:v3];
    goto LABEL_5;
  }

  v15 = ITMLKitGetLogObject(0);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_2549A4000, v15, OS_LOG_TYPE_INFO, "Can't resolve binding for key %@ without data item", &buf, 0xCu);
  }

LABEL_27:

  v21 = *MEMORY[0x277D85DE8];
}

void __41__IKDOMBindingController__resolveBinding__block_invoke_130(uint64_t a1, void *a2)
{
  v8 = a2;
  if (*(a1 + 48))
  {
    v3 = [*(a1 + 32) literal];
LABEL_5:
    v6 = v3;
    v8[2](v8, v3);
LABEL_6:

    goto LABEL_7;
  }

  v4 = [*(a1 + 40) isString];
  v5 = *(a1 + 40);
  if (v4)
  {
    v3 = [v5 toString];
    goto LABEL_5;
  }

  if (([v5 isNumber] & 1) != 0 || objc_msgSend(*(a1 + 40), "isBoolean"))
  {
    v6 = [*(a1 + 40) toNumber];
    v7 = [v6 description];
    v8[2](v8, v7);

    goto LABEL_6;
  }

  v8[2](v8, &stru_2866C1E60);
LABEL_7:
}

void __41__IKDOMBindingController__resolveBinding__block_invoke_2_132(uint64_t a1, void (**a2)(void))
{
  if (*(a1 + 48))
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v7 = [v3 literal];
    a2[2](v4);
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = a2[2];
    v7 = a2;
    v6();
  }
}

void __41__IKDOMBindingController__resolveBinding__block_invoke_3_134(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) identifier];

  if (v4)
  {
    if (v3)
    {
      v5 = [*(a1 + 32) identifier];
      v6 = [v3 isEqualToString:v5];

      if ((v6 & 1) == 0)
      {
        v7 = ITMLKitGetLogObject(0);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = [*(a1 + 32) identifier];
          v13 = 138412546;
          v14 = v3;
          v15 = 2112;
          v16 = v8;
          _os_log_impl(&dword_2549A4000, v7, OS_LOG_TYPE_INFO, "Binding itemId %@ doesn't match dataItem itemId %@", &v13, 0x16u);
        }
      }
    }

    v10 = *(a1 + 40);
    v9 = *(a1 + 48);
    v11 = [*(a1 + 32) identifier];
    [v10 setAttribute:v9 :v11];
  }

  else
  {
    [*(a1 + 40) setAttribute:*(a1 + 48) :v3];
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __41__IKDOMBindingController__resolveBinding__block_invoke_136(uint64_t a1, void *a2)
{
  v6 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 isString])
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = [v6 toString];
    [v4 setAttribute:v3 :v5];
  }
}

void __41__IKDOMBindingController__resolveBinding__block_invoke_3_143(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = *(a1 + 32), [v3 toObject], v5 = objc_claimAutoreleasedReturnValue(), +[IKCSSFactory createDeclarationForName:withObject:](IKCSSFactory, "createDeclarationForName:withObject:", v4, v5), v6 = objc_claimAutoreleasedReturnValue(), v5, v6))
  {
    [*(a1 + 40) addDeclaration:v6];
  }

  else
  {
    v6 = ITMLKitGetLogObject(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __41__IKDOMBindingController__resolveBinding__block_invoke_3_143_cold_1(a1, v3, v6);
    }
  }
}

void __41__IKDOMBindingController__resolveBinding__block_invoke_2_146(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  v5 = [v3 strategy];
  LOBYTE(v3) = [v5 applyValue:v4 forKey:a1[5]];

  *(*(a1[6] + 8) + 24) = v3;
}

- (void)_evaluateMutationRules
{
  v21 = *MEMORY[0x277D85DE8];
  mutationRuleSet = [(IKDOMBindingController *)self mutationRuleSet];
  mutationRules = [mutationRuleSet mutationRules];
  v5 = [mutationRules sortedArrayUsingSelector:sel_compare_];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * v10);
        dataItem = [(IKDOMBindingController *)self dataItem];
        v13 = [v11 passesForDataItem:dataItem default:0];

        if (v13)
        {
          domElement = [(IKDOMBindingController *)self domElement];
          [v11 applyOnDOMElement:domElement];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (IKAppContext)appContext
{
  WeakRetained = objc_loadWeakRetained(&self->_appContext);

  return WeakRetained;
}

- (IKDOMElement)domElement
{
  WeakRetained = objc_loadWeakRetained(&self->_domElement);

  return WeakRetained;
}

- (IKDOMBindingController)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (IKJSDataItem)dataItem
{
  WeakRetained = objc_loadWeakRetained(&self->_dataItem);

  return WeakRetained;
}

@end
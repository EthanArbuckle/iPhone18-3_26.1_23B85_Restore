@interface IKDOMBindingController
+ (id)_parsedMutationRulesForDOMElement:(id)a3;
+ (id)_prototypeGroupsByTypeForDOMElement:(id)a3;
+ (id)instantiateDOMElementForItem:(id)a3 withPrototype:(id)a4 parentDOMElement:(id)a5 existingDOMElement:(id)a6;
+ (id)parsedBindingForDOMElement:(id)a3;
+ (void)prepareForDOMElement:(id)a3;
- (BOOL)_canBeReused;
- (IKAppContext)appContext;
- (IKDOMBindingController)initWithDOMElement:(id)a3;
- (IKDOMBindingController)parent;
- (IKDOMElement)domElement;
- (IKJSDataItem)dataItem;
- (id)findPrototypeForDataItem:(id)a3;
- (void)_evaluateMutationRules;
- (void)_resolveBinding;
- (void)dataObservable:(id)a3 didChangePropertyPathWithString:(id)a4 extraInfo:(id)a5;
- (void)dealloc;
- (void)scheduleUpdateUsingPreUpdate:(id)a3 update:(id)a4;
@end

@implementation IKDOMBindingController

+ (id)parsedBindingForDOMElement:(id)a3
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 domb_dataBinding];
  if (v4)
  {
    v5 = [v3 jsNodeData];
    v6 = [v5 isBindingParsed];

    if (v6)
    {
      v7 = v4;
      goto LABEL_35;
    }
  }

  v42 = v4;
  v44 = [MEMORY[0x277CBEB18] array];
  v43 = v3;
  v41 = [v3 getAttribute:@"binding"];
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
        v15 = [*(v11 + 2304) whitespaceCharacterSet];
        v16 = [v14 stringByTrimmingCharactersInSet:v15];

        v17 = [v13 objectAtIndexedSubscript:1];
        v18 = [*(v11 + 2304) whitespaceCharacterSet];
        v19 = [v17 stringByTrimmingCharactersInSet:v18];

        if ([v16 hasPrefix:@"prototype."])
        {
          v20 = [v16 substringFromIndex:{objc_msgSend(@"prototype.", "length")}];
          v21 = [*(v11 + 2304) whitespaceCharacterSet];
          v22 = [v20 stringByTrimmingCharactersInSet:v21];

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
            v28 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
            [v27 stringByTrimmingCharactersInSet:v28];
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
            [v44 addObject:v34];
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
  v36 = [v44 copy];
  v37 = [(IKDataBinding *)v35 initWithEntries:v36];

  v3 = v43;
  [v43 domb_setDataBinding:v37];
  v38 = [v43 jsNodeData];
  [v38 setBindingParsed:1];

  v7 = v37;
LABEL_35:

  v39 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (void)prepareForDOMElement:(id)a3
{
  v5 = a3;
  v3 = [v5 domb_domBindingController];
  if ([v3 _canBeReused])
  {
    [v3 _resolveBinding];
    [v3 _evaluateMutationRules];
  }

  else
  {
    v4 = [[IKDOMBindingController alloc] initWithDOMElement:v5];

    [v5 domb_setDOMBindingController:v4];
    v3 = v4;
  }
}

- (IKDOMBindingController)initWithDOMElement:(id)a3
{
  v121 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v116.receiver = self;
  v116.super_class = IKDOMBindingController;
  v5 = [(IKDOMBindingController *)&v116 init];
  if (!v5)
  {
    goto LABEL_58;
  }

  v6 = +[IKAppContext currentAppContext];
  objc_storeWeak(&v5->_appContext, v6);

  objc_storeWeak(&v5->_domElement, v4);
  v7 = [v4 parentNode];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v4 parentNode];
    v9 = [v8 domb_domBindingController];
    objc_storeWeak(&v5->_parent, v9);
  }

  else
  {
    objc_storeWeak(&v5->_parent, 0);
  }

  v10 = [objc_opt_class() parsedBindingForDOMElement:v4];
  binding = v5->_binding;
  v5->_binding = v10;

  v12 = [objc_opt_class() _parsedMutationRulesForDOMElement:v4];
  mutationRuleSet = v5->_mutationRuleSet;
  v5->_mutationRuleSet = v12;

  v14 = [v4 _isPartOfPrototypeElement];
  v15 = 7;
  if (v14)
  {
    v15 = 3;
  }

  v5->_resolutionTarget = v15;
  v16 = [(IKDataBinding *)v5->_binding keyValues];
  v17 = [v16 objectForKeyedSubscript:@"items"];
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
  v29 = [WeakRetained jsNodeData];
  v30 = [v29 isDataResolved];

  if ((v30 & 1) == 0)
  {
    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v31 = [(IKDataBinding *)v5->_binding dataBoundKeys];
    v32 = [v31 countByEnumeratingWithState:&v112 objects:v120 count:16];
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
            objc_enumerationMutation(v31);
          }

          [(IKDataBinding *)v5->_binding setNeedsResolutionForKey:*(*(&v112 + 1) + 8 * i)];
        }

        v33 = [v31 countByEnumeratingWithState:&v112 objects:v120 count:16];
      }

      while (v33);
    }
  }

  v36 = [(IKDOMBindingController *)v5 parent];
  v37 = [v36 dataItem];

  v38 = [(IKDataBinding *)v5->_binding unresolvedKeys];
  v39 = [v38 containsObject:@"dataItem"];

  if (v39)
  {
    v40 = [(IKDataBinding *)v5->_binding dataBoundKeys];
    v41 = [v40 containsObject:@"dataItem"];

    if (v41)
    {
      v42 = [(IKDataBinding *)v5->_binding keyValues];
      v43 = [v42 objectForKeyedSubscript:@"dataItem"];

      v44 = objc_loadWeakRetained(&v5->_domElement);
      v45 = [v37 valueForPropertyPath:v43 boxed:0];
      [v44 setDataItem:v45];

      v46 = [v43 string];
      [v37 addObserver:v5 forPropertyPathWithString:v46];
    }

    [(IKDataBinding *)v5->_binding markResolvedForKey:@"dataItem"];
  }

  v47 = objc_loadWeakRetained(&v5->_domElement);
  v48 = [v47 dataItem];

  if (v48)
  {
    v49 = objc_loadWeakRetained(&v5->_domElement);
    v50 = [v49 dataItem];
    v111 = 0;
    v51 = [(IKJSDataObservable *)IKJSDataItem toDataObservable:v50 proxy:&v111];
    v52 = v111;
    objc_storeWeak(&v5->_dataItem, v51);

    v53 = objc_loadWeakRetained(&v5->_domElement);
    v54 = [v53 dataItem];

    if (v52 != v54)
    {
      v55 = objc_loadWeakRetained(&v5->_domElement);
      [v55 setDataItem:v52];
    }

    v56 = objc_loadWeakRetained(&v5->_dataItem);
    [v56 addObserver:v5 forPropertyPathWithString:&stru_2866C1E60];
  }

  else
  {
    objc_storeWeak(&v5->_dataItem, v37);
  }

  v57 = objc_loadWeakRetained(&v5->_domElement);
  v58 = [v57 jsNodeData];
  [v58 setDataResolved:1];

  v59 = objc_opt_class();
  v60 = objc_loadWeakRetained(&v5->_domElement);
  v61 = [v59 _prototypeGroupsByTypeForDOMElement:v60];
  prototypeGroupsByType = v5->_prototypeGroupsByType;
  v5->_prototypeGroupsByType = v61;

  v63 = objc_loadWeakRetained(&v5->_domElement);
  v64 = [v63 jsNodeData];
  if ([v64 arePrototypesResolved])
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
    v66 = [(IKDOMBindingController *)v5 strategy];
    v63 = [v66 prototypeDependentKeys];

    v67 = [v63 countByEnumeratingWithState:&v107 objects:v119 count:16];
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
            objc_enumerationMutation(v63);
          }

          [(IKDataBinding *)v5->_binding setNeedsResolutionForKey:*(*(&v107 + 1) + 8 * j)];
        }

        v68 = [v63 countByEnumeratingWithState:&v107 objects:v119 count:16];
      }

      while (v68);
    }

    goto LABEL_40;
  }

LABEL_41:
  v71 = objc_loadWeakRetained(&v5->_domElement);
  v72 = [v71 jsNodeData];
  [v72 setPrototypesResolved:1];

  v73 = [MEMORY[0x277CBEB38] dictionary];
  v74 = [(IKDataBinding *)v5->_binding keysWithAnyOfAttributes:v5->_resolutionTarget];
  v104[0] = MEMORY[0x277D85DD0];
  v104[1] = 3221225472;
  v104[2] = __45__IKDOMBindingController_initWithDOMElement___block_invoke;
  v104[3] = &unk_27979B2B0;
  v75 = v5;
  v105 = v75;
  v76 = v73;
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
    v80 = [v75[1] allKeys];
    v81 = [v80 countByEnumeratingWithState:&v100 objects:v118 count:16];
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
            objc_enumerationMutation(v80);
          }

          v85 = *(*(&v100 + 1) + 8 * k);
          v86 = objc_loadWeakRetained(v75 + 8);
          [v86 addObserver:v75 forPropertyPathWithString:v85];
        }

        v82 = [v80 countByEnumeratingWithState:&v100 objects:v118 count:16];
      }

      while (v82);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v87 = [(_IKDOMMutationRuleSet *)v5->_mutationRuleSet dependentPathStrings];
    v88 = [v87 countByEnumeratingWithState:&v96 objects:v117 count:16];
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
            objc_enumerationMutation(v87);
          }

          v92 = *(*(&v96 + 1) + 8 * m);
          v93 = objc_loadWeakRetained(v75 + 8);
          [v93 addObserver:v75 forPropertyPathWithString:v92];
        }

        v89 = [v87 countByEnumeratingWithState:&v96 objects:v117 count:16];
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
  v4 = [WeakRetained dataItem];
  [v4 removeObserver:self];

  v5 = objc_loadWeakRetained(&self->_dataItem);
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = IKDOMBindingController;
  [(IKDOMBindingController *)&v6 dealloc];
}

- (void)scheduleUpdateUsingPreUpdate:(id)a3 update:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(IKDOMBindingController *)self parent];

  if (v8)
  {
    v9 = [(IKDOMBindingController *)self parent];
    [v9 scheduleUpdateUsingPreUpdate:v6 update:v7];
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
    [(_IKDOMBindingControllerUpdateRecord *)v12 setPreUpdate:v6];
    [(_IKDOMBindingControllerUpdateRecord *)v12 setUpdate:v7];
    [(NSMutableArray *)self->_scheduledUpdaters addObject:v12];
    if ([(NSMutableArray *)self->_scheduledUpdaters count]== 1)
    {
      objc_initWeak(&location, self);
      v13 = [(IKDOMBindingController *)self appContext];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __62__IKDOMBindingController_scheduleUpdateUsingPreUpdate_update___block_invoke;
      v14[3] = &unk_279799998;
      v14[4] = self;
      objc_copyWeak(&v15, &location);
      [v13 evaluate:v14 completionBlock:0];

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

+ (id)instantiateDOMElementForItem:(id)a3 withPrototype:(id)a4 parentDOMElement:(id)a5 existingDOMElement:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = [v9 identifier];
  v14 = [v10 identifier];
  v15 = v12;
  v16 = v15;
  if (v15)
  {
    v17 = [v15 getAttribute:@"prototypeID"];
    if ([v17 isEqualToString:v14])
    {

      v18 = 0;
      v19 = v16;
      goto LABEL_12;
    }
  }

  v19 = [v10 instantiateDOMElement];
  [v19 setAttributeValue:v13 withName:@"itemID"];
  [v19 setAttributeValue:v14 withName:@"prototypeID"];
  if (v16 && v19 != v16)
  {
    v20 = [v16 ownerDocument];
    [v20 swapITMLIDForNode:v19 withITMLIDForNode:v16];

    goto LABEL_9;
  }

  if (v19 != v16)
  {
LABEL_9:
    v21 = [v16 parentNode];

    if (v21 == v11)
    {
      v22 = [v11 replaceChild:v19 :v16];
    }
  }

  v18 = 1;
LABEL_12:
  v23 = [v19 parentNode];

  if (v23 != v11)
  {
    v24 = [v11 appendChild:v19];
  }

  v25 = [v19 dataItem];
  v26 = [IKJSDataObservable toDataObservable:v25];

  if (v26 == v9)
  {
    if (!v18)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v27 = [v9 exportValue];
    [v19 setDataItem:v27];
  }

  v28 = [v11 jsNodeData];
  v29 = [v28 containsUpdates];

  if (v29)
  {
    v30 = [v19 jsNodeData];
    [v30 setUpdated:1];
  }

  v31 = [IKDOMEvent alloc];
  v32 = +[IKAppContext currentAppContext];
  v33 = [(IKDOMEvent *)v31 initWithAppContext:v32 type:@"dataitemresolved" xmlAttribute:@"ondataitemresolved" canBubble:1 isCancelable:0];

  [v19 dispatchEvent:v33];
LABEL_20:

  return v19;
}

- (id)findPrototypeForDataItem:(id)a3
{
  v4 = a3;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __51__IKDOMBindingController_findPrototypeForDataItem___block_invoke;
  v18 = &unk_27979B6F0;
  v19 = self;
  v5 = v4;
  v20 = v5;
  v6 = MEMORY[0x259C21BA0](&v15);
  v7 = [v5 type];
  v8 = (v6)[2](v6, v7);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v11 = [v5 type];
    v12 = [MEMORY[0x277CCACA8] string];
    if (v11 == v12)
    {
      v10 = 0;
    }

    else
    {
      v13 = [MEMORY[0x277CCACA8] string];
      v10 = (v6)[2](v6, v13);
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

- (void)dataObservable:(id)a3 didChangePropertyPathWithString:(id)a4 extraInfo:(id)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [[IKDataBindingPropertyPath alloc] initWithString:v9];
  v12 = [(NSDictionary *)self->_bindingKeysByPathString objectForKeyedSubscript:v9];
  v13 = [(IKDOMBindingController *)self parent];
  v14 = [v13 dataItem];
  v15 = v14;
  if (v14 == v8)
  {
    v16 = [v12 containsObject:@"dataItem"];

    if (v16)
    {
      v17 = [(IKDOMBindingController *)self domElement];
      v18 = [v17 jsNodeData];
      [v18 setDataResolved:0];

      v19 = [(IKDOMBindingController *)self domElement];
      v20 = v19;
      v21 = 1;
LABEL_7:
      [v19 updatedAndMark:v21 notify:0];

      goto LABEL_41;
    }
  }

  else
  {
  }

  if ([v9 isEqualToString:&stru_2866C1E60])
  {
    v19 = [(IKDOMBindingController *)self domElement];
    v20 = v19;
    v21 = 0;
    goto LABEL_7;
  }

  if (dataObservable_didChangePropertyPathWithString_extraInfo__onceToken != -1)
  {
    [IKDOMBindingController dataObservable:didChangePropertyPathWithString:extraInfo:];
  }

  v52 = v8;
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
          v28 = [(IKDOMBindingController *)self strategy];
          [v28 valueDidChangeForKey:v27 propertyPath:v11 extraInfo:v10];
        }

        v24 = [v22 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v24);
    }

    v12 = v53;
  }

  v29 = [MEMORY[0x277CBEB58] setWithSet:v12];
  v30 = [(IKDOMBindingController *)self binding];
  v31 = [v30 unresolvedKeys];
  [v29 minusSet:v31];

  if ([v29 count])
  {
    if (([dataObservable_didChangePropertyPathWithString_extraInfo__bindingKeysForChildren intersectsSet:v29] & 1) != 0 || self->_strategyFlags.hasKeysAffectingChildren && (-[IKDOMBindingController strategy](self, "strategy"), v33 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v33, "keysAffectingChildren"), v34 = objc_claimAutoreleasedReturnValue(), v35 = objc_msgSend(v34, "intersectsSet:", v29), v34, v33, v35))
    {
      v32 = [(IKDOMBindingController *)self domElement];
      [v32 childrenUpdatedWithUpdatedChildNodes:0 notify:0];
    }

    else
    {
      if ([dataObservable_didChangePropertyPathWithString_extraInfo__bindingKeysForSubtree intersectsSet:v12])
      {
        v36 = 0;
      }

      else if (self->_strategyFlags.hasKeysAffectingSubtree)
      {
        v37 = [(IKDOMBindingController *)self strategy];
        v38 = [v37 keysAffectingSubtree];
        v36 = [v38 intersectsSet:v29] ^ 1;
      }

      else
      {
        v36 = 1;
      }

      v32 = [(IKDOMBindingController *)self domElement];
      [v32 updatedAndMark:v36 notify:0];
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
          v45 = [(IKDOMBindingController *)self binding];
          [v45 setNeedsResolutionForKey:v44];
        }

        v41 = [v39 countByEnumeratingWithState:&v54 objects:v62 count:16];
      }

      while (v41);
    }

    v12 = v53;
    v29 = v51;
  }

  v46 = [(IKDOMBindingController *)self mutationRuleSet];
  v47 = [v46 dependentPathStrings];
  v48 = [v47 containsObject:v9];

  if (v48)
  {
    v49 = [(IKDOMBindingController *)self domElement];
    [v49 childrenUpdatedWithUpdatedChildNodes:0 notify:0];
  }

  v8 = v52;
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

+ (id)_parsedMutationRulesForDOMElement:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 domb_mutationRuleSet];
  if (v4 && ([v3 jsNodeData], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "areRulesParsed"), v5, v6))
  {
    v7 = v4;
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = [v3 childElements];
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          v14 = [v13 nodeName];
          v15 = [v14 isEqualToString:@"rules"];

          if (v15)
          {
            v16 = v13;
            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v39 count:16];
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
    v18 = [v16 childElements];
    v19 = [v17 arrayWithCapacity:{objc_msgSend(v18, "count")}];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v20 = [v16 childElements];
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
            objc_enumerationMutation(v20);
          }

          v25 = [IKDOMMutationRule mutationRuleWithDOMElement:*(*(&v30 + 1) + 8 * j) mutable:1];
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
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

    [v3 domb_setMutationRuleSet:v26];
    v27 = [v3 jsNodeData];
    [v27 setRulesParsed:1];

    v7 = v26;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)_prototypeGroupsByTypeForDOMElement:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [v3 elementName];
  if ([(objc_class *)[IKViewElementFactory elementClassByTagName:?]])
  {
  }

  else
  {
    v6 = [v3 elementName];
    v7 = [v6 isEqualToString:@"fragment"];

    if (!v7)
    {
      goto LABEL_31;
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [v3 childElements];
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
        v13 = [v12 elementName];
        v14 = [v13 isEqualToString:@"prototypes"];

        if (v14)
        {
          v39 = v3;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v15 = [v12 childElements];
          v16 = [v15 countByEnumeratingWithState:&v45 objects:v56 count:16];
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
                  objc_enumerationMutation(v15);
                }

                v20 = *(*(&v45 + 1) + 8 * j);
                v21 = [v20 elementName];
                v22 = [v20 getAttribute:@"prototype"];
                v23 = v22;
                if (v22)
                {
                  v24 = v22;
                }

                else
                {
                  v24 = [MEMORY[0x277CCACA8] string];
                }

                v25 = v24;

                if ([IKViewElementFactory elementClassByTagName:v21])
                {
                  v26 = [v4 objectForKeyedSubscript:v25];
                  if (!v26)
                  {
                    v26 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
                    [v4 setObject:v26 forKeyedSubscript:v25];
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
                    v55 = v21;
                    _os_log_impl(&dword_2549A4000, v26, OS_LOG_TYPE_INFO, "Invalid prototype tag: %@", buf, 0xCu);
                  }
                }
              }

              v17 = [v15 countByEnumeratingWithState:&v45 objects:v56 count:16];
            }

            while (v17);
          }

          v3 = v39;
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
  v28 = [v4 allKeys];
  v29 = [v28 countByEnumeratingWithState:&v41 objects:v53 count:16];
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
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v41 + 1) + 8 * k);
        v34 = [v4 objectForKeyedSubscript:v33];
        v35 = [v34 copy];
        [v4 setObject:v35 forKeyedSubscript:v33];
      }

      v30 = [v28 countByEnumeratingWithState:&v41 objects:v53 count:16];
    }

    while (v30);
  }

  if ([v4 count])
  {
    v36 = [v4 copy];
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
  v3 = [(IKDOMBindingController *)self domElement];
  v4 = [v3 parentNode];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IKDOMBindingController *)self domElement];
    v6 = [v5 parentNode];
    v7 = [v6 domb_domBindingController];
  }

  else
  {
    v7 = 0;
  }

  v8 = [(IKDOMBindingController *)self parent];
  if (v8 == v7)
  {
    v10 = [(IKDOMBindingController *)self domElement];
    v11 = [v10 jsNodeData];
    if ([v11 isBindingParsed])
    {
      v12 = [(IKDOMBindingController *)self domElement];
      v13 = [v12 jsNodeData];
      if ([v13 areRulesParsed])
      {
        v14 = [(IKDOMBindingController *)self domElement];
        v15 = [v14 jsNodeData];
        if ([v15 arePrototypesResolved])
        {
          v18 = [(IKDOMBindingController *)self domElement];
          v16 = [v18 jsNodeData];
          v9 = [v16 isDataResolved];
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_resolveBinding
{
  if (_resolveBinding_onceToken != -1)
  {
    [IKDOMBindingController _resolveBinding];
  }

  v3 = [(IKDOMBindingController *)self domElement];
  v4 = [(IKDOMBindingController *)self binding];
  v5 = [(IKDOMBindingController *)self dataItem];
  v6 = [v4 keyValues];
  v7 = objc_opt_new();
  [v5 setObserversEnabled:0];
  v8 = [v4 unresolvedKeysWithAnyOfAttributes:{-[IKDOMBindingController resolutionTarget](self, "resolutionTarget")}];
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

  v13 = [v12 allObjects];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __41__IKDOMBindingController__resolveBinding__block_invoke_2;
  v33[3] = &unk_27979B718;
  v14 = v6;
  v34 = v14;
  v15 = [v13 sortedArrayUsingComparator:v33];

  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __41__IKDOMBindingController__resolveBinding__block_invoke_3;
  v26[3] = &unk_27979B858;
  v16 = v14;
  v27 = v16;
  v17 = v5;
  v28 = v17;
  v29 = self;
  v18 = v4;
  v30 = v18;
  v19 = v3;
  v31 = v19;
  v20 = v7;
  v32 = v20;
  [v15 enumerateObjectsUsingBlock:v26];
  v21 = [v19 domb_boundCSSRule];
  if ([v20 count])
  {
    v22 = ITMLKitGetLogObject(0);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [(IKDOMBindingController *)v19 _resolveBinding];
    }

    v23 = objc_opt_new();
    [v23 setDeclarationList:v20];
    v21 = v23;
  }

  [v19 domb_setBoundCSSRule:v21];
  if (self->_strategyFlags.hasDidResolveKeys)
  {
    v24 = [(IKDOMBindingController *)self strategy];
    v25 = [MEMORY[0x277CBEB98] setWithArray:v15];
    [v24 didResolveKeys:v25];
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
  v3 = [(IKDOMBindingController *)self mutationRuleSet];
  v4 = [v3 mutationRules];
  v5 = [v4 sortedArrayUsingSelector:sel_compare_];

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
        v12 = [(IKDOMBindingController *)self dataItem];
        v13 = [v11 passesForDataItem:v12 default:0];

        if (v13)
        {
          v14 = [(IKDOMBindingController *)self domElement];
          [v11 applyOnDOMElement:v14];
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
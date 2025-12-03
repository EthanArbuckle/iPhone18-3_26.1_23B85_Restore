@interface IKViewElement
+ (id)DOMEventTypeNameMap;
+ (id)_eventXMLNameMap;
+ (id)effectiveChildDOMElementsForDOMElement:(id)element;
+ (id)supportedFeaturesForElementName:(id)name;
+ (unint64_t)evaluateElementUpdateType:(id)type;
+ (unint64_t)updateTypeForChangeInAttribute:(id)attribute fromValue:(id)value toValue:(id)toValue;
+ (void)willParseDOMElement:(id)element;
- (BOOL)_elevateToImplicitUpdateType:(unint64_t)type;
- (BOOL)isHidden;
- (BOOL)isProxyElement;
- (IKAppDocument)appDocument;
- (IKViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory;
- (IKViewElement)initWithOriginalElement:(id)element;
- (IKViewElement)initWithPrototypeElement:(id)element parent:(id)parent appDataItem:(id)item;
- (IKViewElement)parent;
- (IKViewElementStyle)style;
- (NSArray)children;
- (NSString)debugDescription;
- (id)applyUpdatesWithElement:(id)element;
- (id)childElementWithType:(unint64_t)type;
- (id)childElementsWithType:(unint64_t)type;
- (id)childImageElementWithType:(unint64_t)type;
- (id)childTextElementWithStyle:(unint64_t)style;
- (id)objectForKeyedSubscript:(id)subscript;
- (unint64_t)_updateSubtreeWithElement:(id)element;
- (void)appDocumentDidMarkStylesDirty;
- (void)configureUpdatesWithElement:(id)element;
- (void)dealloc;
- (void)dispatchEvent:(id)event eventAttribute:(id)attribute canBubble:(BOOL)bubble isCancelable:(BOOL)cancelable extraInfo:(id)info completionBlock:(id)block;
- (void)disperseUpdateType:(unint64_t)type;
- (void)performImplicitUpdates:(id)updates;
- (void)resetImplicitUpdates;
- (void)resetProperty:(unint64_t)property;
- (void)resetUpdates;
- (void)setAppDocument:(id)document;
- (void)setObject:(id)object forKeyedSubscript:(id)subscript;
- (void)updateWithActualElement:(id)element;
@end

@implementation IKViewElement

+ (void)willParseDOMElement:(id)element
{
  v52 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  jsNodeData = [elementCopy jsNodeData];
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __37__IKViewElement_willParseDOMElement___block_invoke;
  v48[3] = &unk_27979C078;
  v5 = elementCopy;
  v49 = v5;
  v6 = MEMORY[0x259C21BA0](v48);
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __37__IKViewElement_willParseDOMElement___block_invoke_2;
  v46[3] = &unk_27979C0A0;
  v47 = v5;
  v44[0] = MEMORY[0x277D85DD0];
  v44[1] = 3221225472;
  v44[2] = __37__IKViewElement_willParseDOMElement___block_invoke_3;
  v44[3] = &unk_27979B808;
  v7 = v47;
  v45 = v7;
  if ((*(v6 + 16))(v6, @"prototypes", v46, v44))
  {
    [jsNodeData setPrototypesResolved:0];
    [jsNodeData setUpdated:{objc_msgSend(jsNodeData, "containsUpdates")}];
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __37__IKViewElement_willParseDOMElement___block_invoke_4;
  v42[3] = &unk_27979C0A0;
  v43 = v7;
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __37__IKViewElement_willParseDOMElement___block_invoke_5;
  v40[3] = &unk_27979B808;
  v31 = v43;
  v41 = v31;
  if ((*(v6 + 16))(v6, @"rules", v42, v40))
  {
    [jsNodeData setRulesParsed:0];
    [jsNodeData setUpdated:{objc_msgSend(jsNodeData, "containsUpdates")}];
  }

  if (![jsNodeData isDataResolved] || !objc_msgSend(jsNodeData, "arePrototypesResolved") || (objc_msgSend(jsNodeData, "areRulesParsed") & 1) == 0)
  {
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    childElements = [v31 childElements];
    v9 = [childElements countByEnumeratingWithState:&v36 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v37;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v37 != v11)
          {
            objc_enumerationMutation(childElements);
          }

          v13 = *(*(&v36 + 1) + 8 * i);
          if (([jsNodeData isDataResolved] & 1) == 0)
          {
            jsNodeData2 = [v13 jsNodeData];
            [jsNodeData2 setDataResolved:0];
          }

          if (([jsNodeData arePrototypesResolved] & 1) == 0)
          {
            jsNodeData3 = [v13 jsNodeData];
            [jsNodeData3 setPrototypesResolved:0];
          }

          if (([jsNodeData areRulesParsed] & 1) == 0)
          {
            jsNodeData4 = [v13 jsNodeData];
            [jsNodeData4 setRulesParsed:0];
          }
        }

        v10 = [childElements countByEnumeratingWithState:&v36 objects:v51 count:16];
      }

      while (v10);
    }
  }

  [IKDOMBindingController prepareForDOMElement:v31, v6];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  childElements2 = [v31 childElements];
  v18 = [childElements2 countByEnumeratingWithState:&v32 objects:v50 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(childElements2);
        }

        v22 = *(*(&v32 + 1) + 8 * j);
        elementName = [v22 elementName];
        v24 = [elementName isEqualToString:@"fragment"];

        if (v24)
        {
          [IKViewElement willParseDOMElement:v22];
          jsNodeData5 = [v22 jsNodeData];
          if ([jsNodeData5 isUpdated])
          {
          }

          else
          {
            jsNodeData6 = [v22 jsNodeData];
            isChildrenUpdated = [jsNodeData6 isChildrenUpdated];

            if (!isChildrenUpdated)
            {
              continue;
            }
          }

          jsNodeData7 = [v31 jsNodeData];
          [jsNodeData7 setChildrenUpdated:1];
        }
      }

      v19 = [childElements2 countByEnumeratingWithState:&v32 objects:v50 count:16];
    }

    while (v19);
  }

  v29 = *MEMORY[0x277D85DE8];
}

uint64_t __37__IKViewElement_willParseDOMElement___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [*(a1 + 32) childElements];
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v11)
  {
    v12 = *v27;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        v15 = [v14 elementName];
        v16 = [v15 isEqualToString:v7];

        if (v16)
        {
          v11 = v14;
          goto LABEL_11;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v17 = v8[2](v8);
  v18 = [v11 getAttribute:@"itmlID"];
  v19 = v18;
  v20 = &stru_2866C1E60;
  if (v18)
  {
    v20 = v18;
  }

  v21 = v20;

  if (v17)
  {
    if ([v17 isEqualToString:v21])
    {
      v22 = [v11 jsNodeData];
      v23 = [v22 containsUpdates];
    }

    else
    {
      v23 = 1;
    }
  }

  else
  {
    v23 = 0;
  }

  v9[2](v9, v21);

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

+ (id)effectiveChildDOMElementsForDOMElement:(id)element
{
  v23 = *MEMORY[0x277D85DE8];
  childElements = [element childElements];
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(childElements, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = childElements;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        elementName = [v11 elementName];
        v13 = [elementName isEqualToString:@"fragment"];

        if (v13)
        {
          v14 = [self effectiveChildDOMElementsForDOMElement:v11];
          [v5 addObjectsFromArray:v14];
        }

        else
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [v5 copy];
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

+ (id)supportedFeaturesForElementName:(id)name
{
  v3 = objc_opt_class();

  return [v3 supportedFeatures];
}

+ (unint64_t)updateTypeForChangeInAttribute:(id)attribute fromValue:(id)value toValue:(id)toValue
{
  if ([attribute isEqualToString:{@"autoHighlight", value, toValue}])
  {
    return 1;
  }

  else
  {
    return 4;
  }
}

- (IKViewElement)initWithDOMElement:(id)element parent:(id)parent elementFactory:(id)factory
{
  v115 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  parentCopy = parent;
  factoryCopy = factory;
  v110.receiver = self;
  v110.super_class = IKViewElement;
  v10 = [(IKViewElement *)&v110 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_parent, parentCopy);
    v12 = [IKDOMBindingController domBindingControllerForDOMElement:elementCopy];
    bindingController = v11->_bindingController;
    v11->_bindingController = v12;

    binding = [(IKDOMBindingController *)v11->_bindingController binding];
    binding = v11->_binding;
    v11->_binding = binding;

    dataItem = [(IKDOMBindingController *)v11->_bindingController dataItem];
    dataDictionary = [dataItem dataDictionary];
    dataDictionary = v11->_dataDictionary;
    v11->_dataDictionary = dataDictionary;

    v11->_isPartOfPrototypeElement = [elementCopy _isPartOfPrototypeElement];
    jsNodeData = [elementCopy jsNodeData];
    v11->_updateType = [IKViewElement evaluateElementUpdateType:jsNodeData];
    _attributes = [elementCopy _attributes];
    v21 = [_attributes mutableCopy];

    v93 = [v21 objectForKeyedSubscript:?];
    v94 = elementCopy;
    v22 = [elementCopy getAttribute:@"class"];
    v23 = [v22 copy];
    classSelector = v11->_classSelector;
    v11->_classSelector = v23;

    if (!-[IKViewElement isPartOfPrototypeElement](v11, "isPartOfPrototypeElement") && ([jsNodeData isAutoHighlightRead] & 1) == 0)
    {
      v25 = [v21 objectForKeyedSubscript:@"autoHighlight"];
      autoHighlightIdentifier = v11->_autoHighlightIdentifier;
      v11->_autoHighlightIdentifier = v25;

      v11->_didUpdateAutoHighlightIdentifier = 1;
      [jsNodeData setAutoHighlightRead:1];
    }

    v97 = jsNodeData;
    v27 = [v21 objectForKeyedSubscript:@"id"];
    elementID = v11->_elementID;
    v11->_elementID = v27;

    v29 = [v21 objectForKeyedSubscript:@"itmlID"];
    itmlID = v11->_itmlID;
    v11->_itmlID = v29;

    v31 = [v21 objectForKeyedSubscript:@"accessibilityText"];
    accessibilityText = v11->_accessibilityText;
    v11->_accessibilityText = v31;

    if (![(IKViewElement *)v11 isPartOfPrototypeElement])
    {
      v33 = [v21 objectForKey:@"disabled"];
      v34 = v33;
      if (v33)
      {
        bOOLValue = [v33 BOOLValue];
      }

      else
      {
        bOOLValue = [parentCopy isDisabled];
      }

      v11->_disabled = bOOLValue;
      [v21 removeObjectForKey:@"disabled"];
    }

    v92 = parentCopy;
    v11->_impressionable = 0;
    v96 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    v36 = v21;
    v37 = [v36 countByEnumeratingWithState:&v106 objects:v114 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v107;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          if (*v107 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v106 + 1) + 8 * i);
          if ([v41 hasPrefix:@"data-metrics"])
          {
            v11->_impressionable = 1;
            v42 = [v36 objectForKeyedSubscript:v41];
            [v96 setObject:v42 forKey:v41];
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v106 objects:v114 count:16];
      }

      while (v38);
    }

    v43 = [v96 copy];
    impressionableAttributes = v11->_impressionableAttributes;
    v11->_impressionableAttributes = v43;

    [v36 removeObjectForKey:v90];
    [v36 removeObjectForKey:@"itmlID"];
    [v36 removeObjectForKey:@"autoHighlight"];
    [v36 removeObjectForKey:@"style"];
    if ([v36 count])
    {
      v45 = [v36 copy];
      attributes = v11->_attributes;
      v11->_attributes = v45;
    }

    elementCopy = v94;
    nodeName = [v94 nodeName];
    ik_sharedInstance = [nodeName ik_sharedInstance];
    elementName = v11->_elementName;
    v11->_elementName = ik_sharedInstance;

    v11->_elementType = [factoryCopy elementTypeByTagName:v11->_elementName];
    v50 = objc_autoreleasePoolPush();
    v51 = [IKViewElementStyle elementStyleWithSelector:v11->_classSelector inlineStyleString:v93 filterBlockedStyles:1];
    domb_boundCSSRule = [v94 domb_boundCSSRule];

    if (domb_boundCSSRule)
    {
      v53 = ITMLKitGetLogObject(0);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        [IKViewElement initWithDOMElement:v11 parent:v94 elementFactory:v53];
      }

      v54 = v11->_classSelector;
      domb_boundCSSRule2 = [v94 domb_boundCSSRule];
      v56 = [IKViewElementStyle elementStyleWithSelector:v54 cssRule:domb_boundCSSRule2 filterBlockedStyles:1];

      if (v51)
      {
        v57 = v11->_classSelector;
        v113[0] = v51;
        v113[1] = v56;
        v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v113 count:2];
        v59 = [IKViewElementStyle elementStyleWithSelector:v57 aggregatingStyles:v58];

        v51 = v59;
      }

      else
      {
        v51 = v56;
      }
    }

    styleFactory = [factoryCopy styleFactory];
    v61 = [styleFactory styleComposerForElement:v11 elementStyleOverrides:v51];
    styleComposer = v11->_styleComposer;
    v11->_styleComposer = v61;

    objc_autoreleasePoolPop(v50);
    if ([objc_opt_class() shouldParseChildDOMElements])
    {
      v63 = [IKViewElement effectiveChildDOMElementsForDOMElement:v94];
      v64 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v63, "count")}];
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v105 = 0u;
      v65 = v63;
      v66 = [v65 countByEnumeratingWithState:&v102 objects:v112 count:16];
      if (v66)
      {
        v67 = v66;
        v68 = *v103;
        do
        {
          for (j = 0; j != v67; ++j)
          {
            if (*v103 != v68)
            {
              objc_enumerationMutation(v65);
            }

            v70 = *(*(&v102 + 1) + 8 * j);
            if ([objc_opt_class() shouldParseChildDOMElement:v70])
            {
              v71 = [factoryCopy elementForDOMElement:v70 parent:v11];
              if (v71)
              {
                [v64 addObject:v71];
              }
            }
          }

          v67 = [v65 countByEnumeratingWithState:&v102 objects:v112 count:16];
        }

        while (v67);
      }

      v72 = [v64 count];
      if (v72)
      {
        v72 = [v64 copy];
      }

      unfilteredChildren = v11->_unfilteredChildren;
      v11->_unfilteredChildren = v72;
    }

    v74 = objc_opt_class();
    elementName = [(IKViewElement *)v11 elementName];
    v76 = [v74 supportedFeaturesForElementName:elementName];

    if ([v76 count])
    {
      v77 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v76, "count")}];
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v91 = v76;
      v78 = v76;
      v79 = [v78 countByEnumeratingWithState:&v98 objects:v111 count:16];
      if (!v79)
      {
        goto LABEL_55;
      }

      v80 = v79;
      v81 = *v99;
      while (1)
      {
        for (k = 0; k != v80; ++k)
        {
          if (*v99 != v81)
          {
            objc_enumerationMutation(v78);
          }

          v83 = *(*(&v98 + 1) + 8 * k);
          v84 = [v97 featureForName:v83];
          if (!v84)
          {
            v85 = [IKDOMFeatureFactory featureForName:v83 withDOMNode:v94];
            if (!v85)
            {
              continue;
            }

            v84 = v85;
            [v97 setFeature:v85 forName:v83];
          }

          [v77 addObject:v84];
        }

        v80 = [v78 countByEnumeratingWithState:&v98 objects:v111 count:16];
        if (!v80)
        {
LABEL_55:

          elementCopy = v94;
          v76 = v91;
          goto LABEL_57;
        }
      }
    }

    v77 = 0;
LABEL_57:
    v86 = [v77 copy];
    features = v11->_features;
    v11->_features = v86;

    parentCopy = v92;
  }

  v88 = *MEMORY[0x277D85DE8];
  return v11;
}

- (IKViewElement)initWithPrototypeElement:(id)element parent:(id)parent appDataItem:(id)item
{
  v146 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  parentCopy = parent;
  itemCopy = item;
  v140.receiver = self;
  v140.super_class = IKViewElement;
  v11 = [(IKViewElement *)&v140 init];
  v12 = v11;
  if (v11)
  {
    v11->_isProxyElement = 1;
    objc_storeWeak(&v11->_parent, parentCopy);
    classSelector = [elementCopy classSelector];
    v14 = [classSelector copy];
    classSelector = v12->_classSelector;
    v12->_classSelector = v14;

    bindingController = v12->_bindingController;
    v12->_bindingController = 0;

    binding = [elementCopy binding];
    binding = v12->_binding;
    v12->_binding = binding;

    v123 = itemCopy;
    dataDictionary = [(IKAppDataItem *)itemCopy dataDictionary];
    dataDictionary = v12->_dataDictionary;
    v12->_dataDictionary = dataDictionary;

    elementID = v12->_elementID;
    v12->_elementID = 0;

    itmlID = v12->_itmlID;
    v12->_itmlID = 0;

    accessibilityText = [elementCopy accessibilityText];
    accessibilityText = v12->_accessibilityText;
    v12->_accessibilityText = accessibilityText;

    elementName = [elementCopy elementName];
    elementName = v12->_elementName;
    v12->_elementName = elementName;

    v12->_elementType = [elementCopy elementType];
    features = v12->_features;
    v12->_features = 0;

    attributes = [elementCopy attributes];
    v29 = [attributes mutableCopy];
    v30 = v29;
    v115 = elementCopy;
    v112 = parentCopy;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
    }

    v120 = v31;

    v138 = 0u;
    v139 = 0u;
    v136 = 0u;
    v137 = 0u;
    keyValues = [(IKDataBinding *)v12->_binding keyValues];
    allKeys = [keyValues allKeys];

    v34 = [allKeys countByEnumeratingWithState:&v136 objects:v145 count:16];
    v122 = v12;
    if (v34)
    {
      v35 = v34;
      v36 = *v137;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v137 != v36)
          {
            objc_enumerationMutation(allKeys);
          }

          v38 = *(*(&v136 + 1) + 8 * i);
          if ([v38 characterAtIndex:0] == 64)
          {
            keyValues2 = [(IKDataBinding *)v12->_binding keyValues];
            v40 = [keyValues2 objectForKeyedSubscript:v38];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v41 = [(IKAppDataItem *)v123 valueForPropertyPath:v40];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                stringValue = [v41 stringValue];

                v41 = stringValue;
                v12 = v122;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v43 = [v38 substringFromIndex:1];
                [v120 setObject:v41 forKeyedSubscript:v43];
              }
            }
          }
        }

        v35 = [allKeys countByEnumeratingWithState:&v136 objects:v145 count:16];
      }

      while (v35);
    }

    styleComposer = [elementCopy styleComposer];
    v116 = objc_opt_new();
    v132 = 0u;
    v133 = 0u;
    v134 = 0u;
    v135 = 0u;
    keyValues3 = [(IKDataBinding *)v12->_binding keyValues];
    allKeys2 = [keyValues3 allKeys];

    v46 = [allKeys2 countByEnumeratingWithState:&v132 objects:v144 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v133;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v133 != v48)
          {
            objc_enumerationMutation(allKeys2);
          }

          v50 = *(*(&v132 + 1) + 8 * j);
          if ([v50 characterAtIndex:0] == 35)
          {
            v51 = [v50 substringFromIndex:1];
            keyValues4 = [(IKDataBinding *)v12->_binding keyValues];
            v53 = [keyValues4 objectForKeyedSubscript:v50];

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v54 = [(IKAppDataItem *)v123 valueForPropertyPath:v53];
              v55 = [IKCSSFactory createDeclarationForName:v51 withObject:v54];
              if (v55)
              {
                [v116 addDeclaration:v55];
              }

              v12 = v122;
            }
          }
        }

        v47 = [allKeys2 countByEnumeratingWithState:&v132 objects:v144 count:16];
      }

      while (v47);
    }

    if ([v116 count])
    {
      v56 = objc_opt_new();
      [v56 setDeclarationList:v116];
      v57 = [IKViewElementStyle elementStyleWithSelector:v12->_classSelector cssRule:v56 filterBlockedStyles:1];
      elementStyleOverrides = [styleComposer elementStyleOverrides];
      if (elementStyleOverrides)
      {
        v59 = elementStyleOverrides;
        v60 = v12->_classSelector;
        v143[0] = elementStyleOverrides;
        v143[1] = v57;
        v61 = [MEMORY[0x277CBEA60] arrayWithObjects:v143 count:2];
        v62 = [IKViewElementStyle elementStyleWithSelector:v60 aggregatingStyles:v61];
      }

      else
      {
        v62 = v57;
      }

      defaultStyleComposer = [styleComposer defaultStyleComposer];
      parentStyleComposer = [styleComposer parentStyleComposer];
      styleList = [styleComposer styleList];
      v63 = [IKViewElementStyleComposer styleComposerWithDefaultStyleComposer:defaultStyleComposer parentStyleComposer:parentStyleComposer styleList:styleList elementStyleOverrides:v62];

      v64 = v112;
      v12 = v122;
    }

    else
    {
      v64 = v112;
      v63 = styleComposer;
    }

    objc_storeStrong(&v12->_styleComposer, v63);
    if (([v64 isProxyElement] & 1) == 0)
    {
      identifier = [(IKAppDataItem *)v123 identifier];
      [v120 setObject:identifier forKeyedSubscript:@"itemID"];
    }

    v69 = [v120 objectForKeyedSubscript:@"disabled"];
    v111 = v69;
    if (v69)
    {
      bOOLValue = [v69 BOOLValue];
    }

    else
    {
      bOOLValue = [v64 isDisabled];
    }

    v114 = v63;
    v12->_disabled = bOOLValue;
    [v120 removeObjectForKey:@"disabled"];
    v71 = [v120 objectForKeyedSubscript:@"autoHighlight"];
    autoHighlightIdentifier = v12->_autoHighlightIdentifier;
    v12->_autoHighlightIdentifier = v71;

    if (v71)
    {
      v12->_didUpdateAutoHighlightIdentifier = 1;
    }

    [v120 removeObjectForKey:@"autoHighlight"];
    v12->_impressionable = 0;
    v118 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    v73 = v120;
    v74 = [v73 countByEnumeratingWithState:&v128 objects:v142 count:16];
    v117 = v73;
    if (v74)
    {
      v75 = v74;
      v76 = *v129;
      do
      {
        for (k = 0; k != v75; ++k)
        {
          if (*v129 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = *(*(&v128 + 1) + 8 * k);
          if ([v78 hasPrefix:@"data-metrics"])
          {
            v12->_impressionable = 1;
            v79 = [v73 objectForKeyedSubscript:v78];
            [v118 setObject:v79 forKey:v78];

            v73 = v117;
          }
        }

        v75 = [v73 countByEnumeratingWithState:&v128 objects:v142 count:16];
      }

      while (v75);
    }

    v80 = [v118 copy];
    impressionableAttributes = v12->_impressionableAttributes;
    v12->_impressionableAttributes = v80;

    v82 = [v73 count];
    if (v82)
    {
      v82 = [v73 copy];
    }

    attributes = v12->_attributes;
    v12->_attributes = v82;

    appDocument = [(IKViewElement *)v12 appDocument];
    markImplicitlyUpdated = [appDocument markImplicitlyUpdated];

    if (markImplicitlyUpdated)
    {
      [(IKViewElement *)v12 _elevateToImplicitUpdateType:4];
      if ([v64 _elevateToImplicitUpdateType:3])
      {
        parent = [v64 parent];
        if ([parent _elevateToImplicitUpdateType:1])
        {
          do
          {
            v86Parent = [parent parent];

            parent = v86Parent;
          }

          while (([v86Parent _elevateToImplicitUpdateType:1] & 1) != 0);
        }

        else
        {
          v86Parent = parent;
        }
      }
    }

    v88 = MEMORY[0x277CBEB18];
    unfilteredChildren = [elementCopy unfilteredChildren];
    v90 = [v88 arrayWithCapacity:{objc_msgSend(unfilteredChildren, "count")}];

    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    obj = [elementCopy unfilteredChildren];
    v91 = [obj countByEnumeratingWithState:&v124 objects:v141 count:16];
    if (v91)
    {
      v92 = v91;
      v121 = *v125;
      do
      {
        for (m = 0; m != v92; ++m)
        {
          if (*v125 != v121)
          {
            objc_enumerationMutation(obj);
          }

          v94 = *(*(&v124 + 1) + 8 * m);
          bindingController = [v94 bindingController];
          binding2 = [bindingController binding];

          dataBoundKeys = [binding2 dataBoundKeys];
          v98 = [dataBoundKeys containsObject:@"dataItem"];

          if (v98)
          {
            keyValues5 = [binding2 keyValues];
            v100 = [keyValues5 objectForKeyedSubscript:@"dataItem"];

            v101 = v123;
            v102 = [(IKAppDataItem *)v123 valueForPropertyPath:v100];
            v103 = [[IKAppDataItem alloc] initWithType:0 identifier:0 prototypeIdentifier:0 dataDictionary:v102];
          }

          else
          {
            v103 = 0;
            v101 = v123;
          }

          v104 = objc_alloc(objc_opt_class());
          if (v103)
          {
            v105 = v103;
          }

          else
          {
            v105 = v101;
          }

          v106 = [v104 initWithPrototypeElement:v94 parent:v122 appDataItem:v105];
          [v90 addObject:v106];
        }

        v92 = [obj countByEnumeratingWithState:&v124 objects:v141 count:16];
      }

      while (v92);
    }

    v107 = [v90 count];
    if (v107)
    {
      v107 = [v90 copy];
    }

    v12 = v122;
    itemCopy = v123;
    unfilteredChildren = v122->_unfilteredChildren;
    v122->_unfilteredChildren = v107;

    elementCopy = v115;
    parentCopy = v112;
  }

  v109 = *MEMORY[0x277D85DE8];
  return v12;
}

- (IKViewElement)initWithOriginalElement:(id)element
{
  v57 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  v55.receiver = self;
  v55.super_class = IKViewElement;
  v5 = [(IKViewElement *)&v55 init];
  v6 = v5;
  if (v5)
  {
    v5->_isProxyElement = 1;
    parent = [elementCopy parent];
    objc_storeWeak(&v6->_parent, parent);

    bindingController = v6->_bindingController;
    v6->_bindingController = 0;

    binding = v6->_binding;
    v6->_binding = 0;

    dataDictionary = [elementCopy dataDictionary];
    dataDictionary = v6->_dataDictionary;
    v6->_dataDictionary = dataDictionary;

    elementID = v6->_elementID;
    v6->_elementID = 0;

    itmlID = v6->_itmlID;
    v6->_itmlID = 0;

    accessibilityText = [elementCopy accessibilityText];
    accessibilityText = v6->_accessibilityText;
    v6->_accessibilityText = accessibilityText;

    elementName = [elementCopy elementName];
    elementName = v6->_elementName;
    v6->_elementName = elementName;

    v6->_elementType = [elementCopy elementType];
    styleComposer = [elementCopy styleComposer];
    styleComposer = v6->_styleComposer;
    v6->_styleComposer = styleComposer;

    features = v6->_features;
    v6->_features = 0;

    v6->_impressionable = [elementCopy isImpressionable];
    impressionableAttributes = [elementCopy impressionableAttributes];
    impressionableAttributes = v6->_impressionableAttributes;
    v6->_impressionableAttributes = impressionableAttributes;

    attributes = [elementCopy attributes];
    attributes = v6->_attributes;
    v6->_attributes = attributes;

    appDocument = [(IKViewElement *)v6 appDocument];
    markImplicitlyUpdated = [appDocument markImplicitlyUpdated];

    if (markImplicitlyUpdated)
    {
      [(IKViewElement *)v6 _elevateToImplicitUpdateType:4];
      WeakRetained = objc_loadWeakRetained(&v6->_parent);
      v28 = [WeakRetained _elevateToImplicitUpdateType:3];

      if (v28)
      {
        v29 = objc_loadWeakRetained(&v6->_parent);
        parent2 = [v29 parent];

        if ([parent2 _elevateToImplicitUpdateType:1])
        {
          do
          {
            v30Parent = [parent2 parent];

            parent2 = v30Parent;
          }

          while (([v30Parent _elevateToImplicitUpdateType:1] & 1) != 0);
        }

        else
        {
          v30Parent = parent2;
        }
      }
    }

    v32 = MEMORY[0x277CBEB18];
    unfilteredChildren = [elementCopy unfilteredChildren];
    v34 = [v32 arrayWithCapacity:{objc_msgSend(unfilteredChildren, "count")}];

    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    unfilteredChildren2 = [elementCopy unfilteredChildren];
    v36 = [unfilteredChildren2 countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v52;
      do
      {
        for (i = 0; i != v37; ++i)
        {
          if (*v52 != v38)
          {
            objc_enumerationMutation(unfilteredChildren2);
          }

          v40 = [objc_alloc(objc_opt_class()) initWithOriginalElement:*(*(&v51 + 1) + 8 * i)];
          [v34 addObject:v40];
        }

        v37 = [unfilteredChildren2 countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v37);
    }

    v41 = [v34 count];
    if (v41)
    {
      v41 = [v34 copy];
    }

    unfilteredChildren = v6->_unfilteredChildren;
    v6->_unfilteredChildren = v41;

    v43 = [elementCopy[26] mutableCopy];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    }

    v46 = v45;

    [v46 addObject:v6];
    v47 = [v46 copy];
    v48 = elementCopy[26];
    elementCopy[26] = v47;
  }

  v49 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = IKViewElement;
  [(IKViewElement *)&v4 dealloc];
}

- (void)configureUpdatesWithElement:(id)element
{
  elementCopy = element;
  unfilteredChildren = [(IKViewElement *)self unfilteredChildren];
  unfilteredChildren2 = [elementCopy unfilteredChildren];

  if (![(IKViewElement *)self updateType]|| [(IKViewElement *)self updateType]== 3 || [(IKViewElement *)self updateType]== 4)
  {
    v29 = unfilteredChildren;
    v7 = [[IKDiffEvaluator alloc] initWithObjects:unfilteredChildren oldObjects:unfilteredChildren2 hashing:&__block_literal_global_27];
    v28 = unfilteredChildren2;
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(unfilteredChildren2, "count")}];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __45__IKViewElement_configureUpdatesWithElement___block_invoke_2;
    v33[3] = &unk_27979AE20;
    v9 = v8;
    v34 = v9;
    [(IKDiffEvaluator *)v7 enumerateCommonObjectsUsingBlock:v33];
    v10 = [IKChangeSet alloc];
    addedIndexes = [(IKDiffEvaluator *)v7 addedIndexes];
    removedIndexes = [(IKDiffEvaluator *)v7 removedIndexes];
    movedIndexesByNewIndex = [(IKDiffEvaluator *)v7 movedIndexesByNewIndex];
    v14 = [v9 count];
    if (v14)
    {
      v15 = [v9 copy];
    }

    else
    {
      v15 = 0;
    }

    v16 = &v34;
    v17 = [(IKChangeSet *)v10 initWithAddedIndexes:addedIndexes removedIndexes:removedIndexes movedIndexesByNewIndex:movedIndexesByNewIndex updatedIndexesByNewIndex:v15];
    unfilteredChildrenChangeSet = self->_unfilteredChildrenChangeSet;
    self->_unfilteredChildrenChangeSet = v17;

    if (v14)
    {
    }

    unfilteredChildren2 = v28;
    unfilteredChildren = v29;
  }

  else
  {
    v19 = MEMORY[0x277CBEAC0];
    v20 = [unfilteredChildren valueForKey:@"itmlID"];
    v21 = [v19 dictionaryWithObjects:unfilteredChildren forKeys:v20];

    v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(unfilteredChildren2, "count")}];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __45__IKViewElement_configureUpdatesWithElement___block_invoke_3;
    v30[3] = &unk_27979C0C8;
    v7 = v21;
    v31 = v7;
    v9 = v22;
    v32 = v9;
    [unfilteredChildren2 enumerateObjectsUsingBlock:v30];
    v23 = [IKChangeSet alloc];
    v24 = [v9 count];
    if (v24)
    {
      v25 = [v9 copy];
    }

    else
    {
      v25 = 0;
    }

    v16 = &v31;
    v26 = [(IKChangeSet *)v23 initWithAddedIndexes:0 removedIndexes:0 movedIndexesByNewIndex:0 updatedIndexesByNewIndex:v25];
    v27 = self->_unfilteredChildrenChangeSet;
    self->_unfilteredChildrenChangeSet = v26;

    if (v24)
    {
    }

    addedIndexes = v32;
  }
}

id __45__IKViewElement_configureUpdatesWithElement___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 attributes];
  v4 = [v3 objectForKeyedSubscript:@"itemID"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [v2 attributes];
    v6 = [v7 objectForKeyedSubscript:@"searchResultIdentifier"];
  }

  v8 = [v2 itmlID];
  if (v6)
  {
    v9 = @"itemID_";
    v10 = v6;
  }

  else
  {
    v9 = @"ITMLID_";
    v10 = v8;
  }

  v11 = [(__CFString *)v9 stringByAppendingString:v10];

  return v11;
}

void __45__IKViewElement_configureUpdatesWithElement___block_invoke_2(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v16 = a3;
  v9 = a5;
  v10 = [v16 itmlID];
  v11 = [v9 itmlID];
  if (![v10 isEqualToString:v11])
  {

    goto LABEL_5;
  }

  v12 = [v16 updateType];

  if (v12)
  {
LABEL_5:
    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
    [v13 setObject:v14 forKey:v15];

    [v16 configureUpdatesWithElement:v9];
  }
}

void __45__IKViewElement_configureUpdatesWithElement___block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v12 = v5;
  v7 = [v5 itmlID];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
    [v10 setObject:v9 forKeyedSubscript:v11];

    [v8 configureUpdatesWithElement:v12];
  }
}

- (id)applyUpdatesWithElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  if (elementCopy && elementCopy != self)
  {
    updateType = [(IKViewElement *)elementCopy updateType];
    if (updateType == 4 || (v7 = updateType, ([objc_opt_class() shouldParseChildDOMElements] & 1) == 0))
    {
      unfilteredChildrenChangeSet = [(IKViewElement *)elementCopy unfilteredChildrenChangeSet];
      updatedIndexesByNewIndex = [unfilteredChildrenChangeSet updatedIndexesByNewIndex];
      v21 = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = __41__IKViewElement_applyUpdatesWithElement___block_invoke;
      v24 = &unk_27979B518;
      v16 = elementCopy;
      v25 = v16;
      v26 = selfCopy;
      [updatedIndexesByNewIndex enumerateKeysAndObjectsUsingBlock:&v21];

      if (![(IKViewElement *)v16 didUpdateAutoHighlightIdentifier:v21]&& [(IKViewElement *)selfCopy didUpdateAutoHighlightIdentifier])
      {
        [(IKViewElement *)v16 setDidUpdateAutoHighlightIdentifier:1];
        autoHighlightIdentifier = [(IKViewElement *)selfCopy autoHighlightIdentifier];
        [(IKViewElement *)v16 setAutoHighlightIdentifier:autoHighlightIdentifier];
      }

      parent = [(IKViewElement *)selfCopy parent];

      if (!parent)
      {
        [(IKViewElement *)selfCopy setAppDocument:0];
      }

      v19 = v16;

      selfCopy = v19;
    }

    else if ((v7 & 0xFFFFFFFFFFFFFFFDLL) == 1)
    {
      v8 = [(IKViewElement *)selfCopy _updateSubtreeWithElement:elementCopy];
      dataDictionary = [(IKViewElement *)selfCopy dataDictionary];
      dataDictionary2 = [(IKViewElement *)elementCopy dataDictionary];

      if (dataDictionary != dataDictionary2)
      {
        dataDictionary3 = [(IKViewElement *)elementCopy dataDictionary];
        [(IKViewElement *)selfCopy setDataDictionary:dataDictionary3];

        if (v8 <= 1)
        {
          v8 = 1;
        }
      }

      if ([(IKViewElement *)elementCopy didUpdateAutoHighlightIdentifier])
      {
        [(IKViewElement *)selfCopy setDidUpdateAutoHighlightIdentifier:1];
        autoHighlightIdentifier2 = [(IKViewElement *)elementCopy autoHighlightIdentifier];
        [(IKViewElement *)selfCopy setAutoHighlightIdentifier:autoHighlightIdentifier2];

        if (v8 <= 1)
        {
          v8 = 1;
        }
      }

      if (v8 >= 2)
      {
        style = selfCopy->_style;
        selfCopy->_style = 0;
      }

      [(IKViewElement *)selfCopy setUpdateType:v8];
    }
  }

  return selfCopy;
}

void __41__IKViewElement_applyUpdatesWithElement___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 unfilteredChildren];
  v9 = [v7 integerValue];

  v13 = [v8 objectAtIndexedSubscript:v9];

  v10 = *(*(a1 + 40) + 8);
  v11 = [v6 integerValue];

  v12 = [v10 objectAtIndexedSubscript:v11];
  [v12 applyUpdatesWithElement:v13];
}

- (void)updateWithActualElement:(id)element
{
  elementCopy = element;
  self->_isProxyElement = 0;
  bindingController = [elementCopy bindingController];
  bindingController = self->_bindingController;
  self->_bindingController = bindingController;

  elementID = [elementCopy elementID];
  elementID = self->_elementID;
  self->_elementID = elementID;

  itmlID = [elementCopy itmlID];
  itmlID = self->_itmlID;
  self->_itmlID = itmlID;

  features = self->_features;
  self->_features = 0;

  unfilteredChildren = [(IKViewElement *)self unfilteredChildren];
  v12 = [unfilteredChildren count];

  if (v12)
  {
    v13 = 0;
    do
    {
      unfilteredChildren2 = [(IKViewElement *)self unfilteredChildren];
      v15 = [unfilteredChildren2 objectAtIndexedSubscript:v13];
      unfilteredChildren3 = [elementCopy unfilteredChildren];
      v17 = [unfilteredChildren3 objectAtIndexedSubscript:v13];
      [v15 updateWithActualElement:v17];

      ++v13;
      unfilteredChildren4 = [(IKViewElement *)self unfilteredChildren];
      v19 = [unfilteredChildren4 count];
    }

    while (v13 < v19);
  }
}

- (NSString)debugDescription
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"<%@", self->_elementName];
  v4 = v3;
  if (self->_disabled)
  {
    [v3 appendString:@" disabled=true"];
  }

  if (self->_updateType)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v4 appendFormat:@" updateType=%@", v5];
  }

  style = [(IKViewElement *)self style];
  v7 = [style debugDescription];

  if ([v7 length])
  {
    [v4 appendFormat:@" style=%@", v7];
  }

  attributes = [(IKViewElement *)self attributes];
  v9 = [attributes count];

  if (v9)
  {
    attributes2 = [(IKViewElement *)self attributes];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __33__IKViewElement_debugDescription__block_invoke;
    v24[3] = &unk_27979B0C0;
    v25 = v4;
    [attributes2 enumerateKeysAndObjectsUsingBlock:v24];
  }

  [v4 appendString:@">"];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_unfilteredChildren;
  v12 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v20 + 1) + 8 * i) debugDescription];
        [v4 appendString:v16];
      }

      v13 = [(NSArray *)v11 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v13);
  }

  [v4 appendFormat:@"</%@>", self->_elementName];
  v17 = [v4 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (IKViewElementStyle)style
{
  style = self->_style;
  if (!style)
  {
    styleComposer = [(IKViewElement *)self styleComposer];
    appDocument = [(IKViewElement *)self appDocument];
    v6 = [styleComposer composedStyleWithMediaQueryEvaluator:appDocument];
    v7 = [v6 copy];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = objc_alloc_init(IKViewElementStyle);
    }

    v9 = self->_style;
    self->_style = v8;

    style = self->_style;
  }

  return style;
}

- (void)setAppDocument:(id)document
{
  v15 = *MEMORY[0x277D85DE8];
  objc_storeWeak(&self->_appDocument, document);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  unfilteredChildren = [(IKViewElement *)self unfilteredChildren];
  v5 = [unfilteredChildren countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(unfilteredChildren);
        }

        [*(*(&v10 + 1) + 8 * v8++) setAppDocument:0];
      }

      while (v6 != v8);
      v6 = [unfilteredChildren countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (IKAppDocument)appDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_appDocument);

  if (!WeakRetained)
  {
    parent = [(IKViewElement *)self parent];
    appDocument = [parent appDocument];

    objc_storeWeak(&self->_appDocument, appDocument);
  }

  v6 = objc_loadWeakRetained(&self->_appDocument);

  return v6;
}

- (id)objectForKeyedSubscript:(id)subscript
{
  subscriptCopy = subscript;
  metadataDict = [(IKViewElement *)self metadataDict];
  v6 = [metadataDict objectForKey:subscriptCopy];

  return v6;
}

- (void)setObject:(id)object forKeyedSubscript:(id)subscript
{
  objectCopy = object;
  subscriptCopy = subscript;
  metadataDict = [(IKViewElement *)self metadataDict];

  if (objectCopy && !metadataDict)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    [(IKViewElement *)self setMetadataDict:dictionary];

LABEL_5:
    metadataDict2 = [(IKViewElement *)self metadataDict];
    [metadataDict2 setObject:objectCopy forKey:subscriptCopy];

    goto LABEL_6;
  }

  if (objectCopy)
  {
    goto LABEL_5;
  }

  metadataDict3 = [(IKViewElement *)self metadataDict];
  [metadataDict3 removeObjectForKey:subscriptCopy];

  metadataDict4 = [(IKViewElement *)self metadataDict];
  v12 = [metadataDict4 count];

  if (!v12)
  {
    [(IKViewElement *)self setMetadataDict:0];
  }

LABEL_6:
}

- (void)resetProperty:(unint64_t)property
{
  if (property == 2)
  {
    [(IKViewElement *)self setDidUpdateAutoHighlightIdentifier:0];

    [(IKViewElement *)self setAutoHighlightIdentifier:0];
  }

  else if (property == 1)
  {

    [(IKViewElement *)self resetUpdates];
  }
}

- (void)dispatchEvent:(id)event eventAttribute:(id)attribute canBubble:(BOOL)bubble isCancelable:(BOOL)cancelable extraInfo:(id)info completionBlock:(id)block
{
  eventCopy = event;
  attributeCopy = attribute;
  infoCopy = info;
  blockCopy = block;
  if (([eventCopy isEqualToString:@"play"] & 1) == 0 && (objc_msgSend(eventCopy, "isEqualToString:", @"select") & 1) == 0 && !objc_msgSend(eventCopy, "isEqualToString:", @"holdselect"))
  {
    v23 = 0;
LABEL_11:
    appDocument = [(IKViewElement *)self appDocument];
    appContext = [appDocument appContext];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __95__IKViewElement_dispatchEvent_eventAttribute_canBubble_isCancelable_extraInfo_completionBlock___block_invoke;
    v27[3] = &unk_27979C168;
    v28 = appDocument;
    selfCopy = self;
    v30 = eventCopy;
    v33 = blockCopy;
    v31 = attributeCopy;
    bubbleCopy = bubble;
    cancelableCopy = cancelable;
    v32 = infoCopy;
    v36 = v23;
    v26 = appDocument;
    [appContext evaluate:v27 completionBlock:0];

    goto LABEL_12;
  }

  activeSingularEvents = [(IKViewElement *)self activeSingularEvents];
  v19 = [activeSingularEvents containsObject:eventCopy];

  if (!v19)
  {
    activeSingularEvents2 = [(IKViewElement *)self activeSingularEvents];

    if (!activeSingularEvents2)
    {
      v21 = [MEMORY[0x277CBEB58] setWithCapacity:1];
      [(IKViewElement *)self setActiveSingularEvents:v21];
    }

    activeSingularEvents3 = [(IKViewElement *)self activeSingularEvents];
    [activeSingularEvents3 addObject:eventCopy];

    v23 = 1;
    goto LABEL_11;
  }

  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, 0, 0);
  }

LABEL_12:
}

void __95__IKViewElement_dispatchEvent_eventAttribute_canBubble_isCancelable_extraInfo_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) retrieveJSElementForViewElement:*(a1 + 40) jsContext:v3];
  if (v4)
  {
    v5 = [IKDOMEvent alloc];
    v6 = [*(a1 + 32) appContext];
    v7 = [(IKDOMEvent *)v5 initWithAppContext:v6 type:*(a1 + 48) xmlAttribute:*(a1 + 56) canBubble:*(a1 + 80) isCancelable:*(a1 + 81)];

    [(IKDOMEvent *)v7 setTarget:v4];
    v8 = *(a1 + 64);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [MEMORY[0x277CD4658] valueWithObject:v7 inContext:v3];
      v10 = *(a1 + 64);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __95__IKViewElement_dispatchEvent_eventAttribute_canBubble_isCancelable_extraInfo_completionBlock___block_invoke_2;
      v30[3] = &unk_27979C0F0;
      v31 = v9;
      v11 = v9;
      [v10 enumerateKeysAndObjectsUsingBlock:v30];
    }

    v12 = +[IKDOMEventDispatcher sharedInstance];
    v13 = [v12 dispatchEvent:v7];

    v14 = [(IKDOMEvent *)v7 defaultPrevented];
    v15 = [*(a1 + 32) appContext];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __95__IKViewElement_dispatchEvent_eventAttribute_canBubble_isCancelable_extraInfo_completionBlock___block_invoke_3;
    v22[3] = &unk_27979C140;
    v27 = *(a1 + 82);
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v23 = v16;
    v24 = v17;
    v25 = v18;
    v26 = *(a1 + 72);
    v28 = v13;
    v29 = v14;
    [v15 addPostEvaluateBlock:v22];

    goto LABEL_9;
  }

  v19 = ITMLKitGetLogObject(0);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    __95__IKViewElement_dispatchEvent_eventAttribute_canBubble_isCancelable_extraInfo_completionBlock___block_invoke_cold_1(a1, v19);
  }

  v20 = *(a1 + 72);
  if (v20)
  {
    v21 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __95__IKViewElement_dispatchEvent_eventAttribute_canBubble_isCancelable_extraInfo_completionBlock___block_invoke_134;
    block[3] = &unk_279799A28;
    v33 = v20;
    dispatch_async(v21, block);

    v7 = v33;
LABEL_9:
  }
}

void __95__IKViewElement_dispatchEvent_eventAttribute_canBubble_isCancelable_extraInfo_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 64) == 1)
  {
    v4 = [*(a1 + 32) appContext];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __95__IKViewElement_dispatchEvent_eventAttribute_canBubble_isCancelable_extraInfo_completionBlock___block_invoke_4;
    v11[3] = &unk_279799260;
    v5 = *(a1 + 48);
    v11[4] = *(a1 + 40);
    v12 = v5;
    [v4 evaluateDelegateBlockSync:v11];
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    v7 = dispatch_get_global_queue(0, 0);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __95__IKViewElement_dispatchEvent_eventAttribute_canBubble_isCancelable_extraInfo_completionBlock___block_invoke_5;
    v8[3] = &unk_27979C118;
    v9 = v6;
    v10 = *(a1 + 65);
    dispatch_async(v7, v8);
  }
}

void __95__IKViewElement_dispatchEvent_eventAttribute_canBubble_isCancelable_extraInfo_completionBlock___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) activeSingularEvents];
  [v2 removeObject:*(a1 + 40)];
}

- (BOOL)isProxyElement
{
  if (self->_isProxyElement)
  {
    return 1;
  }

  parent = [(IKViewElement *)self parent];
  isProxyElement = [parent isProxyElement];

  return isProxyElement;
}

- (BOOL)isHidden
{
  style = [(IKViewElement *)self style];
  hidden = [style hidden];

  return hidden;
}

- (NSArray)children
{
  if (!+[IKViewElementStyle isHiddenStyleRegistered])
  {
    unfilteredChildren = self->_unfilteredChildren;
    p_unfilteredChildren = &self->_unfilteredChildren;
    v8 = [(NSArray *)unfilteredChildren count];
    if (!v8)
    {
      goto LABEL_10;
    }

    p_visibleChildren = p_unfilteredChildren;
    goto LABEL_9;
  }

  p_visibleChildren = &self->_visibleChildren;
  if (!self->_visibleChildren && [(NSArray *)self->_unfilteredChildren count])
  {
    v4 = self->_unfilteredChildren;
    v5 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_145];
    v6 = [(NSArray *)v4 filteredArrayUsingPredicate:v5];
    visibleChildren = self->_visibleChildren;
    self->_visibleChildren = v6;
  }

  v8 = [(NSArray *)*p_visibleChildren count];
  if (v8)
  {
LABEL_9:
    v8 = *p_visibleChildren;
  }

LABEL_10:

  return v8;
}

- (id)childElementWithType:(unint64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  children = [(IKViewElement *)self children];
  v5 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(children);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 elementType] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)childElementsWithType:(unint64_t)type
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  children = [(IKViewElement *)self children];
  v5 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    array = 0;
    v8 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(children);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        if ([v10 elementType] == type)
        {
          if (!array)
          {
            array = [MEMORY[0x277CBEB18] array];
          }

          [array addObject:v10];
        }
      }

      v6 = [children countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    array = 0;
  }

  if ([array count])
  {
    v11 = array;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)childTextElementWithStyle:(unint64_t)style
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  children = [(IKViewElement *)self children];
  v5 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(children);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 elementType] == 138 && objc_msgSend(v9, "textStyle") == style)
        {
          v10 = v9;
          goto LABEL_12;
        }
      }

      v6 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)childImageElementWithType:(unint64_t)type
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  children = [(IKViewElement *)self children];
  v5 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(children);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 elementType] == 49 && objc_msgSend(v9, "imageType") == type)
        {
          v10 = v9;
          goto LABEL_12;
        }
      }

      v6 = [children countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)disperseUpdateType:(unint64_t)type
{
  v16 = *MEMORY[0x277D85DE8];
  if ([(IKViewElement *)self updateType]< type)
  {
    [(IKViewElement *)self setUpdateType:type];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = self->_unfilteredChildren;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) disperseUpdateType:{type, v11}];
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)resetUpdates
{
  v15 = *MEMORY[0x277D85DE8];
  if ([(IKViewElement *)self updateType])
  {
    unfilteredChildrenChangeSet = self->_unfilteredChildrenChangeSet;
    self->_updateType = 0;
    self->_unfilteredChildrenChangeSet = 0;

    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v4 = self->_unfilteredChildren;
    v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        v8 = 0;
        do
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v10 + 1) + 8 * v8++) resetUpdates];
        }

        while (v6 != v8);
        v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (unint64_t)evaluateElementUpdateType:(id)type
{
  typeCopy = type;
  if ([typeCopy isUpdated])
  {
    isSubtreeUpdated = 4;
  }

  else if ([typeCopy isChildrenUpdated])
  {
    isSubtreeUpdated = 3;
  }

  else
  {
    isSubtreeUpdated = [typeCopy isSubtreeUpdated];
  }

  return isSubtreeUpdated;
}

- (void)performImplicitUpdates:(id)updates
{
  updatesCopy = updates;
  appDocument = [(IKViewElement *)self appDocument];
  [appDocument pushTrackingImplictUpdates];

  updatesCopy[2](updatesCopy);
  appDocument2 = [(IKViewElement *)self appDocument];
  [appDocument2 popTrackingImplictUpdates];
}

- (void)resetImplicitUpdates
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(IKViewElement *)self implicitUpdateType])
  {
    self->_implicitUpdateType = 0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = self->_unfilteredChildren;
    v4 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        v7 = 0;
        do
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v9 + 1) + 8 * v7++) resetImplicitUpdates];
        }

        while (v5 != v7);
        v5 = [(NSArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)appDocumentDidMarkStylesDirty
{
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  updateType = [(IKViewElement *)self updateType];
  v4 = 2;
  if (updateType > 2)
  {
    v4 = updateType;
  }

  v35 = v4;
  styleComposer = [(IKViewElement *)self styleComposer];
  requiresMediaQueryEvaluation = [styleComposer requiresMediaQueryEvaluation];

  if (requiresMediaQueryEvaluation)
  {
    if (+[IKViewElementStyle isHiddenStyleRegistered])
    {
      isHidden = [(IKViewElement *)self isHidden];
      styleComposer2 = [(IKViewElement *)self styleComposer];
      [styleComposer2 setNeedsRecomposition];

      if (isHidden != [(IKViewElement *)self isHidden])
      {
        v9 = v33[3];
        if (v9 <= 4)
        {
          v9 = 4;
        }

        v33[3] = v9;
      }
    }

    else
    {
      styleComposer3 = [(IKViewElement *)self styleComposer];
      [styleComposer3 setNeedsRecomposition];
    }
  }

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  unfilteredChildren = [(IKViewElement *)self unfilteredChildren];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __46__IKViewElement_appDocumentDidMarkStylesDirty__block_invoke;
  v29[3] = &unk_27979C190;
  v29[4] = self;
  v31 = &v32;
  v13 = indexSet;
  v30 = v13;
  [unfilteredChildren enumerateObjectsUsingBlock:v29];

  aliases = [(IKViewElement *)self aliases];
  [aliases enumerateObjectsUsingBlock:&__block_literal_global_148];

  v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v13, "count")}];
  for (i = [v13 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v13, "indexGreaterThanIndex:", i))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithInteger:i];
    v18 = [MEMORY[0x277CCABB0] numberWithInteger:i];
    [v15 setObject:v17 forKeyedSubscript:v18];
  }

  v19 = [IKChangeSet alloc];
  v20 = [v15 count];
  if (v20)
  {
    v21 = [v15 copy];
  }

  else
  {
    v21 = 0;
  }

  v22 = [(IKChangeSet *)v19 initWithAddedIndexes:0 removedIndexes:0 movedIndexesByNewIndex:0 updatedIndexesByNewIndex:v21];
  if (v20)
  {
  }

  unfilteredChildrenChangeSet = self->_unfilteredChildrenChangeSet;
  if (unfilteredChildrenChangeSet)
  {
    v24 = [(IKChangeSet *)unfilteredChildrenChangeSet changeSetByConcatenatingChangeSet:v22];
  }

  else
  {
    v24 = v22;
  }

  v25 = self->_unfilteredChildrenChangeSet;
  self->_unfilteredChildrenChangeSet = v24;

  v26 = v33[3];
  if (v26 >= 3)
  {
    visibleChildren = self->_visibleChildren;
    self->_visibleChildren = 0;

    v26 = v33[3];
  }

  if (v26 >= 2)
  {
    style = self->_style;
    self->_style = 0;

    v26 = v33[3];
  }

  [(IKViewElement *)self setUpdateType:v26];

  _Block_object_dispose(&v32, 8);
}

void __46__IKViewElement_appDocumentDidMarkStylesDirty__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v13 = a2;
  v5 = [*(a1 + 32) unfilteredChildrenChangeSet];
  v6 = [v5 addedIndexes];
  v7 = [v6 containsIndex:a3];

  if ((v7 & 1) == 0)
  {
    if (+[IKViewElementStyle isHiddenStyleRegistered])
    {
      v8 = [v13 isHidden];
      [v13 appDocumentDidMarkStylesDirty];
      if (v8 != [v13 isHidden])
      {
        v9 = *(*(a1 + 48) + 8);
        v10 = *(v9 + 24);
        if (v10 <= 3)
        {
          v10 = 3;
        }

        *(v9 + 24) = v10;
      }
    }

    else
    {
      [v13 appDocumentDidMarkStylesDirty];
    }

    if ([v13 updateType])
    {
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 24);
      if (v12 <= 1)
      {
        v12 = 1;
      }

      *(v11 + 24) = v12;
      [*(a1 + 40) addIndex:a3];
    }
  }
}

- (unint64_t)_updateSubtreeWithElement:(id)element
{
  v121 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  updateType = [elementCopy updateType];
  v92 = elementCopy;
  unfilteredChildrenChangeSet = [elementCopy unfilteredChildrenChangeSet];
  unfilteredChildren = [(IKViewElement *)self unfilteredChildren];
  v8 = [unfilteredChildren mutableCopy];
  v9 = v8;
  if (v8)
  {
    array = v8;
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
  }

  v97 = array;
  v87 = updateType;

  indexSet = [MEMORY[0x277CCAB58] indexSet];
  removedIndexes = [unfilteredChildrenChangeSet removedIndexes];
  if (removedIndexes)
  {
    removedIndexes2 = [unfilteredChildrenChangeSet removedIndexes];
    firstIndex = [removedIndexes2 firstIndex];

    while (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v97 objectAtIndex:{firstIndex, v87}];
      if ([(IKViewElement *)self canProxyUnloadedChildElement:v15])
      {
        [indexSet addIndex:firstIndex];
      }

      [v15 setAppDocument:0];
      [v15 setParent:0];
      removedIndexes3 = [unfilteredChildrenChangeSet removedIndexes];
      firstIndex = [removedIndexes3 indexGreaterThanIndex:firstIndex];
    }
  }

  else
  {
  }

  removedIndexes4 = [unfilteredChildrenChangeSet removedIndexes];
  v18 = [removedIndexes4 mutableCopy];
  v19 = v18;
  selfCopy = self;
  if (v18)
  {
    indexSet2 = v18;
  }

  else
  {
    indexSet2 = [MEMORY[0x277CCAB58] indexSet];
  }

  v21 = indexSet2;

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  movedIndexesByNewIndex = [unfilteredChildrenChangeSet movedIndexesByNewIndex];
  allValues = [movedIndexesByNewIndex allValues];

  v24 = [allValues countByEnumeratingWithState:&v114 objects:v120 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v115;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v115 != v26)
        {
          objc_enumerationMutation(allValues);
        }

        [v21 addIndex:{objc_msgSend(*(*(&v114 + 1) + 8 * i), "integerValue")}];
      }

      v25 = [allValues countByEnumeratingWithState:&v114 objects:v120 count:16];
    }

    while (v25);
  }

  [v97 removeObjectsAtIndexes:v21];
  indexSet3 = [MEMORY[0x277CCAB58] indexSet];
  addedIndexes = [unfilteredChildrenChangeSet addedIndexes];
  v29 = addedIndexes;
  if (addedIndexes)
  {
    indexSet4 = addedIndexes;
  }

  else
  {
    indexSet4 = [MEMORY[0x277CCAA78] indexSet];
  }

  v96 = indexSet4;

  indexSet5 = [MEMORY[0x277CCAB58] indexSet];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  movedIndexesByNewIndex2 = [unfilteredChildrenChangeSet movedIndexesByNewIndex];
  allKeys = [movedIndexesByNewIndex2 allKeys];

  v34 = [allKeys countByEnumeratingWithState:&v110 objects:v119 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v111;
    do
    {
      for (j = 0; j != v35; ++j)
      {
        if (*v111 != v36)
        {
          objc_enumerationMutation(allKeys);
        }

        [indexSet5 addIndex:{objc_msgSend(*(*(&v110 + 1) + 8 * j), "integerValue")}];
      }

      v35 = [allKeys countByEnumeratingWithState:&v110 objects:v119 count:16];
    }

    while (v35);
  }

  v94 = unfilteredChildrenChangeSet;

  firstIndex2 = [v96 firstIndex];
  firstIndex3 = [indexSet5 firstIndex];
  v40 = firstIndex3 != 0x7FFFFFFFFFFFFFFFLL;
  v41 = firstIndex2 != 0x7FFFFFFFFFFFFFFFLL;
  v42 = selfCopy;
  while (firstIndex2 != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_33:
    if (v41 && (v40 & 1) != 0)
    {
      if (firstIndex2 <= firstIndex3)
      {
        goto LABEL_36;
      }
    }

    else if (v41 & ~v40)
    {
LABEL_36:
      unfilteredChildren2 = [v92 unfilteredChildren];
      v44 = [unfilteredChildren2 objectAtIndexedSubscript:firstIndex2];

      v45 = [(IKViewElement *)selfCopy proxyElementForLoadedChildElement:v44];
      v46 = v45;
      if (v45)
      {
        [v45 updateWithActualElement:v44];
        v47 = v46;

        [indexSet3 addIndex:firstIndex2];
        v44 = v47;
      }

      else
      {
        [(IKViewElement *)selfCopy adoptElement:v44];
      }

      [v97 insertObject:v44 atIndex:firstIndex2];
      firstIndex2 = [v96 indexGreaterThanIndex:firstIndex2];

      goto LABEL_42;
    }

    movedIndexesByNewIndex3 = [v94 movedIndexesByNewIndex];
    v49 = [MEMORY[0x277CCABB0] numberWithInteger:firstIndex3];
    v44 = [movedIndexesByNewIndex3 objectForKeyedSubscript:v49];

    v50 = -[NSArray objectAtIndexedSubscript:](selfCopy->_unfilteredChildren, "objectAtIndexedSubscript:", [v44 integerValue]);
    [v97 insertObject:v50 atIndex:firstIndex3];

    firstIndex3 = [indexSet5 indexGreaterThanIndex:firstIndex3];
LABEL_42:

    v40 = firstIndex3 != 0x7FFFFFFFFFFFFFFFLL;
    v41 = firstIndex2 != 0x7FFFFFFFFFFFFFFFLL;
  }

  if (firstIndex3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_33;
  }

  v51 = 0x277CBE000uLL;
  v52 = v88;
  v89 = indexSet;
  if (v88 == 1)
  {
    indexSet6 = [MEMORY[0x277CCAB58] indexSet];
    v106 = 0u;
    v107 = 0u;
    v108 = 0u;
    v109 = 0u;
    updatedIndexesByNewIndex = [v94 updatedIndexesByNewIndex];
    allValues2 = [updatedIndexesByNewIndex allValues];

    v56 = [allValues2 countByEnumeratingWithState:&v106 objects:v118 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v107;
      do
      {
        for (k = 0; k != v57; ++k)
        {
          if (*v107 != v58)
          {
            objc_enumerationMutation(allValues2);
          }

          [indexSet6 addIndex:{objc_msgSend(*(*(&v106 + 1) + 8 * k), "integerValue")}];
        }

        v57 = [allValues2 countByEnumeratingWithState:&v106 objects:v118 count:16];
      }

      while (v57);
    }

    v60 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(indexSet6, "count")}];
    firstIndex4 = [indexSet6 firstIndex];
    if (firstIndex4 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v62 = firstIndex4;
      v63 = 0;
      do
      {
        v64 = v63 + 1;
        v65 = [MEMORY[0x277CCABB0] numberWithInteger:?];
        v66 = [MEMORY[0x277CCABB0] numberWithInteger:v62];
        [v60 setObject:v65 forKeyedSubscript:v66];

        v62 = [indexSet6 indexGreaterThanIndex:v62];
        v63 = v64;
      }

      while (v62 != 0x7FFFFFFFFFFFFFFFLL);
    }

    v67 = [v60 copy];

    indexSet = v89;
    v42 = selfCopy;
    v52 = 1;
    v51 = 0x277CBE000;
  }

  else
  {
    v67 = 0;
  }

  dictionary = [*(v51 + 2872) dictionary];
  updatedIndexesByNewIndex2 = [v94 updatedIndexesByNewIndex];
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __43__IKViewElement__updateSubtreeWithElement___block_invoke;
  v99[3] = &unk_27979C1D8;
  v70 = v92;
  v100 = v70;
  v105 = v52;
  v93 = v67;
  v101 = v93;
  v102 = v42;
  v71 = dictionary;
  v103 = v71;
  v72 = v97;
  v104 = v72;
  [updatedIndexesByNewIndex2 enumerateKeysAndObjectsUsingBlock:v99];

  v73 = [[IKChangeSet alloc] initWithAddedIndexes:indexSet3 removedIndexes:indexSet movedIndexesByNewIndex:0 updatedIndexesByNewIndex:v71];
  v74 = [v94 changeSetBySubtractingChangeSet:v73];

  addedIndexes2 = [v74 addedIndexes];
  if ([addedIndexes2 count])
  {
    goto LABEL_60;
  }

  removedIndexes5 = [v74 removedIndexes];
  if ([removedIndexes5 count])
  {

LABEL_60:
    v77 = 1;
    v78 = 3;
    goto LABEL_61;
  }

  v98 = v70;
  movedIndexesByNewIndex4 = [v74 movedIndexesByNewIndex];
  v95 = [movedIndexesByNewIndex4 count];

  if (v95)
  {
    v77 = 1;
    v78 = 3;
  }

  else
  {
    updatedIndexesByNewIndex3 = [v74 updatedIndexesByNewIndex];
    v86 = [updatedIndexesByNewIndex3 count];

    v77 = v86 != 0;
    v78 = v86 != 0;
  }

  v70 = v98;
LABEL_61:
  v79 = [v72 count];
  if (v79)
  {
    v79 = [v72 copy];
  }

  unfilteredChildren = v42->_unfilteredChildren;
  v42->_unfilteredChildren = v79;

  visibleChildren = v42->_visibleChildren;
  v42->_visibleChildren = 0;

  if (v77)
  {
    objc_storeStrong(&v42->_unfilteredChildrenChangeSet, v74);
  }

  v82 = *MEMORY[0x277D85DE8];
  return v78;
}

void __43__IKViewElement__updateSubtreeWithElement___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) unfilteredChildren];
  if (*(a1 + 72) == 1)
  {
    v7 = [*(a1 + 40) objectForKeyedSubscript:v5];
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v7, "integerValue")}];
  }

  else
  {
    v8 = [v6 objectAtIndexedSubscript:{objc_msgSend(v11, "integerValue")}];
  }

  v9 = [*(*(a1 + 48) + 8) objectAtIndexedSubscript:{objc_msgSend(v5, "integerValue")}];
  v10 = [v9 applyUpdatesWithElement:v8];
  if ([v10 updateType])
  {
    [*(a1 + 48) adoptElement:v10];
  }

  else
  {
    [*(a1 + 56) setObject:v5 forKeyedSubscript:v11];
  }

  [*(a1 + 64) replaceObjectAtIndex:objc_msgSend(v11 withObject:{"integerValue"), v10}];
}

- (BOOL)_elevateToImplicitUpdateType:(unint64_t)type
{
  implicitUpdateType = self->_implicitUpdateType;
  if (implicitUpdateType < type)
  {
    self->_implicitUpdateType = type;
  }

  return implicitUpdateType < type;
}

+ (id)DOMEventTypeNameMap
{
  if (DOMEventTypeNameMap_onceToken != -1)
  {
    +[IKViewElement DOMEventTypeNameMap];
  }

  v3 = DOMEventTypeNameMap_eventTypeNameMap;

  return v3;
}

void __36__IKViewElement_DOMEventTypeNameMap__block_invoke()
{
  v4[21] = *MEMORY[0x277D85DE8];
  v3[0] = &unk_2866F1020;
  v3[1] = &unk_2866F1038;
  v4[0] = @"play";
  v4[1] = @"select";
  v3[2] = &unk_2866F1050;
  v3[3] = &unk_2866F1068;
  v4[2] = @"holdselect";
  v4[3] = @"highlight";
  v3[4] = &unk_2866F1080;
  v3[5] = &unk_2866F1098;
  v4[4] = @"contextmenu";
  v4[5] = @"action";
  v3[6] = &unk_2866F10B0;
  v3[7] = &unk_2866F10C8;
  v4[6] = @"load";
  v4[7] = @"unload";
  v3[8] = &unk_2866F10E0;
  v3[9] = &unk_2866F10F8;
  v4[8] = @"appear";
  v4[9] = @"disappear";
  v3[10] = &unk_2866F1110;
  v3[11] = &unk_2866F1128;
  v4[10] = @"update";
  v4[11] = @"didupdate";
  v3[12] = &unk_2866F1140;
  v3[13] = &unk_2866F1158;
  v4[12] = @"dataavailable";
  v4[13] = @"submit";
  v3[14] = &unk_2866F1170;
  v3[15] = &unk_2866F1188;
  v4[14] = @"change";
  v4[15] = @"needsmore";
  v3[16] = &unk_2866F11A0;
  v3[17] = &unk_2866F11B8;
  v4[16] = @"needscontent";
  v4[17] = @"playersessionbegin";
  v3[18] = &unk_2866F11D0;
  v3[19] = &unk_2866F11E8;
  v4[18] = @"playersessionend";
  v4[19] = @"playerstatechange";
  v3[20] = &unk_2866F1200;
  v4[20] = @"finish";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:21];
  v1 = DOMEventTypeNameMap_eventTypeNameMap;
  DOMEventTypeNameMap_eventTypeNameMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

+ (id)_eventXMLNameMap
{
  if (_eventXMLNameMap_onceToken != -1)
  {
    +[IKViewElement _eventXMLNameMap];
  }

  v3 = _eventXMLNameMap_eventXMLNameMap;

  return v3;
}

void __33__IKViewElement__eventXMLNameMap__block_invoke()
{
  v4[21] = *MEMORY[0x277D85DE8];
  v3[0] = @"play";
  v3[1] = @"select";
  v4[0] = @"onplay";
  v4[1] = @"onselect";
  v3[2] = @"holdselect";
  v3[3] = @"highlight";
  v4[2] = @"onholdselect";
  v4[3] = @"onhighlight";
  v3[4] = @"contextmenu";
  v3[5] = @"action";
  v4[4] = @"oncontextmenu";
  v4[5] = @"onaction";
  v3[6] = @"load";
  v3[7] = @"unload";
  v4[6] = @"onload";
  v4[7] = @"onunload";
  v3[8] = @"appear";
  v3[9] = @"disappear";
  v4[8] = @"onappear";
  v4[9] = @"ondisappear";
  v3[10] = @"update";
  v3[11] = @"didupdate";
  v4[10] = @"onupdate";
  v4[11] = @"ondidupdate";
  v3[12] = @"dataavailable";
  v3[13] = @"submit";
  v4[12] = @"ondataavailable";
  v4[13] = @"onsubmit";
  v3[14] = @"change";
  v3[15] = @"needsmore";
  v4[14] = @"onchange";
  v4[15] = @"onneedsmore";
  v3[16] = @"needscontent";
  v3[17] = @"playersessionbegin";
  v4[16] = @"onneedscontent";
  v4[17] = @"onplayersessionbegin";
  v3[18] = @"playersessionend";
  v3[19] = @"playerstatechange";
  v4[18] = @"onplayersessionend";
  v4[19] = @"onplayerstatechange";
  v3[20] = @"finish";
  v4[20] = @"onfinish";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v4 forKeys:v3 count:21];
  v1 = _eventXMLNameMap_eventXMLNameMap;
  _eventXMLNameMap_eventXMLNameMap = v0;

  v2 = *MEMORY[0x277D85DE8];
}

- (IKViewElement)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end
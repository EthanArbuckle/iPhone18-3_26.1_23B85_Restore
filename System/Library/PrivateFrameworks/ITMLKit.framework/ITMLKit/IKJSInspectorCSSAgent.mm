@interface IKJSInspectorCSSAgent
+ (void)_evaluator:(id)_evaluator updateMediaStylesWithActiveStyles:(id)styles inActiveStyles:(id)activeStyles defaultStyles:(id)defaultStyles forRule:(id)rule withMatch:(id)match;
- (IKJSInspectorCSSAgent)initWithInspectorController:(id)controller;
- (IKJSInspectorController)controller;
- (id)_getMatchedStyleRulesForNode:(id)node;
- (id)_getMatchedTemplateStylesForNode:(id)node;
- (id)_styleNodeForStylesheetId:(id)id;
- (id)_stylesheetBodyForStylesheetId:(id)id;
- (void)disableWithErrorCallback:(id)callback successCallback:(id)successCallback;
- (void)getAllStyleSheetsWithErrorCallback:(id)callback successCallback:(id)successCallback;
- (void)getComputedStyleForNodeWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id;
- (void)getMatchedStylesForNodeWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id includePseudo:(BOOL *)pseudo includeInherited:(BOOL *)inherited;
- (void)getStyleSheetTextWithErrorCallback:(id)callback successCallback:(id)successCallback styleSheetId:(id)id;
- (void)getStyleSheetWithErrorCallback:(id)callback successCallback:(id)successCallback styleSheetId:(id)id;
- (void)getSupportedCSSPropertiesWithErrorCallback:(id)callback successCallback:(id)successCallback;
- (void)mediaQueryResultDidChange;
- (void)resetStylesFromNode:(id)node;
- (void)setStyleSheetTextWithErrorCallback:(id)callback successCallback:(id)successCallback styleSheetId:(id)id text:(id)text;
- (void)setStyleTextWithErrorCallback:(id)callback successCallback:(id)successCallback styleId:(id)id text:(id)text;
- (void)updateStylesheets;
@end

@implementation IKJSInspectorCSSAgent

- (IKJSInspectorCSSAgent)initWithInspectorController:(id)controller
{
  controllerCopy = controller;
  v11.receiver = self;
  v11.super_class = IKJSInspectorCSSAgent;
  v5 = [(IKJSInspectorCSSAgent *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    inlineStyleMap = v5->_inlineStyleMap;
    v5->_inlineStyleMap = v6;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    authorStylesheets = v5->_authorStylesheets;
    v5->_authorStylesheets = strongToStrongObjectsMapTable;

    objc_storeWeak(&v5->_controller, controllerCopy);
  }

  return v5;
}

- (void)updateStylesheets
{
  v48 = *MEMORY[0x277D85DE8];
  date = [MEMORY[0x277CBEAA8] date];
  controller = [(IKJSInspectorCSSAgent *)self controller];
  activeDocument = [controller activeDocument];

  [(IKJSInspectorCSSAgent *)self resetStylesFromNode:activeDocument];
  selfCopy = self;
  [(NSMapTable *)self->_authorStylesheets removeAllObjects];
  string = [MEMORY[0x277CCAB68] string];
  v46 = 0;
  v7 = [activeDocument nodesForXPath:@"/document/head/style" error:&v46];
  v8 = v46;
  if (v7)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v39 = v7;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v9)
    {
      v10 = v9;
      v36 = v8;
      v37 = activeDocument;
      v38 = date;
      v11 = *v43;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v43 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v42 + 1) + 8 * i);
          textContent = [v13 textContent];
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v13, "ITMLID")];
          LOBYTE(v35) = 0;
          v16 = [MEMORY[0x277D7B700] safe_initWithStyleSheetId:v15 frameId:@"Page" sourceURL:&stru_2866C1E60 origin:2 title:@"Author Stylesheet" disabled:0 isInline:0.0 startLine:0.0 startColumn:v35];
          v17 = [IKCSSParser parse:textContent];
          ruleList = [v17 ruleList];
          v19 = [MEMORY[0x277D7B6F8] ik_stylesheetBodyFromRuleList:ruleList forStyleMarkup:textContent withHeader:v16];
          if (v19)
          {
            [(NSMapTable *)selfCopy->_authorStylesheets setObject:v19 forKey:v16];
          }

          [string appendString:textContent];
        }

        v10 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v10);
      activeDocument = v37;
      date = v38;
      v8 = v36;
    }

    v7 = v39;
  }

  else
  {
    obj = ITMLKitGetLogObject(1);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_DEBUG))
    {
      [(IKJSInspectorCSSAgent *)v8 updateStylesheets];
    }
  }

  controller2 = [(IKJSInspectorCSSAgent *)selfCopy controller];
  appContext = [controller2 appContext];
  if ([appContext appUsesDefaultStyleSheets])
  {
    documentElement = [activeDocument documentElement];
    ik_templateName = [documentElement ik_templateName];
    v24 = [IKTemplateStyleSheet styleSheetForTemplateName:ik_templateName];
  }

  else
  {
    v24 = 0;
  }

  v25 = [IKViewElementStyleFactory styleFactoryWithMarkup:string styleSheet:v24];
  styleFactory = selfCopy->_styleFactory;
  selfCopy->_styleFactory = v25;

  v27 = MEMORY[0x277D7B700];
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  LOBYTE(v34) = 0;
  v30 = [v27 safe_initWithStyleSheetId:uUIDString frameId:@"Page" sourceURL:&stru_2866C1E60 origin:1 title:@"Template Stylesheet" disabled:0 isInline:0.0 startLine:0.0 startColumn:v34];
  templateStylesheetHeader = selfCopy->_templateStylesheetHeader;
  selfCopy->_templateStylesheetHeader = v30;

  v32 = ITMLKitGetLogObject(1);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    [(IKJSInspectorCSSAgent *)date updateStylesheets];
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)mediaQueryResultDidChange
{
  v3 = ITMLKitGetLogObject(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(IKJSInspectorCSSAgent *)v3 mediaQueryResultDidChange];
  }

  controller = [(IKJSInspectorCSSAgent *)self controller];
  activeDocument = [controller activeDocument];

  [(IKJSInspectorCSSAgent *)self resetStylesFromNode:activeDocument];
  [(IKViewElementStyleFactory *)self->_styleFactory setViewElementStylesDirty];
  controller2 = [(IKJSInspectorCSSAgent *)self controller];
  inspector = [controller2 inspector];
  configuration = [inspector configuration];
  cssEventDispatcher = [configuration cssEventDispatcher];

  [cssEventDispatcher safe_mediaQueryResultChanged];
}

- (void)resetStylesFromNode:(id)node
{
  v18 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [nodeCopy setStyleComposer:0];
    inlineStyleMap = self->_inlineStyleMap;
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(nodeCopy, "ITMLID")}];
    [(NSMutableDictionary *)inlineStyleMap removeObjectForKey:v6];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  childNodesAsArray = [nodeCopy childNodesAsArray];
  v8 = [childNodesAsArray countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(childNodesAsArray);
        }

        [(IKJSInspectorCSSAgent *)self resetStylesFromNode:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [childNodesAsArray countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)disableWithErrorCallback:(id)callback successCallback:(id)successCallback
{
  callbackCopy = callback;
  v5 = ITMLKitGetLogObject(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [IKJSInspectorCSSAgent disableWithErrorCallback:v5 successCallback:?];
  }

  callbackCopy[2](callbackCopy, @"unsupported");
}

- (void)getMatchedStylesForNodeWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id includePseudo:(BOOL *)pseudo includeInherited:(BOOL *)inherited
{
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  if (!self->_styleFactory)
  {
    [(IKJSInspectorCSSAgent *)self updateStylesheets];
  }

  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  controller = [(IKJSInspectorCSSAgent *)self controller];
  v15 = [controller nodeById:id];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = successCallbackCopy;
    v30 = callbackCopy;
    v16 = [(IKJSInspectorCSSAgent *)self _getMatchedStyleRulesForNode:v15];
    [array2 addObjectsFromArray:v16];

    v17 = [(IKJSInspectorCSSAgent *)self _getMatchedTemplateStylesForNode:v15];
    [array2 addObjectsFromArray:v17];

    v18 = v15;
    parentStyleableElement = [v18 parentStyleableElement];
    objc_opt_class();
    v28 = v18;
    if (objc_opt_isKindOfClass())
    {
      parentStyleableElement2 = [v18 parentStyleableElement];

      if (parentStyleableElement2)
      {
        do
        {
          v21 = [(IKJSInspectorCSSAgent *)self _getMatchedStyleRulesForNode:parentStyleableElement2];
          v22 = [MEMORY[0x277D7B688] safe_initWithMatchedCSSRules:v21];
          [array addObject:v22];
          v20ParentStyleableElement = [parentStyleableElement2 parentStyleableElement];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20ParentStyleableElement2 = [parentStyleableElement2 parentStyleableElement];
          }

          else
          {
            v20ParentStyleableElement2 = 0;
          }

          parentStyleableElement2 = v20ParentStyleableElement2;
        }

        while (v20ParentStyleableElement2);
      }
    }

    else
    {
    }

    successCallbackCopy = v29;
    callbackCopy = v30;
  }

  v32 = MEMORY[0x277CBEBF8];
  v33 = array2;
  v31 = array;
  successCallbackCopy[2](successCallbackCopy, &v33, &v32, &v31);
  v25 = v33;

  v26 = v32;
  v27 = v31;
}

- (void)getComputedStyleForNodeWithErrorCallback:(id)callback successCallback:(id)successCallback nodeId:(int)id
{
  v41 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  if (!self->_styleFactory)
  {
    [(IKJSInspectorCSSAgent *)self updateStylesheets];
  }

  controller = [(IKJSInspectorCSSAgent *)self controller];
  v11 = [controller nodeById:id];

  array = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = successCallbackCopy;
    v34 = callbackCopy;
    v12 = [v11 getAttribute:@"style"];
    v31 = [v11 getAttribute:@"class"];
    v32 = v12;
    v30 = [IKViewElementStyle elementStyleWithSelector:"elementStyleWithSelector:inlineStyleString:filterBlockedStyles:" inlineStyleString:? filterBlockedStyles:?];
    v13 = [(IKViewElementStyleFactory *)self->_styleFactory styleComposerForElement:v11 elementStyleOverrides:?];
    controller2 = [(IKJSInspectorCSSAgent *)self controller];
    v29 = v13;
    v15 = [controller2 styleFromComposer:v13];

    v28 = v15;
    styleDict = [v15 styleDict];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    allKeys = [styleDict allKeys];
    v18 = [allKeys countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v37;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v37 != v20)
          {
            objc_enumerationMutation(allKeys);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          v23 = [styleDict valueForKey:v22];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = MEMORY[0x277D7B668];
            stringValue = [v23 stringValue];
            v26 = [v24 safe_initWithName:v22 value:stringValue];

            [array addObject:v26];
          }
        }

        v19 = [allKeys countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v19);
    }

    successCallbackCopy = v33;
    callbackCopy = v34;
  }

  successCallbackCopy[2](successCallbackCopy, array);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)getAllStyleSheetsWithErrorCallback:(id)callback successCallback:(id)successCallback
{
  v21 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  if (!self->_styleFactory)
  {
    [(IKJSInspectorCSSAgent *)self updateStylesheets];
  }

  array = [MEMORY[0x277CBEB18] array];
  v9 = array;
  if (self->_templateStylesheetHeader)
  {
    [array addObject:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  keyEnumerator = [(NSMapTable *)self->_authorStylesheets keyEnumerator];
  v11 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      v14 = 0;
      do
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        [v9 addObject:*(*(&v16 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  successCallbackCopy[2](successCallbackCopy, v9);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)getStyleSheetWithErrorCallback:(id)callback successCallback:(id)successCallback styleSheetId:(id)id
{
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  v9 = [(IKJSInspectorCSSAgent *)self _stylesheetBodyForStylesheetId:id];
  if (v9)
  {
    successCallbackCopy[2](successCallbackCopy, v9);
  }

  else
  {
    callbackCopy[2](callbackCopy, @"Unable to find stylesheet");
  }
}

- (void)getStyleSheetTextWithErrorCallback:(id)callback successCallback:(id)successCallback styleSheetId:(id)id
{
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  v9 = [(IKJSInspectorCSSAgent *)self _stylesheetBodyForStylesheetId:id];
  v10 = v9;
  if (v9)
  {
    text = [v9 text];
    successCallbackCopy[2](successCallbackCopy, text);
  }

  else
  {
    callbackCopy[2](callbackCopy, @"Unable to find stylesheet");
  }
}

- (void)setStyleSheetTextWithErrorCallback:(id)callback successCallback:(id)successCallback styleSheetId:(id)id text:(id)text
{
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  textCopy = text;
  v12 = [(IKJSInspectorCSSAgent *)self _styleNodeForStylesheetId:id];
  v13 = v12;
  if (v12)
  {
    [v12 setTextContent:textCopy];
    successCallbackCopy[2](successCallbackCopy);
  }

  else
  {
    callbackCopy[2](callbackCopy, @"Unable to find stylesheet");
  }
}

- (void)setStyleTextWithErrorCallback:(id)callback successCallback:(id)successCallback styleId:(id)id text:(id)text
{
  callbackCopy = callback;
  successCallbackCopy = successCallback;
  textCopy = text;
  idCopy = id;
  styleSheetId = [idCopy styleSheetId];
  whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v15 = [textCopy stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  if ([styleSheetId isEqualToString:@"inline"])
  {
    controller = [(IKJSInspectorCSSAgent *)self controller];
    ordinal = [idCopy ordinal];

    v18 = [controller nodeById:ordinal];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = -[IKJSInspectorCSSAgent _updatedInlineStyleForNode:withStyleString:](self, "_updatedInlineStyleForNode:withStyleString:", [v18 ITMLID], v15);
      [v18 setAttribute:@"style" :v15];
      controller2 = [(IKJSInspectorCSSAgent *)self controller];
      inspector = [controller2 inspector];
      configuration = [inspector configuration];
      domEventDispatcher = [configuration domEventDispatcher];

      [domEventDispatcher safe_attributeModifiedWithNodeId:objc_msgSend(v18 name:"ITMLID") value:{@"style", v15}];
      successCallbackCopy[2](successCallbackCopy, v19);

LABEL_10:
      goto LABEL_13;
    }
  }

  else
  {
    v18 = [(IKJSInspectorCSSAgent *)self _stylesheetBodyForStylesheetId:styleSheetId];
    ordinal2 = [idCopy ordinal];

    if (v18)
    {
      rules = [v18 rules];
      v26 = [rules count];

      if ((ordinal2 & 0x80000000) == 0 && v26 > ordinal2)
      {
        rules2 = [v18 rules];
        v47 = ordinal2;
        v28 = [rules2 objectAtIndex:?];

        v48 = v28;
        style = [v28 style];
        range = [style range];
        ik_textNewLineIndexSet = [v18 ik_textNewLineIndexSet];
        v32 = [range ik_rangeWithNewLineIndexSet:ik_textNewLineIndexSet];
        v34 = v33;

        v35 = [(IKJSInspectorCSSAgent *)self _styleNodeForStylesheetId:styleSheetId];
        v36 = v35;
        if (v35 && v32 != 0x7FFFFFFFFFFFFFFFLL)
        {
          textContent = [v35 textContent];
          v46 = [textContent mutableCopy];

          [v46 replaceCharactersInRange:v32 withString:{v34, v15}];
          [v36 setTextContent:v46];
          [(IKJSInspectorCSSAgent *)self updateStylesheets];
          rules3 = [v18 rules];
          v39 = [rules3 objectAtIndex:v47];

          controller3 = [(IKJSInspectorCSSAgent *)self controller];
          inspector2 = [controller3 inspector];
          configuration2 = [inspector2 configuration];
          cssEventDispatcher = [configuration2 cssEventDispatcher];

          styleSheetId2 = [v18 styleSheetId];
          [cssEventDispatcher safe_styleSheetChangedWithStyleSheetId:styleSheetId2];

          style2 = [v39 style];
          successCallbackCopy[2](successCallbackCopy, style2);

          goto LABEL_10;
        }
      }
    }
  }

  callbackCopy[2](callbackCopy, @"Unable to find stylesheet");
LABEL_13:
}

- (void)getSupportedCSSPropertiesWithErrorCallback:(id)callback successCallback:(id)successCallback
{
  v25 = *MEMORY[0x277D85DE8];
  successCallbackCopy = successCallback;
  v4 = +[IKViewElementStyle registeredStyles];
  array = [MEMORY[0x277CBEB18] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = v4;
  obj = [v4 allKeys];
  v5 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v18 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v20 + 1) + 8 * i);
        v9 = [IKViewElementStyle propertiesForStyleName:v8];
        v10 = [v9 objectForKey:@"IKViewElementStyleAliasesKey"];
        v11 = [v9 objectForKey:@"IKViewElementStyleLonghandKey"];
        v12 = [MEMORY[0x277D7B698] safe_initWithName:v8];
        v13 = [v9 objectForKey:@"IKViewElementStyleInheritedKey"];
        [v12 setInherited:{objc_msgSend(v13, "BOOLValue")}];

        if (v10)
        {
          [v12 setAliases:v10];
        }

        if (v11)
        {
          [v12 setLonghands:v11];
        }

        [array addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  successCallbackCopy[2](successCallbackCopy, array);
  v14 = *MEMORY[0x277D85DE8];
}

- (id)_styleNodeForStylesheetId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  controller = [(IKJSInspectorCSSAgent *)self controller];
  activeDocument = [controller activeDocument];
  v7 = [activeDocument nodesForXPath:@"/document/head/style" error:0];

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
        iTMLID = [v12 ITMLID];
        if (iTMLID == [idCopy integerValue])
        {
          v9 = v12;
          goto LABEL_11;
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

LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)_stylesheetBodyForStylesheetId:(id)id
{
  v21 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  keyEnumerator = [(NSMapTable *)self->_authorStylesheets keyEnumerator];
  v6 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(keyEnumerator);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        styleSheetId = [v10 styleSheetId];
        v12 = [styleSheetId isEqualToString:idCopy];

        if (v12)
        {
          v13 = [(NSMapTable *)self->_authorStylesheets objectForKey:v10];
          goto LABEL_11;
        }
      }

      v7 = [keyEnumerator countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)_getMatchedTemplateStylesForNode:(id)node
{
  v43 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [(IKViewElementStyleFactory *)self->_styleFactory styleComposerForElement:nodeCopy elementStyleOverrides:0];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
    v41 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    consolidatedDefaultStyleList = [v27 consolidatedDefaultStyleList];
    v7 = [consolidatedDefaultStyleList countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v7)
    {
      v8 = *v39;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(consolidatedDefaultStyleList);
          }

          v10 = *(*(&v38 + 1) + 8 * i);
          styles = [v10 styles];
          if (styles)
          {
            styles2 = [v10 styles];
            [v5 addObjectsFromArray:styles2];
          }
        }

        v7 = [consolidatedDefaultStyleList countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v7);
    }

    if ([v5 count])
    {
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      ik_templateElementCSSSelectorList = [nodeCopy ik_templateElementCSSSelectorList];
      objc_initWeak(&location, self);
      controller = [(IKJSInspectorCSSAgent *)self controller];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __58__IKJSInspectorCSSAgent__getMatchedTemplateStylesForNode___block_invoke;
      v30[3] = &unk_27979B600;
      objc_copyWeak(&v36, &location);
      v31 = v5;
      v18 = ik_templateElementCSSSelectorList;
      v32 = v18;
      v19 = v13;
      v33 = v19;
      v20 = v14;
      v34 = v20;
      v21 = v15;
      v35 = v21;
      [controller evaluateMediaQuery:v30];

      v29 = 0;
      __58__IKJSInspectorCSSAgent__getMatchedTemplateStylesForNode___block_invoke_44(v22, v20, &v29);
      __58__IKJSInspectorCSSAgent__getMatchedTemplateStylesForNode___block_invoke_44(v23, v21, &v29);
      __58__IKJSInspectorCSSAgent__getMatchedTemplateStylesForNode___block_invoke_44(v24, v19, &v29);
      [v28 addObjectsFromArray:v20];
      [v28 addObjectsFromArray:v21];
      [v28 addObjectsFromArray:v19];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);
    }
  }

  v25 = *MEMORY[0x277D85DE8];

  return v28;
}

void __58__IKJSInspectorCSSAgent__getMatchedTemplateStylesForNode___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    obj = *(a1 + 32);
    v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v15;
      do
      {
        v8 = 0;
        do
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = [*(*(&v14 + 1) + 8 * v8) cssRule];
          v10 = [MEMORY[0x277D7B6A8] ik_cssRuleForRule:v9 withOrdinal:0 forStyleSheetHeader:WeakRetained[2] forStyleMarkup:0 withNewLineIndexSet:0];
          [v10 setSelectorList:*(a1 + 40)];
          v11 = [v10 ik_ruleMatchForClassSelectors:0 andIdSelector:0];
          [v11 setMatchingSelectors:&unk_2866F0DC8];
          [objc_opt_class() _evaluator:v3 updateMediaStylesWithActiveStyles:*(a1 + 48) inActiveStyles:*(a1 + 56) defaultStyles:*(a1 + 64) forRule:v9 withMatch:v11];

          ++v8;
        }

        while (v6 != v8);
        v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v6);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __58__IKJSInspectorCSSAgent__getMatchedTemplateStylesForNode___block_invoke_44(uint64_t a1, void *a2, unsigned int *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 rule];
        v11 = [v10 style];
        v12 = [v11 styleId];
        [v12 setOrdinal:*a3];

        v13 = [v9 rule];
        v14 = [v13 ruleId];
        [v14 setOrdinal:*a3];

        ++*a3;
      }

      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_getMatchedStyleRulesForNode:(id)node
{
  nodeCopy = node;
  array = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSMapTable *)self->_authorStylesheets count])
  {
    v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
    objc_opt_class();
    v9 = 0;
    if (objc_opt_isKindOfClass())
    {
      v10 = [nodeCopy getAttribute:@"class"];
      whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v9 = [v10 componentsSeparatedByCharactersInSet:whitespaceAndNewlineCharacterSet];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [nodeCopy getAttribute:@"id"];
    }

    else
    {
      v12 = 0;
    }

    objc_initWeak(&location, self);
    controller = [(IKJSInspectorCSSAgent *)self controller];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __54__IKJSInspectorCSSAgent__getMatchedStyleRulesForNode___block_invoke;
    v20[3] = &unk_27979B600;
    objc_copyWeak(&v26, &location);
    v14 = v9;
    v21 = v14;
    v15 = v12;
    v22 = v15;
    v16 = v6;
    v23 = v16;
    v17 = v7;
    v24 = v17;
    v18 = v8;
    v25 = v18;
    [controller evaluateMediaQuery:v20];

    [array addObjectsFromArray:v17];
    [array addObjectsFromArray:v18];
    [array addObjectsFromArray:v16];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return array;
}

void __54__IKJSInspectorCSSAgent__getMatchedStyleRulesForNode___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = [WeakRetained[4] objectEnumerator];
    v17 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v17)
    {
      v16 = *v19;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v19 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v18 + 1) + 8 * i);
          v8 = [v7 rules];
          if ([v8 count])
          {
            v9 = 0;
            do
            {
              v10 = [v8 objectAtIndex:v9];
              v11 = [v10 ik_ruleMatchForClassSelectors:*(a1 + 32) andIdSelector:*(a1 + 40)];

              v12 = [v7 ik_ruleList];
              v13 = [v12 ruleAtIndex:v9];

              [objc_opt_class() _evaluator:v3 updateMediaStylesWithActiveStyles:*(a1 + 48) inActiveStyles:*(a1 + 56) defaultStyles:*(a1 + 64) forRule:v13 withMatch:v11];
              ++v9;
            }

            while (v9 < [v8 count]);
          }
        }

        v17 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v17);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

+ (void)_evaluator:(id)_evaluator updateMediaStylesWithActiveStyles:(id)styles inActiveStyles:(id)activeStyles defaultStyles:(id)defaultStyles forRule:(id)rule withMatch:(id)match
{
  v38 = *MEMORY[0x277D85DE8];
  _evaluatorCopy = _evaluator;
  stylesCopy = styles;
  activeStylesCopy = activeStyles;
  defaultStylesCopy = defaultStyles;
  ruleCopy = rule;
  matchCopy = match;
  matchingSelectors = [matchCopy matchingSelectors];
  v20 = [matchingSelectors count];

  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      mediaQuery = [ruleCopy mediaQuery];
      v22 = [IKStyleMediaQuery mediaQueryListWithCSSMediaQuery:mediaQuery];
      v23 = [_evaluatorCopy evaluateStyleMediaQueryList:v22];

      if (v23)
      {
        v24 = stylesCopy;
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        rule = [matchCopy rule];
        style = [rule style];
        cssProperties = [style cssProperties];

        v28 = [cssProperties countByEnumeratingWithState:&v33 objects:v37 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v34;
          do
          {
            v31 = 0;
            do
            {
              if (*v34 != v30)
              {
                objc_enumerationMutation(cssProperties);
              }

              [*(*(&v33 + 1) + 8 * v31++) setStatus:2];
            }

            while (v29 != v31);
            v29 = [cssProperties countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v29);
        }

        v24 = activeStylesCopy;
      }
    }

    else
    {
      v24 = defaultStylesCopy;
    }

    [v24 addObject:matchCopy];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (IKJSInspectorController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end
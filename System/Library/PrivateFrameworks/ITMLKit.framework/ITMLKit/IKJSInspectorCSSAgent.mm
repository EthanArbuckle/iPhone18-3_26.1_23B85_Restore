@interface IKJSInspectorCSSAgent
+ (void)_evaluator:(id)a3 updateMediaStylesWithActiveStyles:(id)a4 inActiveStyles:(id)a5 defaultStyles:(id)a6 forRule:(id)a7 withMatch:(id)a8;
- (IKJSInspectorCSSAgent)initWithInspectorController:(id)a3;
- (IKJSInspectorController)controller;
- (id)_getMatchedStyleRulesForNode:(id)a3;
- (id)_getMatchedTemplateStylesForNode:(id)a3;
- (id)_styleNodeForStylesheetId:(id)a3;
- (id)_stylesheetBodyForStylesheetId:(id)a3;
- (void)disableWithErrorCallback:(id)a3 successCallback:(id)a4;
- (void)getAllStyleSheetsWithErrorCallback:(id)a3 successCallback:(id)a4;
- (void)getComputedStyleForNodeWithErrorCallback:(id)a3 successCallback:(id)a4 nodeId:(int)a5;
- (void)getMatchedStylesForNodeWithErrorCallback:(id)a3 successCallback:(id)a4 nodeId:(int)a5 includePseudo:(BOOL *)a6 includeInherited:(BOOL *)a7;
- (void)getStyleSheetTextWithErrorCallback:(id)a3 successCallback:(id)a4 styleSheetId:(id)a5;
- (void)getStyleSheetWithErrorCallback:(id)a3 successCallback:(id)a4 styleSheetId:(id)a5;
- (void)getSupportedCSSPropertiesWithErrorCallback:(id)a3 successCallback:(id)a4;
- (void)mediaQueryResultDidChange;
- (void)resetStylesFromNode:(id)a3;
- (void)setStyleSheetTextWithErrorCallback:(id)a3 successCallback:(id)a4 styleSheetId:(id)a5 text:(id)a6;
- (void)setStyleTextWithErrorCallback:(id)a3 successCallback:(id)a4 styleId:(id)a5 text:(id)a6;
- (void)updateStylesheets;
@end

@implementation IKJSInspectorCSSAgent

- (IKJSInspectorCSSAgent)initWithInspectorController:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = IKJSInspectorCSSAgent;
  v5 = [(IKJSInspectorCSSAgent *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
    inlineStyleMap = v5->_inlineStyleMap;
    v5->_inlineStyleMap = v6;

    v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    authorStylesheets = v5->_authorStylesheets;
    v5->_authorStylesheets = v8;

    objc_storeWeak(&v5->_controller, v4);
  }

  return v5;
}

- (void)updateStylesheets
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [(IKJSInspectorCSSAgent *)self controller];
  v5 = [v4 activeDocument];

  [(IKJSInspectorCSSAgent *)self resetStylesFromNode:v5];
  v41 = self;
  [(NSMapTable *)self->_authorStylesheets removeAllObjects];
  v6 = [MEMORY[0x277CCAB68] string];
  v46 = 0;
  v7 = [v5 nodesForXPath:@"/document/head/style" error:&v46];
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
      v37 = v5;
      v38 = v3;
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
          v14 = [v13 textContent];
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", objc_msgSend(v13, "ITMLID")];
          LOBYTE(v35) = 0;
          v16 = [MEMORY[0x277D7B700] safe_initWithStyleSheetId:v15 frameId:@"Page" sourceURL:&stru_2866C1E60 origin:2 title:@"Author Stylesheet" disabled:0 isInline:0.0 startLine:0.0 startColumn:v35];
          v17 = [IKCSSParser parse:v14];
          v18 = [v17 ruleList];
          v19 = [MEMORY[0x277D7B6F8] ik_stylesheetBodyFromRuleList:v18 forStyleMarkup:v14 withHeader:v16];
          if (v19)
          {
            [(NSMapTable *)v41->_authorStylesheets setObject:v19 forKey:v16];
          }

          [v6 appendString:v14];
        }

        v10 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v10);
      v5 = v37;
      v3 = v38;
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

  v20 = [(IKJSInspectorCSSAgent *)v41 controller];
  v21 = [v20 appContext];
  if ([v21 appUsesDefaultStyleSheets])
  {
    v22 = [v5 documentElement];
    v23 = [v22 ik_templateName];
    v24 = [IKTemplateStyleSheet styleSheetForTemplateName:v23];
  }

  else
  {
    v24 = 0;
  }

  v25 = [IKViewElementStyleFactory styleFactoryWithMarkup:v6 styleSheet:v24];
  styleFactory = v41->_styleFactory;
  v41->_styleFactory = v25;

  v27 = MEMORY[0x277D7B700];
  v28 = [MEMORY[0x277CCAD78] UUID];
  v29 = [v28 UUIDString];
  LOBYTE(v34) = 0;
  v30 = [v27 safe_initWithStyleSheetId:v29 frameId:@"Page" sourceURL:&stru_2866C1E60 origin:1 title:@"Template Stylesheet" disabled:0 isInline:0.0 startLine:0.0 startColumn:v34];
  templateStylesheetHeader = v41->_templateStylesheetHeader;
  v41->_templateStylesheetHeader = v30;

  v32 = ITMLKitGetLogObject(1);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    [(IKJSInspectorCSSAgent *)v3 updateStylesheets];
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

  v4 = [(IKJSInspectorCSSAgent *)self controller];
  v5 = [v4 activeDocument];

  [(IKJSInspectorCSSAgent *)self resetStylesFromNode:v5];
  [(IKViewElementStyleFactory *)self->_styleFactory setViewElementStylesDirty];
  v6 = [(IKJSInspectorCSSAgent *)self controller];
  v7 = [v6 inspector];
  v8 = [v7 configuration];
  v9 = [v8 cssEventDispatcher];

  [v9 safe_mediaQueryResultChanged];
}

- (void)resetStylesFromNode:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v4 setStyleComposer:0];
    inlineStyleMap = self->_inlineStyleMap;
    v6 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v4, "ITMLID")}];
    [(NSMutableDictionary *)inlineStyleMap removeObjectForKey:v6];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v4 childNodesAsArray];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v7);
        }

        [(IKJSInspectorCSSAgent *)self resetStylesFromNode:*(*(&v13 + 1) + 8 * v11++)];
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)disableWithErrorCallback:(id)a3 successCallback:(id)a4
{
  v4 = a3;
  v5 = ITMLKitGetLogObject(1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [IKJSInspectorCSSAgent disableWithErrorCallback:v5 successCallback:?];
  }

  v4[2](v4, @"unsupported");
}

- (void)getMatchedStylesForNodeWithErrorCallback:(id)a3 successCallback:(id)a4 nodeId:(int)a5 includePseudo:(BOOL *)a6 includeInherited:(BOOL *)a7
{
  v10 = a3;
  v11 = a4;
  if (!self->_styleFactory)
  {
    [(IKJSInspectorCSSAgent *)self updateStylesheets];
  }

  v12 = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CBEB18] array];
  v14 = [(IKJSInspectorCSSAgent *)self controller];
  v15 = [v14 nodeById:a5];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v29 = v11;
    v30 = v10;
    v16 = [(IKJSInspectorCSSAgent *)self _getMatchedStyleRulesForNode:v15];
    [v13 addObjectsFromArray:v16];

    v17 = [(IKJSInspectorCSSAgent *)self _getMatchedTemplateStylesForNode:v15];
    [v13 addObjectsFromArray:v17];

    v18 = v15;
    v19 = [v18 parentStyleableElement];
    objc_opt_class();
    v28 = v18;
    if (objc_opt_isKindOfClass())
    {
      v20 = [v18 parentStyleableElement];

      if (v20)
      {
        do
        {
          v21 = [(IKJSInspectorCSSAgent *)self _getMatchedStyleRulesForNode:v20];
          v22 = [MEMORY[0x277D7B688] safe_initWithMatchedCSSRules:v21];
          [v12 addObject:v22];
          v23 = [v20 parentStyleableElement];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = [v20 parentStyleableElement];
          }

          else
          {
            v24 = 0;
          }

          v20 = v24;
        }

        while (v24);
      }
    }

    else
    {
    }

    v11 = v29;
    v10 = v30;
  }

  v32 = MEMORY[0x277CBEBF8];
  v33 = v13;
  v31 = v12;
  v11[2](v11, &v33, &v32, &v31);
  v25 = v33;

  v26 = v32;
  v27 = v31;
}

- (void)getComputedStyleForNodeWithErrorCallback:(id)a3 successCallback:(id)a4 nodeId:(int)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  if (!self->_styleFactory)
  {
    [(IKJSInspectorCSSAgent *)self updateStylesheets];
  }

  v10 = [(IKJSInspectorCSSAgent *)self controller];
  v11 = [v10 nodeById:a5];

  v35 = [MEMORY[0x277CBEB18] array];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v9;
    v34 = v8;
    v12 = [v11 getAttribute:@"style"];
    v31 = [v11 getAttribute:@"class"];
    v32 = v12;
    v30 = [IKViewElementStyle elementStyleWithSelector:"elementStyleWithSelector:inlineStyleString:filterBlockedStyles:" inlineStyleString:? filterBlockedStyles:?];
    v13 = [(IKViewElementStyleFactory *)self->_styleFactory styleComposerForElement:v11 elementStyleOverrides:?];
    v14 = [(IKJSInspectorCSSAgent *)self controller];
    v29 = v13;
    v15 = [v14 styleFromComposer:v13];

    v28 = v15;
    v16 = [v15 styleDict];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v17 = [v16 allKeys];
    v18 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v36 + 1) + 8 * i);
          v23 = [v16 valueForKey:v22];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v24 = MEMORY[0x277D7B668];
            v25 = [v23 stringValue];
            v26 = [v24 safe_initWithName:v22 value:v25];

            [v35 addObject:v26];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v36 objects:v40 count:16];
      }

      while (v19);
    }

    v9 = v33;
    v8 = v34;
  }

  v9[2](v9, v35);

  v27 = *MEMORY[0x277D85DE8];
}

- (void)getAllStyleSheetsWithErrorCallback:(id)a3 successCallback:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!self->_styleFactory)
  {
    [(IKJSInspectorCSSAgent *)self updateStylesheets];
  }

  v8 = [MEMORY[0x277CBEB18] array];
  v9 = v8;
  if (self->_templateStylesheetHeader)
  {
    [v8 addObject:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [(NSMapTable *)self->_authorStylesheets keyEnumerator];
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v10);
        }

        [v9 addObject:*(*(&v16 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v12);
  }

  v7[2](v7, v9);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)getStyleSheetWithErrorCallback:(id)a3 successCallback:(id)a4 styleSheetId:(id)a5
{
  v10 = a3;
  v8 = a4;
  v9 = [(IKJSInspectorCSSAgent *)self _stylesheetBodyForStylesheetId:a5];
  if (v9)
  {
    v8[2](v8, v9);
  }

  else
  {
    v10[2](v10, @"Unable to find stylesheet");
  }
}

- (void)getStyleSheetTextWithErrorCallback:(id)a3 successCallback:(id)a4 styleSheetId:(id)a5
{
  v12 = a3;
  v8 = a4;
  v9 = [(IKJSInspectorCSSAgent *)self _stylesheetBodyForStylesheetId:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 text];
    v8[2](v8, v11);
  }

  else
  {
    v12[2](v12, @"Unable to find stylesheet");
  }
}

- (void)setStyleSheetTextWithErrorCallback:(id)a3 successCallback:(id)a4 styleSheetId:(id)a5 text:(id)a6
{
  v14 = a3;
  v10 = a4;
  v11 = a6;
  v12 = [(IKJSInspectorCSSAgent *)self _styleNodeForStylesheetId:a5];
  v13 = v12;
  if (v12)
  {
    [v12 setTextContent:v11];
    v10[2](v10);
  }

  else
  {
    v14[2](v14, @"Unable to find stylesheet");
  }
}

- (void)setStyleTextWithErrorCallback:(id)a3 successCallback:(id)a4 styleId:(id)a5 text:(id)a6
{
  v49 = a3;
  v10 = a4;
  v11 = a6;
  v12 = a5;
  v13 = [v12 styleSheetId];
  v14 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v15 = [v11 stringByTrimmingCharactersInSet:v14];

  if ([v13 isEqualToString:@"inline"])
  {
    v16 = [(IKJSInspectorCSSAgent *)self controller];
    v17 = [v12 ordinal];

    v18 = [v16 nodeById:v17];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = -[IKJSInspectorCSSAgent _updatedInlineStyleForNode:withStyleString:](self, "_updatedInlineStyleForNode:withStyleString:", [v18 ITMLID], v15);
      [v18 setAttribute:@"style" :v15];
      v20 = [(IKJSInspectorCSSAgent *)self controller];
      v21 = [v20 inspector];
      v22 = [v21 configuration];
      v23 = [v22 domEventDispatcher];

      [v23 safe_attributeModifiedWithNodeId:objc_msgSend(v18 name:"ITMLID") value:{@"style", v15}];
      v10[2](v10, v19);

LABEL_10:
      goto LABEL_13;
    }
  }

  else
  {
    v18 = [(IKJSInspectorCSSAgent *)self _stylesheetBodyForStylesheetId:v13];
    v24 = [v12 ordinal];

    if (v18)
    {
      v25 = [v18 rules];
      v26 = [v25 count];

      if ((v24 & 0x80000000) == 0 && v26 > v24)
      {
        v27 = [v18 rules];
        v47 = v24;
        v28 = [v27 objectAtIndex:?];

        v48 = v28;
        v29 = [v28 style];
        v30 = [v29 range];
        v31 = [v18 ik_textNewLineIndexSet];
        v32 = [v30 ik_rangeWithNewLineIndexSet:v31];
        v34 = v33;

        v35 = [(IKJSInspectorCSSAgent *)self _styleNodeForStylesheetId:v13];
        v36 = v35;
        if (v35 && v32 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v37 = [v35 textContent];
          v46 = [v37 mutableCopy];

          [v46 replaceCharactersInRange:v32 withString:{v34, v15}];
          [v36 setTextContent:v46];
          [(IKJSInspectorCSSAgent *)self updateStylesheets];
          v38 = [v18 rules];
          v39 = [v38 objectAtIndex:v47];

          v40 = [(IKJSInspectorCSSAgent *)self controller];
          v41 = [v40 inspector];
          v42 = [v41 configuration];
          v43 = [v42 cssEventDispatcher];

          v44 = [v18 styleSheetId];
          [v43 safe_styleSheetChangedWithStyleSheetId:v44];

          v45 = [v39 style];
          v10[2](v10, v45);

          goto LABEL_10;
        }
      }
    }
  }

  v49[2](v49, @"Unable to find stylesheet");
LABEL_13:
}

- (void)getSupportedCSSPropertiesWithErrorCallback:(id)a3 successCallback:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = a4;
  v4 = +[IKViewElementStyle registeredStyles];
  v19 = [MEMORY[0x277CBEB18] array];
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

        [v19 addObject:v12];
      }

      v6 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v6);
  }

  v16[2](v16, v19);
  v14 = *MEMORY[0x277D85DE8];
}

- (id)_styleNodeForStylesheetId:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(IKJSInspectorCSSAgent *)self controller];
  v6 = [v5 activeDocument];
  v7 = [v6 nodesForXPath:@"/document/head/style" error:0];

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
        v13 = [v12 ITMLID];
        if (v13 == [v4 integerValue])
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

- (id)_stylesheetBodyForStylesheetId:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(NSMapTable *)self->_authorStylesheets keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 styleSheetId];
        v12 = [v11 isEqualToString:v4];

        if (v12)
        {
          v13 = [(NSMapTable *)self->_authorStylesheets objectForKey:v10];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
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

- (id)_getMatchedTemplateStylesForNode:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v27 = [(IKViewElementStyleFactory *)self->_styleFactory styleComposerForElement:v4 elementStyleOverrides:0];
    v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
    v41 = 0u;
    v39 = 0u;
    v40 = 0u;
    v38 = 0u;
    v6 = [v27 consolidatedDefaultStyleList];
    v7 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v7)
    {
      v8 = *v39;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v39 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v38 + 1) + 8 * i);
          v11 = [v10 styles];
          if (v11)
          {
            v12 = [v10 styles];
            [v5 addObjectsFromArray:v12];
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v7);
    }

    if ([v5 count])
    {
      v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      v15 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      v16 = [v4 ik_templateElementCSSSelectorList];
      objc_initWeak(&location, self);
      v17 = [(IKJSInspectorCSSAgent *)self controller];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __58__IKJSInspectorCSSAgent__getMatchedTemplateStylesForNode___block_invoke;
      v30[3] = &unk_27979B600;
      objc_copyWeak(&v36, &location);
      v31 = v5;
      v18 = v16;
      v32 = v18;
      v19 = v13;
      v33 = v19;
      v20 = v14;
      v34 = v20;
      v21 = v15;
      v35 = v21;
      [v17 evaluateMediaQuery:v30];

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

- (id)_getMatchedStyleRulesForNode:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
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
      v10 = [v4 getAttribute:@"class"];
      v11 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
      v9 = [v10 componentsSeparatedByCharactersInSet:v11];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v4 getAttribute:@"id"];
    }

    else
    {
      v12 = 0;
    }

    objc_initWeak(&location, self);
    v13 = [(IKJSInspectorCSSAgent *)self controller];
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
    [v13 evaluateMediaQuery:v20];

    [v5 addObjectsFromArray:v17];
    [v5 addObjectsFromArray:v18];
    [v5 addObjectsFromArray:v16];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  return v5;
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

+ (void)_evaluator:(id)a3 updateMediaStylesWithActiveStyles:(id)a4 inActiveStyles:(id)a5 defaultStyles:(id)a6 forRule:(id)a7 withMatch:(id)a8
{
  v38 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = [v18 matchingSelectors];
  v20 = [v19 count];

  if (v20)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [v17 mediaQuery];
      v22 = [IKStyleMediaQuery mediaQueryListWithCSSMediaQuery:v21];
      v23 = [v13 evaluateStyleMediaQueryList:v22];

      if (v23)
      {
        v24 = v14;
      }

      else
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v25 = [v18 rule];
        v26 = [v25 style];
        v27 = [v26 cssProperties];

        v28 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
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
                objc_enumerationMutation(v27);
              }

              [*(*(&v33 + 1) + 8 * v31++) setStatus:2];
            }

            while (v29 != v31);
            v29 = [v27 countByEnumeratingWithState:&v33 objects:v37 count:16];
          }

          while (v29);
        }

        v24 = v15;
      }
    }

    else
    {
      v24 = v16;
    }

    [v24 addObject:v18];
  }

  v32 = *MEMORY[0x277D85DE8];
}

- (IKJSInspectorController)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

@end
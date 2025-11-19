@interface IKTemplateStyleSheet
+ (_xmlDoc)_xmlTreeForTemplateName:(id)a3;
+ (_xmlDoc)_xmlTreeWithData:(id)a3 error:(id *)a4;
+ (id)_coalesceNode:(_xmlNode *)a3 overridingNode:(_xmlNode *)a4 forcedTemplateName:(id)a5;
+ (id)_styleSheetForTemplateName:(id)a3;
+ (id)_templateNodeWithXMLNode:(_xmlNode *)a3 parentNode:(id)a4;
+ (id)_templateTreeWithXMLTree:(_xmlNode *)a3 parentNode:(id)a4;
+ (id)styleSheetForTemplateName:(id)a3;
+ (void)_coalesceTrees:(_xmlNode *)a3 overridingTree:(_xmlNode *)a4 forcedTemplateName:(id)a5;
+ (void)_findNodesInXmlTree:(_xmlDoc *)a3 styleNode:(_xmlNode *)a4 templateNode:(_xmlNode *)a5;
+ (void)_resolveEmbeddedTemplatesInXmlTree:(_xmlNode *)a3;
+ (void)loadStyleSheets;
+ (void)registerStyleSheetURL:(id)a3 parentStyleSheets:(id)a4 forTemplateName:(id)a5;
- (id)_initWithXMLDoc:(_xmlDoc *)a3 templateName:(id)a4 error:(id *)a5;
- (id)_styleComposerForNode:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)styleComposerForElement:(id)a3;
- (void)setViewElementStylesDirty;
@end

@implementation IKTemplateStyleSheet

- (id)copyWithZone:(_NSZone *)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(IKTemplateStyleSheet *)self templateName];
  v6 = *(v4 + 32);
  v28 = v4;
  *(v4 + 32) = v5;

  v7 = MEMORY[0x277CBEB38];
  v8 = [(IKTemplateStyleSheet *)self templateTree];
  v9 = [v7 dictionaryWithCapacity:{objc_msgSend(v8, "count")}];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [(IKTemplateStyleSheet *)self templateTree];
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v29 + 1) + 8 * v14);
        v16 = [(IKTemplateStyleSheet *)self templateTree];
        v17 = [v16 objectForKey:v15];
        v18 = [v17 copy];
        [v9 setObject:v18 forKey:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  v19 = v28[2];
  v28[2] = v9;
  v20 = v9;

  v21 = [(IKTemplateStyleSheet *)self styleFactory];
  v22 = [v21 copy];
  v23 = v28[1];
  v28[1] = v22;

  v24 = [MEMORY[0x277CBEB38] dictionary];
  v25 = v28[3];
  v28[3] = v24;

  v26 = *MEMORY[0x277D85DE8];
  return v28;
}

+ (void)registerStyleSheetURL:(id)a3 parentStyleSheets:(id)a4 forTemplateName:(id)a5
{
  v17 = a1;
  v25 = *MEMORY[0x277D85DE8];
  v19 = a3;
  v7 = a4;
  v8 = a5;
  if (registerStyleSheetURL_parentStyleSheets_forTemplateName__onceToken != -1)
  {
    +[IKTemplateStyleSheet registerStyleSheetURL:parentStyleSheets:forTemplateName:];
  }

  if (v7 && [v7 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = *v21;
LABEL_7:
      v12 = 0;
      while (1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v20 + 1) + 8 * v12) scheme];
        v14 = [v13 lowercaseString];
        v15 = [v14 isEqualToString:@"file"];

        if (!v15)
        {
          goto LABEL_22;
        }

        if (v10 == ++v12)
        {
          v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
          if (v10)
          {
            goto LABEL_7;
          }

          break;
        }
      }
    }
  }

  if ([v8 length])
  {
    v9 = v18;
    objc_sync_enter(v9);
    if (v7)
    {
      [sParentPathMap setObject:v7 forKey:v8];
    }

    else
    {
      [sParentPathMap removeObjectForKey:v8];
    }

    if (v19)
    {
      [sFilePathMap setObject:v19 forKey:v8];
    }

    else
    {
      [sFilePathMap removeObjectForKey:v8];
    }

    [sUnloadedTemplateNames addObject:v8];
    objc_sync_exit(v9);
LABEL_22:
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __80__IKTemplateStyleSheet_registerStyleSheetURL_parentStyleSheets_forTemplateName___block_invoke()
{
  v0 = [MEMORY[0x277CBEB58] set];
  v1 = sUnloadedTemplateNames;
  sUnloadedTemplateNames = v0;

  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v3 = sParentPathMap;
  sParentPathMap = v2;

  v4 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  v5 = sFilePathMap;
  sFilePathMap = v4;

  return MEMORY[0x2821F96F8](v4, v5);
}

+ (void)loadStyleSheets
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a1;
  objc_sync_enter(v2);
  v3 = [sUnloadedTemplateNames allObjects];
  [sUnloadedTemplateNames removeAllObjects];
  objc_sync_exit(v2);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = v3;
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = *v14;
    v6 = MEMORY[0x277D85DD0];
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = +[IKConcurrentEvaluator idleEvaluator];
        v12[0] = v6;
        v12[1] = 3221225472;
        v12[2] = __39__IKTemplateStyleSheet_loadStyleSheets__block_invoke;
        v12[3] = &unk_27979B8F8;
        v12[4] = v8;
        v12[5] = v2;
        [v9 addEvaluationBlock:v12 forKey:v8];

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)styleSheetForTemplateName:(id)a3
{
  v3 = a3;
  v4 = +[IKConcurrentEvaluator idleEvaluator];
  v5 = [v4 objectForKey:v3];

  v6 = [v5 copy];

  return v6;
}

- (id)styleComposerForElement:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v8 = 0;
    goto LABEL_47;
  }

  v6 = [v4 objectForKeyedSubscript:@"templateKeyPath"];
  if (!v6 || (-[IKTemplateStyleSheet styleComposersByKeypath](self, "styleComposersByKeypath"), v7 = objc_claimAutoreleasedReturnValue(), [v7 objectForKey:v6], v8 = objc_claimAutoreleasedReturnValue(), v7, !v8))
  {
    v61 = self;
    v9 = [MEMORY[0x277CBEB18] array];
    v10 = [MEMORY[0x277CBEB58] set];
    v11 = v5;
    v12 = 0;
    v62 = v11;
    do
    {
      v13 = [v11 elementName];
      if (![IKViewElementFactory isDependentByTagName:v13])
      {
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = v13;
        }

        v15 = v14;

        [v10 addObject:v13];
        v12 = v15;
      }

      [v9 insertObject:v13 atIndex:0];
      v16 = [v11 parentStyleableElement];

      v11 = v16;
    }

    while (v16);
    v59 = v12;
    v60 = v10;
    v17 = [v9 componentsJoinedByString:@"."];
    v18 = [v17 ik_sharedInstance];

    v57 = v18;
    [v62 setObject:v18 forKeyedSubscript:@"templateKeyPath"];
    v19 = [v9 count];
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:v19];
    v21 = v61;
    v22 = [(IKTemplateStyleSheet *)v61 templateTree];
    v23 = [v9 firstObject];
    v24 = [v22 objectForKey:v23];

    if (!v24)
    {
      goto LABEL_21;
    }

    [v20 addObject:&unk_2866F0FF0];
    if (v19 < 2)
    {
      goto LABEL_18;
    }

    for (i = 1; i != v19; ++i)
    {
      v26 = [v9 objectAtIndex:i];
      v27 = [v24 childNodes];
      v28 = [v27 objectForKey:v26];

      if (v28)
      {
        v29 = v28;

        v30 = [MEMORY[0x277CCABB0] numberWithInteger:i];
        [v20 addObject:v30];

        v24 = v29;
      }
    }

    v21 = v61;
    if (v24)
    {
LABEL_18:
      v31 = [v62 elementName];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __48__IKTemplateStyleSheet_styleComposerForElement___block_invoke;
      v66[3] = &unk_27979B920;
      v67 = v60;
      v32 = v31;
      v68 = v32;
      v69 = v59;
      v63 = MEMORY[0x259C21BA0](v66);
      if ((v63)[2](v63, v24))
      {
        v8 = [(IKTemplateStyleSheet *)v21 _styleComposerForNode:v24];
      }

      else
      {
        v55 = v32;
        v65 = v24;
        v64 = [v20 count];
        v56 = v24;
        v58 = v5;
LABEL_23:
        while (1)
        {
          v33 = [v65 parentNode];

          v65 = v33;
          if (!v33)
          {
            break;
          }

          --v64;
          v34 = [v20 objectAtIndex:?];
          v35 = [v34 integerValue] + 1;

          if (v35 < v19)
          {
            v36 = 1;
            while (1)
            {
              v37 = v20;
              v38 = v65;
              do
              {
                v39 = v38;
                v40 = [v9 objectAtIndex:v35];
                v41 = [v38 childNodes];
                v42 = [v41 objectForKey:v40];
                v43 = v42;
                if (v42)
                {
                  v44 = v42;
                }

                else
                {
                  v44 = v38;
                }

                v38 = v44;

                ++v35;
              }

              while (v35 < v19);
              if ((v63)[2](v63, v38))
              {
                break;
              }

              ++v36;
              v20 = v37;
              v45 = [v37 objectAtIndex:v64];
              v35 = [v45 integerValue] + v36;

              if (v35 >= v19)
              {
                v5 = v58;
                goto LABEL_23;
              }
            }

            v5 = v58;
            v20 = v37;
            if (v38)
            {
              goto LABEL_38;
            }
          }
        }

        v38 = 0;
LABEL_38:
        v46 = [v62 parentStyleableElement];
        v21 = v61;
        v47 = [(IKTemplateStyleSheet *)v61 styleComposerForElement:v46];

        v48 = v20;
        if (v65)
        {
          v49 = [(IKTemplateStyleSheet *)v61 _styleComposerForNode:v38];
        }

        else
        {
          v50 = [v47 defaultStyleComposer];
          v49 = [IKViewElementStyleComposer styleComposerWithDefaultStyleComposer:0 parentStyleComposer:v50 styleList:0 elementStyleOverrides:0];
        }

        v51 = [(IKTemplateStyleSheet *)v61 styleFactory];
        v52 = [v51 styleListForClassSelector:0];

        v8 = [IKViewElementStyleComposer styleComposerWithDefaultStyleComposer:v49 parentStyleComposer:v47 styleList:v52 elementStyleOverrides:0];

        v20 = v48;
        v32 = v55;
        v24 = v56;
      }

      if (v8)
      {
        v53 = [(IKTemplateStyleSheet *)v21 styleComposersByKeypath];
        v6 = v57;
        [v53 setObject:v8 forKey:v57];

LABEL_45:
        goto LABEL_46;
      }
    }

    else
    {
LABEL_21:
      v8 = 0;
    }

    v6 = v57;
    goto LABEL_45;
  }

LABEL_46:

LABEL_47:

  return v8;
}

uint64_t __48__IKTemplateStyleSheet_styleComposerForElement___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
    while (1)
    {
      v6 = a1[4];
      v7 = [v5 nodeName];
      LODWORD(v6) = [v6 containsObject:v7];

      if (v6)
      {
        break;
      }

      v8 = [v5 parentNode];

      v5 = v8;
      if (!v8)
      {
        goto LABEL_8;
      }
    }

    v5 = v5;
  }

  else
  {
    v5 = 0;
  }

LABEL_8:
  v9 = [v4 nodeName];
  if ([v9 isEqualToString:a1[5]])
  {
    v10 = [v5 parentNode];
    if (v10)
    {
      v11 = [v5 nodeName];
      v12 = [v11 isEqualToString:a1[6]];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)setViewElementStylesDirty
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [(IKTemplateStyleSheet *)self styleComposersByKeypath];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v11 + 1) + 8 * v8++) setNeedsRecomposition];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  v9 = [(IKTemplateStyleSheet *)self styleFactory];
  [v9 setViewElementStylesDirty];

  v10 = *MEMORY[0x277D85DE8];
}

+ (id)_styleSheetForTemplateName:(id)a3
{
  v67 = *MEMORY[0x277D85DE8];
  ptr = a3;
  v4 = ITMLKitGetLogObject(3);
  v5 = ITMLKitGetLogObject(3);
  v6 = os_signpost_id_make_with_pointer(v5, ptr);

  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2549A4000, v4, OS_SIGNPOST_INTERVAL_BEGIN, v6, "IKTemplateStyleSheet-Parse", &unk_254A72FF2, buf, 2u);
  }

  v7 = [IKTemplateStyleSheet _xmlTreeForTemplateName:ptr];
  doc = v7;
  if (v7)
  {
    [IKTemplateStyleSheet _resolveEmbeddedTemplatesInXmlTree:xmlDocGetRootElement(v7)];
    v8 = a1;
    objc_sync_enter(v8);
    v9 = [sParentPathMap objectForKey:ptr];
    objc_sync_exit(v8);

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
    if (v10)
    {
      v12 = 0;
      v13 = *v59;
      *&v11 = 138412290;
      v51 = v11;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v59 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v58 + 1) + 8 * i);
          v57 = 0;
          v16 = [MEMORY[0x277CCAA00] defaultManager];
          v17 = [v15 path];
          v18 = [v16 fileExistsAtPath:v17 isDirectory:&v57];
          v19 = v57;

          if ((v18 ^ 1 | v19))
          {
            v29 = ITMLKitGetLogObject(0);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [(IKTemplateStyleSheet *)v29 _styleSheetForTemplateName:v30, v31, v32, v33, v34, v35, v36];
            }

            v37 = 0;
            v38 = obj;
            goto LABEL_38;
          }

          v20 = MEMORY[0x277CBEA90];
          v21 = [v15 path];
          v22 = [v20 dataWithContentsOfFile:v21];

          v23 = ITMLKitGetLogObject(0);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
          {
            [(IKTemplateStyleSheet *)buf _styleSheetForTemplateName:v15, &v65, v23];
          }

          v56 = 0;
          v24 = [IKTemplateStyleSheet _xmlTreeWithData:v22 error:&v56];
          v25 = v56;
          if (v25)
          {
            v26 = ITMLKitGetLogObject(0);
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *v62 = v51;
              v63 = v25;
              _os_log_error_impl(&dword_2549A4000, v26, OS_LOG_TYPE_ERROR, "%@", v62, 0xCu);
            }
          }

          if (v12 && v24)
          {
            RootElement = xmlDocGetRootElement(v12);
            [IKTemplateStyleSheet _coalesceTrees:RootElement overridingTree:xmlDocGetRootElement(v24) forcedTemplateName:ptr];
            xmlFreeDoc(v24);
          }

          else
          {
            v12 = v24;
          }
        }

        v10 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      if (v12)
      {
        v28 = xmlDocGetRootElement(v12);
        [IKTemplateStyleSheet _coalesceTrees:v28 overridingTree:xmlDocGetRootElement(doc) forcedTemplateName:ptr];
        xmlFreeDoc(doc);
        doc = v12;
      }
    }

    else
    {
    }

    v55 = 0;
    v37 = [[IKTemplateStyleSheet alloc] _initWithXMLDoc:doc templateName:ptr error:&v55];
    v38 = v55;
    if (v38)
    {
      v39 = ITMLKitGetLogObject(0);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        [(IKTemplateStyleSheet *)v38 _styleSheetForTemplateName:v39, v40, v41, v42, v43, v44, v45];
      }
    }

    xmlFreeDoc(doc);
    v46 = ITMLKitGetLogObject(3);
    v47 = ITMLKitGetLogObject(3);
    v48 = os_signpost_id_make_with_pointer(v47, ptr);

    if (v48 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v46))
    {
      *v62 = 0;
      _os_signpost_emit_with_name_impl(&dword_2549A4000, v46, OS_SIGNPOST_INTERVAL_END, v48, "IKTemplateStyleSheet-Parse", &unk_254A72FF2, v62, 2u);
    }

LABEL_38:
  }

  else
  {
    v37 = 0;
  }

  v49 = *MEMORY[0x277D85DE8];

  return v37;
}

+ (void)_coalesceTrees:(_xmlNode *)a3 overridingTree:(_xmlNode *)a4 forcedTemplateName:(id)a5
{
  v8 = a5;
  v9 = objc_autoreleasePoolPush();
  v10 = [a1 _coalesceNode:a3 overridingNode:a4 forcedTemplateName:v8];
  objc_autoreleasePoolPop(v9);
  for (i = a4->children; i; i = i->next)
  {
    if (i->type == XML_ELEMENT_NODE)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:i->name];
      v13 = [v10 objectForKey:v12];
      v14 = v13;
      v16 = 0;
      if (v13)
      {
        [v13 getValue:&v16];
        v15 = v16;
      }

      else
      {
        v15 = xmlNewChild(a3, 0, [v12 UTF8String], 0);
        v16 = v15;
      }

      [IKTemplateStyleSheet _coalesceTrees:v15 overridingTree:i forcedTemplateName:v8];
    }
  }
}

+ (id)_coalesceNode:(_xmlNode *)a3 overridingNode:(_xmlNode *)a4 forcedTemplateName:(id)a5
{
  v106 = *MEMORY[0x277D85DE8];
  v89 = a5;
  v7 = 0;
  parent = a3;
  if (a3 && a4)
  {
    v100 = [MEMORY[0x277CBEB38] dictionary];
    v99 = [MEMORY[0x277CBEB38] dictionary];
    v98 = [MEMORY[0x277CBEB38] dictionary];
    v97 = [MEMORY[0x277CBEB38] dictionary];
    v95 = [MEMORY[0x277CBEB38] dictionary];
    v8 = 0x277CCA000uLL;
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:a3->name];
    v10 = [v9 lowercaseString];
    v96 = [v10 isEqualToString:@"head"];

    v88 = v9;
    v11 = [v9 lowercaseString];
    v92 = [v11 isEqualToString:@"document"];

    children = a4->children;
    if (children)
    {
      v13 = &stru_2866C1E60;
      v14 = &stru_2866C1E60;
      while (children->type != XML_ELEMENT_NODE)
      {
        v24 = v14;
        v19 = v13;
LABEL_34:
        children = children->next;
        if (!children)
        {
          goto LABEL_39;
        }
      }

      v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:children->name];
      if (v92)
      {
        v16 = [(__CFString *)v13 lowercaseString];
        v17 = [v16 isEqualToString:@"head"];

        if (v17)
        {
          xmlNodeSetName(children, [v89 UTF8String]);
          v18 = v89;

          v15 = v18;
        }
      }

      v19 = v15;

      if (v96 && (-[__CFString lowercaseString](v19, "lowercaseString"), v20 = objc_claimAutoreleasedReturnValue(), v21 = [v20 isEqualToString:@"style"], v20, v21))
      {
        Content = xmlNodeGetContent(children);
        v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:Content];
        v24 = [(__CFString *)v14 stringByAppendingString:v23];

        if (Content)
        {
          free(Content);
        }
      }

      else
      {
        v24 = v14;
      }

      Prop = xmlGetProp(children, [@"class" UTF8String]);
      if (Prop)
      {
        v26 = Prop;
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:Prop];
        free(v26);
      }

      else
      {
        v27 = 0;
      }

      v28 = xmlGetProp(children, [@"style" UTF8String]);
      if (v28)
      {
        v29 = v28;
        v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:v28];
        free(v29);
        if (!v27)
        {
          goto LABEL_21;
        }
      }

      else
      {
        v30 = 0;
        if (!v27)
        {
LABEL_21:
          if (v30)
          {
            [v98 setObject:v30 forKey:v19];
          }

          v31 = xmlGetProp(children, "overrideclass");
          if (v31)
          {
            v32 = v31;
            v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:v31];
            free(v32);
          }

          else
          {
            v33 = 0;
          }

          v34 = xmlGetProp(children, "overridestyle");
          if (v34)
          {
            v35 = v34;
            v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:v34];
            free(v35);
            if (!v33)
            {
LABEL_31:
              if (v36)
              {
                [v97 setObject:v36 forKey:v19];
              }

              v13 = v19;
              v14 = v24;
              goto LABEL_34;
            }
          }

          else
          {
            v36 = 0;
            if (!v33)
            {
              goto LABEL_31;
            }
          }

          [v99 setObject:v33 forKey:v19];
          goto LABEL_31;
        }
      }

      [v100 setObject:v27 forKey:v19];
      goto LABEL_21;
    }

    v19 = &stru_2866C1E60;
    v24 = &stru_2866C1E60;
LABEL_39:

    v37 = parent->children;
    if (v37)
    {
      v38 = &stru_2866C1E60;
      v39 = v24;
      while (v37->type != XML_ELEMENT_NODE)
      {
        v44 = v38;
LABEL_64:
        v37 = v37->next;
        if (!v37)
        {
          goto LABEL_69;
        }
      }

      v40 = [*(v8 + 3240) stringWithUTF8String:v37->name];
      if (v92)
      {
        v41 = [(__CFString *)v38 lowercaseString];
        v42 = [v41 isEqualToString:@"head"];

        if (v42)
        {
          xmlNodeSetName(v37, [v89 UTF8String]);
          v43 = v89;

          v40 = v43;
        }
      }

      v44 = v40;

      if (v96)
      {
        v45 = [(__CFString *)v44 lowercaseString];
        v46 = [v45 isEqualToString:@"style"];

        if (v46)
        {
          if (([(__CFString *)v39 isEqualToString:&stru_2866C1E60]& 1) == 0)
          {
            v47 = xmlNodeGetContent(v37);
            v48 = [*(v8 + 3240) stringWithUTF8String:v47];
            if (v47)
            {
              free(v47);
            }

            v49 = [v48 stringByAppendingString:v39];

            xmlNodeSetContent(v37, [v49 UTF8String]);
            v39 = &stru_2866C1E60;
          }
        }
      }

      v50 = [MEMORY[0x277CCAE60] valueWithPointer:v37];
      [v95 setObject:v50 forKey:v44];

      v51 = [v98 valueForKey:v44];
      v52 = [v100 valueForKey:v44];
      v53 = [v97 valueForKey:v44];
      v54 = [v99 valueForKey:v44];
      if (v51)
      {
        [v98 removeObjectForKey:v44];
        v55 = xmlGetProp(v37, [@"style" UTF8String]);
        if (v55)
        {
          v56 = v55;
          [*(v8 + 3240) stringWithUTF8String:v55];
          v58 = v57 = v44;
          free(v56);
          v59 = [@"style" UTF8String];
          v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", v58, v51];;
          xmlSetProp(v37, v59, [v60 UTF8String]);

          v44 = v57;
          v8 = 0x277CCA000;
        }

        else
        {
          xmlSetProp(v37, [@"style" UTF8String], objc_msgSend(v51, "UTF8String"));
        }
      }

      if (v52)
      {
        [v100 removeObjectForKey:v44];
        v61 = xmlGetProp(v37, [@"class" UTF8String]);
        if (!v61)
        {
          xmlSetProp(v37, [@"class" UTF8String], objc_msgSend(v52, "UTF8String"));
          if (!v53)
          {
            goto LABEL_61;
          }

          goto LABEL_60;
        }

        v62 = v61;
        [*(v8 + 3240) stringWithUTF8String:v61];
        v64 = v63 = v44;
        free(v62);
        v65 = [@"class" UTF8String];
        v66 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@ %@", v64, v52];
        xmlSetProp(v37, v65, [v66 UTF8String]);

        v44 = v63;
        v8 = 0x277CCA000;
      }

      if (!v53)
      {
LABEL_61:
        if (v54)
        {
          [v99 removeObjectForKey:v44];
          xmlSetProp(v37, [@"class" UTF8String], objc_msgSend(v54, "UTF8String"));
        }

        v38 = v44;
        goto LABEL_64;
      }

LABEL_60:
      [v97 removeObjectForKey:v44];
      xmlSetProp(v37, [@"style" UTF8String], objc_msgSend(v53, "UTF8String"));
      goto LABEL_61;
    }

    v44 = &stru_2866C1E60;
    v39 = v24;
LABEL_69:
    v87 = v44;
    v90 = v39;
    v67 = [MEMORY[0x277CBEB58] set];
    v68 = [v98 allKeys];
    [v67 addObjectsFromArray:v68];

    v69 = [v100 allKeys];
    [v67 addObjectsFromArray:v69];

    v70 = [v97 allKeys];
    [v67 addObjectsFromArray:v70];

    v71 = [v99 allKeys];
    [v67 addObjectsFromArray:v71];

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v86 = v67;
    obj = [v67 allObjects];
    v72 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
    if (v72)
    {
      v73 = v72;
      v93 = *v102;
      do
      {
        for (i = 0; i != v73; ++i)
        {
          if (*v102 != v93)
          {
            objc_enumerationMutation(obj);
          }

          v75 = *(*(&v101 + 1) + 8 * i);
          v76 = xmlNewChild(parent, 0, [v75 UTF8String], 0);
          v77 = [MEMORY[0x277CCAE60] valueWithPointer:v76];
          [v95 setObject:v77 forKey:v75];

          if (v96)
          {
            v78 = [v75 lowercaseString];
            v79 = [v78 isEqualToString:@"style"];

            if (v79)
            {
              if (([(__CFString *)v90 isEqualToString:&stru_2866C1E60]& 1) == 0)
              {
                xmlNodeSetContent(0, [(__CFString *)v90 UTF8String]);

                v90 = &stru_2866C1E60;
              }
            }
          }

          v80 = [v98 objectForKey:v75];
          if (v80)
          {
            xmlSetProp(v76, [@"style" UTF8String], objc_msgSend(v80, "UTF8String"));
          }

          v81 = [v100 objectForKey:v75];
          if (v81)
          {
            xmlSetProp(v76, [@"class" UTF8String], objc_msgSend(v81, "UTF8String"));
          }

          v82 = [v97 objectForKey:v75];
          if (v82)
          {
            xmlSetProp(v76, [@"style" UTF8String], objc_msgSend(v82, "UTF8String"));
          }

          v83 = [v99 objectForKey:v75];
          if (v83)
          {
            xmlSetProp(v76, [@"class" UTF8String], objc_msgSend(v83, "UTF8String"));
          }
        }

        v73 = [obj countByEnumeratingWithState:&v101 objects:v105 count:16];
      }

      while (v73);
    }

    v7 = [v95 copy];
  }

  v84 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (_xmlDoc)_xmlTreeForTemplateName:(id)a3
{
  v4 = a3;
  v5 = a1;
  objc_sync_enter(v5);
  v6 = [sFilePathMap objectForKey:v4];
  objc_sync_exit(v5);

  if (v6)
  {
    v24 = 0;
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [v6 path];
    v9 = [v7 fileExistsAtPath:v8 isDirectory:&v24];
    v10 = v24;

    if (!v9 || (v10 & 1) != 0)
    {
      v13 = ITMLKitGetLogObject(0);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [(IKTemplateStyleSheet *)v13 _styleSheetForTemplateName:v15, v16, v17, v18, v19, v20, v21];
      }

      v14 = 0;
    }

    else
    {
      v11 = MEMORY[0x277CBEA90];
      v12 = [v6 path];
      v13 = [v11 dataWithContentsOfFile:v12];

      v23 = 0;
      v14 = [IKTemplateStyleSheet _xmlTreeWithData:v13 error:&v23];
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (_xmlDoc)_xmlTreeWithData:(id)a3 error:(id *)a4
{
  v5 = *MEMORY[0x277D85DF8];
  v6 = a3;
  xmlSetGenericErrorFunc(v5, MEMORY[0x277D85E30]);
  v7 = [v6 bytes];
  v8 = [v6 length];

  Memory = xmlReadMemory(v7, v8, 0, 0, 4096);
  xmlSetGenericErrorFunc(0, 0);
  v10 = 0;
  if (!Memory)
  {
    v10 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ITMLKitErrorDomain" code:200 userInfo:0];
  }

  if (a4)
  {
    v10 = v10;
    *a4 = v10;
  }

  return Memory;
}

+ (void)_resolveEmbeddedTemplatesInXmlTree:(_xmlNode *)a3
{
  doc = a3->doc;
  cur = 0;
  v5 = 0x279798000uLL;
  [IKTemplateStyleSheet _findNodesInXmlTree:doc styleNode:&cur templateNode:0];
  children = a3->children;
  if (children)
  {
    v7 = 0x277CCA000uLL;
    do
    {
      if (children->type == XML_ELEMENT_NODE)
      {
        v8 = [@"embedStyleSheetForTemplate" UTF8String];
        v9 = xmlHasProp(children, v8);
        if (v9)
        {
          v10 = v9;
          Prop = xmlGetProp(children, v8);
          if (Prop)
          {
            v12 = Prop;
            v13 = [*(v7 + 3240) stringWithUTF8String:Prop];
            free(v12);
          }

          else
          {
            v13 = 0;
          }

          xmlRemoveProp(v10);
        }

        else
        {
          v13 = 0;
        }

        if ([v13 length])
        {
          v14 = [*(v5 + 2216) _xmlTreeForTemplateName:v13];
          if (v14)
          {
            v15 = v14;
            v26 = 0;
            v27 = 0;
            [*(v5 + 2216) _findNodesInXmlTree:v14 styleNode:&v27 templateNode:&v26];
            if (cur && v27)
            {
              Content = xmlNodeGetContent(cur);
              if (Content)
              {
                v17 = Content;
                v18 = [*(v7 + 3240) stringWithUTF8String:Content];
                free(v17);
              }

              else
              {
                v18 = &stru_2866C1E60;
              }

              v19 = xmlNodeGetContent(v27);
              if (v19)
              {
                v20 = v19;
                v21 = [*(v7 + 3240) stringWithUTF8String:v19];
                [(__CFString *)v18 stringByAppendingString:v21];
                v23 = v22 = v5;

                xmlNodeSetContent(cur, [(__CFString *)v23 UTF8String]);
                free(v20);

                v7 = 0x277CCA000;
                v18 = v23;
                v5 = v22;
              }
            }

            if (v26)
            {
              for (i = *(v26 + 24); i; i = *(i + 48))
              {
                if (*(i + 8) == 1)
                {
                  v25 = xmlDocCopyNode(i, doc, 1);
                  xmlAddChild(children, v25);
                }
              }
            }

            xmlFreeDoc(v15);
          }
        }

        else if (children->children)
        {
          [*(v5 + 2216) _resolveEmbeddedTemplatesInXmlTree:children];
        }
      }

      children = children->next;
    }

    while (children);
  }
}

+ (void)_findNodesInXmlTree:(_xmlDoc *)a3 styleNode:(_xmlNode *)a4 templateNode:(_xmlNode *)a5
{
  RootElement = xmlDocGetRootElement(a3);
  if (!xmlStrcmp(RootElement->name, "document"))
  {
    children = RootElement->children;
    if (children)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        if (v10 && v9)
        {
          break;
        }

        if (children->type == XML_ELEMENT_NODE)
        {
          if (v10 || xmlStrcmp(children->name, "head"))
          {
            if (v9)
            {
              v11 = 1;
            }

            else
            {
              v11 = v10 == 0;
            }

            if (!v11)
            {
              v9 = children;
            }
          }

          else
          {
            v10 = children;
          }
        }

        children = children->next;
      }

      while (children);
    }

    else
    {
      v10 = 0;
      v9 = 0;
    }

    if (a5)
    {
      *a5 = v9;
    }

    if (a4 && v10)
    {
      v12 = v10->children;
      if (v12)
      {
        do
        {
          if (v12->type == XML_ELEMENT_NODE)
          {
            if (xmlStrcmp(v12->name, "style"))
            {
              v13 = 0;
            }

            else
            {
              v13 = v12;
            }
          }

          else
          {
            v13 = 0;
          }

          v12 = v12->next;
          if (v12)
          {
            v14 = v13 == 0;
          }

          else
          {
            v14 = 0;
          }
        }

        while (v14);
      }

      else
      {
        v13 = 0;
      }

      *a4 = v13;
    }
  }
}

- (id)_initWithXMLDoc:(_xmlDoc *)a3 templateName:(id)a4 error:(id *)a5
{
  v45[1] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v43.receiver = self;
  v43.super_class = IKTemplateStyleSheet;
  v9 = [(IKTemplateStyleSheet *)&v43 init];
  if (!v9)
  {
    goto LABEL_18;
  }

  v10 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  if (a3)
  {
    RootElement = xmlDocGetRootElement(a3);
    p_private = &RootElement->_private;
    if (!RootElement)
    {
LABEL_14:
      objc_storeStrong(&v9->_styleFactory, p_private);
      v20 = [v10 copy];
      templateTree = v9->_templateTree;
      v9->_templateTree = v20;

      v22 = [v8 copy];
      templateName = v9->_templateName;
      v9->_templateName = v22;

      v24 = [MEMORY[0x277CBEB38] dictionary];
      v16 = 0;
      styleComposersByKeypath = v9->_styleComposersByKeypath;
      v9->_styleComposersByKeypath = v24;
      goto LABEL_15;
    }

    IKXMLStripSpaces(RootElement);
    v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:p_private[2]];
    if ([v13 isEqualToString:@"document"])
    {
      v39 = 0;
      v40 = &v39;
      v41 = 0x2020000000;
      v42 = 0;
      v35[0] = MEMORY[0x277D85DD0];
      v35[1] = 3221225472;
      v35[2] = __59__IKTemplateStyleSheet__initWithXMLDoc_templateName_error___block_invoke;
      v35[3] = &unk_27979B948;
      v38 = &v39;
      v36 = v10;
      v37 = v9;
      IKXMLEnumerateChildElements(p_private, v35);
      v29 = 0;
      v30 = &v29;
      v31 = 0x3032000000;
      v32 = __Block_byref_object_copy__22;
      v33 = __Block_byref_object_dispose__22;
      v34 = 0;
      v14 = v40[3];
      if (v14)
      {
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __59__IKTemplateStyleSheet__initWithXMLDoc_templateName_error___block_invoke_92;
        v28[3] = &unk_27979B970;
        v28[4] = &v29;
        IKXMLEnumerateChildElements(v14, v28);
        v15 = v30[5];
      }

      else
      {
        v15 = 0;
      }

      p_private = [IKStyleFactory styleFactoryWithMarkup:v15 filterBlockedStyles:0];
      _Block_object_dispose(&v29, 8);

      _Block_object_dispose(&v39, 8);
      v16 = 0;
    }

    else
    {
      v44 = *MEMORY[0x277CCA450];
      v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Not a style sheet document (must be document): %@", v13];
      v45[0] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:&v44 count:1];

      v16 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ITMLKitErrorDomain" code:203 userInfo:v18];
      p_private = 0;
    }
  }

  else
  {
    v16 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"ITMLKitErrorDomain" code:200 userInfo:0];
    p_private = 0;
  }

  if (!v16)
  {
    goto LABEL_14;
  }

  styleComposersByKeypath = v9;
  v9 = 0;
LABEL_15:

  if (a5)
  {
    v25 = v16;
    *a5 = v16;
  }

LABEL_18:
  v26 = *MEMORY[0x277D85DE8];
  return v9;
}

void __59__IKTemplateStyleSheet__initWithXMLDoc_templateName_error___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  v12 = v5;
  if (*(*(*(a1 + 48) + 8) + 24) || (v7 = [v5 isEqualToString:@"head"], v6 = v12, !v7))
  {
    v8 = [*(a1 + 32) objectForKey:v6];

    if (!v8)
    {
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = [objc_opt_class() _templateTreeWithXMLTree:a2 parentNode:0];
      [v10 setObject:v11 forKey:v12];
    }
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = a2;
  }
}

void __59__IKTemplateStyleSheet__initWithXMLDoc_templateName_error___block_invoke_92(uint64_t a1, const xmlNode *a2, void *a3, _BYTE *a4)
{
  if ([a3 isEqualToString:@"style"])
  {
    Content = xmlNodeGetContent(a2);
    if (Content)
    {
      v8 = Content;
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:Content];
      v10 = *(*(a1 + 32) + 8);
      v11 = *(v10 + 40);
      *(v10 + 40) = v9;

      free(v8);
    }

    *a4 = 1;
  }
}

+ (id)_templateTreeWithXMLTree:(_xmlNode *)a3 parentNode:(id)a4
{
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [a1 _templateNodeWithXMLNode:a3 parentNode:v6];
  objc_autoreleasePoolPop(v7);
  v9 = [MEMORY[0x277CBEB38] dictionary];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __60__IKTemplateStyleSheet__templateTreeWithXMLTree_parentNode___block_invoke;
  v15[3] = &unk_27979B998;
  v16 = v9;
  v18 = a1;
  v10 = v8;
  v17 = v10;
  v11 = v9;
  IKXMLEnumerateChildElements(a3, v15);
  [v10 setChildNodes:v11];
  v12 = v17;
  v13 = v10;

  return v10;
}

void __60__IKTemplateStyleSheet__templateTreeWithXMLTree_parentNode___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a1[5];
  v4 = a1[6];
  v6 = a1[4];
  v7 = a3;
  v9 = [v4 _templateTreeWithXMLTree:a2 parentNode:v5];
  v8 = [v7 ik_sharedInstance];

  [v6 setObject:v9 forKey:v8];
}

+ (id)_templateNodeWithXMLNode:(_xmlNode *)a3 parentNode:(id)a4
{
  v5 = MEMORY[0x277CCACA8];
  name = a3->name;
  v7 = a4;
  v8 = [v5 stringWithUTF8String:name];
  Prop = xmlGetProp(a3, [@"class" UTF8String]);
  if (Prop)
  {
    v10 = Prop;
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:Prop];
    free(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = xmlGetProp(a3, [@"style" UTF8String]);
  if (v12)
  {
    v13 = v12;
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:v12];
    free(v13);
  }

  else
  {
    v14 = 0;
  }

  v15 = [IKTemplateTreeNode alloc];
  v16 = [IKViewElementStyle elementStyleWithSelector:v11 inlineStyleString:v14 filterBlockedStyles:0];
  v17 = [(IKTemplateTreeNode *)v15 initWithNodeName:v8 styleOverrides:v16 parentNode:v7];

  return v17;
}

- (id)_styleComposerForNode:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 styleComposer];

    if (!v6)
    {
      v7 = [v5 parentNode];
      v8 = [(IKTemplateStyleSheet *)self _styleComposerForNode:v7];

      v9 = [v5 styleOverrides];
      v10 = [v9 classDescriptorString];
      v11 = [(IKTemplateStyleSheet *)self styleFactory];
      v12 = [v11 styleListForClassSelector:v10];

      v13 = [IKViewElementStyleComposer styleComposerWithDefaultStyleComposer:0 parentStyleComposer:v8 styleList:v12 elementStyleOverrides:v9];
      [v5 setStyleComposer:v13];
    }
  }

  v14 = [v5 styleComposer];

  return v14;
}

@end
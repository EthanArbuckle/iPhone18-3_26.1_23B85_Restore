@interface IKViewElementFactory
+ (BOOL)elementsForDocumentElement:(id)a3 context:(id)a4;
+ (BOOL)isDependentByTagName:(id)a3;
+ (Class)elementClassByTagName:(id)a3;
+ (void)initialize;
- (Class)elementClassByTagName:(id)a3;
- (IKViewElementFactory)initWithElementRegistry:(id)a3;
- (id)elementForDOMElement:(id)a3 parent:(id)a4;
- (unint64_t)elementTypeByTagName:(id)a3;
@end

@implementation IKViewElementFactory

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = sClassMap;
    sClassMap = v2;

    v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v5 = sTypeMap_0;
    sTypeMap_0 = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = sDependentMap;
    sDependentMap = v6;

    [IKViewElementFactory registerClass:objc_opt_class() forElementName:@"head" elementType:47];
    [IKViewElementFactory registerClass:objc_opt_class() forElementName:@"img" elementType:49];
    [IKViewElementFactory registerClass:objc_opt_class() forElementName:@"text" elementType:138];
    v8 = objc_opt_class();

    [IKViewElementFactory registerClass:v8 forElementName:@"span" elementType:138];
  }
}

- (IKViewElementFactory)initWithElementRegistry:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = IKViewElementFactory;
  v6 = [(IKViewElementFactory *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_elementRegistry, a3);
  }

  return v7;
}

+ (Class)elementClassByTagName:(id)a3
{
  v3 = a3;
  v4 = +[IKAppContext currentAppContext];
  v5 = [v4 viewElementRegistry];

  if (v5)
  {
    v6 = [v5 elementClassByTagName:v3];

    v7 = v6;
  }

  else
  {
    v7 = [sClassMap objectForKeyedSubscript:v3];
  }

  return v7;
}

+ (BOOL)isDependentByTagName:(id)a3
{
  v3 = a3;
  v4 = +[IKAppContext currentAppContext];
  v5 = [v4 viewElementRegistry];

  if (v5)
  {
    v6 = [v5 isDependentByTagName:v3];
  }

  else
  {
    v7 = [sDependentMap objectForKeyedSubscript:v3];

    v6 = [v7 BOOLValue];
    v3 = v7;
  }

  return v6;
}

- (Class)elementClassByTagName:(id)a3
{
  elementRegistry = self->_elementRegistry;
  if (elementRegistry)
  {
    v4 = [(IKViewElementRegistry *)elementRegistry elementClassByTagName:a3];
  }

  else
  {
    v4 = [sClassMap objectForKeyedSubscript:a3];
  }

  return v4;
}

- (unint64_t)elementTypeByTagName:(id)a3
{
  elementRegistry = self->_elementRegistry;
  if (elementRegistry)
  {

    return [(IKViewElementRegistry *)elementRegistry elementTypeByTagName:a3];
  }

  else
  {
    v6 = [sTypeMap_0 objectForKeyedSubscript:a3];
    v7 = [v6 unsignedIntegerValue];

    return v7;
  }
}

+ (BOOL)elementsForDocumentElement:(id)a3 context:(id)a4
{
  v100 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v5 tagName];
  v8 = [v7 isEqualToString:@"document"];
  v9 = v8;
  if (!v8)
  {
    goto LABEL_90;
  }

  v80 = v7;
  v81 = v8;
  v82 = v6;
  v83 = v5;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v10 = [v5 childElements];
  v11 = [v10 countByEnumeratingWithState:&v94 objects:v99 count:16];
  if (v11)
  {
    v12 = v11;
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v13 = 0;
    v14 = *v95;
    while (1)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v95 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v94 + 1) + 8 * i);
        if (v13 || ([*(*(&v94 + 1) + 8 * i) tagName], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "isEqualToString:", @"head"), v17, (v18 & 1) == 0))
        {
          if (v87 || ([v16 tagName], v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "isEqualToString:", @"navigationBar"), v20, (v21 & 1) == 0))
          {
            if (v86 || ([v16 tagName], v22 = objc_claimAutoreleasedReturnValue(), v23 = objc_msgSend(v22, "isEqualToString:", @"toolbar"), v22, (v23 & 1) == 0))
            {
              v19 = v16;
              if (v88)
              {
                continue;
              }

              goto LABEL_18;
            }

            v86 = v16;
          }

          else
          {
            v87 = v16;
          }

          v19 = v88;
        }

        else
        {
          v19 = v88;
          v13 = v16;
        }

LABEL_18:
        v24 = v16;
        v88 = v19;
      }

      v12 = [v10 countByEnumeratingWithState:&v94 objects:v99 count:16];
      if (!v12)
      {
        goto LABEL_23;
      }
    }
  }

  v86 = 0;
  v87 = 0;
  v88 = 0;
  v13 = 0;
LABEL_23:

  v5 = v83;
  v79 = [v83 jsNodeData];
  v85 = [IKViewElement evaluateElementUpdateType:?];
  v25 = v13;
  v26 = [v13 jsNodeData];
  v6 = v82;
  v27 = [v82 headViewElement];
  v84 = v85 != 0;
  if (v27 || !v13)
  {
    v29 = [v82 headViewElement];
    if (v29)
    {
      v30 = v13 == 0;
    }

    else
    {
      v30 = 0;
    }

    v28 = v30;
    if (v13)
    {
      if ([v26 isSubtreeUpdated] & 1) != 0 || (objc_msgSend(v26, "isChildrenUpdated"))
      {
        v28 = 1;
      }

      else
      {
        v28 = [v26 isUpdated];
      }
    }
  }

  else
  {
    v28 = 1;
  }

  v31 = [v82 templateViewElement];
  v32 = [v31 elementName];
  v33 = [v88 tagName];
  v34 = [v32 isEqualToString:v33];

  v78 = v26;
  v77 = v34;
  if ((v85 | 4) == 4)
  {
    goto LABEL_39;
  }

  if ((v28 | v34 ^ 1))
  {
    v84 = (v85 != 0) & (v28 | v34 ^ 1);
LABEL_39:
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v35 = [v13 childElements];
    v36 = [v35 countByEnumeratingWithState:&v90 objects:v98 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = 0;
      v39 = *v91;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v91 != v39)
          {
            objc_enumerationMutation(v35);
          }

          v41 = *(*(&v90 + 1) + 8 * j);
          v42 = [v41 tagName];
          v43 = [v42 isEqualToString:@"style"];

          if (v43)
          {
            v44 = [v41 textContent];
            v45 = v44;
            if (v38)
            {
              v46 = [v38 stringByAppendingString:v44];

              v38 = v46;
            }

            else
            {
              v38 = v44;
            }
          }
        }

        v37 = [v35 countByEnumeratingWithState:&v90 objects:v98 count:16];
      }

      while (v37);
    }

    else
    {
      v38 = 0;
    }

    v47 = +[IKAppContext currentAppContext];
    if ([v47 appUsesDefaultStyleSheets])
    {
      v48 = [v88 tagName];
      v49 = [IKTemplateStyleSheet styleSheetForTemplateName:v48];
    }

    else
    {
      v49 = 0;
    }

    v6 = v82;
    v5 = v83;
    v25 = v13;

    v50 = [IKViewElementStyleFactory styleFactoryWithMarkup:v38 styleSheet:v49];
    [v82 setStyleFactory:v50];

    goto LABEL_58;
  }

  v84 = 0;
LABEL_58:
  v51 = [v6 styleFactory];
  v52 = [IKViewElementFactory alloc];
  v53 = +[IKAppContext currentAppContext];
  v54 = [v53 viewElementRegistry];
  v55 = [(IKViewElementFactory *)v52 initWithElementRegistry:v54];

  [(IKViewElementFactory *)v55 setSparse:v85 != 0];
  [(IKViewElementFactory *)v55 setStyleFactory:v51];
  if (v25)
  {
    if (v84)
    {
      v56 = [v25 jsNodeData];
      [v56 setUpdated:1];
    }

    v57 = [(IKViewElementFactory *)v55 elementForDOMElement:v25 parent:0];
    [v6 setHeadViewElement:v57];
  }

  if (v87)
  {
    if (v84)
    {
      v58 = [v87 jsNodeData];
      [v58 setUpdated:1];

      v59 = [(IKViewElementFactory *)v55 elementForDOMElement:v87 parent:0];
      [v59 disperseUpdateType:2];
    }

    else
    {
      v59 = [(IKViewElementFactory *)v55 elementForDOMElement:v87 parent:0];
    }

    [v6 setNavigationBarViewElement:v59];
  }

  if (v86)
  {
    if (v84)
    {
      v60 = [v86 jsNodeData];
      [v60 setUpdated:1];

      v61 = [(IKViewElementFactory *)v55 elementForDOMElement:v86 parent:0];
      [v61 disperseUpdateType:2];
    }

    else
    {
      v61 = [(IKViewElementFactory *)v55 elementForDOMElement:v86 parent:0];
    }

    [v6 setToolBarViewElement:v61];
  }

  if (v84)
  {
    v62 = [v88 jsNodeData];
    [v62 setUpdated:1];
  }

  if (!v85)
  {
    v63 = [v88 jsNodeData];
    [v63 setDataResolved:0];

    v64 = [v88 jsNodeData];
    [v64 setPrototypesResolved:0];

    v65 = [v88 jsNodeData];
    [v65 setRulesParsed:0];
  }

  v66 = ITMLKitGetLogObject(3);
  v67 = ITMLKitGetLogObject(3);
  v68 = os_signpost_id_make_with_pointer(v67, &stru_2866C1E60);

  if (v68 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v66))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2549A4000, v66, OS_SIGNPOST_INTERVAL_BEGIN, v68, "DOMParsing", &unk_254A72FF2, buf, 2u);
  }

  v69 = [(IKViewElementFactory *)v55 elementForDOMElement:v88 parent:0];
  v70 = ITMLKitGetLogObject(3);
  v71 = ITMLKitGetLogObject(3);
  v72 = os_signpost_id_make_with_pointer(v71, &stru_2866C1E60);

  if (v72 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v70))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_2549A4000, v70, OS_SIGNPOST_INTERVAL_END, v72, "DOMParsing", &unk_254A72FF2, buf, 2u);
  }

  if (v84)
  {
    [v69 disperseUpdateType:2];
  }

  [v6 setTemplateViewElement:v69];
  v73 = 4;
  if (v77)
  {
    v73 = 1;
  }

  if (v85)
  {
    v74 = v73;
  }

  else
  {
    v74 = 0;
  }

  [v6 setUpdateType:v74];

  v9 = v81;
  v7 = v80;
LABEL_90:

  v75 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)elementForDOMElement:(id)a3 parent:(id)a4
{
  v52 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    goto LABEL_6;
  }

  v8 = [v6 tagName];
  if ([v8 isEqualToString:@"placeholder"])
  {
    goto LABEL_5;
  }

  v9 = [v6 tagName];
  if ([v9 isEqualToString:@"prototypes"])
  {

LABEL_5:
LABEL_6:
    v10 = 0;
    goto LABEL_7;
  }

  v13 = [v6 tagName];
  v14 = [v13 isEqualToString:@"rules"];

  if (v14)
  {
    goto LABEL_6;
  }

  parsingFlags = self->_parsingFlags;
  v16 = 8;
  if ((parsingFlags & 8) != 0)
  {
    v17 = self->_parsingFlags;
  }

  else
  {
    if ([v6 _isPrototypeElement])
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    v17 = self->_parsingFlags;
  }

  *&self->_parsingFlags = v17 & 0xF7 | v16;
  v18 = v17 & (v16 == 0);
  v19 = [v6 jsNodeData];
  v20 = v19;
  if (v18 != 1 || ([v19 containsUpdates] & 1) != 0 || (*&self->_parsingFlags & 6) != 0)
  {
    v21 = parsingFlags & 8;
    v22 = [v6 tagName];
    v23 = [(IKViewElementFactory *)self elementClassByTagName:v22];
    if (v23)
    {
      v24 = v23;
      if ((*&self->_parsingFlags & 0xA) == 2)
      {
        [v20 setUpdated:1];
      }

      v25 = objc_autoreleasePoolPush();
      [(objc_class *)v24 willParseDOMElement:v6];
      objc_autoreleasePoolPop(v25);
      v26 = self->_parsingFlags;
      v27 = v26 & 2;
      if (v18)
      {
        v28 = [v20 isUpdated];
        v29 = 2;
        if ((v28 & 1) == 0 && (v26 & 2) == 0)
        {
          if ([(objc_class *)v24 shouldParseChildDOMElements])
          {
            v29 = 0;
          }

          else
          {
            v29 = 2;
          }
        }

        v26 = self->_parsingFlags;
        *&self->_parsingFlags = v26 & 0xFD | v29;
        if ([v20 isChildrenUpdated])
        {
          v30 = 4;
        }

        else
        {
          v30 = 0;
        }

        v31 = self->_parsingFlags;
      }

      else
      {
        v30 = 0;
        v31 = v26 & 0xFD;
      }

      v34 = v26 & 4;
      *&self->_parsingFlags = v31 & 0xFB | v30;
      v35 = [[v24 alloc] initWithDOMElement:v6 parent:v7 elementFactory:self];
      v10 = v35;
      if (!v18 || (v36 = self->_parsingFlags, (v36 & 2) != 0))
      {
        v43 = v34;
        v44 = v27;
        v45 = v22;
        v46 = v20;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v37 = [v35 features];
        v38 = [v37 countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (v38)
        {
          v39 = v38;
          v40 = *v48;
          do
          {
            for (i = 0; i != v39; ++i)
            {
              if (*v48 != v40)
              {
                objc_enumerationMutation(v37);
              }

              v42 = *(*(&v47 + 1) + 8 * i);
              if (objc_opt_respondsToSelector())
              {
                [v42 migrateToViewElement:v10];
              }
            }

            v39 = [v37 countByEnumeratingWithState:&v47 objects:v51 count:16];
          }

          while (v39);
        }

        v20 = v46;
        v36 = self->_parsingFlags;
        v22 = v45;
        v34 = v43;
        v27 = v44;
      }

      v33 = v34 | v27 | v36 & 0xF9;
    }

    else
    {
      v32 = ITMLKitGetLogObject(0);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        [IKViewElementFactory elementForDOMElement:v22 parent:v32];
      }

      v10 = 0;
      v33 = self->_parsingFlags;
    }

    *&self->_parsingFlags = v33 & 0xF7 | v21;
  }

  else
  {
    v10 = 0;
  }

LABEL_7:
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

@end
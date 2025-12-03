@interface RWIProtocolDOMNode(IKJSInspector)
+ (id)ik_nodeFromDOMNode:()IKJSInspector;
+ (id)ik_nodeFromDOMNode:()IKJSInspector depth:;
- (id)ik_attributesDictionary;
- (id)ik_description;
- (id)ik_nodeWithNodeId:()IKJSInspector;
- (void)ik_insertChild:()IKJSInspector before:;
- (void)ik_removeAttributeNamed:()IKJSInspector;
- (void)ik_removeChildWithId:()IKJSInspector;
- (void)ik_setAttributeValue:()IKJSInspector name:;
- (void)ik_updateWithDOMNode:()IKJSInspector fullfillChildren:dispatcher:;
@end

@implementation RWIProtocolDOMNode(IKJSInspector)

+ (id)ik_nodeFromDOMNode:()IKJSInspector depth:
{
  v5 = a3;
  v6 = [objc_opt_class() ik_nodeFromDOMNode:v5];
  if (a4)
  {
    childNodesAsArray = [v5 childNodesAsArray];
    array = [MEMORY[0x277CBEB18] array];
    if ([childNodesAsArray count])
    {
      v9 = 0;
      if (a4 == -1)
      {
        v10 = 0xFFFFFFFFLL;
      }

      else
      {
        v10 = (a4 - 1);
      }

      do
      {
        v11 = objc_opt_class();
        v12 = [childNodesAsArray objectAtIndex:v9];
        v13 = [v11 ik_nodeFromDOMNode:v12 depth:v10];
        [array addObject:v13];

        ++v9;
      }

      while (v9 < [childNodesAsArray count]);
    }

    [v6 setChildren:array];
    if ([v5 nodeType] == 9)
    {
      documentURI = [v5 documentURI];
      v15 = documentURI;
      if (documentURI)
      {
        v16 = documentURI;
      }

      else
      {
        v16 = @"myscheme://mydomain.com/default.html";
      }

      [v6 setDocumentURL:v16];

      [v6 setXmlVersion:@"1.0"];
    }
  }

  return v6;
}

+ (id)ik_nodeFromDOMNode:()IKJSInspector
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = a3;
  nodeValue = [v3 nodeValue];
  if (nodeValue)
  {
    v5 = nodeValue;
  }

  else
  {
    v5 = &stru_2866C1E60;
  }

  v6 = MEMORY[0x277D7B720];
  iTMLID = [v3 ITMLID];
  nodeType = [v3 nodeType];
  nodeName = [v3 nodeName];
  nodeName2 = [v3 nodeName];
  v11 = [v6 safe_initWithNodeId:iTMLID nodeType:nodeType nodeName:nodeName localName:nodeName2 nodeValue:v5];

  if ([v3 nodeType] == 1)
  {
    _attributes = [v3 _attributes];
    array = [MEMORY[0x277CBEB18] array];
    if ([_attributes count])
    {
      v26 = v5;
      v27 = v3;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      allKeys = [_attributes allKeys];
      v15 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v29;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v29 != v17)
            {
              objc_enumerationMutation(allKeys);
            }

            v19 = *(*(&v28 + 1) + 8 * i);
            v20 = +[IKDOMElement _filteredAttributes];
            v21 = [v20 containsObject:v19];

            if ((v21 & 1) == 0)
            {
              [array addObject:v19];
              v22 = [_attributes objectForKey:v19];
              [array addObject:v22];
            }
          }

          v16 = [allKeys countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v16);
      }

      v5 = v26;
      v3 = v27;
    }

    [v11 setAttributes:array];
  }

  childNodesAsArray = [v3 childNodesAsArray];
  [v11 setChildNodeCount:{objc_msgSend(childNodesAsArray, "count")}];

  v24 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)ik_attributesDictionary
{
  v2 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  attributes = [self attributes];
  if ([attributes count])
  {
    v4 = 0;
    do
    {
      v5 = [attributes objectAtIndex:v4];
      v6 = +[IKDOMElement _filteredAttributes];
      v7 = [v6 containsObject:v5];

      if ((v7 & 1) == 0)
      {
        v8 = [attributes objectAtIndex:v4 + 1];
        [v2 setObject:v8 forKey:v5];
      }

      v4 += 2;
    }

    while ([attributes count] > v4);
  }

  return v2;
}

- (void)ik_setAttributeValue:()IKJSInspector name:
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[IKDOMElement _filteredAttributes];
  v9 = [v8 containsObject:v7];

  if ((v9 & 1) == 0)
  {
    v10 = ITMLKitGetLogObject(1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v18 = 138412802;
      v19 = v7;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      selfCopy = self;
      _os_log_debug_impl(&dword_2549A4000, v10, OS_LOG_TYPE_DEBUG, "Setting %@ = %@ on %@", &v18, 0x20u);
    }

    attributes = [self attributes];
    v12 = [attributes mutableCopy];

    if ([v12 count])
    {
      v13 = 0;
      while (1)
      {
        v14 = [v12 objectAtIndex:v13];
        v15 = [v14 isEqualToString:v7];

        if (v15)
        {
          break;
        }

        v13 += 2;
        if ([v12 count] <= v13)
        {
          goto LABEL_8;
        }
      }

      v16 = v13 & 0xFFFFFFFE;
      [v12 removeObjectAtIndex:v16 | 1];
      [v12 insertObject:v6 atIndex:v16 | 1];
    }

    else
    {
LABEL_8:
      [v12 addObject:v7];
      [v12 addObject:v6];
    }

    [self setAttributes:v12];
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)ik_removeAttributeNamed:()IKJSInspector
{
  v9 = a3;
  attributes = [self attributes];
  v5 = [attributes mutableCopy];

  if ([v5 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v5 objectAtIndex:v6];
      v8 = [v7 isEqualToString:v9];

      if (v8)
      {
        break;
      }

      v6 += 2;
      if ([v5 count] <= v6)
      {
        goto LABEL_7;
      }
    }

    [v5 removeObjectAtIndex:v6 & 0xFFFFFFFE | 1];
    [v5 removeObjectAtIndex:v6];
  }

LABEL_7:
  [self setAttributes:v5];
}

- (void)ik_removeChildWithId:()IKJSInspector
{
  children = [self children];
  v9 = [children mutableCopy];

  if ([v9 count])
  {
    v6 = 0;
    while (1)
    {
      v7 = [v9 objectAtIndex:v6];
      nodeId = [v7 nodeId];

      if (nodeId == a3)
      {
        break;
      }

      if ([v9 count] <= ++v6)
      {
        goto LABEL_7;
      }
    }

    [v9 removeObjectAtIndex:v6];
    [self setChildNodeCount:{objc_msgSend(self, "childNodeCount") - 1}];
    [self setChildren:v9];
  }

LABEL_7:
}

- (void)ik_insertChild:()IKJSInspector before:
{
  v12 = a3;
  v6 = a4;
  children = [self children];
  v8 = [children mutableCopy];

  if (v6)
  {
    if ([v8 count])
    {
      v9 = 0;
      while (1)
      {
        v10 = [v8 objectAtIndex:v9];
        nodeId = [v10 nodeId];
        if (nodeId == [v6 intValue])
        {
          break;
        }

        if ([v8 count] <= ++v9)
        {
          goto LABEL_9;
        }
      }

      [v8 insertObject:v12 atIndex:v9];
    }
  }

  else
  {
    [v8 addObject:v12];
  }

LABEL_9:
  [self setChildren:v8];
}

- (id)ik_description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  nodeId = [self nodeId];
  nodeName = [self nodeName];
  v7 = [v2 stringWithFormat:@"<%@: %p, id: %i, name: %@, type: %i>", v4, self, nodeId, nodeName, objc_msgSend(self, "nodeType")];

  return v7;
}

- (id)ik_nodeWithNodeId:()IKJSInspector
{
  v19 = *MEMORY[0x277D85DE8];
  if ([self nodeId] == a3)
  {
    selfCopy = self;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    children = [self children];
    v7 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(children);
          }

          v11 = [*(*(&v14 + 1) + 8 * i) ik_nodeWithNodeId:a3];
          if (v11)
          {
            selfCopy = v11;

            goto LABEL_13;
          }
        }

        v8 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    selfCopy = 0;
  }

LABEL_13:
  v12 = *MEMORY[0x277D85DE8];

  return selfCopy;
}

- (void)ik_updateWithDOMNode:()IKJSInspector fullfillChildren:dispatcher:
{
  v133 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v103 = a5;
  nodeValue = [v8 nodeValue];
  v10 = nodeValue;
  if (nodeValue)
  {
    v11 = nodeValue;
  }

  else
  {
    v11 = &stru_2866C1E60;
  }

  [self setNodeValue:v11];

  [self setNodeType:{objc_msgSend(v8, "nodeType")}];
  nodeName = [v8 nodeName];
  v13 = nodeName;
  if (nodeName)
  {
    v14 = nodeName;
  }

  else
  {
    v14 = &stru_2866C1E60;
  }

  [self setNodeName:v14];

  nodeName2 = [v8 nodeName];
  v16 = nodeName2;
  if (nodeName2)
  {
    v17 = nodeName2;
  }

  else
  {
    v17 = &stru_2866C1E60;
  }

  [self setLocalName:v17];

  v95 = v8;
  if ([v8 nodeType] == 1)
  {
    v94 = a4;
    _attributes = [v8 _attributes];
    ik_attributesDictionary = [self ik_attributesDictionary];
    v116 = 0u;
    v117 = 0u;
    v118 = 0u;
    v119 = 0u;
    v19 = _attributes;
    v20 = [v19 countByEnumeratingWithState:&v116 objects:v132 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v117;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v117 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v116 + 1) + 8 * i);
          v25 = +[IKDOMElement _filteredAttributes];
          v26 = [v25 containsObject:v24];

          if ((v26 & 1) == 0)
          {
            v27 = [ik_attributesDictionary objectForKey:v24];
            v28 = [v19 objectForKey:v24];
            if (([v27 isEqualToString:v28] & 1) == 0)
            {
              v29 = ITMLKitGetLogObject(1);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                objb = [self ik_description];
                *buf = 138412802;
                v127 = objb;
                v128 = 2112;
                v129 = v24;
                v130 = 2112;
                v131 = v28;
                _os_log_debug_impl(&dword_2549A4000, v29, OS_LOG_TYPE_DEBUG, "Updating attribute for %@: %@ = %@", buf, 0x20u);
              }

              [self ik_setAttributeValue:v28 name:v24];
              [v103 safe_attributeModifiedWithNodeId:objc_msgSend(self name:"nodeId") value:{v24, v28}];
              if ([v24 isEqualToString:@"style"])
              {
                v30 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(self, "nodeId")}];
                v125 = v30;
                v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v125 count:1];
                [v103 safe_inlineStyleInvalidatedWithNodeIds:v31];
              }
            }
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v116 objects:v132 count:16];
      }

      while (v21);
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    allKeys = [ik_attributesDictionary allKeys];
    v33 = [allKeys countByEnumeratingWithState:&v112 objects:v124 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v113;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v113 != v35)
          {
            objc_enumerationMutation(allKeys);
          }

          v37 = *(*(&v112 + 1) + 8 * j);
          allKeys2 = [v19 allKeys];
          v39 = [allKeys2 containsObject:v37];

          if ((v39 & 1) == 0)
          {
            v40 = ITMLKitGetLogObject(1);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
            {
              ik_description = [self ik_description];
              *buf = 138412546;
              v127 = v37;
              v128 = 2112;
              v129 = ik_description;
              _os_log_debug_impl(&dword_2549A4000, v40, OS_LOG_TYPE_DEBUG, "Removing attribute (%@) for %@", buf, 0x16u);
            }

            [self ik_removeAttributeNamed:v37];
            [v103 safe_attributeRemovedWithNodeId:objc_msgSend(self name:{"nodeId"), v37}];
          }
        }

        v34 = [allKeys countByEnumeratingWithState:&v112 objects:v124 count:16];
      }

      while (v34);
    }

    v8 = v95;
    a4 = v94;
  }

  children = [self children];

  if (children || a4)
  {
    children2 = [self children];
    if (children2)
    {
      children3 = [self children];
      array = [children3 mutableCopy];
    }

    else
    {
      array = [MEMORY[0x277CBEB18] array];
    }

    childNodesAsArray = [v8 childNodesAsArray];
    v47 = [childNodesAsArray mutableCopy];

    v48 = [[IKDiffEvaluator alloc] initWithObjects:v47 oldObjects:array hashing:&__block_literal_global_1];
    indexSet = [MEMORY[0x277CCAB58] indexSet];
    addedIndexes = [(IKDiffEvaluator *)v48 addedIndexes];

    if (addedIndexes)
    {
      addedIndexes2 = [(IKDiffEvaluator *)v48 addedIndexes];
      [indexSet addIndexes:addedIndexes2];
    }

    selfCopy = self;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    movedIndexesByNewIndex = [(IKDiffEvaluator *)v48 movedIndexesByNewIndex];

    v100 = indexSet;
    if (movedIndexesByNewIndex)
    {
      v53 = v47;
      v54 = array;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v55 = v48;
      obj = [(IKDiffEvaluator *)v48 movedIndexesByNewIndex];
      v56 = [obj countByEnumeratingWithState:&v108 objects:v123 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v109;
        do
        {
          for (k = 0; k != v57; ++k)
          {
            if (*v109 != v58)
            {
              objc_enumerationMutation(obj);
            }

            v60 = *(*(&v108 + 1) + 8 * k);
            [indexSet addIndex:{objc_msgSend(v60, "unsignedIntegerValue")}];
            movedIndexesByNewIndex2 = [(IKDiffEvaluator *)v55 movedIndexesByNewIndex];
            v62 = [movedIndexesByNewIndex2 objectForKey:v60];
            unsignedIntegerValue = [v62 unsignedIntegerValue];

            v64 = [v54 objectAtIndex:unsignedIntegerValue];
            v65 = [v53 objectAtIndex:{objc_msgSend(v60, "unsignedIntegerValue")}];
            LODWORD(unsignedIntegerValue) = [v64 nodeId];
            if ([v65 ITMLID] == unsignedIntegerValue)
            {
              v66 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v64, "nodeId")}];
              [dictionary setObject:v64 forKey:v66];
            }

            indexSet = v100;
          }

          v57 = [obj countByEnumeratingWithState:&v108 objects:v123 count:16];
        }

        while (v57);
      }

      array = v54;
      v47 = v53;
      v48 = v55;
    }

    removedIndexes = [(IKDiffEvaluator *)v48 removedIndexes];

    if (removedIndexes)
    {
      obja = v47;
      removedIndexes2 = [(IKDiffEvaluator *)v48 removedIndexes];
      v69 = [array objectsAtIndexes:removedIndexes2];

      v70 = v48;
      removedIndexes3 = [(IKDiffEvaluator *)v48 removedIndexes];
      v72 = array;
      [array removeObjectsAtIndexes:removedIndexes3];

      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v73 = v69;
      v74 = [v73 countByEnumeratingWithState:&v104 objects:v122 count:16];
      if (v74)
      {
        v75 = v74;
        v76 = *v105;
        do
        {
          for (m = 0; m != v75; ++m)
          {
            if (*v105 != v76)
            {
              objc_enumerationMutation(v73);
            }

            v78 = *(*(&v104 + 1) + 8 * m);
            v79 = ITMLKitGetLogObject(1);
            if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
            {
              [RWIProtocolDOMNode(IKJSInspector) ik_updateWithDOMNode:buf fullfillChildren:selfCopy dispatcher:?];
            }

            [v103 safe_childNodeRemovedWithParentNodeId:objc_msgSend(selfCopy nodeId:{"nodeId"), objc_msgSend(v78, "nodeId")}];
          }

          v75 = [v73 countByEnumeratingWithState:&v104 objects:v122 count:16];
        }

        while (v75);
      }

      array = v72;
      v47 = obja;
      indexSet = v100;
      v48 = v70;
    }

    self = selfCopy;
    if ([v47 count])
    {
      for (n = 0; n < [v47 count]; ++n)
      {
        v81 = [v47 objectAtIndex:n];
        if (n >= [array count])
        {
          if ([indexSet containsIndex:n])
          {
            v82 = 0;
LABEL_76:
            v84 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v81, "ITMLID")}];
            v85 = [dictionary objectForKey:v84];

            if (v85)
            {
              [v85 ik_updateWithDOMNode:v81 dispatcher:v103];
              v82 = v85;
              if (n)
              {
                goto LABEL_78;
              }

LABEL_82:
              nodeId = 0;
            }

            else
            {
              v82 = [MEMORY[0x277D7B720] ik_nodeFromDOMNode:v81];
              v88 = ITMLKitGetLogObject(1);
              if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
              {
                [RWIProtocolDOMNode(IKJSInspector) ik_updateWithDOMNode:v121 fullfillChildren:v82 dispatcher:?];
              }

              if (!n)
              {
                goto LABEL_82;
              }

LABEL_78:
              v86 = [array objectAtIndex:n - 1];
              nodeId = [v86 nodeId];
            }

            indexSet = v100;
            [v103 safe_childNodeInsertedWithParentNodeId:objc_msgSend(selfCopy previousNodeId:"nodeId") node:{nodeId, v82}];
            [array insertObject:v82 atIndex:n];
LABEL_84:
          }
        }

        else
        {
          v82 = [array objectAtIndex:n];
          if ([indexSet containsIndex:n])
          {
            goto LABEL_76;
          }

          if (v82)
          {
            v83 = ITMLKitGetLogObject(1);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
            {
              [RWIProtocolDOMNode(IKJSInspector) ik_updateWithDOMNode:v120 fullfillChildren:v82 dispatcher:?];
            }

            [v82 ik_updateWithDOMNode:v81 dispatcher:v103];
            goto LABEL_84;
          }
        }
      }
    }

    [selfCopy setChildren:array];
    v89 = ITMLKitGetLogObject(1);
    if (os_log_type_enabled(v89, OS_LOG_TYPE_DEBUG))
    {
      [RWIProtocolDOMNode(IKJSInspector) ik_updateWithDOMNode:selfCopy fullfillChildren:? dispatcher:?];
    }

    v8 = v95;
  }

  childNodesAsArray2 = [v8 childNodesAsArray];
  v91 = [childNodesAsArray2 count];

  if ([self childNodeCount] != v91)
  {
    v92 = ITMLKitGetLogObject(1);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEBUG))
    {
      [RWIProtocolDOMNode(IKJSInspector) ik_updateWithDOMNode:self fullfillChildren:? dispatcher:?];
    }

    [self setChildNodeCount:v91];
    [v103 safe_childNodeCountUpdatedWithNodeId:objc_msgSend(self childNodeCount:{"nodeId"), v91}];
  }

  v93 = *MEMORY[0x277D85DE8];
}

@end
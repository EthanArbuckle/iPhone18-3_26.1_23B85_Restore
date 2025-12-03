@interface IKDOMNode
- (id)ik_nodePath;
- (id)ik_nodeWithId:(int64_t)id;
- (id)ik_nodesWithIds:(id)ids;
- (id)ik_pathsForSearchQuery:(id)query compareOptions:(unint64_t)options currentPath:(id)path;
@end

@implementation IKDOMNode

- (id)ik_nodePath
{
  v29 = *MEMORY[0x277D85DE8];
  if ([(IKDOMNode *)self nodeType]== 9)
  {
    v3 = 0;
  }

  else
  {
    selfCopy = self;
    v5 = [MEMORY[0x277CCAA70] indexPathWithIndex:{-[IKDOMNode ITMLID](selfCopy, "ITMLID")}];
    if (selfCopy)
    {
      v7 = 0x279798000uLL;
      *&v6 = 138412546;
      v24 = v6;
      while (1)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        parentNode = [(IKDOMNode *)selfCopy parentNode];
        childNodesAsArray = [(IKDOMNode *)parentNode childNodesAsArray];
        v10 = [childNodesAsArray indexOfObject:selfCopy];

        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {

          v3 = 0;
          goto LABEL_19;
        }

        v11 = ITMLKitGetLogObject(1);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          v13 = v7;
          v14 = *(v7 + 1440);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(IKDOMNode *)selfCopy tagName];
          }

          else
          {
            v15 = objc_opt_class();
            NSStringFromClass(v15);
          }
          v16 = ;
          *buf = v24;
          v26 = v16;
          v27 = 2048;
          v28 = v10;
          _os_log_debug_impl(&dword_2549A4000, v11, OS_LOG_TYPE_DEBUG, "%@ is %lu", buf, 0x16u);

          v7 = v13;
        }

        v12 = [v5 indexPathByAddingIndex:v10];

        selfCopy = parentNode;
        v5 = v12;
        if (!parentNode)
        {
          v5 = v12;
          break;
        }
      }
    }

    v17 = v5;
    v5 = [v5 indexPathByAddingIndex:{0, v24}];

    v18 = &buf[-((8 * [v5 length] + 15) & 0xFFFFFFFFFFFFFFF0) - 16];
    if ([v5 length])
    {
      v19 = 0;
      v20 = v18 - 8;
      do
      {
        v21 = [v5 indexAtPosition:v19];
        *&v20[8 * [v5 length]] = v21;
        ++v19;
        v20 -= 8;
      }

      while ([v5 length] > v19);
    }

    v3 = [MEMORY[0x277CCAA70] indexPathWithIndexes:v18 length:{objc_msgSend(v5, "length")}];
LABEL_19:
  }

  v22 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)ik_nodeWithId:(int64_t)id
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__19;
  v10 = __Block_byref_object_dispose__19;
  v11 = 0;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__IKDOMNode_IKJSInspector__ik_nodeWithId___block_invoke;
  v5[3] = &unk_27979B5B0;
  v5[4] = &v6;
  v5[5] = id;
  [(IKDOMNode *)self _enumerateNodesWithBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

BOOL __42__IKDOMNode_IKJSInspector__ik_nodeWithId___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = [v4 ITMLID];
  v6 = *(a1 + 40);
  if (v5 == v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  return v5 == v6;
}

- (id)ik_nodesWithIds:(id)ids
{
  idsCopy = ids;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(idsCopy, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__IKDOMNode_IKJSInspector__ik_nodesWithIds___block_invoke;
  v11[3] = &unk_27979B5D8;
  v12 = idsCopy;
  v6 = v5;
  v13 = v6;
  v7 = idsCopy;
  [(IKDOMNode *)self _enumerateNodesWithBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

uint64_t __44__IKDOMNode_IKJSInspector__ik_nodesWithIds___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v3, "ITMLID")}];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    [*(a1 + 40) addObject:v3];
  }

  return 0;
}

- (id)ik_pathsForSearchQuery:(id)query compareOptions:(unint64_t)options currentPath:(id)path
{
  v43 = *MEMORY[0x277D85DE8];
  queryCopy = query;
  pathCopy = path;
  v10 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:0];
  nodeName = [(IKDOMNode *)self nodeName];
  v12 = [nodeName rangeOfString:queryCopy options:options];

  nodeValue = [(IKDOMNode *)self nodeValue];
  if (nodeValue)
  {
    nodeValue2 = [(IKDOMNode *)self nodeValue];
    v36 = [nodeValue2 rangeOfString:queryCopy options:options] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v36 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v12;
    v34 = pathCopy;
    v35 = v10;
    [(IKDOMNode *)self _attributes];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = v41 = 0u;
    v16 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v16)
    {
      v17 = v16;
      v37 = *v39;
LABEL_7:
      v18 = 0;
      while (1)
      {
        if (*v39 != v37)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v38 + 1) + 8 * v18);
        v20 = [v19 rangeOfString:queryCopy options:options];
        v21 = [v15 objectForKey:v19];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [v15 objectForKey:v19];
          v23 = [v22 rangeOfString:queryCopy options:options] != 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = 0;
        }

        v24 = 1;
        if (v20 != 0x7FFFFFFFFFFFFFFFLL || v23)
        {
          break;
        }

        if (v17 == ++v18)
        {
          v17 = [v15 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v17)
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      v24 = 0;
    }

    pathCopy = v34;
    v10 = v35;
    v12 = v33;
  }

  else
  {
    v24 = 0;
  }

  if (v12 != 0x7FFFFFFFFFFFFFFFLL || v36 || v24)
  {
    v25 = [pathCopy indexPathByAddingIndex:{-[IKDOMNode ITMLID](self, "ITMLID")}];
    [v10 addObject:v25];
  }

  childNodesAsArray = [(IKDOMNode *)self childNodesAsArray];
  if ([childNodesAsArray count])
  {
    v27 = 0;
    do
    {
      v28 = [childNodesAsArray objectAtIndex:v27];
      v29 = [pathCopy indexPathByAddingIndex:v27];
      v30 = [v28 ik_pathsForSearchQuery:queryCopy compareOptions:options currentPath:v29];
      [v10 unionOrderedSet:v30];

      ++v27;
    }

    while ([childNodesAsArray count] > v27);
  }

  v31 = *MEMORY[0x277D85DE8];

  return v10;
}

@end
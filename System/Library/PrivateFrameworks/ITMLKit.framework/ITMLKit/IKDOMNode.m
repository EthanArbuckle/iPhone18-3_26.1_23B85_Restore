@interface IKDOMNode
- (id)ik_nodePath;
- (id)ik_nodeWithId:(int64_t)a3;
- (id)ik_nodesWithIds:(id)a3;
- (id)ik_pathsForSearchQuery:(id)a3 compareOptions:(unint64_t)a4 currentPath:(id)a5;
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
    v4 = self;
    v5 = [MEMORY[0x277CCAA70] indexPathWithIndex:{-[IKDOMNode ITMLID](v4, "ITMLID")}];
    if (v4)
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

        v8 = [(IKDOMNode *)v4 parentNode];
        v9 = [(IKDOMNode *)v8 childNodesAsArray];
        v10 = [v9 indexOfObject:v4];

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
            [(IKDOMNode *)v4 tagName];
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

        v4 = v8;
        v5 = v12;
        if (!v8)
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

- (id)ik_nodeWithId:(int64_t)a3
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
  v5[5] = a3;
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

- (id)ik_nodesWithIds:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__IKDOMNode_IKJSInspector__ik_nodesWithIds___block_invoke;
  v11[3] = &unk_27979B5D8;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
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

- (id)ik_pathsForSearchQuery:(id)a3 compareOptions:(unint64_t)a4 currentPath:(id)a5
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = [MEMORY[0x277CBEB40] orderedSetWithCapacity:0];
  v11 = [(IKDOMNode *)self nodeName];
  v12 = [v11 rangeOfString:v8 options:a4];

  v13 = [(IKDOMNode *)self nodeValue];
  if (v13)
  {
    v14 = [(IKDOMNode *)self nodeValue];
    v36 = [v14 rangeOfString:v8 options:a4] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v36 = 0;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v12;
    v34 = v9;
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
        v20 = [v19 rangeOfString:v8 options:a4];
        v21 = [v15 objectForKey:v19];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v22 = [v15 objectForKey:v19];
          v23 = [v22 rangeOfString:v8 options:a4] != 0x7FFFFFFFFFFFFFFFLL;
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

    v9 = v34;
    v10 = v35;
    v12 = v33;
  }

  else
  {
    v24 = 0;
  }

  if (v12 != 0x7FFFFFFFFFFFFFFFLL || v36 || v24)
  {
    v25 = [v9 indexPathByAddingIndex:{-[IKDOMNode ITMLID](self, "ITMLID")}];
    [v10 addObject:v25];
  }

  v26 = [(IKDOMNode *)self childNodesAsArray];
  if ([v26 count])
  {
    v27 = 0;
    do
    {
      v28 = [v26 objectAtIndex:v27];
      v29 = [v9 indexPathByAddingIndex:v27];
      v30 = [v28 ik_pathsForSearchQuery:v8 compareOptions:a4 currentPath:v29];
      [v10 unionOrderedSet:v30];

      ++v27;
    }

    while ([v26 count] > v27);
  }

  v31 = *MEMORY[0x277D85DE8];

  return v10;
}

@end
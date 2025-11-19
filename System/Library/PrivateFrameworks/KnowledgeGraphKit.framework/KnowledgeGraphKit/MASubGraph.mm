@interface MASubGraph
+ (id)subGraphIntersectionsWithSubGraphs:(id)a3;
+ (id)subGraphWithGraph:(id)a3;
- (MASubGraph)init;
- (id)allEdges;
- (id)allNamedEdges;
- (id)allNamedNodes;
- (id)allNodes;
- (id)description;
- (id)edgeForIdentifier:(unint64_t)a3;
- (id)edgesForLabel:(id)a3;
- (id)edgesForLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (id)edgesForName:(id)a3;
- (id)edgesLabels;
- (id)edgesNames;
- (id)graphRepresentation;
- (id)nodeForIdentifier:(unint64_t)a3;
- (id)nodesForLabel:(id)a3;
- (id)nodesForLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5;
- (id)nodesForName:(id)a3;
- (id)nodesForName:(id)a3 fromNode:(id)a4;
- (id)nodesForNames:(id)a3;
- (id)nodesLabels;
- (id)nodesNames;
- (unint64_t)edgesCountForLabel:(id)a3;
- (unint64_t)edgesCountForName:(id)a3;
- (unint64_t)nodesCountForLabel:(id)a3;
- (unint64_t)nodesCountForName:(id)a3;
- (unint64_t)nodesCountForName:(id)a3 fromNode:(id)a4;
- (void)_addEdge:(id)a3 withName:(id)a4;
- (void)_addNode:(id)a3 withName:(id)a4;
- (void)_addNode:(id)a3 withName:(id)a4 forKeyNode:(id)a5;
- (void)addEdges:(id)a3 withName:(id)a4;
- (void)addNodes:(id)a3 withName:(id)a4;
- (void)enumerateEdgesByNameUsingBlock:(id)a3;
- (void)enumerateEdgesWithBlock:(id)a3;
- (void)enumerateEdgesWithLabel:(id)a3 domain:(unsigned __int16)a4 usingBlock:(id)a5;
- (void)enumerateEdgesWithName:(id)a3 usingBlock:(id)a4;
- (void)enumerateNodesByNameUsingBlock:(id)a3;
- (void)enumerateNodesWithBlock:(id)a3;
- (void)enumerateNodesWithLabel:(id)a3 domain:(unsigned __int16)a4 usingBlock:(id)a5;
- (void)enumerateNodesWithName:(id)a3 fromNode:(id)a4 usingBlock:(id)a5;
- (void)enumerateNodesWithName:(id)a3 usingBlock:(id)a4;
- (void)mergeWithSubGraph:(id)a3;
@end

@implementation MASubGraph

- (id)graphRepresentation
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = +[MAGraph graph];
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v45 = self;
  obj = [(NSMutableDictionary *)self->_nodesByName objectEnumerator];
  v51 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
  if (v51)
  {
    v49 = *v68;
    do
    {
      v5 = 0;
      do
      {
        if (*v68 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v53 = v5;
        v6 = *(*(&v67 + 1) + 8 * v5);
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v7 = v6;
        v8 = [v7 countByEnumeratingWithState:&v63 objects:v73 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v64;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v64 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v63 + 1) + 8 * i);
              v13 = [v12 label];
              v14 = [v12 domain];
              v15 = [v12 propertyDictionary];
              LODWORD(v16) = 1.0;
              v17 = [v4 addUniqueNodeWithLabel:v13 domain:v14 weight:v15 properties:0 didCreate:v16];

              v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v12, "identifier")}];
              [v3 setObject:v17 forKey:v18];
            }

            v9 = [v7 countByEnumeratingWithState:&v63 objects:v73 count:16];
          }

          while (v9);
        }

        v5 = v53 + 1;
      }

      while (v53 + 1 != v51);
      v51 = [obj countByEnumeratingWithState:&v67 objects:v74 count:16];
    }

    while (v51);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v19 = [(NSMutableDictionary *)v45->_edgesByName objectEnumerator];
  obja = [v19 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (obja)
  {
    v20 = *v60;
    v46 = *v60;
    v52 = v19;
    do
    {
      v21 = 0;
      do
      {
        if (*v60 != v20)
        {
          objc_enumerationMutation(v19);
        }

        v50 = v21;
        v22 = *(*(&v59 + 1) + 8 * v21);
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v23 = v22;
        v24 = [v23 countByEnumeratingWithState:&v55 objects:v71 count:16];
        if (v24)
        {
          v25 = v24;
          v54 = *v56;
          while (2)
          {
            for (j = 0; j != v25; ++j)
            {
              if (*v56 != v54)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v55 + 1) + 8 * j);
              v28 = MEMORY[0x277CCABB0];
              v29 = [v27 sourceNode];
              v30 = [v28 numberWithUnsignedInteger:{objc_msgSend(v29, "identifier")}];
              v31 = [v3 objectForKey:v30];

              v32 = MEMORY[0x277CCABB0];
              v33 = [v27 targetNode];
              v34 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "identifier")}];
              v35 = [v3 objectForKey:v34];

              if (v31)
              {
                v36 = v35 == 0;
              }

              else
              {
                v36 = 1;
              }

              if (v36)
              {
                [MEMORY[0x277CBEAD8] raise:@"MASubGraphInvalidGraph" format:{@"Graph invalid for edge %@", v27}];

                v42 = 0;
                goto LABEL_35;
              }

              v37 = [v27 label];
              v38 = [v27 domain];
              v39 = [v27 propertyDictionary];
              LODWORD(v40) = 1.0;
              v41 = [v4 addUniqueEdgeWithLabel:v37 sourceNode:v31 targetNode:v35 domain:v38 weight:v39 properties:v40];
            }

            v25 = [v23 countByEnumeratingWithState:&v55 objects:v71 count:16];
            if (v25)
            {
              continue;
            }

            break;
          }
        }

        v21 = v50 + 1;
        v20 = v46;
        v19 = v52;
      }

      while ((v50 + 1) != obja);
      obja = [v52 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (obja);
  }

  v42 = v4;
LABEL_35:

  v43 = *MEMORY[0x277D85DE8];

  return v42;
}

- (void)enumerateEdgesWithBlock:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v28 = 0;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = [(NSMutableDictionary *)self->_edgesByLabel objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    v9 = 0x277CBE000uLL;
    v19 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = v9;
        v12 = [*(v9 + 2928) orderedSetWithOrderedSet:*(*(&v24 + 1) + 8 * i)];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v13 = v12;
        v14 = [v13 countByEnumeratingWithState:&v20 objects:v29 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v21;
          while (2)
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v21 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v4[2](v4, *(*(&v20 + 1) + 8 * j), &v28);
              if (v28)
              {

                goto LABEL_18;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v20 objects:v29 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

        v9 = v11;
        v8 = v19;
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v7);
  }

LABEL_18:

  v18 = *MEMORY[0x277D85DE8];
}

- (void)enumerateEdgesWithName:(id)a3 usingBlock:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v20 = 0;
  v7 = MEMORY[0x277CBEB70];
  v8 = [(NSMutableDictionary *)self->_edgesByName objectForKey:a3];
  v9 = [v7 orderedSetWithOrderedSet:v8];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v17 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v6[2](v6, *(*(&v16 + 1) + 8 * v14), &v20);
      if (v20)
      {
        break;
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)enumerateEdgesWithLabel:(id)a3 domain:(unsigned __int16)a4 usingBlock:(id)a5
{
  v5 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v23 = 0;
  v9 = MEMORY[0x277CBEB70];
  v10 = [(NSMutableDictionary *)self->_edgesByLabel objectForKey:a3];
  v11 = [v9 orderedSetWithOrderedSet:v10];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v20 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v17 = *(*(&v19 + 1) + 8 * v16);
      if (!v5 || [*(*(&v19 + 1) + 8 * v16) domain] == v5)
      {
        v8[2](v8, v17, &v23);
        if (v23)
        {
          break;
        }
      }

      if (v14 == ++v16)
      {
        v14 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)enumerateEdgesByNameUsingBlock:(id)a3
{
  v4 = a3;
  edgesByName = self->_edgesByName;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __45__MASubGraph_enumerateEdgesByNameUsingBlock___block_invoke;
  v7[3] = &unk_2797FF1A8;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)edgesByName enumerateKeysAndObjectsUsingBlock:v7];
}

void __45__MASubGraph_enumerateEdgesByNameUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [a3 set];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (id)allNamedEdges
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CBEB40] orderedSet];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(MASubGraph *)v2 edgesNames];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(NSMutableDictionary *)v2->_edgesByName objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        [v3 unionOrderedSet:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v3 set];

  objc_sync_exit(v2);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)allEdges
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x277CBEB40];
  v4 = [(NSMutableDictionary *)v2->_edgesByIdentifier allValues];
  v5 = [v3 orderedSetWithArray:v4];

  v6 = [v5 set];

  objc_sync_exit(v2);

  return v6;
}

- (id)edgesNames
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMutableDictionary *)self->_edgesByName keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 hasPrefix:@"#"] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEB98] setWithSet:v3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)edgesLabels
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableDictionary *)self->_edgesByLabel allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (unint64_t)edgesCountForName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_edgesByName objectForKey:a3];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)edgesCountForLabel:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_edgesByLabel objectForKey:a3];
  v4 = [v3 count];

  return v4;
}

- (id)edgesForLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v5 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_edgesByLabel objectForKey:a3];
  v10 = [MEMORY[0x277CBEB58] set];
  if (v8)
  {
    v11 = [v8 count] == 0;
  }

  else
  {
    v11 = 1;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if ((!v5 || [*(*(&v21 + 1) + 8 * i) domain] == v5) && (v11 || objc_msgSend(v17, "hasProperties:", v8)))
        {
          [v10 addObject:{v17, v21}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x277CBEB98] setWithSet:v10];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)edgesForName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_edgesByName objectForKey:a3];
  v4 = [v3 set];

  return v4;
}

- (id)edgesForLabel:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_edgesByLabel objectForKey:a3];
  v4 = [v3 set];

  return v4;
}

- (id)edgeForIdentifier:(unint64_t)a3
{
  edgesByIdentifier = self->_edgesByIdentifier;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)edgesByIdentifier objectForKey:v4];

  return v5;
}

- (void)_addEdge:(id)a3 withName:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  edgesByIdentifier = v7->_edgesByIdentifier;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "identifier")}];
  [(NSMutableDictionary *)edgesByIdentifier setObject:v16 forKey:v9];

  edgesByLabel = v7->_edgesByLabel;
  v11 = [v16 label];
  v12 = [(NSMutableDictionary *)edgesByLabel objectForKey:v11];

  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB40] orderedSet];
    v13 = v7->_edgesByLabel;
    v14 = [v16 label];
    [(NSMutableDictionary *)v13 setObject:v12 forKey:v14];
  }

  [v12 addObject:v16];
  v15 = [(NSMutableDictionary *)v7->_edgesByName objectForKey:v6];
  if (!v15)
  {
    v15 = [MEMORY[0x277CBEB40] orderedSet];
    [(NSMutableDictionary *)v7->_edgesByName setObject:v15 forKey:v6];
  }

  [v15 addObject:v16];

  objc_sync_exit(v7);
}

- (void)addEdges:(id)a3 withName:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [(MASubGraph *)v8 _addEdge:*(*(&v14 + 1) + 8 * v12++) withName:v7, v14];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)enumerateNodesWithName:(id)a3 fromNode:(id)a4 usingBlock:(id)a5
{
  if (a5)
  {
    nodesByNameGroupByNodes = self->_nodesByNameGroupByNodes;
    v8 = a5;
    v9 = a4;
    v11 = [(NSMutableDictionary *)nodesByNameGroupByNodes objectForKey:a3];
    v10 = [v11 objectForKey:v9];

    [v10 enumerateObjectsUsingBlock:v8];
  }
}

- (void)enumerateNodesWithBlock:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v28 = 0;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = [(NSMutableDictionary *)self->_nodesByLabel objectEnumerator];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      v9 = 0x277CBE000uLL;
      v19 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v11 = v9;
          v12 = [*(v9 + 2928) orderedSetWithOrderedSet:*(*(&v24 + 1) + 8 * i)];
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v13 = v12;
          v14 = [v13 countByEnumeratingWithState:&v20 objects:v29 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v21;
            while (2)
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v21 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v4[2](v4, *(*(&v20 + 1) + 8 * j), &v28);
                if (v28)
                {

                  goto LABEL_19;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v20 objects:v29 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }
          }

          v9 = v11;
          v8 = v19;
        }

        v7 = [v5 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v7);
    }

LABEL_19:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)enumerateNodesWithName:(id)a3 usingBlock:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a4;
  if (v6)
  {
    v20 = 0;
    v7 = MEMORY[0x277CBEB70];
    v8 = [(NSMutableDictionary *)self->_nodesByName objectForKey:a3];
    v9 = [v7 orderedSetWithOrderedSet:v8];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
LABEL_4:
      v14 = 0;
      while (1)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v6[2](v6, *(*(&v16 + 1) + 8 * v14), &v20);
        if (v20)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v16 objects:v21 count:16];
          if (v12)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)enumerateNodesWithLabel:(id)a3 domain:(unsigned __int16)a4 usingBlock:(id)a5
{
  v5 = a4;
  v25 = *MEMORY[0x277D85DE8];
  v8 = a5;
  if (v8)
  {
    v23 = 0;
    v9 = MEMORY[0x277CBEB70];
    v10 = [(NSMutableDictionary *)self->_nodesByLabel objectForKey:a3];
    v11 = [v9 orderedSetWithOrderedSet:v10];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
LABEL_4:
      v16 = 0;
      while (1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        if (!v5 || [*(*(&v19 + 1) + 8 * v16) domain] == v5)
        {
          v8[2](v8, v17, &v23);
          if (v23)
          {
            break;
          }
        }

        if (v14 == ++v16)
        {
          v14 = [v12 countByEnumeratingWithState:&v19 objects:v24 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)enumerateNodesByNameUsingBlock:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    nodesByName = self->_nodesByName;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __45__MASubGraph_enumerateNodesByNameUsingBlock___block_invoke;
    v7[3] = &unk_2797FF1A8;
    v8 = v4;
    [(NSMutableDictionary *)nodesByName enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __45__MASubGraph_enumerateNodesByNameUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [a3 set];
  (*(v6 + 16))(v6, v7, v8, a4);
}

- (id)allNamedNodes
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = [MEMORY[0x277CBEB40] orderedSet];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(MASubGraph *)v2 nodesNames];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [(NSMutableDictionary *)v2->_nodesByName objectForKeyedSubscript:*(*(&v12 + 1) + 8 * i)];
        [v3 unionOrderedSet:v8];
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v9 = [v3 set];

  objc_sync_exit(v2);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)allNodes
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = MEMORY[0x277CBEB40];
  v4 = [(NSMutableDictionary *)v2->_nodesByIdentifier allValues];
  v5 = [v3 orderedSetWithArray:v4];

  v6 = [v5 set];

  objc_sync_exit(v2);

  return v6;
}

- (id)nodesNames
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(NSMutableDictionary *)self->_nodesByName keyEnumerator];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([v9 hasPrefix:@"#"] & 1) == 0)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [MEMORY[0x277CBEB98] setWithSet:v3];

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (id)nodesLabels
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSMutableDictionary *)self->_nodesByLabel allKeys];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (id)nodesForLabel:(id)a3 domain:(unsigned __int16)a4 properties:(id)a5
{
  v5 = a4;
  v26 = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = [(NSMutableDictionary *)self->_nodesByLabel objectForKey:a3];
  v10 = [MEMORY[0x277CBEB58] set];
  if (v8)
  {
    v11 = [v8 count] == 0;
  }

  else
  {
    v11 = 1;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v21 + 1) + 8 * i);
        if ((!v5 || [*(*(&v21 + 1) + 8 * i) domain] == v5) && (v11 || objc_msgSend(v17, "hasProperties:", v8)))
        {
          [v10 addObject:{v17, v21}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v14);
  }

  v18 = [MEMORY[0x277CBEB98] setWithSet:v10];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (unint64_t)nodesCountForName:(id)a3 fromNode:(id)a4
{
  nodesByNameGroupByNodes = self->_nodesByNameGroupByNodes;
  v6 = a4;
  v7 = [(NSMutableDictionary *)nodesByNameGroupByNodes objectForKey:a3];
  v8 = [v7 objectForKey:v6];

  v9 = [v8 count];
  return v9;
}

- (unint64_t)nodesCountForName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_nodesByName objectForKey:a3];
  v4 = [v3 count];

  return v4;
}

- (unint64_t)nodesCountForLabel:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_nodesByLabel objectForKey:a3];
  v4 = [v3 count];

  return v4;
}

- (id)nodesForName:(id)a3 fromNode:(id)a4
{
  nodesByNameGroupByNodes = self->_nodesByNameGroupByNodes;
  v6 = a4;
  v7 = [(NSMutableDictionary *)nodesByNameGroupByNodes objectForKey:a3];
  v8 = [v7 objectForKey:v6];

  v9 = [MEMORY[0x277CBEB98] setWithSet:v8];

  return v9;
}

- (id)nodesForNames:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CBEB58] set];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NSMutableDictionary *)self->_nodesByName objectForKey:*(*(&v15 + 1) + 8 * i), v15];
        v12 = [v11 set];
        [v5 unionSet:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)nodesForName:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_nodesByName objectForKey:a3];
  v4 = [v3 set];

  return v4;
}

- (id)nodesForLabel:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_nodesByLabel objectForKey:a3];
  v4 = [v3 set];

  return v4;
}

- (id)nodeForIdentifier:(unint64_t)a3
{
  nodesByIdentifier = self->_nodesByIdentifier;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v5 = [(NSMutableDictionary *)nodesByIdentifier objectForKey:v4];

  return v5;
}

- (void)_addNode:(id)a3 withName:(id)a4 forKeyNode:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = self;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)v10->_nodesByNameGroupByNodes objectForKey:v8];
  if (!v11)
  {
    v11 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    [(NSMutableDictionary *)v10->_nodesByNameGroupByNodes setObject:v11 forKey:v8];
  }

  v12 = [v11 objectForKey:v9];
  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB58] set];
    [v11 setObject:v12 forKey:v9];
  }

  [v12 addObject:v13];

  objc_sync_exit(v10);
}

- (void)_addNode:(id)a3 withName:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = self;
  objc_sync_enter(v7);
  nodesByIdentifier = v7->_nodesByIdentifier;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v16, "identifier")}];
  [(NSMutableDictionary *)nodesByIdentifier setObject:v16 forKey:v9];

  nodesByLabel = v7->_nodesByLabel;
  v11 = [v16 label];
  v12 = [(NSMutableDictionary *)nodesByLabel objectForKey:v11];

  if (!v12)
  {
    v12 = [MEMORY[0x277CBEB40] orderedSet];
    v13 = v7->_nodesByLabel;
    v14 = [v16 label];
    [(NSMutableDictionary *)v13 setObject:v12 forKey:v14];
  }

  [v12 addObject:v16];
  v15 = [(NSMutableDictionary *)v7->_nodesByName objectForKey:v6];
  if (!v15)
  {
    v15 = [MEMORY[0x277CBEB40] orderedSet];
    [(NSMutableDictionary *)v7->_nodesByName setObject:v15 forKey:v6];
  }

  [v15 addObject:v16];

  objc_sync_exit(v7);
}

- (void)addNodes:(id)a3 withName:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [(MASubGraph *)v8 _addNode:*(*(&v14 + 1) + 8 * v12++) withName:v7, v14];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  objc_sync_exit(v8);
  v13 = *MEMORY[0x277D85DE8];
}

- (void)mergeWithSubGraph:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v4;
  objc_sync_enter(v6);
  v27 = v6;
  p_isa = &v5->super.isa;
  v7 = [(MASubGraph *)v5 graph];
  v8 = [v6 graph];

  if (v7 == v8)
  {
    context = objc_autoreleasePoolPush();
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __32__MASubGraph_mergeWithSubGraph___block_invoke;
    v38[3] = &unk_2797FF180;
    v38[4] = v5;
    [v6 enumerateNodesByNameUsingBlock:v38];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __32__MASubGraph_mergeWithSubGraph___block_invoke_2;
    v37[3] = &unk_2797FF180;
    v37[4] = v5;
    [v6 enumerateEdgesByNameUsingBlock:v37];
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v9 = [v6[8] keyEnumerator];
    v26 = [v9 countByEnumeratingWithState:&v33 objects:v40 count:16];
    if (v26)
    {
      obj = v9;
      v25 = *v34;
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v34 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          v12 = [v27[8] objectForKey:v11];
          v13 = [p_isa[8] objectForKey:v11];
          if (v13)
          {
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v14 = [v12 keyEnumerator];
            v15 = [v14 countByEnumeratingWithState:&v29 objects:v39 count:16];
            if (v15)
            {
              v16 = *v30;
              do
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v30 != v16)
                  {
                    objc_enumerationMutation(v14);
                  }

                  v18 = *(*(&v29 + 1) + 8 * j);
                  v19 = [v12 objectForKey:v18];
                  v20 = [v13 objectForKey:v18];
                  v21 = v20;
                  if (v20)
                  {
                    [v20 unionSet:v19];
                  }

                  else
                  {
                    [v13 setObject:v19 forKey:v18];
                  }
                }

                v15 = [v14 countByEnumeratingWithState:&v29 objects:v39 count:16];
              }

              while (v15);
            }
          }

          else
          {
            [p_isa[8] setObject:v12 forKey:v11];
          }
        }

        v9 = obj;
        v26 = [obj countByEnumeratingWithState:&v33 objects:v40 count:16];
      }

      while (v26);
    }

    v6 = v27;
    objc_autoreleasePoolPop(context);
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"MASubGraphInvalidGraph" format:{@"SubGraph invalid for graph %@", v5->_graph}];
  }

  objc_sync_exit(v6);

  objc_sync_exit(p_isa);
  v22 = *MEMORY[0x277D85DE8];
}

- (id)description
{
  v65 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v4 = [(MASubGraph *)self nodesLabels];
  v5 = [v4 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v58;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v58 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 appendFormat:@"[%@](%ld), ", *(*(&v57 + 1) + 8 * i), -[MASubGraph nodesCountForLabel:](self, "nodesCountForLabel:", *(*(&v57 + 1) + 8 * i))];
      }

      v6 = [v4 countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v6);
  }

  v9 = [(MASubGraph *)self nodesLabels];
  v10 = [v9 count];

  if (v10)
  {
    [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 2, 2}];
  }

  v11 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v12 = [(MASubGraph *)self edgesLabels];
  v13 = [v12 countByEnumeratingWithState:&v53 objects:v63 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v54;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v54 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v11 appendFormat:@"[%@](%ld), ", *(*(&v53 + 1) + 8 * j), -[MASubGraph edgesCountForLabel:](self, "edgesCountForLabel:", *(*(&v53 + 1) + 8 * j))];
      }

      v14 = [v12 countByEnumeratingWithState:&v53 objects:v63 count:16];
    }

    while (v14);
  }

  v17 = [(MASubGraph *)self edgesLabels];
  v18 = [v17 count];

  if (v18)
  {
    [v11 deleteCharactersInRange:{objc_msgSend(v11, "length") - 2, 2}];
  }

  v44 = v3;
  v19 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v20 = [(MASubGraph *)self nodesNames];
  v21 = [v20 countByEnumeratingWithState:&v49 objects:v62 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v50;
    do
    {
      for (k = 0; k != v22; ++k)
      {
        if (*v50 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [v19 appendFormat:@"[%@](%ld), ", *(*(&v49 + 1) + 8 * k), -[MASubGraph nodesCountForName:](self, "nodesCountForName:", *(*(&v49 + 1) + 8 * k))];
      }

      v22 = [v20 countByEnumeratingWithState:&v49 objects:v62 count:16];
    }

    while (v22);
  }

  v25 = [(MASubGraph *)self nodesNames];
  v26 = [v25 count];

  if (v26)
  {
    [v19 deleteCharactersInRange:{objc_msgSend(v19, "length") - 2, 2}];
  }

  v27 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v28 = [(MASubGraph *)self edgesNames];
  v29 = [v28 countByEnumeratingWithState:&v45 objects:v61 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v46;
    do
    {
      for (m = 0; m != v30; ++m)
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [v27 appendFormat:@"[%@](%ld), ", *(*(&v45 + 1) + 8 * m), -[MASubGraph edgesCountForName:](self, "edgesCountForName:", *(*(&v45 + 1) + 8 * m))];
      }

      v30 = [v28 countByEnumeratingWithState:&v45 objects:v61 count:16];
    }

    while (v30);
  }

  v33 = [(MASubGraph *)self edgesNames];
  v34 = [v33 count];

  if (v34)
  {
    [v27 deleteCharactersInRange:{objc_msgSend(v27, "length") - 2, 2}];
  }

  v43 = MEMORY[0x277CCACA8];
  v35 = objc_opt_class();
  v36 = NSStringFromClass(v35);
  v37 = [(MASubGraph *)self graph];
  v38 = [v37 identifier];
  v39 = [v38 UUIDString];
  v40 = [v43 stringWithFormat:@"[%@] id:[%@] nodesCount:[%ld] edgesCount:[%ld]\n\tnodesLabels:[%@]\n\tedgesLabels:[%@]\n\tnodesNames:[%@]\n\tedgesNames:[%@]", v36, v39, -[MASubGraph nodesCount](self, "nodesCount"), -[MASubGraph edgesCount](self, "edgesCount"), v44, v11, v19, v27];

  v41 = *MEMORY[0x277D85DE8];

  return v40;
}

- (MASubGraph)init
{
  v20.receiver = self;
  v20.super_class = MASubGraph;
  v2 = [(MASubGraph *)&v20 init];
  v3 = v2;
  if (v2)
  {
    graph = v2->_graph;
    v2->_graph = 0;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodesByIdentifier = v3->_nodesByIdentifier;
    v3->_nodesByIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodesByLabel = v3->_nodesByLabel;
    v3->_nodesByLabel = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodesByName = v3->_nodesByName;
    v3->_nodesByName = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    edgesByIdentifier = v3->_edgesByIdentifier;
    v3->_edgesByIdentifier = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    edgesByLabel = v3->_edgesByLabel;
    v3->_edgesByLabel = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    edgesByName = v3->_edgesByName;
    v3->_edgesByName = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    nodesByNameGroupByNodes = v3->_nodesByNameGroupByNodes;
    v3->_nodesByNameGroupByNodes = v17;
  }

  return v3;
}

+ (id)subGraphIntersectionsWithSubGraphs:(id)a3
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 firstObject];
  v6 = [v5 graph];
  v7 = [a1 subGraphWithGraph:v6];

  v8 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v9 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v10 = v4;
  v55 = [v10 countByEnumeratingWithState:&v90 objects:v98 count:16];
  if (v55)
  {
    v54 = *v91;
    v58 = v7;
    v52 = v10;
    v53 = v8;
    v51 = v9;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v91 != v54)
        {
          objc_enumerationMutation(v10);
        }

        v12 = *(*(&v90 + 1) + 8 * v11);
        v13 = [v7 graph];
        v14 = [v12 graph];

        if (v13 != v14)
        {
          v47 = MEMORY[0x277CBEAD8];
          v48 = [v7 graph];
          [v47 raise:@"MASubGraphInvalidGraph" format:{@"SubGraph invalid for graph %@", v48, v85, v88}];

          v46 = 0;
          goto LABEL_48;
        }

        v56 = v11;
        v87[0] = MEMORY[0x277D85DD0];
        v87[1] = 3221225472;
        v88[0] = __49__MASubGraph_subGraphIntersectionsWithSubGraphs___block_invoke;
        v88[1] = &unk_2797FF180;
        v61 = v8;
        v89 = v61;
        [v12 enumerateNodesByNameUsingBlock:v87];
        v84[0] = MEMORY[0x277D85DD0];
        v84[1] = 3221225472;
        v85[0] = __49__MASubGraph_subGraphIntersectionsWithSubGraphs___block_invoke_2;
        v85[1] = &unk_2797FF180;
        v86 = v9;
        [v12 enumerateEdgesByNameUsingBlock:v84];
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        obj = [v12[8] keyEnumerator];
        v62 = [obj countByEnumeratingWithState:&v80 objects:v97 count:16];
        if (v62)
        {
          v59 = *v81;
          v60 = v12;
          do
          {
            v15 = 0;
            do
            {
              if (*v81 != v59)
              {
                objc_enumerationMutation(obj);
              }

              v63 = v15;
              v16 = *(*(&v80 + 1) + 8 * v15);
              v17 = [v61 objectForKey:v16];
              v18 = [v12[8] objectForKey:v16];
              v19 = [v7[8] objectForKey:v16];
              [MEMORY[0x277CBEB58] set];
              v65 = v64 = v19;
              v20 = v19;
              if (!v19)
              {
                v20 = v18;
                [v7[8] setObject:v20 forKey:v16];
              }

              v78 = 0u;
              v79 = 0u;
              v76 = 0u;
              v77 = 0u;
              v21 = [v18 keyEnumerator];
              v22 = [v21 countByEnumeratingWithState:&v76 objects:v96 count:16];
              if (v22)
              {
                v23 = v22;
                v24 = *v77;
                do
                {
                  for (i = 0; i != v23; ++i)
                  {
                    if (*v77 != v24)
                    {
                      objc_enumerationMutation(v21);
                    }

                    v26 = *(*(&v76 + 1) + 8 * i);
                    if ([v17 containsObject:v26])
                    {
                      if (v64)
                      {
                        v27 = v18;
                        v28 = [v18 objectForKey:v26];
                        v29 = [v20 objectForKey:v26];
                        v30 = v29;
                        if (v29)
                        {
                          [v29 unionSet:v28];
                        }

                        else
                        {
                          [v20 setObject:v28 forKey:v26];
                        }

                        v18 = v27;
                      }
                    }

                    else
                    {
                      [v65 addObject:v26];
                    }
                  }

                  v23 = [v21 countByEnumeratingWithState:&v76 objects:v96 count:16];
                }

                while (v23);
              }

              v74[0] = MEMORY[0x277D85DD0];
              v74[1] = 3221225472;
              v74[2] = __49__MASubGraph_subGraphIntersectionsWithSubGraphs___block_invoke_3;
              v74[3] = &unk_2797FF670;
              v75 = v20;
              v31 = v20;
              [v65 enumerateObjectsUsingBlock:v74];

              v15 = v63 + 1;
              v7 = v58;
              v12 = v60;
            }

            while (v63 + 1 != v62);
            v62 = [obj countByEnumeratingWithState:&v80 objects:v97 count:16];
          }

          while (v62);
        }

        v11 = v56 + 1;
        v10 = v52;
        v8 = v53;
        v9 = v51;
      }

      while (v56 + 1 != v55);
      v55 = [v52 countByEnumeratingWithState:&v90 objects:v98 count:16];
      if (v55)
      {
        continue;
      }

      break;
    }
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v32 = [v8 keyEnumerator];
  v33 = [v32 countByEnumeratingWithState:&v70 objects:v95 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v71;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v71 != v35)
        {
          objc_enumerationMutation(v32);
        }

        v37 = *(*(&v70 + 1) + 8 * j);
        v38 = [v8 objectForKey:v37];
        [v7 addNodes:v38 withName:v37];
      }

      v34 = [v32 countByEnumeratingWithState:&v70 objects:v95 count:16];
    }

    while (v34);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v39 = [v9 keyEnumerator];
  v40 = [v39 countByEnumeratingWithState:&v66 objects:v94 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v67;
    do
    {
      for (k = 0; k != v41; ++k)
      {
        if (*v67 != v42)
        {
          objc_enumerationMutation(v39);
        }

        v44 = *(*(&v66 + 1) + 8 * k);
        v45 = [v9 objectForKey:v44];
        [v7 addNodes:v45 withName:v44];
      }

      v41 = [v39 countByEnumeratingWithState:&v66 objects:v94 count:16];
    }

    while (v41);
  }

  v46 = v7;
LABEL_48:

  v49 = *MEMORY[0x277D85DE8];

  return v46;
}

void __49__MASubGraph_subGraphIntersectionsWithSubGraphs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:v9];
  if (v7)
  {
    v8 = v7;
    [v7 intersectSet:v6];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] setWithSet:v6];

    [*(a1 + 32) setObject:v8 forKey:v9];
  }
}

void __49__MASubGraph_subGraphIntersectionsWithSubGraphs___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 objectForKey:v9];
  if (v7)
  {
    v8 = v7;
    [v7 intersectSet:v6];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB58] setWithSet:v6];

    [*(a1 + 32) setObject:v8 forKey:v9];
  }
}

void __49__MASubGraph_subGraphIntersectionsWithSubGraphs___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  memset(&enumerator, 0, sizeof(enumerator));
  NSEnumerateMapTable(&enumerator, *(a1 + 32));
    ;
  }

  NSEndMapTableEnumeration(&enumerator);
}

+ (id)subGraphWithGraph:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(objc_opt_class());
  v5 = v4[1];
  v4[1] = v3;

  return v4;
}

@end
@interface MAAbstractGraph
- (MAAbstractGraph)init;
- (id)insertEdgeWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 minimum:(unint64_t)a6 maximum:(unint64_t)a7 directed:(BOOL)a8;
- (id)insertNodeWithLabel:(id)a3;
@end

@implementation MAAbstractGraph

- (id)insertEdgeWithLabel:(id)a3 sourceNode:(id)a4 targetNode:(id)a5 minimum:(unint64_t)a6 maximum:(unint64_t)a7 directed:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__5390;
  v43 = __Block_byref_object_dispose__5391;
  v44 = 0;
  v32 = MEMORY[0x277D85DD0];
  v33 = 3221225472;
  v34 = __86__MAAbstractGraph_insertEdgeWithLabel_sourceNode_targetNode_minimum_maximum_directed___block_invoke;
  v35 = &unk_2797FF8B8;
  v17 = v16;
  v36 = v17;
  v18 = v14;
  v37 = v18;
  v38 = &v39;
  [v15 enumerateEdgesUsingBlock:&v32];
  v19 = v40[5];
  if (!v19)
  {
    v20 = [MAAbstractEdge alloc];
    LOBYTE(v31) = a8;
    LODWORD(v21) = 1.0;
    v22 = [(MAAbstractEdge *)v20 initWithLabel:v18 sourceNode:v15 targetNode:v17 domain:1 weight:a6 minimum:a7 maximum:v21 directed:v31, v32, v33, v34, v35, v36];
    v23 = v40[5];
    v40[5] = v22;

    v24 = [(NSMutableArray *)self->_edges count];
    [v40[5] setIdentifier:v24 + 1];
    [(NSMutableArray *)self->_edges addObject:v40[5]];
    v25 = [v40[5] sourceNode];
    v26 = [v25 implementation];

    [v26 addEdge:v40[5]];
    if (([v40[5] isLoop] & 1) == 0)
    {
      v27 = [v40[5] targetNode];
      v28 = [v27 implementation];

      [v28 addEdge:v40[5]];
    }

    v19 = v40[5];
  }

  v29 = v19;

  _Block_object_dispose(&v39, 8);

  return v29;
}

void __86__MAAbstractGraph_insertEdgeWithLabel_sourceNode_targetNode_minimum_maximum_directed___block_invoke(void *a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v6 = [v9 label];
  v7 = [v9 targetNode];
  if (![v7 isSameNodeAsNode:a1[4]])
  {

    goto LABEL_8;
  }

  if (v6 == a1[5])
  {

    goto LABEL_7;
  }

  v8 = [v6 isEqualToString:?];

  if (v8)
  {
LABEL_7:
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    *a3 = 1;
  }

LABEL_8:
}

- (id)insertNodeWithLabel:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = self->_nodes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        v11 = [v10 label];
        v12 = v11;
        if (v11 == v4 || ([v11 isEqualToString:v4] & 1) != 0)
        {
          v15 = v10;

          goto LABEL_12;
        }
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = [MAAbstractNode alloc];
  LODWORD(v14) = 1.0;
  v15 = [(MAAbstractNode *)v13 initWithLabel:v4 domain:1 weight:MEMORY[0x277CBEC10] properties:v14];
  [(MANode *)v15 setIdentifier:[(NSMutableArray *)self->_nodes count]+ 1];
  [(NSMutableArray *)self->_nodes addObject:v15];
LABEL_12:

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (MAAbstractGraph)init
{
  v8.receiver = self;
  v8.super_class = MAAbstractGraph;
  v2 = [(MAAbstractGraph *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    nodes = v2->_nodes;
    v2->_nodes = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    edges = v2->_edges;
    v2->_edges = v5;
  }

  return v2;
}

@end
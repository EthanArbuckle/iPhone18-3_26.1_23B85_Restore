@interface KGChainRelation
- (KGChainRelation)initWithRelations:(id)relations;
- (id)adjacencyByJoiningWithAdjacency:(id)adjacency inGraph:(id)graph;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers inGraph:(id)graph;
- (id)inverse;
- (id)targetNodeIdentifiersFromSourceNodeIdentifiers:(id)identifiers inGraph:(id)graph;
@end

@implementation KGChainRelation

- (id)adjacencyByJoiningWithAdjacency:(id)adjacency inGraph:(id)graph
{
  v23 = *MEMORY[0x277D85DE8];
  adjacencyCopy = adjacency;
  graphCopy = graph;
  v8 = adjacencyCopy;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_relations;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v11 = v8;
  if (v10)
  {
    v12 = v10;
    v13 = *v19;
    v11 = v8;
    do
    {
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v11 = [*(*(&v18 + 1) + 8 * v14) adjacencyByJoiningWithAdjacency:v15 inGraph:{graphCopy, v18}];

        ++v14;
        v15 = v11;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers inGraph:(id)graph
{
  v24 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  graphCopy = graph;
  v8 = objc_alloc_init(KGDirectedBinaryAdjacency);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = self->_relations;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    v13 = 1;
    do
    {
      v14 = 0;
      v15 = v8;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v19 + 1) + 8 * v14);
        if (v13)
        {
          [v16 adjacencyWithStartNodeIdentifiers:identifiersCopy inGraph:graphCopy];
        }

        else
        {
          [v16 adjacencyByJoiningWithAdjacency:v15 inGraph:{graphCopy, v19}];
        }
        v8 = ;

        v13 = 0;
        ++v14;
        v15 = v8;
      }

      while (v11 != v14);
      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      v13 = 0;
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)inverse
{
  if ([(NSArray *)self->_relations count])
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    for (i = [(NSArray *)self->_relations count]- 1; ; --i)
    {
      v5 = [(NSArray *)self->_relations objectAtIndex:i];
      inverse = [v5 inverse];
      [v3 addObject:inverse];
    }
  }

  return self;
}

- (id)targetNodeIdentifiersFromSourceNodeIdentifiers:(id)identifiers inGraph:(id)graph
{
  v23 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  graphCopy = graph;
  v8 = identifiersCopy;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_relations;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  v11 = v8;
  if (v10)
  {
    v12 = v10;
    v13 = *v19;
    v11 = v8;
    do
    {
      v14 = 0;
      v15 = v11;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v11 = [*(*(&v18 + 1) + 8 * v14) targetNodeIdentifiersFromSourceNodeIdentifiers:v15 inGraph:{graphCopy, v18}];

        ++v14;
        v15 = v11;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];

  return v11;
}

- (KGChainRelation)initWithRelations:(id)relations
{
  relationsCopy = relations;
  v9.receiver = self;
  v9.super_class = KGChainRelation;
  v6 = [(KGChainRelation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_relations, relations);
  }

  return v7;
}

@end
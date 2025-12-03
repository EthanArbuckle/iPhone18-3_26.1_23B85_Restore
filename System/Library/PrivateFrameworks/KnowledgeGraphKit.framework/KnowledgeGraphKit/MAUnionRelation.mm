@interface MAUnionRelation
+ (id)scanRelationWithScanner:(id)scanner;
- (BOOL)isEqual:(id)equal;
- (MAUnionRelation)initWithRelations:(id)relations;
- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph;
- (id)inverse;
- (id)visualString;
- (unint64_t)hash;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph;
@end

@implementation MAUnionRelation

- (unint64_t)hash
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = self->_relations;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 ^= (v5 << 6) + (v5 >> 2) + 2654435769u + [*(*(&v10 + 1) + 8 * i) hash];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      relations = self->_relations;
      relations = [(MAUnionRelation *)equalCopy relations];
      v7 = [(NSArray *)relations isEqual:relations];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)visualString
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = [@"-{" mutableCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_relations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    v8 = 1;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ((v8 & 1) == 0)
        {
          [v3 appendString:{@", ", v14}];
        }

        visualString = [v10 visualString];
        [v3 appendString:visualString];

        v8 = 0;
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      v8 = 0;
    }

    while (v6);
  }

  [v3 appendString:@"}"];
  v12 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)adjacencyWithStartNodeIdentifiers:(id)identifiers graph:(id)graph
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  graphCopy = graph;
  v8 = objc_alloc_init(KGMutableDirectedBinaryAdjacency);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_relations;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v17 + 1) + 8 * i) adjacencyWithStartNodeIdentifiers:identifiersCopy graph:{graphCopy, v17}];
        [(KGMutableDirectedBinaryAdjacency *)v8 formUnionWith:v14];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)identifiers toTargetNodeIdentifiers:(id)nodeIdentifiers graph:(id)graph
{
  v22 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  nodeIdentifiersCopy = nodeIdentifiers;
  graphCopy = graph;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  relations = [(MAUnionRelation *)self relations];
  v12 = [relations countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(relations);
        }

        [*(*(&v17 + 1) + 8 * v15++) unionAdjacencySetFromSourceNodeIdentifiers:identifiersCopy toTargetNodeIdentifiers:nodeIdentifiersCopy graph:graphCopy];
      }

      while (v13 != v15);
      v13 = [relations countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (id)inverse
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = self->_relations;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

        inverse = [*(*(&v13 + 1) + 8 * i) inverse];
        [v3 addObject:inverse];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [[MAUnionRelation alloc] initWithRelations:v3];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (MAUnionRelation)initWithRelations:(id)relations
{
  relationsCopy = relations;
  v9.receiver = self;
  v9.super_class = MAUnionRelation;
  initForSubclassing = [(MARelation *)&v9 initForSubclassing];
  v7 = initForSubclassing;
  if (initForSubclassing)
  {
    objc_storeStrong(initForSubclassing + 1, relations);
  }

  return v7;
}

+ (id)scanRelationWithScanner:(id)scanner
{
  scannerCopy = scanner;
  scanLocation = [scannerCopy scanLocation];
  if (([scannerCopy scanString:@"-{" intoString:0] & 1) == 0)
  {
    [scannerCopy setScanLocation:scanLocation];
    v9 = 0;
    goto LABEL_13;
  }

  v5 = [MARelation scanRelationWithScanner:scannerCopy];
  if (!v5)
  {
    [scannerCopy setScanLocation:scanLocation];
    v9 = 0;
    goto LABEL_12;
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v5, 0}];
  if ([scannerCopy scanString:@" intoString:{", 0}])
  {
    do
    {
      v7 = [MARelation scanRelationWithScanner:scannerCopy];
      if (!v7)
      {
        goto LABEL_9;
      }

      v8 = v7;
      [v6 addObject:v7];
    }

    while (([scannerCopy scanString:@" intoString:{", 0}] & 1) != 0);
  }

  if (([scannerCopy scanString:@"}" intoString:0] & 1) == 0)
  {
LABEL_9:
    [scannerCopy setScanLocation:scanLocation];
    v9 = 0;
    goto LABEL_10;
  }

  v9 = [[MAUnionRelation alloc] initWithRelations:v6];
LABEL_10:

LABEL_12:
LABEL_13:

  return v9;
}

@end
@interface MAUnionRelation
+ (id)scanRelationWithScanner:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MAUnionRelation)initWithRelations:(id)a3;
- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4;
- (id)inverse;
- (id)visualString;
- (unint64_t)hash;
- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      relations = self->_relations;
      v6 = [(MAUnionRelation *)v4 relations];
      v7 = [(NSArray *)relations isEqual:v6];
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

        v11 = [v10 visualString];
        [v3 appendString:v11];

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

- (id)adjacencyWithStartNodeIdentifiers:(id)a3 graph:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
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

        v14 = [*(*(&v17 + 1) + 8 * i) adjacencyWithStartNodeIdentifiers:v6 graph:{v7, v17}];
        [(KGMutableDirectedBinaryAdjacency *)v8 formUnionWith:v14];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v8;
}

- (void)unionAdjacencySetFromSourceNodeIdentifiers:(id)a3 toTargetNodeIdentifiers:(id)a4 graph:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [(MAUnionRelation *)self relations];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v11);
        }

        [*(*(&v17 + 1) + 8 * v15++) unionAdjacencySetFromSourceNodeIdentifiers:v8 toTargetNodeIdentifiers:v9 graph:v10];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
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

        v9 = [*(*(&v13 + 1) + 8 * i) inverse];
        [v3 addObject:v9];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v10 = [[MAUnionRelation alloc] initWithRelations:v3];
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (MAUnionRelation)initWithRelations:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MAUnionRelation;
  v6 = [(MARelation *)&v9 initForSubclassing];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(v6 + 1, a3);
  }

  return v7;
}

+ (id)scanRelationWithScanner:(id)a3
{
  v3 = a3;
  v4 = [v3 scanLocation];
  if (([v3 scanString:@"-{" intoString:0] & 1) == 0)
  {
    [v3 setScanLocation:v4];
    v9 = 0;
    goto LABEL_13;
  }

  v5 = [MARelation scanRelationWithScanner:v3];
  if (!v5)
  {
    [v3 setScanLocation:v4];
    v9 = 0;
    goto LABEL_12;
  }

  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v5, 0}];
  if ([v3 scanString:@" intoString:{", 0}])
  {
    do
    {
      v7 = [MARelation scanRelationWithScanner:v3];
      if (!v7)
      {
        goto LABEL_9;
      }

      v8 = v7;
      [v6 addObject:v7];
    }

    while (([v3 scanString:@" intoString:{", 0}] & 1) != 0);
  }

  if (([v3 scanString:@"}" intoString:0] & 1) == 0)
  {
LABEL_9:
    [v3 setScanLocation:v4];
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
@interface _ClauseGenerationContext
- (_ClauseGenerationContext)init;
- (id)clauseWithBindings:(id)bindings;
- (id)kindClauseWithBindings:(id)bindings;
- (void)addPredicate:(id)predicate forFieldName:(id)name;
- (void)dealloc;
@end

@implementation _ClauseGenerationContext

- (_ClauseGenerationContext)init
{
  v5.receiver = self;
  v5.super_class = _ClauseGenerationContext;
  v2 = [(_ClauseGenerationContext *)&v5 init];
  if (v2)
  {
    v2->_kindPredicates = objc_alloc_init(NSMutableArray);
    v3 = objc_alloc_init(NSMutableArray);
    v2->_predicates = v3;
    v10[1] = v3;
    v11[0] = @"kind";
    v10[0] = v2->_kindPredicates;
    v12[0] = [NSArray arrayWithObjects:v10 count:2];
    v11[1] = @"groupName";
    predicates = v2->_predicates;
    v12[1] = [NSArray arrayWithObjects:&predicates count:1];
    v11[2] = @"displayName";
    v8 = v2->_predicates;
    v12[2] = [NSArray arrayWithObjects:&v8 count:1];
    v11[3] = @"address";
    v7 = v2->_predicates;
    v12[3] = [NSArray arrayWithObjects:&v7 count:1];
    v11[4] = @"sendingAddress";
    v6 = v2->_predicates;
    v12[4] = [NSArray arrayWithObjects:&v6 count:1];
    v2->_predicateCollectionsMap = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:5];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = _ClauseGenerationContext;
  [(_ClauseGenerationContext *)&v3 dealloc];
}

- (void)addPredicate:(id)predicate forFieldName:(id)name
{
  v8 = -[NSDictionary objectForKey:](self->_predicateCollectionsMap, "objectForKey:", [objc_msgSend(name componentsSeparatedByString:{@".", "objectAtIndex:", 0}]);
  if (!v8)
  {
    sub_1000191B8(a2, self, name);
  }

  [v8 makeObjectsPerformSelector:"addObject:" withObject:predicate];
}

- (id)kindClauseWithBindings:(id)bindings
{
  v6 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  kindPredicates = self->_kindPredicates;
  v8 = [(NSMutableArray *)kindPredicates countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(kindPredicates);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          sub_100019220(a2, self);
        }

        [v6 addObjectsFromArray:{objc_msgSend(objc_msgSend(v12, "rightExpression"), "constantValue")}];
      }

      v9 = [(NSMutableArray *)kindPredicates countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v13 = +[NSMutableString string];
  [[NSComparisonPredicate predicateWithLeftExpression:[NSExpression expressionForConstantValue:v6] rightExpression:0 modifier:10 type:0 options:?], "cr_addToClause:usingOperator:bindings:", v13, &stru_10002DA70, bindings];
  return v13;
}

- (id)clauseWithBindings:(id)bindings
{
  v5 = +[NSMutableString string];
  v6 = v5;
  if (self->_wantsGroups)
  {
    v7 = [(_ClauseGenerationContext *)self kindClauseWithBindings:bindings];
    if (v7)
    {
      [v6 appendString:v7];
      v8 = @"\n AND ";
    }

    else
    {
      v8 = @"   ";
    }

    objc_msgSend(v6, "appendFormat:", @"%@recents.rowid IN (\n      SELECT contacts.recent_id\n        FROM contacts\n        JOIN recents ON (recents.ROWID = contacts.recent_id)\n       WHERE "), v8;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    predicates = self->_predicates;
    v15 = [(NSMutableArray *)predicates countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      v18 = &stru_10002DA70;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(predicates);
          }

          [*(*(&v25 + 1) + 8 * i) cr_addToClause:v6 usingOperator:v18 bindings:bindings];
          v18 = @"\n AND ";
        }

        v16 = [(NSMutableArray *)predicates countByEnumeratingWithState:&v25 objects:v30 count:16];
        v18 = @"\n AND ";
      }

      while (v16);
    }

    [v6 appendString:@""]);
  }

  else
  {
    [v5 appendString:@"    recents.count = 1\n"];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_predicates;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (j = 0; j != v11; j = j + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v21 + 1) + 8 * j) cr_addToClause:v6 usingOperator:@"\n AND " bindings:bindings];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v11);
    }
  }

  return v6;
}

@end
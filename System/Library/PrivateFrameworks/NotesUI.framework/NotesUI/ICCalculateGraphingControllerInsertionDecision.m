@interface ICCalculateGraphingControllerInsertionDecision
+ (id)cache;
- (ICCalculateGraphingControllerInsertionDecision)initWithError:(id)a3 allowsInsertingNewGraph:(BOOL)a4 allowsAddingToGraph:(BOOL)a5 is3DGraphable:(BOOL)a6 graphableVariables:(id)a7;
- (id)description;
- (id)makeMenu;
@end

@implementation ICCalculateGraphingControllerInsertionDecision

+ (id)cache
{
  if (cache_onceToken != -1)
  {
    +[ICCalculateGraphingControllerInsertionDecision cache];
  }

  v3 = cache_cache;

  return v3;
}

uint64_t __55__ICCalculateGraphingControllerInsertionDecision_cache__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DEE0]);
  v1 = cache_cache;
  cache_cache = v0;

  v2 = cache_cache;

  return [v2 setCountLimit:8];
}

- (ICCalculateGraphingControllerInsertionDecision)initWithError:(id)a3 allowsInsertingNewGraph:(BOOL)a4 allowsAddingToGraph:(BOOL)a5 is3DGraphable:(BOOL)a6 graphableVariables:(id)a7
{
  v13 = a3;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = ICCalculateGraphingControllerInsertionDecision;
  v15 = [(ICCalculateGraphingControllerInsertionDecision *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_error, a3);
    v16->_allowsInsertingNewGraph = a4;
    v16->_allowsAddingToGraph = a5;
    v16->_is3DGraphable = a6;
    objc_storeStrong(&v16->_graphableVariables, a7);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICCalculateGraphingControllerInsertionDecision *)self error];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICCalculateGraphingControllerInsertionDecision allowsInsertingNewGraph](self, "allowsInsertingNewGraph")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[ICCalculateGraphingControllerInsertionDecision allowsAddingToGraph](self, "allowsAddingToGraph")}];
  v9 = [v3 stringWithFormat:@"<%@: %p, error: %@, allowsInsertingNewGraph: %@, allowsAddingToGraph: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (id)makeMenu
{
  v79 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [v3 UUIDString];

  v5 = [objc_opt_class() cache];
  [v5 setObject:self forKey:v4];

  v6 = [MEMORY[0x1E695DF90] dictionary];
  [v6 ic_addKey:@"cacheKey" forNonNilObject:v4];
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = [(ICCalculateGraphingControllerInsertionDecision *)self graphableVariables];
  v9 = [v8 count];

  if (v9 >= 2)
  {
    v65 = v7;
    v66 = v4;
    if ([(ICCalculateGraphingControllerInsertionDecision *)self allowsInsertingNewGraph])
    {
      v10 = [MEMORY[0x1E695DF70] array];
      v73 = 0u;
      v74 = 0u;
      v75 = 0u;
      v76 = 0u;
      v64 = self;
      obj = [(ICCalculateGraphingControllerInsertionDecision *)self graphableVariables];
      v11 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v74;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v74 != v13)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v73 + 1) + 8 * i);
            v16 = MEMORY[0x1E696AEC0];
            v17 = __ICLocalizedFrameworkString_impl(@"%@ on x-axis", @"%@ on x-axis", 0, 1);
            v18 = [v16 localizedStringWithFormat:v17, v15];

            [v6 setObject:v15 forKeyedSubscript:@"graphableVariable"];
            v19 = [MEMORY[0x1E69DC8B0] commandWithTitle:v18 image:0 action:sel_insertGraph_ propertyList:v6];
            [v10 addObject:v19];
          }

          v12 = [obj countByEnumeratingWithState:&v73 objects:v78 count:16];
        }

        while (v12);
      }

      v20 = MEMORY[0x1E69DCC60];
      v21 = __ICLocalizedFrameworkString_impl(@"Insert Graph", @"Insert Graph", 0, 1);
      v22 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"graph.2d"];
      v23 = [v10 copy];
      v24 = [v20 menuWithTitle:v21 image:v22 identifier:0 options:0 children:v23];

      [v7 addObject:v24];
      v4 = v66;
      self = v64;
    }

    if ([(ICCalculateGraphingControllerInsertionDecision *)self allowsAddingToGraph])
    {
      v25 = [MEMORY[0x1E695DF70] array];
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      obja = [(ICCalculateGraphingControllerInsertionDecision *)self graphableVariables];
      v26 = [obja countByEnumeratingWithState:&v69 objects:v77 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v70;
        do
        {
          for (j = 0; j != v27; ++j)
          {
            if (*v70 != v28)
            {
              objc_enumerationMutation(obja);
            }

            v30 = *(*(&v69 + 1) + 8 * j);
            v31 = MEMORY[0x1E696AEC0];
            v32 = __ICLocalizedFrameworkString_impl(@"%@ on x-axis", @"%@ on x-axis", 0, 1);
            v33 = [v31 localizedStringWithFormat:v32, v30];

            [v6 setObject:v30 forKeyedSubscript:@"graphableVariable"];
            v34 = [MEMORY[0x1E69DC8B0] commandWithTitle:v33 image:0 action:sel_addToGraph_ propertyList:v6];
            [v25 addObject:v34];
          }

          v27 = [obja countByEnumeratingWithState:&v69 objects:v77 count:16];
        }

        while (v27);
      }

      v35 = MEMORY[0x1E69DCC60];
      v36 = __ICLocalizedFrameworkString_impl(@"Add to Existing", @"Add to Existing", 0, 1);
      v37 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"graph.2d"];
      v38 = [v25 copy];
      v39 = [v35 menuWithTitle:v36 image:v37 identifier:0 options:0 children:v38];

      v7 = v65;
      [v65 addObject:v39];

      v4 = v66;
    }

    goto LABEL_42;
  }

  v40 = [(ICCalculateGraphingControllerInsertionDecision *)self is3DGraphable];
  v41 = [(ICCalculateGraphingControllerInsertionDecision *)self allowsInsertingNewGraph];
  if (v40)
  {
    if (v41 && [(ICCalculateGraphingControllerInsertionDecision *)self is3DGraphable])
    {
      v42 = MEMORY[0x1E69DC8B0];
      v43 = __ICLocalizedFrameworkString_impl(@"Insert 3D Graph", @"Insert 3D Graph", 0, 1);
      v44 = [(ICCalculateGraphingControllerInsertionDecision *)self allowsAddingToGraph];
      if (v44)
      {
        v45 = 0;
      }

      else
      {
        v45 = [MEMORY[0x1E69DCAB8] ic_systemImageNamed:@"graph.3d"];
      }

      v54 = [v42 commandWithTitle:v43 image:v45 action:sel_insertGraph_ propertyList:v6];
      if (!v44)
      {
      }

      [v7 addObject:v54];
    }

    if ([(ICCalculateGraphingControllerInsertionDecision *)self allowsAddingToGraph]&& [(ICCalculateGraphingControllerInsertionDecision *)self is3DGraphable])
    {
      v55 = MEMORY[0x1E69DC8B0];
      v52 = __ICLocalizedFrameworkString_impl(@"Add to Existing 3D Graph", @"Add to Existing 3D Graph", 0, 1);
      v56 = [MEMORY[0x1E69DCAB8] ic_systemImageNamed:@"graph.3d"];
      v53 = [v55 commandWithTitle:v52 image:v56 action:sel_addToGraph_ propertyList:v6];

      goto LABEL_41;
    }
  }

  else
  {
    if (v41)
    {
      v46 = MEMORY[0x1E69DC8B0];
      v47 = __ICLocalizedFrameworkString_impl(@"Insert Graph", @"Insert Graph", 0, 1);
      v48 = [(ICCalculateGraphingControllerInsertionDecision *)self allowsAddingToGraph];
      if (v48)
      {
        v49 = 0;
      }

      else
      {
        v49 = [MEMORY[0x1E69DCAB8] ic_systemImageNamed:@"graph.2d"];
      }

      v50 = [v46 commandWithTitle:v47 image:v49 action:sel_insertGraph_ propertyList:v6];
      if (!v48)
      {
      }

      [v7 addObject:v50];
    }

    if ([(ICCalculateGraphingControllerInsertionDecision *)self allowsAddingToGraph])
    {
      v51 = MEMORY[0x1E69DC8B0];
      v52 = __ICLocalizedFrameworkString_impl(@"Add to Existing", @"Add to Existing", 0, 1);
      v53 = [v51 commandWithTitle:v52 image:0 action:sel_addToGraph_ propertyList:v6];
LABEL_41:

      [v7 addObject:v53];
    }
  }

LABEL_42:
  v57 = [v7 count] < 2;
  v58 = MEMORY[0x1E69DCC60];
  v59 = __ICLocalizedFrameworkString_impl(@"Graphs", @"Graphs", 0, 1);
  v60 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"graph.2d"];
  v61 = [v7 copy];
  v62 = [v58 menuWithTitle:v59 image:v60 identifier:0 options:v57 children:v61];

  return v62;
}

@end
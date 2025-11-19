@interface DebugHierarchyPropertyAction
- (BOOL)_isTargetingProperty:(id)a3;
- (BOOL)isTargetingObject:(id)a3;
- (BOOL)targetsObjectIdentifiers:(id *)a3;
- (DebugHierarchyPropertyAction)init;
- (NSString)debugDescription;
- (id)keysToArchiveViaKVC;
- (void)_fetchValuesForPropertiesWithNames:(id)a3 onObject:(id)a4 inContext:(id)a5;
- (void)addPropertyNames:(id)a3;
- (void)performInContext:(id)a3 withObject:(id)a4;
- (void)setOptions:(int64_t)a3 comparisonStyle:(int64_t)a4;
@end

@implementation DebugHierarchyPropertyAction

- (DebugHierarchyPropertyAction)init
{
  v3.receiver = self;
  v3.super_class = DebugHierarchyPropertyAction;
  result = [(DebugHierarchyPropertyAction *)&v3 init];
  if (result)
  {
    result->_visibility = 15;
    result->_optionsComparisonStyle = 0;
  }

  return result;
}

- (void)addPropertyNames:(id)a3
{
  v4 = a3;
  v6 = [(DebugHierarchyPropertyAction *)self propertyNames];
  v5 = [v6 arrayByAddingObjectsFromArray:v4];

  [(DebugHierarchyPropertyAction *)self setPropertyNames:v5];
}

- (void)setOptions:(int64_t)a3 comparisonStyle:(int64_t)a4
{
  [(DebugHierarchyPropertyAction *)self setOptions:a3];

  [(DebugHierarchyPropertyAction *)self setOptionsComparisonStyle:a4];
}

- (id)keysToArchiveViaKVC
{
  v4[0] = @"objectIdentifiers";
  v4[1] = @"objectIdentifiersAreExclusive";
  v4[2] = @"propertyNames";
  v4[3] = @"propertyNamesAreExclusive";
  v4[4] = @"types";
  v4[5] = @"typesAreExclusive";
  v4[6] = @"exactTypes";
  v4[7] = @"exactTypesAreExclusive";
  v4[8] = @"visibility";
  v4[9] = @"options";
  v4[10] = @"optionsComparisonStyle";
  v2 = [NSArray arrayWithObjects:v4 count:11];

  return v2;
}

- (void)performInContext:(id)a3 withObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(DebugHierarchyPropertyAction *)self isTargetingObject:v7])
  {
    v8 = [(DebugHierarchyPropertyAction *)self visibility];
    v9 = [(DebugHierarchyPropertyAction *)self optionsComparisonStyle];
    v10 = [(DebugHierarchyPropertyAction *)self propertyNames];
    if (v10)
    {
      v11 = [(DebugHierarchyPropertyAction *)self propertyNames];
      if (v11)
      {
        v12 = [(DebugHierarchyPropertyAction *)self propertyNames];
        if ([v12 count])
        {
          v13 = 0;
        }

        else
        {
          v13 = [(DebugHierarchyPropertyAction *)self propertyNamesAreExclusive];
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 1;
    }

    v14 = v8 & 0xF;

    v15 = [(DebugHierarchyPropertyAction *)self propertyNames];
    if ([v15 count])
    {
      v16 = [(DebugHierarchyPropertyAction *)self propertyNamesAreExclusive];
    }

    else
    {
      v16 = 0;
    }

    v18 = v14 != 15 || v9 != 0;
    if (((v18 | v13) & 1) != 0 || v16)
    {
      v20 = objc_opt_class();
      if (v20 && (v21 = v20, object_isClass(v20)))
      {
        v22 = NSStringFromClass(v21);
      }

      else
      {
        v22 = 0;
      }

      v23 = [v6 runtimeTypeWithName:v22];
      v24 = +[NSMutableArray array];
      v36 = v23;
      if (v36)
      {
        v25 = v36;
        do
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v26 = [v25 instanceProperties];
          v27 = [v26 objectEnumerator];

          v28 = [v27 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v38;
            do
            {
              for (i = 0; i != v29; i = i + 1)
              {
                if (*v38 != v30)
                {
                  objc_enumerationMutation(v27);
                }

                v32 = *(*(&v37 + 1) + 8 * i);
                if ([(DebugHierarchyPropertyAction *)self _isTargetingProperty:v32])
                {
                  v33 = [v32 name];
                  [v24 addObject:v33];
                }
              }

              v29 = [v27 countByEnumeratingWithState:&v37 objects:v41 count:16];
            }

            while (v29);
          }

          v34 = [v25 parentType];

          v25 = v34;
        }

        while (v34);
      }

      if ([v24 count])
      {
        v19 = [v24 copy];
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = [(DebugHierarchyPropertyAction *)self propertyNames];
    }

    [(DebugHierarchyPropertyAction *)self _fetchValuesForPropertiesWithNames:v19 onObject:v7 inContext:v6];
  }
}

- (BOOL)targetsObjectIdentifiers:(id *)a3
{
  v5 = [(DebugHierarchyPropertyAction *)self objectIdentifiers];
  if ([v5 count])
  {
    v6 = [(DebugHierarchyPropertyAction *)self objectIdentifiersAreExclusive];

    if ((v6 & 1) == 0)
    {
      *a3 = [(DebugHierarchyPropertyAction *)self objectIdentifiers];
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)isTargetingObject:(id)a3
{
  v4 = a3;
  v5 = [(DebugHierarchyPropertyAction *)self objectIdentifiers];
  v6 = [v5 count];

  if (v6 && (!v4 ? (v7 = 0) : (v7 = CFStringCreateWithFormat(0, 0, @"%p", v4)), -[DebugHierarchyPropertyAction objectIdentifiers](self, "objectIdentifiers"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:v7], v8, LODWORD(v8) = -[DebugHierarchyPropertyAction objectIdentifiersAreExclusive](self, "objectIdentifiersAreExclusive"), v7, v9 == v8))
  {
    LOBYTE(v24) = 0;
  }

  else
  {
    v10 = [(DebugHierarchyPropertyAction *)self types];
    v11 = [v10 count];

    if (v11)
    {
      if ([(DebugHierarchyPropertyAction *)self typesAreExclusive])
      {
        v47 = 0uLL;
        v48 = 0uLL;
        v45 = 0uLL;
        v46 = 0uLL;
        v12 = [(DebugHierarchyPropertyAction *)self types];
        v13 = [v12 countByEnumeratingWithState:&v45 objects:v52 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v46;
LABEL_10:
          v16 = 0;
          while (1)
          {
            if (*v46 != v15)
            {
              objc_enumerationMutation(v12);
            }

            if (NSClassFromString(*(*(&v45 + 1) + 8 * v16)) && (objc_opt_isKindOfClass() & 1) != 0)
            {
              goto LABEL_29;
            }

            if (v14 == ++v16)
            {
              v14 = [v12 countByEnumeratingWithState:&v45 objects:v52 count:16];
              if (v14)
              {
                goto LABEL_10;
              }

              break;
            }
          }
        }
      }

      else
      {
        v43 = 0uLL;
        v44 = 0uLL;
        v41 = 0uLL;
        v42 = 0uLL;
        v12 = [(DebugHierarchyPropertyAction *)self types];
        v24 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
        if (!v24)
        {
          goto LABEL_53;
        }

        v25 = *v42;
LABEL_33:
        v26 = 0;
        while (1)
        {
          if (*v42 != v25)
          {
            objc_enumerationMutation(v12);
          }

          if (NSClassFromString(*(*(&v41 + 1) + 8 * v26)) && (objc_opt_isKindOfClass() & 1) != 0)
          {
            break;
          }

          if (v24 == ++v26)
          {
            v24 = [v12 countByEnumeratingWithState:&v41 objects:v51 count:16];
            if (v24)
            {
              goto LABEL_33;
            }

            goto LABEL_53;
          }
        }
      }
    }

    v17 = [(DebugHierarchyPropertyAction *)self exactTypes];
    v18 = [v17 count];

    if (v18)
    {
      if ([(DebugHierarchyPropertyAction *)self exactTypesAreExclusive])
      {
        v39 = 0uLL;
        v40 = 0uLL;
        v37 = 0uLL;
        v38 = 0uLL;
        v12 = [(DebugHierarchyPropertyAction *)self exactTypes];
        v19 = [v12 countByEnumeratingWithState:&v37 objects:v50 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v38;
LABEL_22:
          v22 = 0;
          while (1)
          {
            if (*v38 != v21)
            {
              objc_enumerationMutation(v12);
            }

            v23 = NSClassFromString(*(*(&v37 + 1) + 8 * v22));
            if (v23)
            {
              if ([v4 isMemberOfClass:v23])
              {
                goto LABEL_52;
              }
            }

            if (v20 == ++v22)
            {
              v20 = [v12 countByEnumeratingWithState:&v37 objects:v50 count:16];
              if (v20)
              {
                goto LABEL_22;
              }

              break;
            }
          }
        }
      }

      else
      {
        v35 = 0uLL;
        v36 = 0uLL;
        v33 = 0uLL;
        v34 = 0uLL;
        v12 = [(DebugHierarchyPropertyAction *)self exactTypes];
        v27 = [v12 countByEnumeratingWithState:&v33 objects:v49 count:16];
        if (!v27)
        {
LABEL_52:
          LOBYTE(v24) = 1;
          goto LABEL_53;
        }

        v28 = v27;
        v29 = *v34;
LABEL_44:
        v30 = 0;
        while (1)
        {
          if (*v34 != v29)
          {
            objc_enumerationMutation(v12);
          }

          v31 = NSClassFromString(*(*(&v33 + 1) + 8 * v30));
          if (v31)
          {
            if ([v4 isMemberOfClass:v31])
            {
              break;
            }
          }

          if (v28 == ++v30)
          {
            v28 = [v12 countByEnumeratingWithState:&v33 objects:v49 count:16];
            LOBYTE(v24) = 1;
            if (v28)
            {
              goto LABEL_44;
            }

            goto LABEL_53;
          }
        }
      }

LABEL_29:
      LOBYTE(v24) = 0;
LABEL_53:

      goto LABEL_54;
    }

    LOBYTE(v24) = 1;
  }

LABEL_54:

  return v24;
}

- (BOOL)_isTargetingProperty:(id)a3
{
  v4 = a3;
  v5 = [v4 visibility];
  if ((-[DebugHierarchyPropertyAction visibility](self, "visibility") & v5) != 0 && DebugHierarchyBitMaskComparison([v4 options], -[DebugHierarchyPropertyAction options](self, "options"), -[DebugHierarchyPropertyAction optionsComparisonStyle](self, "optionsComparisonStyle")))
  {
    v6 = [(DebugHierarchyPropertyAction *)self propertyNames];
    v7 = [v6 count];

    if (v7)
    {
      v8 = [(DebugHierarchyPropertyAction *)self propertyNames];
      v9 = [v4 name];
      v10 = [v8 containsObject:v9];

      v11 = v10 ^ [(DebugHierarchyPropertyAction *)self propertyNamesAreExclusive];
    }

    else
    {
      LOBYTE(v11) = 1;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (void)_fetchValuesForPropertiesWithNames:(id)a3 onObject:(id)a4 inContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v7 count]);
    v11 = objc_opt_class();
    if (v11 && (v12 = v11, object_isClass(v11)))
    {
      v13 = NSStringFromClass(v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = [v9 runtimeTypeWithName:v13];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = v7;
    v15 = v7;
    v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v27;
      do
      {
        v19 = 0;
        do
        {
          if (*v27 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [v14 propertyWithName:*(*(&v26 + 1) + 8 * v19)];
          if (v20)
          {
            [DebugHierarchyObjectInterface valueAndOptionsForProperty:v20 onObject:v8 inContext:v9];
            v21 = v9;
            v23 = v22 = v8;
            [v10 addObject:v23];

            v8 = v22;
            v9 = v21;
          }

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }

    v24 = [v10 copy];
    [v9 addProperties:v24 toObject:v8];

    v7 = v25;
  }
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(DebugHierarchyPropertyAction *)self objectIdentifiers];
  v6 = [v5 count];
  v7 = [(DebugHierarchyPropertyAction *)self propertyNames];
  v8 = [v7 componentsJoinedByString:{@", "}];
  v9 = [NSString stringWithFormat:@"<%@ %p identifiers: %lu properties: %@>", v4, self, v6, v8];;

  return v9;
}

@end
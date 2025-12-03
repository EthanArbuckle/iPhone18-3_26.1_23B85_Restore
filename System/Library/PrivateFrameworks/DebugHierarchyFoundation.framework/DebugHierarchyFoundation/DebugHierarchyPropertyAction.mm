@interface DebugHierarchyPropertyAction
- (BOOL)_isTargetingProperty:(id)property;
- (BOOL)isTargetingObject:(id)object;
- (BOOL)targetsObjectIdentifiers:(id *)identifiers;
- (DebugHierarchyPropertyAction)init;
- (NSString)debugDescription;
- (id)keysToArchiveViaKVC;
- (void)_fetchValuesForPropertiesWithNames:(id)names onObject:(id)object inContext:(id)context;
- (void)addPropertyNames:(id)names;
- (void)performInContext:(id)context withObject:(id)object;
- (void)setOptions:(int64_t)options comparisonStyle:(int64_t)style;
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

- (void)addPropertyNames:(id)names
{
  namesCopy = names;
  propertyNames = [(DebugHierarchyPropertyAction *)self propertyNames];
  v5 = [propertyNames arrayByAddingObjectsFromArray:namesCopy];

  [(DebugHierarchyPropertyAction *)self setPropertyNames:v5];
}

- (void)setOptions:(int64_t)options comparisonStyle:(int64_t)style
{
  [(DebugHierarchyPropertyAction *)self setOptions:options];

  [(DebugHierarchyPropertyAction *)self setOptionsComparisonStyle:style];
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

- (void)performInContext:(id)context withObject:(id)object
{
  contextCopy = context;
  objectCopy = object;
  if ([(DebugHierarchyPropertyAction *)self isTargetingObject:objectCopy])
  {
    visibility = [(DebugHierarchyPropertyAction *)self visibility];
    optionsComparisonStyle = [(DebugHierarchyPropertyAction *)self optionsComparisonStyle];
    propertyNames = [(DebugHierarchyPropertyAction *)self propertyNames];
    if (propertyNames)
    {
      propertyNames2 = [(DebugHierarchyPropertyAction *)self propertyNames];
      if (propertyNames2)
      {
        propertyNames3 = [(DebugHierarchyPropertyAction *)self propertyNames];
        if ([propertyNames3 count])
        {
          propertyNamesAreExclusive = 0;
        }

        else
        {
          propertyNamesAreExclusive = [(DebugHierarchyPropertyAction *)self propertyNamesAreExclusive];
        }
      }

      else
      {
        propertyNamesAreExclusive = 0;
      }
    }

    else
    {
      propertyNamesAreExclusive = 1;
    }

    v14 = visibility & 0xF;

    propertyNames4 = [(DebugHierarchyPropertyAction *)self propertyNames];
    if ([propertyNames4 count])
    {
      propertyNamesAreExclusive2 = [(DebugHierarchyPropertyAction *)self propertyNamesAreExclusive];
    }

    else
    {
      propertyNamesAreExclusive2 = 0;
    }

    v18 = v14 != 15 || optionsComparisonStyle != 0;
    if (((v18 | propertyNamesAreExclusive) & 1) != 0 || propertyNamesAreExclusive2)
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

      v23 = [contextCopy runtimeTypeWithName:v22];
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
          instanceProperties = [v25 instanceProperties];
          objectEnumerator = [instanceProperties objectEnumerator];

          v28 = [objectEnumerator countByEnumeratingWithState:&v37 objects:v41 count:16];
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
                  objc_enumerationMutation(objectEnumerator);
                }

                v32 = *(*(&v37 + 1) + 8 * i);
                if ([(DebugHierarchyPropertyAction *)self _isTargetingProperty:v32])
                {
                  name = [v32 name];
                  [v24 addObject:name];
                }
              }

              v29 = [objectEnumerator countByEnumeratingWithState:&v37 objects:v41 count:16];
            }

            while (v29);
          }

          parentType = [v25 parentType];

          v25 = parentType;
        }

        while (parentType);
      }

      if ([v24 count])
      {
        propertyNames5 = [v24 copy];
      }

      else
      {
        propertyNames5 = 0;
      }
    }

    else
    {
      propertyNames5 = [(DebugHierarchyPropertyAction *)self propertyNames];
    }

    [(DebugHierarchyPropertyAction *)self _fetchValuesForPropertiesWithNames:propertyNames5 onObject:objectCopy inContext:contextCopy];
  }
}

- (BOOL)targetsObjectIdentifiers:(id *)identifiers
{
  objectIdentifiers = [(DebugHierarchyPropertyAction *)self objectIdentifiers];
  if ([objectIdentifiers count])
  {
    objectIdentifiersAreExclusive = [(DebugHierarchyPropertyAction *)self objectIdentifiersAreExclusive];

    if ((objectIdentifiersAreExclusive & 1) == 0)
    {
      *identifiers = [(DebugHierarchyPropertyAction *)self objectIdentifiers];
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (BOOL)isTargetingObject:(id)object
{
  objectCopy = object;
  objectIdentifiers = [(DebugHierarchyPropertyAction *)self objectIdentifiers];
  v6 = [objectIdentifiers count];

  if (v6 && (!objectCopy ? (v7 = 0) : (v7 = CFStringCreateWithFormat(0, 0, @"%p", objectCopy)), -[DebugHierarchyPropertyAction objectIdentifiers](self, "objectIdentifiers"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 containsObject:v7], v8, LODWORD(v8) = -[DebugHierarchyPropertyAction objectIdentifiersAreExclusive](self, "objectIdentifiersAreExclusive"), v7, v9 == v8))
  {
    LOBYTE(v24) = 0;
  }

  else
  {
    types = [(DebugHierarchyPropertyAction *)self types];
    v11 = [types count];

    if (v11)
    {
      if ([(DebugHierarchyPropertyAction *)self typesAreExclusive])
      {
        v47 = 0uLL;
        v48 = 0uLL;
        v45 = 0uLL;
        v46 = 0uLL;
        types2 = [(DebugHierarchyPropertyAction *)self types];
        v13 = [types2 countByEnumeratingWithState:&v45 objects:v52 count:16];
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
              objc_enumerationMutation(types2);
            }

            if (NSClassFromString(*(*(&v45 + 1) + 8 * v16)) && (objc_opt_isKindOfClass() & 1) != 0)
            {
              goto LABEL_29;
            }

            if (v14 == ++v16)
            {
              v14 = [types2 countByEnumeratingWithState:&v45 objects:v52 count:16];
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
        types2 = [(DebugHierarchyPropertyAction *)self types];
        v24 = [types2 countByEnumeratingWithState:&v41 objects:v51 count:16];
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
            objc_enumerationMutation(types2);
          }

          if (NSClassFromString(*(*(&v41 + 1) + 8 * v26)) && (objc_opt_isKindOfClass() & 1) != 0)
          {
            break;
          }

          if (v24 == ++v26)
          {
            v24 = [types2 countByEnumeratingWithState:&v41 objects:v51 count:16];
            if (v24)
            {
              goto LABEL_33;
            }

            goto LABEL_53;
          }
        }
      }
    }

    exactTypes = [(DebugHierarchyPropertyAction *)self exactTypes];
    v18 = [exactTypes count];

    if (v18)
    {
      if ([(DebugHierarchyPropertyAction *)self exactTypesAreExclusive])
      {
        v39 = 0uLL;
        v40 = 0uLL;
        v37 = 0uLL;
        v38 = 0uLL;
        types2 = [(DebugHierarchyPropertyAction *)self exactTypes];
        v19 = [types2 countByEnumeratingWithState:&v37 objects:v50 count:16];
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
              objc_enumerationMutation(types2);
            }

            v23 = NSClassFromString(*(*(&v37 + 1) + 8 * v22));
            if (v23)
            {
              if ([objectCopy isMemberOfClass:v23])
              {
                goto LABEL_52;
              }
            }

            if (v20 == ++v22)
            {
              v20 = [types2 countByEnumeratingWithState:&v37 objects:v50 count:16];
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
        types2 = [(DebugHierarchyPropertyAction *)self exactTypes];
        v27 = [types2 countByEnumeratingWithState:&v33 objects:v49 count:16];
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
            objc_enumerationMutation(types2);
          }

          v31 = NSClassFromString(*(*(&v33 + 1) + 8 * v30));
          if (v31)
          {
            if ([objectCopy isMemberOfClass:v31])
            {
              break;
            }
          }

          if (v28 == ++v30)
          {
            v28 = [types2 countByEnumeratingWithState:&v33 objects:v49 count:16];
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

- (BOOL)_isTargetingProperty:(id)property
{
  propertyCopy = property;
  visibility = [propertyCopy visibility];
  if ((-[DebugHierarchyPropertyAction visibility](self, "visibility") & visibility) != 0 && DebugHierarchyBitMaskComparison([propertyCopy options], -[DebugHierarchyPropertyAction options](self, "options"), -[DebugHierarchyPropertyAction optionsComparisonStyle](self, "optionsComparisonStyle")))
  {
    propertyNames = [(DebugHierarchyPropertyAction *)self propertyNames];
    v7 = [propertyNames count];

    if (v7)
    {
      propertyNames2 = [(DebugHierarchyPropertyAction *)self propertyNames];
      name = [propertyCopy name];
      v10 = [propertyNames2 containsObject:name];

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

- (void)_fetchValuesForPropertiesWithNames:(id)names onObject:(id)object inContext:(id)context
{
  namesCopy = names;
  objectCopy = object;
  contextCopy = context;
  if ([namesCopy count])
  {
    v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [namesCopy count]);
    v11 = objc_opt_class();
    if (v11 && (v12 = v11, object_isClass(v11)))
    {
      v13 = NSStringFromClass(v12);
    }

    else
    {
      v13 = 0;
    }

    v14 = [contextCopy runtimeTypeWithName:v13];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = namesCopy;
    v15 = namesCopy;
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
            [DebugHierarchyObjectInterface valueAndOptionsForProperty:v20 onObject:objectCopy inContext:contextCopy];
            v21 = contextCopy;
            v23 = v22 = objectCopy;
            [v10 addObject:v23];

            objectCopy = v22;
            contextCopy = v21;
          }

          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v17);
    }

    v24 = [v10 copy];
    [contextCopy addProperties:v24 toObject:objectCopy];

    namesCopy = v25;
  }
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  objectIdentifiers = [(DebugHierarchyPropertyAction *)self objectIdentifiers];
  v6 = [objectIdentifiers count];
  propertyNames = [(DebugHierarchyPropertyAction *)self propertyNames];
  v8 = [propertyNames componentsJoinedByString:{@", "}];
  v9 = [NSString stringWithFormat:@"<%@ %p identifiers: %lu properties: %@>", v4, self, v6, v8];;

  return v9;
}

@end
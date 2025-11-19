@interface DebugHierarchyObjectProtocolHelper
+ (BOOL)classImplementsRequiredAdditionalGroupMethods:(Class)a3;
+ (BOOL)classImplementsRequiredChildGroupMethods:(Class)a3;
+ (BOOL)classImplements_debugHierarchyValueForPropertyWithName:(Class)a3;
+ (BOOL)classOverrides_debugHierarchyPropertyDescriptions:(Class)a3;
+ (BOOL)objectImplements_debugHierarchyVisibility:(id)a3;
+ (BOOL)v1_objectImplementsRequiredAdditionalGroupMethods:(id)a3;
+ (BOOL)v1_objectImplementsRequiredChildGroupMethods:(id)a3;
+ (id)childObjectsForObject:(id)a3 withType:(id)a4 outGroupingID:(id *)a5 outOptions:(id *)a6;
+ (id)debugHierarchyAdditionalGroupingIDsOfClass:(Class)a3;
+ (id)debugHierarchyChildGroupingIDOfClass:(Class)a3;
+ (id)debugHierarchyObjectsInGroupWithID:(id)a3 outOptions:(id *)a4 vendingClass:(Class)a5 onObject:(id)a6;
+ (id)debugHierarchyPropertyDescriptionsOfClass:(Class)a3;
+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 vendingClass:(Class)a5 outOptions:(id *)a6 outError:(id *)a7;
+ (int64_t)debugHierarchyVisibilityOfObject:(id)a3;
+ (void)enumerateAdditionalGroupsAndObjectsOfObject:(id)a3 withType:(id)a4 withBlock:(id)a5;
+ (void)updateDebugHierarchyValueForPropertyWithDescription:(id)a3 onObject:(id)a4;
@end

@implementation DebugHierarchyObjectProtocolHelper

+ (BOOL)classImplementsRequiredChildGroupMethods:(Class)a3
{
  isClass = object_isClass(a3);
  if (isClass)
  {
    if (DBHIsClassOverridingNSObjectSelector(a3, "debugHierarchyChildGroupingID") && DBHIsClassOverridingNSObjectSelector(a3, "debugHierarchyObjectsInGroupWithID:onObject:outOptions:"))
    {
      LOBYTE(isClass) = 1;
    }

    else if (objc_opt_respondsToSelector())
    {
      LOBYTE(isClass) = objc_opt_respondsToSelector();
    }

    else
    {
      LOBYTE(isClass) = 0;
    }
  }

  return isClass & 1;
}

+ (BOOL)classImplementsRequiredAdditionalGroupMethods:(Class)a3
{
  isClass = object_isClass(a3);
  if (isClass)
  {
    if (DBHIsClassOverridingNSObjectSelector(a3, "debugHierarchyAdditionalGroupingIDs") && DBHIsClassOverridingNSObjectSelector(a3, "debugHierarchyObjectsInGroupWithID:onObject:outOptions:"))
    {
      LOBYTE(isClass) = 1;
    }

    else if (objc_opt_respondsToSelector())
    {
      LOBYTE(isClass) = objc_opt_respondsToSelector();
    }

    else
    {
      LOBYTE(isClass) = 0;
    }
  }

  return isClass & 1;
}

+ (BOOL)classImplements_debugHierarchyValueForPropertyWithName:(Class)a3
{
  isClass = object_isClass(a3);
  if (isClass)
  {
    if (objc_opt_respondsToSelector())
    {
      LOBYTE(isClass) = 1;
    }

    else
    {
      LOBYTE(isClass) = objc_opt_respondsToSelector();
    }
  }

  return isClass & 1;
}

+ (BOOL)classOverrides_debugHierarchyPropertyDescriptions:(Class)a3
{
  if (DBHIsClassOverridingSelector(a3, "debugHierarchyPropertyDescriptions"))
  {
    return 1;
  }

  return DBHIsClassOverridingSelector(a3, "fallback_debugHierarchyPropertyDescriptions");
}

+ (BOOL)objectImplements_debugHierarchyVisibility:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = 1;
  }

  else
  {
    v4 = objc_opt_respondsToSelector();
  }

  return v4 & 1;
}

+ (int64_t)debugHierarchyVisibilityOfObject:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 debugHierarchyVisibility];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = 1;
      goto LABEL_7;
    }

    v4 = [v3 fallback_debugHierarchyVisibility];
  }

  v5 = v4;
LABEL_7:

  return v5;
}

+ (id)debugHierarchyChildGroupingIDOfClass:(Class)a3
{
  if (DBHIsClassOverridingSelector(a3, "debugHierarchyChildGroupingID"))
  {
    v4 = [(objc_class *)a3 debugHierarchyChildGroupingID];
  }

  else if (DBHIsClassOverridingSelector(a3, "fallback_debugHierarchyChildGroupingID"))
  {
    v4 = [(objc_class *)a3 fallback_debugHierarchyChildGroupingID];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)debugHierarchyAdditionalGroupingIDsOfClass:(Class)a3
{
  if (DBHIsClassOverridingSelector(a3, "debugHierarchyAdditionalGroupingIDs"))
  {
    v4 = [(objc_class *)a3 debugHierarchyAdditionalGroupingIDs];
  }

  else if (DBHIsClassOverridingSelector(a3, "fallback_debugHierarchyAdditionalGroupingIDs"))
  {
    v4 = [(objc_class *)a3 fallback_debugHierarchyAdditionalGroupingIDs];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)debugHierarchyObjectsInGroupWithID:(id)a3 outOptions:(id *)a4 vendingClass:(Class)a5 onObject:(id)a6
{
  v9 = a3;
  v10 = a6;
  if (objc_opt_respondsToSelector())
  {
    v17 = 0;
    v11 = [(objc_class *)a5 debugHierarchyObjectsInGroupWithID:v9 onObject:v10 outOptions:&v17];
    v12 = v17;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = 0;
    v11 = [(objc_class *)a5 fallback_debugHierarchyObjectsInGroupWithID:v9 onObject:v10 outOptions:&v16];
    v12 = v16;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = 0;
    v11 = [v10 debugHierarchyObjectsInGroupWithID:v9 outOptions:&v15];
    v12 = v15;
LABEL_7:
    v13 = v12;
    if (!a4)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = 0;
  v11 = 0;
  if (a4)
  {
LABEL_8:
    v13 = v13;
    *a4 = v13;
  }

LABEL_9:

  return v11;
}

+ (id)debugHierarchyPropertyDescriptionsOfClass:(Class)a3
{
  if (DBHIsClassOverridingNSObjectSelector(a3, "debugHierarchyPropertyDescriptions"))
  {
    v4 = [(objc_class *)a3 debugHierarchyPropertyDescriptions];
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = [(objc_class *)a3 fallback_debugHierarchyPropertyDescriptions];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)a3 onObject:(id)a4 vendingClass:(Class)a5 outOptions:(id *)a6 outError:(id *)a7
{
  v11 = a3;
  v12 = a4;
  if (objc_opt_respondsToSelector())
  {
    v23 = 0;
    v24 = 0;
    v13 = [(objc_class *)a5 debugHierarchyValueForPropertyWithName:v11 onObject:v12 outOptions:&v24 outError:&v23];
    v14 = v24;
    v15 = v23;
    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = 0;
    v22 = 0;
    v13 = [(objc_class *)a5 fallback_debugHierarchyValueForPropertyWithName:v11 onObject:v12 outOptions:&v22 outError:&v21];
    v14 = v22;
    v15 = v21;
LABEL_5:
    v16 = v15;
    if (!a7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [v12 debugHierarchyValueForPropertyWithName:v11];
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  v16 = 0;
  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_6:
  v17 = v16;
  *a7 = v16;
LABEL_7:
  if (a6)
  {
    v18 = v14;
    *a6 = v14;
  }

  v19 = v13;

  return v13;
}

+ (void)updateDebugHierarchyValueForPropertyWithDescription:(id)a3 onObject:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [v6 updateDebugHierarchyValueForPropertyWithDescription:v7 onObject:v5];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v6 fallback_updateDebugHierarchyValueForPropertyWithDescription:v7 onObject:v5];
  }
}

+ (id)childObjectsForObject:(id)a3 withType:(id)a4 outGroupingID:(id *)a5 outOptions:(id *)a6
{
  v9 = a3;
  v10 = a4;
  if ([DebugHierarchyObjectProtocolHelper v1_objectImplementsRequiredChildGroupMethods:v9])
  {
    v11 = [v9 debugHierarchyChildGroupingID];
    v22 = 0;
    v12 = [DebugHierarchyObjectProtocolHelper debugHierarchyObjectsInGroupWithID:v11 outOptions:&v22 vendingClass:0 onObject:v9];
    v13 = v22;
    v14 = v11;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  if ([DebugHierarchyObjectProtocolHelper classImplementsRequiredChildGroupMethods:objc_opt_class()])
  {
    v15 = [v10 closestTypeVendingAChildGroupingID];
    v14 = [v15 childGroupingID];

    v16 = [v15 name];
    v12 = NSClassFromString(v16);

    if (v12)
    {
      v21 = v13;
      v12 = [DebugHierarchyObjectProtocolHelper debugHierarchyObjectsInGroupWithID:v14 outOptions:&v21 vendingClass:v12 onObject:v9];
      v17 = v21;

      v13 = v17;
    }

LABEL_9:
    if (!a5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = 0;
  v14 = v11;
  if (a5)
  {
LABEL_10:
    v18 = v14;
    *a5 = v14;
  }

LABEL_11:
  if (a6)
  {
    v19 = v13;
    *a6 = v13;
  }

  return v12;
}

+ (void)enumerateAdditionalGroupsAndObjectsOfObject:(id)a3 withType:(id)a4 withBlock:(id)a5
{
  v7 = a3;
  v29 = a4;
  v8 = a5;
  v32 = v7;
  if ([DebugHierarchyObjectProtocolHelper classImplementsRequiredAdditionalGroupMethods:objc_opt_class()])
  {
    v9 = v29;
    if (v9)
    {
      do
      {
        v31 = v9;
        v10 = [v9 additionalGroupingIDs];
        v11 = [v10 count] == 0;

        if (!v11)
        {
          v12 = [v31 name];
          v13 = NSClassFromString(v12);

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v14 = [v31 additionalGroupingIDs];
          v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
          if (v15)
          {
            v16 = *v40;
            do
            {
              v17 = 0;
              do
              {
                if (*v40 != v16)
                {
                  objc_enumerationMutation(v14);
                }

                v18 = *(*(&v39 + 1) + 8 * v17);
                v38 = 0;
                v19 = [DebugHierarchyObjectProtocolHelper debugHierarchyObjectsInGroupWithID:v18 outOptions:&v38 vendingClass:v13 onObject:v32];
                v20 = v38;
                v8[2](v8, v18, v19, v20);

                v17 = v17 + 1;
              }

              while (v15 != v17);
              v15 = [v14 countByEnumeratingWithState:&v39 objects:v44 count:16];
            }

            while (v15);
          }
        }

        v21 = [v31 parentType];

        v9 = v21;
      }

      while (v21);
    }
  }

  if ([DebugHierarchyObjectProtocolHelper v1_objectImplementsRequiredAdditionalGroupMethods:v32, v29])
  {
    [v32 debugHierarchyAdditionalGroupingIDs];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v22 = v35 = 0u;
    v23 = [v22 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v23)
    {
      v24 = *v35;
      do
      {
        v25 = 0;
        do
        {
          if (*v35 != v24)
          {
            objc_enumerationMutation(v22);
          }

          v26 = *(*(&v34 + 1) + 8 * v25);
          v33 = 0;
          v27 = [DebugHierarchyObjectProtocolHelper debugHierarchyObjectsInGroupWithID:v26 outOptions:&v33 vendingClass:0 onObject:v32];
          v28 = v33;
          v8[2](v8, v26, v27, v28);

          v25 = v25 + 1;
        }

        while (v23 != v25);
        v23 = [v22 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v23);
    }
  }
}

+ (BOOL)v1_objectImplementsRequiredChildGroupMethods:(id)a3
{
  v3 = a3;
  v4 = DBHIsInstanceOverridingNSObjectSelector(v3, "debugHierarchyChildGroupingID") && DBHIsInstanceOverridingNSObjectSelector(v3, "debugHierarchyObjectsInGroupWithID:outOptions:");

  return v4;
}

+ (BOOL)v1_objectImplementsRequiredAdditionalGroupMethods:(id)a3
{
  v3 = a3;
  v4 = DBHIsInstanceOverridingNSObjectSelector(v3, "debugHierarchyAdditionalGroupingIDs") && DBHIsInstanceOverridingNSObjectSelector(v3, "debugHierarchyObjectsInGroupWithID:outOptions:");

  return v4;
}

@end
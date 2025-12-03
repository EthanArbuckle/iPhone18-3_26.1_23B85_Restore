@interface DebugHierarchyObjectProtocolHelper
+ (BOOL)classImplementsRequiredAdditionalGroupMethods:(Class)methods;
+ (BOOL)classImplementsRequiredChildGroupMethods:(Class)methods;
+ (BOOL)classImplements_debugHierarchyValueForPropertyWithName:(Class)name;
+ (BOOL)classOverrides_debugHierarchyPropertyDescriptions:(Class)descriptions;
+ (BOOL)objectImplements_debugHierarchyVisibility:(id)visibility;
+ (BOOL)v1_objectImplementsRequiredAdditionalGroupMethods:(id)methods;
+ (BOOL)v1_objectImplementsRequiredChildGroupMethods:(id)methods;
+ (id)childObjectsForObject:(id)object withType:(id)type outGroupingID:(id *)d outOptions:(id *)options;
+ (id)debugHierarchyAdditionalGroupingIDsOfClass:(Class)class;
+ (id)debugHierarchyChildGroupingIDOfClass:(Class)class;
+ (id)debugHierarchyObjectsInGroupWithID:(id)d outOptions:(id *)options vendingClass:(Class)class onObject:(id)object;
+ (id)debugHierarchyPropertyDescriptionsOfClass:(Class)class;
+ (id)debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object vendingClass:(Class)class outOptions:(id *)options outError:(id *)error;
+ (int64_t)debugHierarchyVisibilityOfObject:(id)object;
+ (void)enumerateAdditionalGroupsAndObjectsOfObject:(id)object withType:(id)type withBlock:(id)block;
+ (void)updateDebugHierarchyValueForPropertyWithDescription:(id)description onObject:(id)object;
@end

@implementation DebugHierarchyObjectProtocolHelper

+ (BOOL)classImplementsRequiredChildGroupMethods:(Class)methods
{
  isClass = object_isClass(methods);
  if (isClass)
  {
    if (DBHIsClassOverridingNSObjectSelector(methods, "debugHierarchyChildGroupingID") && DBHIsClassOverridingNSObjectSelector(methods, "debugHierarchyObjectsInGroupWithID:onObject:outOptions:"))
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

+ (BOOL)classImplementsRequiredAdditionalGroupMethods:(Class)methods
{
  isClass = object_isClass(methods);
  if (isClass)
  {
    if (DBHIsClassOverridingNSObjectSelector(methods, "debugHierarchyAdditionalGroupingIDs") && DBHIsClassOverridingNSObjectSelector(methods, "debugHierarchyObjectsInGroupWithID:onObject:outOptions:"))
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

+ (BOOL)classImplements_debugHierarchyValueForPropertyWithName:(Class)name
{
  isClass = object_isClass(name);
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

+ (BOOL)classOverrides_debugHierarchyPropertyDescriptions:(Class)descriptions
{
  if (DBHIsClassOverridingSelector(descriptions, "debugHierarchyPropertyDescriptions"))
  {
    return 1;
  }

  return DBHIsClassOverridingSelector(descriptions, "fallback_debugHierarchyPropertyDescriptions");
}

+ (BOOL)objectImplements_debugHierarchyVisibility:(id)visibility
{
  visibilityCopy = visibility;
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

+ (int64_t)debugHierarchyVisibilityOfObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    debugHierarchyVisibility = [objectCopy debugHierarchyVisibility];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v5 = 1;
      goto LABEL_7;
    }

    debugHierarchyVisibility = [objectCopy fallback_debugHierarchyVisibility];
  }

  v5 = debugHierarchyVisibility;
LABEL_7:

  return v5;
}

+ (id)debugHierarchyChildGroupingIDOfClass:(Class)class
{
  if (DBHIsClassOverridingSelector(class, "debugHierarchyChildGroupingID"))
  {
    debugHierarchyChildGroupingID = [(objc_class *)class debugHierarchyChildGroupingID];
  }

  else if (DBHIsClassOverridingSelector(class, "fallback_debugHierarchyChildGroupingID"))
  {
    debugHierarchyChildGroupingID = [(objc_class *)class fallback_debugHierarchyChildGroupingID];
  }

  else
  {
    debugHierarchyChildGroupingID = 0;
  }

  return debugHierarchyChildGroupingID;
}

+ (id)debugHierarchyAdditionalGroupingIDsOfClass:(Class)class
{
  if (DBHIsClassOverridingSelector(class, "debugHierarchyAdditionalGroupingIDs"))
  {
    debugHierarchyAdditionalGroupingIDs = [(objc_class *)class debugHierarchyAdditionalGroupingIDs];
  }

  else if (DBHIsClassOverridingSelector(class, "fallback_debugHierarchyAdditionalGroupingIDs"))
  {
    debugHierarchyAdditionalGroupingIDs = [(objc_class *)class fallback_debugHierarchyAdditionalGroupingIDs];
  }

  else
  {
    debugHierarchyAdditionalGroupingIDs = 0;
  }

  return debugHierarchyAdditionalGroupingIDs;
}

+ (id)debugHierarchyObjectsInGroupWithID:(id)d outOptions:(id *)options vendingClass:(Class)class onObject:(id)object
{
  dCopy = d;
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    v17 = 0;
    v11 = [(objc_class *)class debugHierarchyObjectsInGroupWithID:dCopy onObject:objectCopy outOptions:&v17];
    v12 = v17;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v16 = 0;
    v11 = [(objc_class *)class fallback_debugHierarchyObjectsInGroupWithID:dCopy onObject:objectCopy outOptions:&v16];
    v12 = v16;
    goto LABEL_7;
  }

  if (objc_opt_respondsToSelector())
  {
    v15 = 0;
    v11 = [objectCopy debugHierarchyObjectsInGroupWithID:dCopy outOptions:&v15];
    v12 = v15;
LABEL_7:
    v13 = v12;
    if (!options)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v13 = 0;
  v11 = 0;
  if (options)
  {
LABEL_8:
    v13 = v13;
    *options = v13;
  }

LABEL_9:

  return v11;
}

+ (id)debugHierarchyPropertyDescriptionsOfClass:(Class)class
{
  if (DBHIsClassOverridingNSObjectSelector(class, "debugHierarchyPropertyDescriptions"))
  {
    debugHierarchyPropertyDescriptions = [(objc_class *)class debugHierarchyPropertyDescriptions];
  }

  else if (objc_opt_respondsToSelector())
  {
    debugHierarchyPropertyDescriptions = [(objc_class *)class fallback_debugHierarchyPropertyDescriptions];
  }

  else
  {
    debugHierarchyPropertyDescriptions = 0;
  }

  return debugHierarchyPropertyDescriptions;
}

+ (id)debugHierarchyValueForPropertyWithName:(id)name onObject:(id)object vendingClass:(Class)class outOptions:(id *)options outError:(id *)error
{
  nameCopy = name;
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    v23 = 0;
    v24 = 0;
    v13 = [(objc_class *)class debugHierarchyValueForPropertyWithName:nameCopy onObject:objectCopy outOptions:&v24 outError:&v23];
    v14 = v24;
    v15 = v23;
    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = 0;
    v22 = 0;
    v13 = [(objc_class *)class fallback_debugHierarchyValueForPropertyWithName:nameCopy onObject:objectCopy outOptions:&v22 outError:&v21];
    v14 = v22;
    v15 = v21;
LABEL_5:
    v16 = v15;
    if (!error)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = [objectCopy debugHierarchyValueForPropertyWithName:nameCopy];
  }

  else
  {
    v13 = 0;
  }

  v14 = 0;
  v16 = 0;
  if (!error)
  {
    goto LABEL_7;
  }

LABEL_6:
  v17 = v16;
  *error = v16;
LABEL_7:
  if (options)
  {
    v18 = v14;
    *options = v14;
  }

  v19 = v13;

  return v13;
}

+ (void)updateDebugHierarchyValueForPropertyWithDescription:(id)description onObject:(id)object
{
  descriptionCopy = description;
  objectCopy = object;
  v6 = objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    [v6 updateDebugHierarchyValueForPropertyWithDescription:descriptionCopy onObject:objectCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v6 fallback_updateDebugHierarchyValueForPropertyWithDescription:descriptionCopy onObject:objectCopy];
  }
}

+ (id)childObjectsForObject:(id)object withType:(id)type outGroupingID:(id *)d outOptions:(id *)options
{
  objectCopy = object;
  typeCopy = type;
  if ([DebugHierarchyObjectProtocolHelper v1_objectImplementsRequiredChildGroupMethods:objectCopy])
  {
    debugHierarchyChildGroupingID = [objectCopy debugHierarchyChildGroupingID];
    v22 = 0;
    v12 = [DebugHierarchyObjectProtocolHelper debugHierarchyObjectsInGroupWithID:debugHierarchyChildGroupingID outOptions:&v22 vendingClass:0 onObject:objectCopy];
    v13 = v22;
    childGroupingID = debugHierarchyChildGroupingID;
    if (v12)
    {
      goto LABEL_9;
    }
  }

  else
  {
    debugHierarchyChildGroupingID = 0;
    v13 = 0;
  }

  if ([DebugHierarchyObjectProtocolHelper classImplementsRequiredChildGroupMethods:objc_opt_class()])
  {
    closestTypeVendingAChildGroupingID = [typeCopy closestTypeVendingAChildGroupingID];
    childGroupingID = [closestTypeVendingAChildGroupingID childGroupingID];

    name = [closestTypeVendingAChildGroupingID name];
    v12 = NSClassFromString(name);

    if (v12)
    {
      v21 = v13;
      v12 = [DebugHierarchyObjectProtocolHelper debugHierarchyObjectsInGroupWithID:childGroupingID outOptions:&v21 vendingClass:v12 onObject:objectCopy];
      v17 = v21;

      v13 = v17;
    }

LABEL_9:
    if (!d)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = 0;
  childGroupingID = debugHierarchyChildGroupingID;
  if (d)
  {
LABEL_10:
    v18 = childGroupingID;
    *d = childGroupingID;
  }

LABEL_11:
  if (options)
  {
    v19 = v13;
    *options = v13;
  }

  return v12;
}

+ (void)enumerateAdditionalGroupsAndObjectsOfObject:(id)object withType:(id)type withBlock:(id)block
{
  objectCopy = object;
  typeCopy = type;
  blockCopy = block;
  v32 = objectCopy;
  if ([DebugHierarchyObjectProtocolHelper classImplementsRequiredAdditionalGroupMethods:objc_opt_class()])
  {
    v9 = typeCopy;
    if (v9)
    {
      do
      {
        v31 = v9;
        additionalGroupingIDs = [v9 additionalGroupingIDs];
        v11 = [additionalGroupingIDs count] == 0;

        if (!v11)
        {
          name = [v31 name];
          v13 = NSClassFromString(name);

          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          additionalGroupingIDs2 = [v31 additionalGroupingIDs];
          v15 = [additionalGroupingIDs2 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
                  objc_enumerationMutation(additionalGroupingIDs2);
                }

                v18 = *(*(&v39 + 1) + 8 * v17);
                v38 = 0;
                v19 = [DebugHierarchyObjectProtocolHelper debugHierarchyObjectsInGroupWithID:v18 outOptions:&v38 vendingClass:v13 onObject:v32];
                v20 = v38;
                blockCopy[2](blockCopy, v18, v19, v20);

                v17 = v17 + 1;
              }

              while (v15 != v17);
              v15 = [additionalGroupingIDs2 countByEnumeratingWithState:&v39 objects:v44 count:16];
            }

            while (v15);
          }
        }

        parentType = [v31 parentType];

        v9 = parentType;
      }

      while (parentType);
    }
  }

  if ([DebugHierarchyObjectProtocolHelper v1_objectImplementsRequiredAdditionalGroupMethods:v32, typeCopy])
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
          blockCopy[2](blockCopy, v26, v27, v28);

          v25 = v25 + 1;
        }

        while (v23 != v25);
        v23 = [v22 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v23);
    }
  }
}

+ (BOOL)v1_objectImplementsRequiredChildGroupMethods:(id)methods
{
  methodsCopy = methods;
  v4 = DBHIsInstanceOverridingNSObjectSelector(methodsCopy, "debugHierarchyChildGroupingID") && DBHIsInstanceOverridingNSObjectSelector(methodsCopy, "debugHierarchyObjectsInGroupWithID:outOptions:");

  return v4;
}

+ (BOOL)v1_objectImplementsRequiredAdditionalGroupMethods:(id)methods
{
  methodsCopy = methods;
  v4 = DBHIsInstanceOverridingNSObjectSelector(methodsCopy, "debugHierarchyAdditionalGroupingIDs") && DBHIsInstanceOverridingNSObjectSelector(methodsCopy, "debugHierarchyObjectsInGroupWithID:outOptions:");

  return v4;
}

@end
@interface DebugHierarchyEntryPointProtocolHelper
+ (BOOL)classImplementsRequiredEntryPointMethods:(Class)methods;
+ (id)debugHierarchyGroupingIDsOnClass:(Class)class;
+ (id)debugHierarchyObjectsInGroupWithID:(id)d outOptions:(id *)options onEntryPointClass:(Class)class;
@end

@implementation DebugHierarchyEntryPointProtocolHelper

+ (BOOL)classImplementsRequiredEntryPointMethods:(Class)methods
{
  if (DBHIsClassOverridingNSObjectSelector(methods, "debugHierarchyGroupingIDs") && DBHIsClassOverridingNSObjectSelector(methods, "debugHierarchyObjectsInGroupWithID:outOptions:"))
  {
    v4 = 1;
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = objc_opt_respondsToSelector();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

+ (id)debugHierarchyGroupingIDsOnClass:(Class)class
{
  if (DBHIsClassOverridingNSObjectSelector(class, "debugHierarchyGroupingIDs"))
  {
    debugHierarchyGroupingIDs = [(objc_class *)class debugHierarchyGroupingIDs];
  }

  else if (objc_opt_respondsToSelector())
  {
    debugHierarchyGroupingIDs = [(objc_class *)class fallback_debugHierarchyGroupingIDs];
  }

  else
  {
    debugHierarchyGroupingIDs = 0;
  }

  return debugHierarchyGroupingIDs;
}

+ (id)debugHierarchyObjectsInGroupWithID:(id)d outOptions:(id *)options onEntryPointClass:(Class)class
{
  dCopy = d;
  if (DBHIsClassOverridingNSObjectSelector(class, "debugHierarchyObjectsInGroupWithID:outOptions:"))
  {
    v14 = 0;
    v8 = &v14;
    v9 = [(objc_class *)class debugHierarchyObjectsInGroupWithID:dCopy outOptions:&v14];
    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = 0;
    v8 = &v13;
    v9 = [(objc_class *)class fallback_debugHierarchyObjectsInGroupWithID:dCopy outOptions:&v13];
LABEL_5:
    v10 = v9;
    v11 = *v8;
    if (!options)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0;
  if (options)
  {
LABEL_6:
    v11 = v11;
    *options = v11;
  }

LABEL_7:

  return v10;
}

@end
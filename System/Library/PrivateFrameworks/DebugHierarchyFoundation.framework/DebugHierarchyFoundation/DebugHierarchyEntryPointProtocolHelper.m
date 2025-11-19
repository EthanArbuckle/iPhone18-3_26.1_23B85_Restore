@interface DebugHierarchyEntryPointProtocolHelper
+ (BOOL)classImplementsRequiredEntryPointMethods:(Class)a3;
+ (id)debugHierarchyGroupingIDsOnClass:(Class)a3;
+ (id)debugHierarchyObjectsInGroupWithID:(id)a3 outOptions:(id *)a4 onEntryPointClass:(Class)a5;
@end

@implementation DebugHierarchyEntryPointProtocolHelper

+ (BOOL)classImplementsRequiredEntryPointMethods:(Class)a3
{
  if (DBHIsClassOverridingNSObjectSelector(a3, "debugHierarchyGroupingIDs") && DBHIsClassOverridingNSObjectSelector(a3, "debugHierarchyObjectsInGroupWithID:outOptions:"))
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

+ (id)debugHierarchyGroupingIDsOnClass:(Class)a3
{
  if (DBHIsClassOverridingNSObjectSelector(a3, "debugHierarchyGroupingIDs"))
  {
    v4 = [(objc_class *)a3 debugHierarchyGroupingIDs];
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = [(objc_class *)a3 fallback_debugHierarchyGroupingIDs];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)debugHierarchyObjectsInGroupWithID:(id)a3 outOptions:(id *)a4 onEntryPointClass:(Class)a5
{
  v7 = a3;
  if (DBHIsClassOverridingNSObjectSelector(a5, "debugHierarchyObjectsInGroupWithID:outOptions:"))
  {
    v14 = 0;
    v8 = &v14;
    v9 = [(objc_class *)a5 debugHierarchyObjectsInGroupWithID:v7 outOptions:&v14];
    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    v13 = 0;
    v8 = &v13;
    v9 = [(objc_class *)a5 fallback_debugHierarchyObjectsInGroupWithID:v7 outOptions:&v13];
LABEL_5:
    v10 = v9;
    v11 = *v8;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v10 = 0;
  v11 = 0;
  if (a4)
  {
LABEL_6:
    v11 = v11;
    *a4 = v11;
  }

LABEL_7:

  return v10;
}

@end
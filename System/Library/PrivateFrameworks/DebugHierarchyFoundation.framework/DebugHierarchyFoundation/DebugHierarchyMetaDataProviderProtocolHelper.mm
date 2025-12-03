@interface DebugHierarchyMetaDataProviderProtocolHelper
+ (BOOL)classImplementsRequiredEnumDescriptionMethods:(Class)methods;
+ (BOOL)classImplementsRequiredOptionDescriptionMethods:(Class)methods;
+ (id)debugHierarchyEnumDescriptionsOnClass:(Class)class;
+ (id)debugHierarchyOptionDescriptionsOnClass:(Class)class;
@end

@implementation DebugHierarchyMetaDataProviderProtocolHelper

+ (BOOL)classImplementsRequiredEnumDescriptionMethods:(Class)methods
{
  if (objc_opt_respondsToSelector())
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

+ (BOOL)classImplementsRequiredOptionDescriptionMethods:(Class)methods
{
  if (objc_opt_respondsToSelector())
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

+ (id)debugHierarchyEnumDescriptionsOnClass:(Class)class
{
  if (objc_opt_respondsToSelector())
  {
    debugHierarchyEnumDescriptions = [(objc_class *)class debugHierarchyEnumDescriptions];
  }

  else if (objc_opt_respondsToSelector())
  {
    debugHierarchyEnumDescriptions = [(objc_class *)class fallback_debugHierarchyEnumDescriptions];
  }

  else
  {
    debugHierarchyEnumDescriptions = 0;
  }

  return debugHierarchyEnumDescriptions;
}

+ (id)debugHierarchyOptionDescriptionsOnClass:(Class)class
{
  if (objc_opt_respondsToSelector())
  {
    debugHierarchyOptionDescriptions = [(objc_class *)class debugHierarchyOptionDescriptions];
  }

  else if (objc_opt_respondsToSelector())
  {
    debugHierarchyOptionDescriptions = [(objc_class *)class fallback_debugHierarchyOptionDescriptions];
  }

  else
  {
    debugHierarchyOptionDescriptions = 0;
  }

  return debugHierarchyOptionDescriptions;
}

@end
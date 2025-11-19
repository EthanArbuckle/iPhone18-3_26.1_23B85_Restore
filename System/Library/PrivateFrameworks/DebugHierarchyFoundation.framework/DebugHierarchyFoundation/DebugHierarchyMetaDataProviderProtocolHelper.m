@interface DebugHierarchyMetaDataProviderProtocolHelper
+ (BOOL)classImplementsRequiredEnumDescriptionMethods:(Class)a3;
+ (BOOL)classImplementsRequiredOptionDescriptionMethods:(Class)a3;
+ (id)debugHierarchyEnumDescriptionsOnClass:(Class)a3;
+ (id)debugHierarchyOptionDescriptionsOnClass:(Class)a3;
@end

@implementation DebugHierarchyMetaDataProviderProtocolHelper

+ (BOOL)classImplementsRequiredEnumDescriptionMethods:(Class)a3
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

+ (BOOL)classImplementsRequiredOptionDescriptionMethods:(Class)a3
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

+ (id)debugHierarchyEnumDescriptionsOnClass:(Class)a3
{
  if (objc_opt_respondsToSelector())
  {
    v4 = [(objc_class *)a3 debugHierarchyEnumDescriptions];
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = [(objc_class *)a3 fallback_debugHierarchyEnumDescriptions];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)debugHierarchyOptionDescriptionsOnClass:(Class)a3
{
  if (objc_opt_respondsToSelector())
  {
    v4 = [(objc_class *)a3 debugHierarchyOptionDescriptions];
  }

  else if (objc_opt_respondsToSelector())
  {
    v4 = [(objc_class *)a3 fallback_debugHierarchyOptionDescriptions];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end
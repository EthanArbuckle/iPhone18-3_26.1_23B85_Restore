@interface DebugHierarchyValueProtocolHelper
+ (BOOL)objectImplementsRequiredDebugHierarchyValueMethods:(id)methods;
+ (id)debugHierarchyValueWithOutOptions:(id *)options outError:(id *)error onObject:(id)object;
@end

@implementation DebugHierarchyValueProtocolHelper

+ (BOOL)objectImplementsRequiredDebugHierarchyValueMethods:(id)methods
{
  methodsCopy = methods;
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

+ (id)debugHierarchyValueWithOutOptions:(id *)options outError:(id *)error onObject:(id)object
{
  objectCopy = object;
  if (objc_opt_respondsToSelector())
  {
    v20 = 0;
    v21 = 0;
    v8 = &v21;
    v9 = &v20;
    v10 = [objectCopy debugHierarchyValueWithOutOptions:&v21 outError:&v20];
    goto LABEL_5;
  }

  if (objc_opt_respondsToSelector())
  {
    v18 = 0;
    v19 = 0;
    v8 = &v19;
    v9 = &v18;
    v10 = [objectCopy fallback_debugHierarchyValueWithOutOptions:&v19 outError:&v18];
LABEL_5:
    v11 = v10;
    v12 = *v8;
    v13 = *v9;
    if (!options)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v11 = 0;
  v13 = 0;
  v12 = 0;
  if (options)
  {
LABEL_6:
    v14 = v12;
    *options = v12;
  }

LABEL_7:
  if (error)
  {
    v15 = v13;
    *error = v13;
  }

  v16 = v11;

  return v11;
}

@end
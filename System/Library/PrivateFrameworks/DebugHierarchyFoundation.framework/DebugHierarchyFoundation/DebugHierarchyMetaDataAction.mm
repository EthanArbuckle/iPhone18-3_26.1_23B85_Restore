@interface DebugHierarchyMetaDataAction
- (BOOL)matchesEnumsForProviderClass:(Class)class;
- (BOOL)matchesOptionsForProviderClass:(Class)class;
- (id)keysToArchiveViaKVC;
- (void)performInContext:(id)context;
@end

@implementation DebugHierarchyMetaDataAction

- (id)keysToArchiveViaKVC
{
  v4[0] = @"metaDataProviderClassesForEnums";
  v4[1] = @"metaDataProviderClassesForEnumsAreExclusive";
  v4[2] = @"metaDataProviderClassesForOptions";
  v4[3] = @"metaDataProviderClassesForOptionsAreExclusive";
  v2 = [NSArray arrayWithObjects:v4 count:4];

  return v2;
}

- (void)performInContext:(id)context
{
  contextCopy = context;
  DebugHierarchyMetaDataProviderClasses();
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  obj = v19 = 0u;
  v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        if ([(DebugHierarchyMetaDataAction *)self matchesEnumsForProviderClass:v8]&& [DebugHierarchyMetaDataProviderProtocolHelper classImplementsRequiredEnumDescriptionMethods:v8])
        {
          v9 = [DebugHierarchyMetaDataProviderProtocolHelper debugHierarchyEnumDescriptionsOnClass:v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            metaData = [contextCopy metaData];
            v11 = [metaData objectForKeyedSubscript:@"metaDataEnums"];

            if (v11)
            {
              [v11 addEntriesFromDictionary:v9];
            }

            else
            {
              v11 = [v9 mutableCopy];
              metaData2 = [contextCopy metaData];
              [metaData2 setObject:v11 forKeyedSubscript:@"metaDataEnums"];
            }
          }
        }

        if ([(DebugHierarchyMetaDataAction *)self matchesOptionsForProviderClass:v8]|| [DebugHierarchyMetaDataProviderProtocolHelper classImplementsRequiredOptionDescriptionMethods:v8])
        {
          v13 = [DebugHierarchyMetaDataProviderProtocolHelper debugHierarchyOptionDescriptionsOnClass:v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            metaData3 = [contextCopy metaData];
            v15 = [metaData3 objectForKeyedSubscript:@"metaDataOptions"];

            if (v15)
            {
              [v15 addEntriesFromDictionary:v13];
            }

            else
            {
              v15 = [v13 mutableCopy];
              metaData4 = [contextCopy metaData];
              [metaData4 setObject:v15 forKeyedSubscript:@"metaDataOptions"];
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

- (BOOL)matchesEnumsForProviderClass:(Class)class
{
  metaDataProviderClassesForEnums = [(DebugHierarchyMetaDataAction *)self metaDataProviderClassesForEnums];

  if (!metaDataProviderClassesForEnums)
  {
    return 1;
  }

  metaDataProviderClassesForEnums2 = [(DebugHierarchyMetaDataAction *)self metaDataProviderClassesForEnums];
  v7 = NSStringFromClass(class);
  v8 = [metaDataProviderClassesForEnums2 containsObject:v7];

  return v8 ^ [(DebugHierarchyMetaDataAction *)self metaDataProviderClassesForEnumsAreExclusive]^ 1;
}

- (BOOL)matchesOptionsForProviderClass:(Class)class
{
  metaDataProviderClassesForOptions = [(DebugHierarchyMetaDataAction *)self metaDataProviderClassesForOptions];

  if (!metaDataProviderClassesForOptions)
  {
    return 1;
  }

  metaDataProviderClassesForOptions2 = [(DebugHierarchyMetaDataAction *)self metaDataProviderClassesForOptions];
  v7 = NSStringFromClass(class);
  v8 = [metaDataProviderClassesForOptions2 containsObject:v7];

  return v8 ^ [(DebugHierarchyMetaDataAction *)self metaDataProviderClassesForOptionsAreExclusive]^ 1;
}

@end
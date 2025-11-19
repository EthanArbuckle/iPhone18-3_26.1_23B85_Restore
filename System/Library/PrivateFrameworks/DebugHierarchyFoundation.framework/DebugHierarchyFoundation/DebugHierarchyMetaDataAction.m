@interface DebugHierarchyMetaDataAction
- (BOOL)matchesEnumsForProviderClass:(Class)a3;
- (BOOL)matchesOptionsForProviderClass:(Class)a3;
- (id)keysToArchiveViaKVC;
- (void)performInContext:(id)a3;
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

- (void)performInContext:(id)a3
{
  v4 = a3;
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
            v10 = [v4 metaData];
            v11 = [v10 objectForKeyedSubscript:@"metaDataEnums"];

            if (v11)
            {
              [v11 addEntriesFromDictionary:v9];
            }

            else
            {
              v11 = [v9 mutableCopy];
              v12 = [v4 metaData];
              [v12 setObject:v11 forKeyedSubscript:@"metaDataEnums"];
            }
          }
        }

        if ([(DebugHierarchyMetaDataAction *)self matchesOptionsForProviderClass:v8]|| [DebugHierarchyMetaDataProviderProtocolHelper classImplementsRequiredOptionDescriptionMethods:v8])
        {
          v13 = [DebugHierarchyMetaDataProviderProtocolHelper debugHierarchyOptionDescriptionsOnClass:v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [v4 metaData];
            v15 = [v14 objectForKeyedSubscript:@"metaDataOptions"];

            if (v15)
            {
              [v15 addEntriesFromDictionary:v13];
            }

            else
            {
              v15 = [v13 mutableCopy];
              v16 = [v4 metaData];
              [v16 setObject:v15 forKeyedSubscript:@"metaDataOptions"];
            }
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

- (BOOL)matchesEnumsForProviderClass:(Class)a3
{
  v5 = [(DebugHierarchyMetaDataAction *)self metaDataProviderClassesForEnums];

  if (!v5)
  {
    return 1;
  }

  v6 = [(DebugHierarchyMetaDataAction *)self metaDataProviderClassesForEnums];
  v7 = NSStringFromClass(a3);
  v8 = [v6 containsObject:v7];

  return v8 ^ [(DebugHierarchyMetaDataAction *)self metaDataProviderClassesForEnumsAreExclusive]^ 1;
}

- (BOOL)matchesOptionsForProviderClass:(Class)a3
{
  v5 = [(DebugHierarchyMetaDataAction *)self metaDataProviderClassesForOptions];

  if (!v5)
  {
    return 1;
  }

  v6 = [(DebugHierarchyMetaDataAction *)self metaDataProviderClassesForOptions];
  v7 = NSStringFromClass(a3);
  v8 = [v6 containsObject:v7];

  return v8 ^ [(DebugHierarchyMetaDataAction *)self metaDataProviderClassesForOptionsAreExclusive]^ 1;
}

@end
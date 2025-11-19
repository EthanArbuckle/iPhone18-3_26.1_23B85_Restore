@interface CHManagedHandle
+ (id)managedHandleForHandle:(id)a3 inManagedObjectContext:(id)a4;
+ (id)managedHandlesForHandles:(id)a3 inManagedObjectContext:(id)a4;
- (CHHandle)chHandle;
- (id)copyWithContext:(id)a3;
@end

@implementation CHManagedHandle

- (CHHandle)chHandle
{
  v3 = [(CHManagedHandle *)self value];
  if (v3 && (v4 = [(CHManagedHandle *)self type], (v4 - 1) <= 2))
  {
    v5 = v4;
    v6 = [CHHandle alloc];
    v7 = [(CHManagedHandle *)self normalizedValue];
    v8 = [(CHHandle *)v6 initWithType:v5 value:v3 normalizedValue:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)managedHandleForHandle:(id)a3 inManagedObjectContext:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [v6 persistentStoreCoordinator];
  v8 = [v7 managedObjectModel];

  if (v8)
  {
    v9 = [v8 entitiesByName];
    v10 = [v9 objectForKeyedSubscript:@"Handle"];

    if (v10)
    {
      v11 = [objc_alloc(objc_opt_class()) initWithEntity:v10 insertIntoManagedObjectContext:v6];
    }

    else
    {
      v13 = ch_framework_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543618;
        v19 = @"Handle";
        v20 = 2114;
        v21 = v6;
        _os_log_impl(&dword_1C3E90000, v13, OS_LOG_TYPE_DEFAULT, "Could not find entity description with name %{public}@ in managed object context %{public}@. Falling back to convenience initializer.", &v18, 0x16u);
      }

      v11 = [objc_alloc(objc_opt_class()) initWithContext:v6];
    }

    v12 = v11;
    v14 = [v5 normalizedValue];
    [v12 setNormalizedValue:v14];

    [v12 setType:{objc_msgSend(v5, "type")}];
    v15 = [v5 value];
    [v12 setValue:v15];
  }

  else
  {
    v12 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)managedHandlesForHandles:(id)a3 inManagedObjectContext:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v6, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [a1 managedHandleForHandle:*(*(&v18 + 1) + 8 * i) inManagedObjectContext:{v7, v18}];
        if (v14)
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [v8 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (id)copyWithContext:(id)a3
{
  v4 = a3;
  v5 = [DBManager entityDescriptionHavingName:@"Handle" forContext:v4];
  if (v5)
  {
    v6 = [objc_alloc(objc_opt_class()) initWithEntity:v5 insertIntoManagedObjectContext:v4];
  }

  else
  {
    v7 = +[CHLogServer sharedInstance];
    v8 = [v7 logHandleForDomain:"CHManagedHandle"];

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CHManagedHandle(Additions) *)v4 copyWithContext:v8];
    }

    v6 = [objc_alloc(objc_opt_class()) initWithContext:v4];
  }

  v9 = v6;
  v10 = [(CHManagedHandle *)self normalizedValue];
  [v9 setNormalizedValue:v10];

  [v9 setType:{-[CHManagedHandle type](self, "type")}];
  v11 = [(CHManagedHandle *)self value];
  [v9 setValue:v11];

  return v9;
}

@end
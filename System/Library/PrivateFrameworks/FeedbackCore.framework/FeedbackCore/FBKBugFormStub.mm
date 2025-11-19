@interface FBKBugFormStub
+ (id)bugFormStubsMatchingBuild:(id)a3 forPlatform:(id)a4 withStubs:(id)a5;
+ (id)predicateForAllStubs;
+ (id)predicateForTeam:(id)a3;
+ (id)sortDescriptor;
- (NSSet)stubsWithMatchingID;
- (NSSet)teamsMatchingFormID;
- (id)debugDescription;
- (id)preferredTeamForStubPreferringTeam:(id)a3;
- (id)signatureDescription;
- (void)setPropertiesFromJSONObject:(id)a3;
@end

@implementation FBKBugFormStub

+ (id)bugFormStubsMatchingBuild:(id)a3 forPlatform:(id)a4 withStubs:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v7 = a4;
  v8 = a5;
  v32 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(v8, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v35;
LABEL_3:
    v14 = 0;
    while (1)
    {
      if (*v35 != v13)
      {
        objc_enumerationMutation(v9);
      }

      v15 = *(*(&v34 + 1) + 8 * v14);
      if ([v15 forcePicker])
      {
        v28 = +[FBKLog appHandle];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = [v15 ID];
          *buf = 138543362;
          v39 = v29;
          _os_log_impl(&dword_1E54BE000, v28, OS_LOG_TYPE_DEFAULT, "Found form ID [%{public}@] with always_show_picker = true; forcing picker.", buf, 0xCu);
        }

        v27 = 0;
        v26 = v32;
        goto LABEL_25;
      }

      if (v7)
      {
        v16 = [v15 platform];
        v17 = [v16 isEqualToString:v7];

        if (!v17)
        {
          goto LABEL_18;
        }
      }

      v18 = [v15 buildPrefix];
      if (![v18 length])
      {
        break;
      }

      v19 = [v15 buildPrefix];
      v20 = [v33 hasPrefix:v19];

      if (!v20)
      {
        goto LABEL_15;
      }

      v21 = [v15 buildPrefix];
      v22 = [v21 length];

      if (v22 != v12)
      {
        v23 = [v15 buildPrefix];
        v24 = [v23 length];

        if (v24 > v12)
        {
          [v32 removeAllObjects];
          [v32 addObject:v15];
          v25 = [v15 buildPrefix];
          v12 = [v25 length];
        }

        goto LABEL_18;
      }

LABEL_17:
      [v32 addObject:v15];
LABEL_18:
      if (v11 == ++v14)
      {
        v11 = [v9 countByEnumeratingWithState:&v34 objects:v40 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }
    }

LABEL_15:
    if (!v7 || v12)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

LABEL_20:

  v26 = v32;
  if ([v32 count])
  {
    v27 = [MEMORY[0x1E695DFD8] setWithSet:v32];
  }

  else
  {
    v27 = 0;
  }

LABEL_25:

  v30 = *MEMORY[0x1E69E9840];

  return v27;
}

+ (id)sortDescriptor
{
  if (sortDescriptor_onceToken != -1)
  {
    +[FBKBugFormStub sortDescriptor];
  }

  v3 = sortDescriptor__sortDescriptor;

  return v3;
}

void __32__FBKBugFormStub_sortDescriptor__block_invoke()
{
  v6[3] = *MEMORY[0x1E69E9840];
  v0 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"priority" ascending:1];
  v1 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"platform" ascending:{1, v0}];
  v6[1] = v1;
  v2 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:@"name" ascending:1];
  v6[2] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
  v4 = sortDescriptor__sortDescriptor;
  sortDescriptor__sortDescriptor = v3;

  v5 = *MEMORY[0x1E69E9840];
}

- (void)setPropertiesFromJSONObject:(id)a3
{
  v30 = a3;
  [(FBKManagedLocalIDObject *)self setPropertiesForLocalIDKeys:v30];
  v4 = [v30 objectForKeyedSubscript:@"build_prefix"];
  v5 = FBKNilIfNSNull(v4);

  if (v5)
  {
    [(FBKBugFormStub *)self setBuildPrefix:v5];
  }

  v6 = [v30 objectForKeyedSubscript:@"description"];
  v7 = FBKNilIfNSNull(v6);

  if (v7)
  {
    [(FBKBugFormStub *)self setFormDescription:v7];
  }

  v8 = [v30 objectForKeyedSubscript:@"name"];
  v9 = FBKNilIfNSNull(v8);

  if (v9)
  {
    [(FBKBugFormStub *)self setName:v9];
  }

  v10 = [v30 objectForKeyedSubscript:@"platform"];
  v11 = FBKNilIfNSNull(v10);

  if (v11)
  {
    [(FBKBugFormStub *)self setPlatform:v11];
  }

  v12 = [v30 objectForKeyedSubscript:@"priority"];
  v13 = FBKNilIfNSNull(v12);

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = &unk_1F5F3B438;
  }

  [(FBKBugFormStub *)self setPriority:v14];
  v15 = [v30 objectForKeyedSubscript:@"plugins"];
  v16 = FBKNilIfNSNull(v15);

  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = [v16 ded_selectItemsPassingTest:&__block_literal_global_30];
      [(FBKBugFormStub *)self setPluginIDs:v17];
    }
  }

  v18 = [v30 objectForKeyedSubscript:{@"signature", v9}];
  v19 = FBKNilIfNSNull(v18);

  if (v19)
  {
    if ([v19 length])
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    [(FBKBugFormStub *)self setSignature:v20];
  }

  v21 = v7;
  v22 = [v30 objectForKeyedSubscript:@"always_show_picker"];
  v23 = FBKNilIfNSNull(v22);

  v24 = v5;
  if (v23)
  {
    v25 = [v23 BOOLValue];
  }

  else
  {
    v25 = 0;
  }

  [(FBKBugFormStub *)self setForcePicker:v25];
  v26 = [v30 objectForKeyedSubscript:@"tat"];
  v27 = FBKNilIfNSNull(v26);

  if (v27)
  {
    if ([v27 length])
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    [(FBKBugFormStub *)self setTat:v28];
  }
}

uint64_t __46__FBKBugFormStub_setPropertiesFromJSONObject___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)signatureDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(FBKManagedLocalIDObject *)self ID];
  v5 = [v4 intValue];
  v6 = [(FBKBugFormStub *)self pluginIDs];
  v7 = [v6 componentsJoinedByString:{@", "}];
  v8 = [(FBKBugFormStub *)self signature];
  v9 = [v3 stringWithFormat:@"Stub [%i] <%@:%@>", v5, v7, v8];

  return v9;
}

- (id)preferredTeamForStubPreferringTeam:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FBKBugFormStub *)self teams];
  v6 = [v5 count];

  if (!v6)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = [(FBKManagedLocalIDObject *)self ID];
    [v7 raise:v8 format:{@"Form stub [%lu] belongs to no teams.", objc_msgSend(v9, "unsignedIntegerValue")}];
  }

  if (v4 && (-[FBKBugFormStub teams](self, "teams"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:v4], v10, v11))
  {
    v12 = +[FBKLog model];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(FBKManagedLocalIDObject *)self ID];
      v14 = [v13 integerValue];
      v15 = [v4 ID];
      *buf = 134218240;
      v35 = v14;
      v36 = 2048;
      v37 = [v15 integerValue];
      _os_log_impl(&dword_1E54BE000, v12, OS_LOG_TYPE_DEFAULT, "Preferred team for stub [%ld] with ID: [%ld]", buf, 0x16u);
    }

    v16 = v4;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v17 = [(FBKBugFormStub *)self teams];
    v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      while (2)
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          if (![v22 teamType])
          {
            v24 = +[FBKLog model];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [(FBKManagedLocalIDObject *)self ID];
              v26 = [v25 integerValue];
              *buf = 134217984;
              v35 = v26;
              _os_log_impl(&dword_1E54BE000, v24, OS_LOG_TYPE_DEFAULT, "Preferred team for stub [%ld] unavailable, choosing personal team", buf, 0xCu);
            }

            v23 = v22;
            goto LABEL_20;
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    v17 = [(FBKBugFormStub *)self teams];
    v23 = [v17 anyObject];
LABEL_20:
    v16 = v23;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v16;
}

- (NSSet)stubsWithMatchingID
{
  v3 = [(FBKBugFormStub *)self user];
  v4 = [v3 bugFormStubs];
  v5 = MEMORY[0x1E696AE18];
  v6 = [(FBKBugFormStub *)self serverID];
  v7 = [v5 predicateWithFormat:@"serverID == %@", v6];
  v8 = [v4 filteredSetUsingPredicate:v7];

  return v8;
}

- (NSSet)teamsMatchingFormID
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(FBKBugFormStub *)self stubsWithMatchingID];
  v4 = MEMORY[0x1E695DFA8];
  v5 = [(FBKBugFormStub *)self user];
  v6 = [v5 teams];
  v7 = [v4 setWithCapacity:{objc_msgSend(v6, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * i) teams];
        [v7 unionSet:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [MEMORY[0x1E695DFD8] setWithSet:v7];

  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(FBKManagedLocalIDObject *)self ID];
  v7 = [(FBKBugFormStub *)self signature];
  v8 = [v3 stringWithFormat:@"%@: %@ - %@", v5, v6, v7];

  return v8;
}

+ (id)predicateForTeam:(id)a3
{
  v3 = a3;
  if (+[FBKSharedConstants listsFormsFetchedByTat])
  {
    v4 = @"%@ IN teams";
  }

  else
  {
    v4 = @"%@ IN teams AND self.wasFetchedByTat == NO";
  }

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:v4, v3];

  return v5;
}

+ (id)predicateForAllStubs
{
  if (+[FBKSharedConstants listsFormsFetchedByTat])
  {
    [MEMORY[0x1E696AE18] predicateWithValue:1];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self.wasFetchedByTat == NO"];
  }
  v2 = ;

  return v2;
}

@end
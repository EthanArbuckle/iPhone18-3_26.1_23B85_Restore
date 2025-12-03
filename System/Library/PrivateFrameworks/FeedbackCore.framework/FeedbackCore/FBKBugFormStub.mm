@interface FBKBugFormStub
+ (id)bugFormStubsMatchingBuild:(id)build forPlatform:(id)platform withStubs:(id)stubs;
+ (id)predicateForAllStubs;
+ (id)predicateForTeam:(id)team;
+ (id)sortDescriptor;
- (NSSet)stubsWithMatchingID;
- (NSSet)teamsMatchingFormID;
- (id)debugDescription;
- (id)preferredTeamForStubPreferringTeam:(id)team;
- (id)signatureDescription;
- (void)setPropertiesFromJSONObject:(id)object;
@end

@implementation FBKBugFormStub

+ (id)bugFormStubsMatchingBuild:(id)build forPlatform:(id)platform withStubs:(id)stubs
{
  v41 = *MEMORY[0x1E69E9840];
  buildCopy = build;
  platformCopy = platform;
  stubsCopy = stubs;
  v32 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(stubsCopy, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v9 = stubsCopy;
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

      if (platformCopy)
      {
        platform = [v15 platform];
        v17 = [platform isEqualToString:platformCopy];

        if (!v17)
        {
          goto LABEL_18;
        }
      }

      buildPrefix = [v15 buildPrefix];
      if (![buildPrefix length])
      {
        break;
      }

      buildPrefix2 = [v15 buildPrefix];
      v20 = [buildCopy hasPrefix:buildPrefix2];

      if (!v20)
      {
        goto LABEL_15;
      }

      buildPrefix3 = [v15 buildPrefix];
      v22 = [buildPrefix3 length];

      if (v22 != v12)
      {
        buildPrefix4 = [v15 buildPrefix];
        v24 = [buildPrefix4 length];

        if (v24 > v12)
        {
          [v32 removeAllObjects];
          [v32 addObject:v15];
          buildPrefix5 = [v15 buildPrefix];
          v12 = [buildPrefix5 length];
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
    if (!platformCopy || v12)
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

- (void)setPropertiesFromJSONObject:(id)object
{
  objectCopy = object;
  [(FBKManagedLocalIDObject *)self setPropertiesForLocalIDKeys:objectCopy];
  v4 = [objectCopy objectForKeyedSubscript:@"build_prefix"];
  v5 = FBKNilIfNSNull(v4);

  if (v5)
  {
    [(FBKBugFormStub *)self setBuildPrefix:v5];
  }

  v6 = [objectCopy objectForKeyedSubscript:@"description"];
  v7 = FBKNilIfNSNull(v6);

  if (v7)
  {
    [(FBKBugFormStub *)self setFormDescription:v7];
  }

  v8 = [objectCopy objectForKeyedSubscript:@"name"];
  v9 = FBKNilIfNSNull(v8);

  if (v9)
  {
    [(FBKBugFormStub *)self setName:v9];
  }

  v10 = [objectCopy objectForKeyedSubscript:@"platform"];
  v11 = FBKNilIfNSNull(v10);

  if (v11)
  {
    [(FBKBugFormStub *)self setPlatform:v11];
  }

  v12 = [objectCopy objectForKeyedSubscript:@"priority"];
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
  v15 = [objectCopy objectForKeyedSubscript:@"plugins"];
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

  v18 = [objectCopy objectForKeyedSubscript:{@"signature", v9}];
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
  v22 = [objectCopy objectForKeyedSubscript:@"always_show_picker"];
  v23 = FBKNilIfNSNull(v22);

  v24 = v5;
  if (v23)
  {
    bOOLValue = [v23 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  [(FBKBugFormStub *)self setForcePicker:bOOLValue];
  v26 = [objectCopy objectForKeyedSubscript:@"tat"];
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
  intValue = [v4 intValue];
  pluginIDs = [(FBKBugFormStub *)self pluginIDs];
  v7 = [pluginIDs componentsJoinedByString:{@", "}];
  signature = [(FBKBugFormStub *)self signature];
  v9 = [v3 stringWithFormat:@"Stub [%i] <%@:%@>", intValue, v7, signature];

  return v9;
}

- (id)preferredTeamForStubPreferringTeam:(id)team
{
  v38 = *MEMORY[0x1E69E9840];
  teamCopy = team;
  teams = [(FBKBugFormStub *)self teams];
  v6 = [teams count];

  if (!v6)
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = *MEMORY[0x1E695D930];
    v9 = [(FBKManagedLocalIDObject *)self ID];
    [v7 raise:v8 format:{@"Form stub [%lu] belongs to no teams.", objc_msgSend(v9, "unsignedIntegerValue")}];
  }

  if (teamCopy && (-[FBKBugFormStub teams](self, "teams"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v10 containsObject:teamCopy], v10, v11))
  {
    v12 = +[FBKLog model];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [(FBKManagedLocalIDObject *)self ID];
      integerValue = [v13 integerValue];
      v15 = [teamCopy ID];
      *buf = 134218240;
      v35 = integerValue;
      v36 = 2048;
      integerValue2 = [v15 integerValue];
      _os_log_impl(&dword_1E54BE000, v12, OS_LOG_TYPE_DEFAULT, "Preferred team for stub [%ld] with ID: [%ld]", buf, 0x16u);
    }

    v16 = teamCopy;
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    teams2 = [(FBKBugFormStub *)self teams];
    v18 = [teams2 countByEnumeratingWithState:&v29 objects:v33 count:16];
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
            objc_enumerationMutation(teams2);
          }

          v22 = *(*(&v29 + 1) + 8 * i);
          if (![v22 teamType])
          {
            v24 = +[FBKLog model];
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [(FBKManagedLocalIDObject *)self ID];
              integerValue3 = [v25 integerValue];
              *buf = 134217984;
              v35 = integerValue3;
              _os_log_impl(&dword_1E54BE000, v24, OS_LOG_TYPE_DEFAULT, "Preferred team for stub [%ld] unavailable, choosing personal team", buf, 0xCu);
            }

            anyObject = v22;
            goto LABEL_20;
          }
        }

        v19 = [teams2 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    teams2 = [(FBKBugFormStub *)self teams];
    anyObject = [teams2 anyObject];
LABEL_20:
    v16 = anyObject;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v16;
}

- (NSSet)stubsWithMatchingID
{
  user = [(FBKBugFormStub *)self user];
  bugFormStubs = [user bugFormStubs];
  v5 = MEMORY[0x1E696AE18];
  serverID = [(FBKBugFormStub *)self serverID];
  v7 = [v5 predicateWithFormat:@"serverID == %@", serverID];
  v8 = [bugFormStubs filteredSetUsingPredicate:v7];

  return v8;
}

- (NSSet)teamsMatchingFormID
{
  v22 = *MEMORY[0x1E69E9840];
  stubsWithMatchingID = [(FBKBugFormStub *)self stubsWithMatchingID];
  v4 = MEMORY[0x1E695DFA8];
  user = [(FBKBugFormStub *)self user];
  teams = [user teams];
  v7 = [v4 setWithCapacity:{objc_msgSend(teams, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = stubsWithMatchingID;
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

        teams2 = [*(*(&v17 + 1) + 8 * i) teams];
        [v7 unionSet:teams2];
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
  signature = [(FBKBugFormStub *)self signature];
  v8 = [v3 stringWithFormat:@"%@: %@ - %@", v5, v6, signature];

  return v8;
}

+ (id)predicateForTeam:(id)team
{
  teamCopy = team;
  if (+[FBKSharedConstants listsFormsFetchedByTat])
  {
    v4 = @"%@ IN teams";
  }

  else
  {
    v4 = @"%@ IN teams AND self.wasFetchedByTat == NO";
  }

  teamCopy = [MEMORY[0x1E696AE18] predicateWithFormat:v4, teamCopy];

  return teamCopy;
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
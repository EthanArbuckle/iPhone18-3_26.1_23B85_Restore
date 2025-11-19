@interface _CDInteractionAdvisorSimple
+ (id)advisorSettingsForMatchingDisplayName:(id)a3 mechanism:(int64_t)a4 date:(id)a5 count:(int64_t)a6;
+ (id)advisorSettingsForMatchingHandles:(id)a3 mechanism:(int64_t)a4 date:(id)a5 count:(int64_t)a6;
+ (id)advisorSettingsForMatchingPersonID:(id)a3 mechanism:(int64_t)a4 date:(id)a5 count:(int64_t)a6;
- (_CDInteractionAdvisorSimple)initWithCoreDuetDaemon;
- (_CDInteractionAdvisorSimple)initWithCoreDuetDatabase;
- (_CDInteractionAdvisorSimple)initWithInteractionAdvisor:(id)a3;
- (id)bestInteractionMatchingContactID:(id)a3 mechanism:(int64_t)a4;
- (id)bestInteractionMatchingDisplayName:(id)a3 mechanism:(int64_t)a4;
- (id)bestInteractionMatchingHandles:(id)a3 mechanism:(int64_t)a4;
- (id)rankedInteractionsForDisplayName:(id)a3 mechanism:(int64_t)a4 count:(int64_t)a5;
- (id)rankedInteractionsForDisplayName:(id)a3 mechanism:(int64_t)a4 count:(int64_t)a5 date:(id)a6;
- (id)rankedInteractionsForHandles:(id)a3 mechanism:(int64_t)a4 count:(int64_t)a5;
- (id)rankedInteractionsForHandles:(id)a3 mechanism:(int64_t)a4 count:(int64_t)a5 date:(id)a6;
- (id)rankedInteractionsForPersonId:(id)a3 mechanism:(int64_t)a4 count:(int64_t)a5;
- (id)rankedInteractionsForPersonId:(id)a3 mechanism:(int64_t)a4 count:(int64_t)a5 date:(id)a6;
@end

@implementation _CDInteractionAdvisorSimple

- (_CDInteractionAdvisorSimple)initWithCoreDuetDaemon
{
  v3 = +[_CDInteractionAdvisor sharedInteractionAdvisor];
  v4 = [(_CDInteractionAdvisorSimple *)self initWithInteractionAdvisor:v3];

  return v4;
}

- (_CDInteractionAdvisorSimple)initWithCoreDuetDatabase
{
  v3 = +[_CDInteractionStore defaultDatabaseDirectory];
  v4 = [_CDInteractionStore storeWithDirectory:v3 readOnly:1];
  if ([v4 openAndCheckIfReadable])
  {
    v5 = [_CDInteractionAdviceEngine interactionAdviceEngineWithStore:v4];
    self = [(_CDInteractionAdvisorSimple *)self initWithInteractionAdvisor:v5];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (_CDInteractionAdvisorSimple)initWithInteractionAdvisor:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _CDInteractionAdvisorSimple;
  v5 = [(_CDInteractionAdvisorSimple *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_CDInteractionAdvisorSimple *)v5 setInteractionAdvisor:v4];
  }

  return v6;
}

- (id)bestInteractionMatchingHandles:(id)a3 mechanism:(int64_t)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a3;
  v8 = [v6 date];
  v9 = [(_CDInteractionAdvisorSimple *)self rankedInteractionsForHandles:v7 mechanism:a4 count:1 date:v8];

  v10 = [v9 firstObject];

  return v10;
}

- (id)bestInteractionMatchingContactID:(id)a3 mechanism:(int64_t)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a3;
  v8 = [v6 date];
  v9 = [(_CDInteractionAdvisorSimple *)self rankedInteractionsForPersonId:v7 mechanism:a4 count:1 date:v8];

  v10 = [v9 firstObject];

  return v10;
}

- (id)bestInteractionMatchingDisplayName:(id)a3 mechanism:(int64_t)a4
{
  v6 = MEMORY[0x1E695DF00];
  v7 = a3;
  v8 = [v6 date];
  v9 = [(_CDInteractionAdvisorSimple *)self rankedInteractionsForDisplayName:v7 mechanism:a4 count:1 date:v8];

  v10 = [v9 firstObject];

  return v10;
}

- (id)rankedInteractionsForHandles:(id)a3 mechanism:(int64_t)a4 count:(int64_t)a5
{
  v8 = MEMORY[0x1E695DF00];
  v9 = a3;
  v10 = [v8 date];
  v11 = [(_CDInteractionAdvisorSimple *)self rankedInteractionsForHandles:v9 mechanism:a4 count:a5 date:v10];

  return v11;
}

- (id)rankedInteractionsForHandles:(id)a3 mechanism:(int64_t)a4 count:(int64_t)a5 date:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [objc_opt_class() advisorSettingsForMatchingHandles:v11 mechanism:a4 date:v10 count:a5];

  v13 = [(_CDInteractionAdvisorSimple *)self interactionAdvisor];
  v14 = [v13 adviseInteractionsUsingSettings:v12];

  return v14;
}

- (id)rankedInteractionsForPersonId:(id)a3 mechanism:(int64_t)a4 count:(int64_t)a5
{
  v8 = MEMORY[0x1E695DF00];
  v9 = a3;
  v10 = [v8 date];
  v11 = [(_CDInteractionAdvisorSimple *)self rankedInteractionsForPersonId:v9 mechanism:a4 count:a5 date:v10];

  return v11;
}

- (id)rankedInteractionsForPersonId:(id)a3 mechanism:(int64_t)a4 count:(int64_t)a5 date:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [objc_opt_class() advisorSettingsForMatchingPersonID:v11 mechanism:a4 date:v10 count:a5];

  v13 = [(_CDInteractionAdvisorSimple *)self interactionAdvisor];
  v14 = [v13 adviseInteractionsUsingSettings:v12];

  return v14;
}

- (id)rankedInteractionsForDisplayName:(id)a3 mechanism:(int64_t)a4 count:(int64_t)a5
{
  v8 = MEMORY[0x1E695DF00];
  v9 = a3;
  v10 = [v8 date];
  v11 = [(_CDInteractionAdvisorSimple *)self rankedInteractionsForDisplayName:v9 mechanism:a4 count:a5 date:v10];

  return v11;
}

- (id)rankedInteractionsForDisplayName:(id)a3 mechanism:(int64_t)a4 count:(int64_t)a5 date:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [objc_opt_class() advisorSettingsForMatchingDisplayName:v11 mechanism:a4 date:v10 count:a5];

  v13 = [(_CDInteractionAdvisorSimple *)self interactionAdvisor];
  v14 = [v13 adviseInteractionsUsingSettings:v12];

  return v14;
}

+ (id)advisorSettingsForMatchingHandles:(id)a3 mechanism:(int64_t)a4 date:(id)a5 count:(int64_t)a6
{
  v9 = a5;
  v10 = a3;
  v11 = +[_CDInteractionAdvisorSettings interactionAdvisorSettingsDefault];
  [v11 setInteractionDate:v9];

  v12 = MEMORY[0x1E695DFD8];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v14 = [v12 setWithObject:v13];
  [v11 setConstrainMechanisms:v14];

  v15 = [MEMORY[0x1E695DFD8] setWithArray:v10];

  [v11 setConstrainIdentifiers:v15];
  [v11 setConsumerIdentifier:@"recency"];
  [v11 setResultLimit:a6];

  return v11;
}

+ (id)advisorSettingsForMatchingPersonID:(id)a3 mechanism:(int64_t)a4 date:(id)a5 count:(int64_t)a6
{
  v9 = a5;
  v10 = a3;
  v11 = +[_CDInteractionAdvisorSettings interactionAdvisorSettingsDefault];
  [v11 setInteractionDate:v9];

  v12 = MEMORY[0x1E695DFD8];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v14 = [v12 setWithObject:v13];
  [v11 setConstrainMechanisms:v14];

  v15 = [MEMORY[0x1E695DFD8] setWithObject:v10];

  [v11 setConstrainPersonIds:v15];
  [v11 setConsumerIdentifier:@"recency"];
  [v11 setResultLimit:a6];

  return v11;
}

+ (id)advisorSettingsForMatchingDisplayName:(id)a3 mechanism:(int64_t)a4 date:(id)a5 count:(int64_t)a6
{
  v9 = a5;
  v10 = a3;
  v11 = +[_CDInteractionAdvisorSettings interactionAdvisorSettingsDefault];
  [v11 setInteractionDate:v9];

  v12 = MEMORY[0x1E695DFD8];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v14 = [v12 setWithObject:v13];
  [v11 setConstrainMechanisms:v14];

  [v11 setContactPrefix:v10];
  [v11 setConsumerIdentifier:@"recency"];
  [v11 setResultLimit:a6];

  return v11;
}

@end
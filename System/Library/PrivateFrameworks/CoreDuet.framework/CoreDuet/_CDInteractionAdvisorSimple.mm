@interface _CDInteractionAdvisorSimple
+ (id)advisorSettingsForMatchingDisplayName:(id)name mechanism:(int64_t)mechanism date:(id)date count:(int64_t)count;
+ (id)advisorSettingsForMatchingHandles:(id)handles mechanism:(int64_t)mechanism date:(id)date count:(int64_t)count;
+ (id)advisorSettingsForMatchingPersonID:(id)d mechanism:(int64_t)mechanism date:(id)date count:(int64_t)count;
- (_CDInteractionAdvisorSimple)initWithCoreDuetDaemon;
- (_CDInteractionAdvisorSimple)initWithCoreDuetDatabase;
- (_CDInteractionAdvisorSimple)initWithInteractionAdvisor:(id)advisor;
- (id)bestInteractionMatchingContactID:(id)d mechanism:(int64_t)mechanism;
- (id)bestInteractionMatchingDisplayName:(id)name mechanism:(int64_t)mechanism;
- (id)bestInteractionMatchingHandles:(id)handles mechanism:(int64_t)mechanism;
- (id)rankedInteractionsForDisplayName:(id)name mechanism:(int64_t)mechanism count:(int64_t)count;
- (id)rankedInteractionsForDisplayName:(id)name mechanism:(int64_t)mechanism count:(int64_t)count date:(id)date;
- (id)rankedInteractionsForHandles:(id)handles mechanism:(int64_t)mechanism count:(int64_t)count;
- (id)rankedInteractionsForHandles:(id)handles mechanism:(int64_t)mechanism count:(int64_t)count date:(id)date;
- (id)rankedInteractionsForPersonId:(id)id mechanism:(int64_t)mechanism count:(int64_t)count;
- (id)rankedInteractionsForPersonId:(id)id mechanism:(int64_t)mechanism count:(int64_t)count date:(id)date;
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

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (_CDInteractionAdvisorSimple)initWithInteractionAdvisor:(id)advisor
{
  advisorCopy = advisor;
  v8.receiver = self;
  v8.super_class = _CDInteractionAdvisorSimple;
  v5 = [(_CDInteractionAdvisorSimple *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_CDInteractionAdvisorSimple *)v5 setInteractionAdvisor:advisorCopy];
  }

  return v6;
}

- (id)bestInteractionMatchingHandles:(id)handles mechanism:(int64_t)mechanism
{
  v6 = MEMORY[0x1E695DF00];
  handlesCopy = handles;
  date = [v6 date];
  v9 = [(_CDInteractionAdvisorSimple *)self rankedInteractionsForHandles:handlesCopy mechanism:mechanism count:1 date:date];

  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)bestInteractionMatchingContactID:(id)d mechanism:(int64_t)mechanism
{
  v6 = MEMORY[0x1E695DF00];
  dCopy = d;
  date = [v6 date];
  v9 = [(_CDInteractionAdvisorSimple *)self rankedInteractionsForPersonId:dCopy mechanism:mechanism count:1 date:date];

  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)bestInteractionMatchingDisplayName:(id)name mechanism:(int64_t)mechanism
{
  v6 = MEMORY[0x1E695DF00];
  nameCopy = name;
  date = [v6 date];
  v9 = [(_CDInteractionAdvisorSimple *)self rankedInteractionsForDisplayName:nameCopy mechanism:mechanism count:1 date:date];

  firstObject = [v9 firstObject];

  return firstObject;
}

- (id)rankedInteractionsForHandles:(id)handles mechanism:(int64_t)mechanism count:(int64_t)count
{
  v8 = MEMORY[0x1E695DF00];
  handlesCopy = handles;
  date = [v8 date];
  v11 = [(_CDInteractionAdvisorSimple *)self rankedInteractionsForHandles:handlesCopy mechanism:mechanism count:count date:date];

  return v11;
}

- (id)rankedInteractionsForHandles:(id)handles mechanism:(int64_t)mechanism count:(int64_t)count date:(id)date
{
  dateCopy = date;
  handlesCopy = handles;
  v12 = [objc_opt_class() advisorSettingsForMatchingHandles:handlesCopy mechanism:mechanism date:dateCopy count:count];

  interactionAdvisor = [(_CDInteractionAdvisorSimple *)self interactionAdvisor];
  v14 = [interactionAdvisor adviseInteractionsUsingSettings:v12];

  return v14;
}

- (id)rankedInteractionsForPersonId:(id)id mechanism:(int64_t)mechanism count:(int64_t)count
{
  v8 = MEMORY[0x1E695DF00];
  idCopy = id;
  date = [v8 date];
  v11 = [(_CDInteractionAdvisorSimple *)self rankedInteractionsForPersonId:idCopy mechanism:mechanism count:count date:date];

  return v11;
}

- (id)rankedInteractionsForPersonId:(id)id mechanism:(int64_t)mechanism count:(int64_t)count date:(id)date
{
  dateCopy = date;
  idCopy = id;
  v12 = [objc_opt_class() advisorSettingsForMatchingPersonID:idCopy mechanism:mechanism date:dateCopy count:count];

  interactionAdvisor = [(_CDInteractionAdvisorSimple *)self interactionAdvisor];
  v14 = [interactionAdvisor adviseInteractionsUsingSettings:v12];

  return v14;
}

- (id)rankedInteractionsForDisplayName:(id)name mechanism:(int64_t)mechanism count:(int64_t)count
{
  v8 = MEMORY[0x1E695DF00];
  nameCopy = name;
  date = [v8 date];
  v11 = [(_CDInteractionAdvisorSimple *)self rankedInteractionsForDisplayName:nameCopy mechanism:mechanism count:count date:date];

  return v11;
}

- (id)rankedInteractionsForDisplayName:(id)name mechanism:(int64_t)mechanism count:(int64_t)count date:(id)date
{
  dateCopy = date;
  nameCopy = name;
  v12 = [objc_opt_class() advisorSettingsForMatchingDisplayName:nameCopy mechanism:mechanism date:dateCopy count:count];

  interactionAdvisor = [(_CDInteractionAdvisorSimple *)self interactionAdvisor];
  v14 = [interactionAdvisor adviseInteractionsUsingSettings:v12];

  return v14;
}

+ (id)advisorSettingsForMatchingHandles:(id)handles mechanism:(int64_t)mechanism date:(id)date count:(int64_t)count
{
  dateCopy = date;
  handlesCopy = handles;
  v11 = +[_CDInteractionAdvisorSettings interactionAdvisorSettingsDefault];
  [v11 setInteractionDate:dateCopy];

  v12 = MEMORY[0x1E695DFD8];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:mechanism];
  v14 = [v12 setWithObject:v13];
  [v11 setConstrainMechanisms:v14];

  v15 = [MEMORY[0x1E695DFD8] setWithArray:handlesCopy];

  [v11 setConstrainIdentifiers:v15];
  [v11 setConsumerIdentifier:@"recency"];
  [v11 setResultLimit:count];

  return v11;
}

+ (id)advisorSettingsForMatchingPersonID:(id)d mechanism:(int64_t)mechanism date:(id)date count:(int64_t)count
{
  dateCopy = date;
  dCopy = d;
  v11 = +[_CDInteractionAdvisorSettings interactionAdvisorSettingsDefault];
  [v11 setInteractionDate:dateCopy];

  v12 = MEMORY[0x1E695DFD8];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:mechanism];
  v14 = [v12 setWithObject:v13];
  [v11 setConstrainMechanisms:v14];

  v15 = [MEMORY[0x1E695DFD8] setWithObject:dCopy];

  [v11 setConstrainPersonIds:v15];
  [v11 setConsumerIdentifier:@"recency"];
  [v11 setResultLimit:count];

  return v11;
}

+ (id)advisorSettingsForMatchingDisplayName:(id)name mechanism:(int64_t)mechanism date:(id)date count:(int64_t)count
{
  dateCopy = date;
  nameCopy = name;
  v11 = +[_CDInteractionAdvisorSettings interactionAdvisorSettingsDefault];
  [v11 setInteractionDate:dateCopy];

  v12 = MEMORY[0x1E695DFD8];
  v13 = [MEMORY[0x1E696AD98] numberWithInteger:mechanism];
  v14 = [v12 setWithObject:v13];
  [v11 setConstrainMechanisms:v14];

  [v11 setContactPrefix:nameCopy];
  [v11 setConsumerIdentifier:@"recency"];
  [v11 setResultLimit:count];

  return v11;
}

@end
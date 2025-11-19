@interface _CDPSimpleModelParameterManager
- (_CDPSimpleModelParameterManager)initWithSettings:(id)a3;
- (id)accountIdentifierForSettings:(id)a3;
- (void)getLambda:(float *)a3 w0:(float *)a4 threshold:(float *)a5;
- (void)loadAccountState;
- (void)modelTuner:(id)a3 heartBeatWithlambda:(float)a4 w0:(float)a5 threshold:(float)a6 score:(float)a7 progress:(float)a8;
- (void)saveAccountState;
@end

@implementation _CDPSimpleModelParameterManager

- (_CDPSimpleModelParameterManager)initWithSettings:(id)a3
{
  v10.receiver = self;
  v10.super_class = _CDPSimpleModelParameterManager;
  v3 = a3;
  v4 = [(_CDPSimpleModelParameterManager *)&v10 init];
  v5 = [v3 constrainAccounts];

  v6 = [v5 allObjects];
  v7 = [v6 componentsJoinedByString:{@", "}];
  accountStateKey = v4->_accountStateKey;
  v4->_accountStateKey = v7;

  [(_CDPSimpleModelParameterManager *)v4 loadAccountState];
  return v4;
}

- (id)accountIdentifierForSettings:(id)a3
{
  v3 = [a3 constrainAccounts];
  v4 = [v3 allObjects];
  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

- (void)modelTuner:(id)a3 heartBeatWithlambda:(float)a4 w0:(float)a5 threshold:(float)a6 score:(float)a7 progress:(float)a8
{
  v47 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = [_CDPSimpleModelParameterManagerTuningValue alloc];
  *&v16 = a4;
  *&v17 = a5;
  *&v18 = a6;
  *&v19 = a7;
  v20 = [(_CDPSimpleModelParameterManagerTuningValue *)v15 initWithLambda:v16 w0:v17 threshold:v18 score:v19];
  v21 = [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState tuningValues];
  [v21 addObject:v20];

  [(_CDPSimpleModelParameterManagerTuningValue *)v20 score];
  v23 = v22;
  v24 = [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState previousBestTuningValue];
  [v24 score];
  v26 = v25;

  if (v23 > v26)
  {
    [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState setPreviousBestTuningValue:v20];
  }

  v27 = [v14 currentState];
  v28 = [v27 copy];
  [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState setLastTuningState:v28];

  if (a8 == 1.0)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v29 = [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState tuningValues];
    v30 = [v29 countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = 0;
      v33 = *v43;
      v34 = -1.0;
      do
      {
        for (i = 0; i != v31; ++i)
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(v29);
          }

          v36 = *(*(&v42 + 1) + 8 * i);
          [v36 score];
          if (v37 > v34)
          {
            [v36 score];
            v34 = v38;
            v39 = v36;

            v32 = v39;
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v31);
    }

    else
    {
      v32 = 0;
    }

    v40 = [MEMORY[0x1E695DF70] array];
    [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState setTuningValues:v40];

    [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState setPreviousBestTuningValue:v32];
    [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState setLastTuningState:0];
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)getLambda:(float *)a3 w0:(float *)a4 threshold:(float *)a5
{
  v9 = [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState previousBestTuningValue];
  [v9 lambda];
  *a3 = v10;

  v11 = [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState previousBestTuningValue];
  [v11 w0];
  *a4 = v12;

  v14 = [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState previousBestTuningValue];
  [v14 threshold];
  *a5 = v13;
}

- (void)loadAccountState
{
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  if (self->_accountStateKey && ([v8 objectForKey:?], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v3 error:0];
    accountState = self->_accountState;
    self->_accountState = v5;
  }

  else
  {
    v7 = objc_alloc_init(_CDPSimpleModelParameterManagerAccountState);
    v4 = self->_accountState;
    self->_accountState = v7;
  }
}

- (void)saveAccountState
{
  if (self->_accountStateKey && self->_accountState)
  {
    v3 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:?];
    v4 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v4 setObject:v3 forKey:self->_accountStateKey];
    [v4 synchronize];
    v5 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(_CDPSimpleModelParameterManager *)v5 saveAccountState];
    }
  }
}

@end
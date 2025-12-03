@interface _CDPSimpleModelParameterManager
- (_CDPSimpleModelParameterManager)initWithSettings:(id)settings;
- (id)accountIdentifierForSettings:(id)settings;
- (void)getLambda:(float *)lambda w0:(float *)w0 threshold:(float *)threshold;
- (void)loadAccountState;
- (void)modelTuner:(id)tuner heartBeatWithlambda:(float)withlambda w0:(float)w0 threshold:(float)threshold score:(float)score progress:(float)progress;
- (void)saveAccountState;
@end

@implementation _CDPSimpleModelParameterManager

- (_CDPSimpleModelParameterManager)initWithSettings:(id)settings
{
  v10.receiver = self;
  v10.super_class = _CDPSimpleModelParameterManager;
  settingsCopy = settings;
  v4 = [(_CDPSimpleModelParameterManager *)&v10 init];
  constrainAccounts = [settingsCopy constrainAccounts];

  allObjects = [constrainAccounts allObjects];
  v7 = [allObjects componentsJoinedByString:{@", "}];
  accountStateKey = v4->_accountStateKey;
  v4->_accountStateKey = v7;

  [(_CDPSimpleModelParameterManager *)v4 loadAccountState];
  return v4;
}

- (id)accountIdentifierForSettings:(id)settings
{
  constrainAccounts = [settings constrainAccounts];
  allObjects = [constrainAccounts allObjects];
  v5 = [allObjects componentsJoinedByString:{@", "}];

  return v5;
}

- (void)modelTuner:(id)tuner heartBeatWithlambda:(float)withlambda w0:(float)w0 threshold:(float)threshold score:(float)score progress:(float)progress
{
  v47 = *MEMORY[0x1E69E9840];
  tunerCopy = tuner;
  v15 = [_CDPSimpleModelParameterManagerTuningValue alloc];
  *&v16 = withlambda;
  *&v17 = w0;
  *&v18 = threshold;
  *&v19 = score;
  v20 = [(_CDPSimpleModelParameterManagerTuningValue *)v15 initWithLambda:v16 w0:v17 threshold:v18 score:v19];
  tuningValues = [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState tuningValues];
  [tuningValues addObject:v20];

  [(_CDPSimpleModelParameterManagerTuningValue *)v20 score];
  v23 = v22;
  previousBestTuningValue = [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState previousBestTuningValue];
  [previousBestTuningValue score];
  v26 = v25;

  if (v23 > v26)
  {
    [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState setPreviousBestTuningValue:v20];
  }

  currentState = [tunerCopy currentState];
  v28 = [currentState copy];
  [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState setLastTuningState:v28];

  if (progress == 1.0)
  {
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    tuningValues2 = [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState tuningValues];
    v30 = [tuningValues2 countByEnumeratingWithState:&v42 objects:v46 count:16];
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
            objc_enumerationMutation(tuningValues2);
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

        v31 = [tuningValues2 countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v31);
    }

    else
    {
      v32 = 0;
    }

    array = [MEMORY[0x1E695DF70] array];
    [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState setTuningValues:array];

    [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState setPreviousBestTuningValue:v32];
    [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState setLastTuningState:0];
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)getLambda:(float *)lambda w0:(float *)w0 threshold:(float *)threshold
{
  previousBestTuningValue = [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState previousBestTuningValue];
  [previousBestTuningValue lambda];
  *lambda = v10;

  previousBestTuningValue2 = [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState previousBestTuningValue];
  [previousBestTuningValue2 w0];
  *w0 = v12;

  previousBestTuningValue3 = [(_CDPSimpleModelParameterManagerAccountState *)self->_accountState previousBestTuningValue];
  [previousBestTuningValue3 threshold];
  *threshold = v13;
}

- (void)loadAccountState
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  if (self->_accountStateKey && ([standardUserDefaults objectForKey:?], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
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
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults setObject:v3 forKey:self->_accountStateKey];
    [standardUserDefaults synchronize];
    v5 = +[_CDLogging instrumentationChannel];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(_CDPSimpleModelParameterManager *)v5 saveAccountState];
    }
  }
}

@end
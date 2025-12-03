@interface LNSuccessResult
- (BOOL)isEqual:(id)equal;
- (LNAction)action;
- (LNActionAppContext)actionAppContext;
- (LNActionOutput)output;
- (LNSuccessResult)initWithAction:(id)action output:(id)output actionAppContext:(id)context predictions:(id)predictions undoReference:(id)reference;
- (LNSuccessResult)initWithActionData:(id)data outputData:(id)outputData appContextData:(id)contextData predictionsData:(id)predictionsData undoReference:(id)reference;
- (LNSuccessResult)initWithCoder:(id)coder;
- (NSArray)predictions;
- (id)description;
- (id)verboseDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LNSuccessResult

- (LNSuccessResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionData"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"outputData"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"appContextData"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionsData"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"undoReference"];
  if (v5 && v6 && v8)
  {
    self = [(LNSuccessResult *)self initWithActionData:v5 outputData:v6 appContextData:v7 predictionsData:v8 undoReference:v9];
    selfCopy2 = self;
  }

  else
  {
    v19 = v5;
    v20 = v7;
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"output"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionAppContext"];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"predictions"];

    selfCopy2 = 0;
    if (v11 && v12 && v17)
    {
      self = [(LNSuccessResult *)self initWithAction:v11 output:v12 actionAppContext:v13 predictions:v17 undoReference:v9];
      selfCopy2 = self;
    }

    v5 = v19;
    v7 = v20;
  }

  return selfCopy2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  actionData = [(LNSuccessResult *)self actionData];
  [coderCopy encodeObject:actionData forKey:@"actionData"];

  outputData = [(LNSuccessResult *)self outputData];
  [coderCopy encodeObject:outputData forKey:@"outputData"];

  appContextData = [(LNSuccessResult *)self appContextData];
  [coderCopy encodeObject:appContextData forKey:@"appContextData"];

  predictionsData = [(LNSuccessResult *)self predictionsData];
  [coderCopy encodeObject:predictionsData forKey:@"predictionsData"];

  undoReference = [(LNSuccessResult *)self undoReference];
  [coderCopy encodeObject:undoReference forKey:@"undoReference"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self != equalCopy)
  {
    v6 = equalCopy;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_46:

      goto LABEL_47;
    }

    actionData = [(LNSuccessResult *)self actionData];
    actionData2 = [(LNSuccessResult *)v6 actionData];
    v9 = actionData;
    v10 = actionData2;
    v11 = v10;
    if (v9 == v10)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v13 = v10;
      v14 = v9;
      if (!v9 || !v10)
      {
        goto LABEL_44;
      }

      v15 = [v9 isEqual:v10];

      if (!v15)
      {
        LOBYTE(v12) = 0;
LABEL_45:

        goto LABEL_46;
      }
    }

    outputData = [(LNSuccessResult *)self outputData];
    outputData2 = [(LNSuccessResult *)v6 outputData];
    v14 = outputData;
    v18 = outputData2;
    v13 = v18;
    if (v14 == v18)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v19 = v18;
      v20 = v14;
      if (!v14 || !v18)
      {
        goto LABEL_43;
      }

      v21 = [v14 isEqual:v18];

      if (!v21)
      {
        LOBYTE(v12) = 0;
LABEL_44:

        goto LABEL_45;
      }
    }

    appContextData = [(LNSuccessResult *)self appContextData];
    appContextData2 = [(LNSuccessResult *)v6 appContextData];
    v20 = appContextData;
    v24 = appContextData2;
    v41 = v24;
    if (v20 != v24)
    {
      LOBYTE(v12) = 0;
      if (v20)
      {
        v25 = v24;
        v26 = v20;
        if (v24)
        {
          v12 = [v20 isEqual:v24];

          if (!v12)
          {
            goto LABEL_42;
          }

LABEL_24:
          v40 = v20;
          predictionsData = [(LNSuccessResult *)self predictionsData];
          predictionsData2 = [(LNSuccessResult *)v6 predictionsData];
          v29 = predictionsData;
          v30 = predictionsData2;
          v38 = v30;
          v39 = v29;
          if (v29 == v30)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            if (!v29)
            {
              v31 = v30;
              v20 = v40;
              goto LABEL_39;
            }

            v31 = v30;
            v20 = v40;
            if (!v30)
            {
LABEL_39:

              goto LABEL_40;
            }

            v32 = [v29 isEqual:v30];

            if (!v32)
            {
              LOBYTE(v12) = 0;
              v20 = v40;
LABEL_40:
              v25 = v38;
              v26 = v39;
              goto LABEL_41;
            }
          }

          v33 = [(LNSuccessResult *)self undoReference:v38];
          undoReference = [(LNSuccessResult *)v6 undoReference];
          v29 = v33;
          v35 = undoReference;
          v36 = v35;
          if (v29 == v35)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            LOBYTE(v12) = 0;
            if (v29)
            {
              v20 = v40;
              if (v35)
              {
                LOBYTE(v12) = [v29 isEqual:v35];
              }

              goto LABEL_37;
            }
          }

          v20 = v40;
LABEL_37:

          v31 = v36;
          goto LABEL_39;
        }
      }

      else
      {
        v25 = v24;
        v26 = 0;
      }

LABEL_41:

LABEL_42:
      v19 = v41;
LABEL_43:

      goto LABEL_44;
    }

    goto LABEL_24;
  }

  LOBYTE(v12) = 1;
LABEL_47:

  return v12;
}

- (unint64_t)hash
{
  actionData = [(LNSuccessResult *)self actionData];
  v4 = [actionData hash];
  outputData = [(LNSuccessResult *)self outputData];
  v6 = [outputData hash] ^ v4;
  appContextData = [(LNSuccessResult *)self appContextData];
  v8 = [appContextData hash];
  predictionsData = [(LNSuccessResult *)self predictionsData];
  v10 = v6 ^ v8 ^ [predictionsData hash];
  undoReference = [(LNSuccessResult *)self undoReference];
  v12 = [undoReference hash];

  return v10 ^ v12;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  action = [(LNSuccessResult *)self action];
  output = [(LNSuccessResult *)self output];
  actionAppContext = [(LNSuccessResult *)self actionAppContext];
  predictions = [(LNSuccessResult *)self predictions];
  undoReference = [(LNSuccessResult *)self undoReference];
  v11 = [v3 stringWithFormat:@"<%@: %p, action: %@, output: %@, appContext: %@, predictions: %@, undoReference: %@>", v5, self, action, output, actionAppContext, predictions, undoReference];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  actionData = [(LNSuccessResult *)self actionData];
  outputData = [(LNSuccessResult *)self outputData];
  appContextData = [(LNSuccessResult *)self appContextData];
  predictionsData = [(LNSuccessResult *)self predictionsData];
  undoReference = [(LNSuccessResult *)self undoReference];
  v11 = [v3 stringWithFormat:@"<%@: %p, actionData: %@, outputData: %@, appContextData: %@, predictionsData: %@, undoReferenceData: %@>", v5, self, actionData, outputData, appContextData, predictionsData, undoReference];

  return v11;
}

- (NSArray)predictions
{
  v24 = *MEMORY[0x1E69E9840];
  predictions = self->_predictions;
  if (!predictions)
  {
    v4 = MEMORY[0x1E695DFD8];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
    v8 = MEMORY[0x1E696ACD0];
    predictionsData = [(LNSuccessResult *)self predictionsData];
    v17 = 0;
    v10 = [v8 unarchivedObjectOfClasses:v7 fromData:predictionsData error:&v17];
    v11 = v17;

    if (v11 || !v10)
    {
      v12 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        predictionsData2 = [(LNSuccessResult *)self predictionsData];
        *buf = 138412802;
        v19 = v7;
        v20 = 2112;
        v21 = predictionsData2;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_19763D000, v12, OS_LOG_TYPE_ERROR, "Object archival failed for %@ with %@: %@", buf, 0x20u);
      }
    }

    v14 = self->_predictions;
    self->_predictions = v10;

    predictions = self->_predictions;
  }

  v15 = *MEMORY[0x1E69E9840];

  return predictions;
}

- (LNActionAppContext)actionAppContext
{
  v22 = *MEMORY[0x1E69E9840];
  actionAppContext = self->_actionAppContext;
  if (!actionAppContext)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    appContextData = [(LNSuccessResult *)self appContextData];
    v15 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:appContextData error:&v15];
    v8 = v15;

    if (v8 || !v7)
    {
      v9 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        appContextData2 = [(LNSuccessResult *)self appContextData];
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = appContextData2;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "Object archival failed for %@ with %@: %@", buf, 0x20u);
      }
    }

    v12 = self->_actionAppContext;
    self->_actionAppContext = v7;

    actionAppContext = self->_actionAppContext;
  }

  v13 = *MEMORY[0x1E69E9840];

  return actionAppContext;
}

- (LNActionOutput)output
{
  v22 = *MEMORY[0x1E69E9840];
  output = self->_output;
  if (!output)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    outputData = [(LNSuccessResult *)self outputData];
    v15 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:outputData error:&v15];
    v8 = v15;

    if (v8 || !v7)
    {
      v9 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        outputData2 = [(LNSuccessResult *)self outputData];
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = outputData2;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "Object archival failed for %@ with %@: %@", buf, 0x20u);
      }
    }

    v12 = self->_output;
    self->_output = v7;

    output = self->_output;
  }

  v13 = *MEMORY[0x1E69E9840];

  return output;
}

- (LNAction)action
{
  v22 = *MEMORY[0x1E69E9840];
  action = self->_action;
  if (!action)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    actionData = [(LNSuccessResult *)self actionData];
    v15 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:actionData error:&v15];
    v8 = v15;

    if (v8 || !v7)
    {
      v9 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        actionData2 = [(LNSuccessResult *)self actionData];
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = actionData2;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "Object archival failed for %@ with %@: %@", buf, 0x20u);
      }
    }

    v12 = self->_action;
    self->_action = v7;

    action = self->_action;
  }

  v13 = *MEMORY[0x1E69E9840];

  return action;
}

- (LNSuccessResult)initWithActionData:(id)data outputData:(id)outputData appContextData:(id)contextData predictionsData:(id)predictionsData undoReference:(id)reference
{
  dataCopy = data;
  outputDataCopy = outputData;
  contextDataCopy = contextData;
  predictionsDataCopy = predictionsData;
  referenceCopy = reference;
  if (dataCopy)
  {
    if (outputDataCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNSuccessResult.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"outputData"}];

    if (predictionsDataCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNSuccessResult.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"actionData"}];

  if (!outputDataCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (predictionsDataCopy)
  {
    goto LABEL_4;
  }

LABEL_9:
  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNSuccessResult.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"predictionsData"}];

LABEL_4:
  v32.receiver = self;
  v32.super_class = LNSuccessResult;
  v18 = [(LNSuccessResult *)&v32 init];
  if (v18)
  {
    v19 = [dataCopy copy];
    actionData = v18->_actionData;
    v18->_actionData = v19;

    v21 = [outputDataCopy copy];
    outputData = v18->_outputData;
    v18->_outputData = v21;

    v23 = [contextDataCopy copy];
    appContextData = v18->_appContextData;
    v18->_appContextData = v23;

    v25 = [predictionsDataCopy copy];
    predictionsData = v18->_predictionsData;
    v18->_predictionsData = v25;

    objc_storeStrong(&v18->_undoReference, reference);
    v27 = v18;
  }

  return v18;
}

- (LNSuccessResult)initWithAction:(id)action output:(id)output actionAppContext:(id)context predictions:(id)predictions undoReference:(id)reference
{
  v44 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  outputCopy = output;
  contextCopy = context;
  predictionsCopy = predictions;
  v14 = MEMORY[0x1E696ACC8];
  v39 = 0;
  referenceCopy = reference;
  v16 = [v14 archivedDataWithRootObject:actionCopy requiringSecureCoding:1 error:&v39];
  v17 = v39;
  if (v17 || !v16)
  {
    v18 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = actionCopy;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_19763D000, v18, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v34 = actionCopy;

  v38 = 0;
  v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:outputCopy requiringSecureCoding:1 error:&v38];
  v20 = v38;
  v21 = contextCopy;
  if (v20 || !v19)
  {
    v22 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = outputCopy;
      v42 = 2112;
      v43 = v20;
      _os_log_impl(&dword_19763D000, v22, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v23 = outputCopy;

  v37 = 0;
  v24 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:contextCopy requiringSecureCoding:1 error:&v37];
  v25 = v37;
  if (v25 || !v24)
  {
    v26 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = contextCopy;
      v42 = 2112;
      v43 = v25;
      _os_log_impl(&dword_19763D000, v26, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v36 = 0;
  v27 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:predictionsCopy requiringSecureCoding:1 error:&v36];
  v28 = v36;
  if (v28 || !v27)
  {
    v29 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = predictionsCopy;
      v42 = 2112;
      v43 = v28;
      _os_log_impl(&dword_19763D000, v29, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }

    v21 = contextCopy;
  }

  v30 = [(LNSuccessResult *)self initWithActionData:v16 outputData:v19 appContextData:v24 predictionsData:v27 undoReference:referenceCopy];
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

@end
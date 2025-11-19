@interface LNSuccessResult
- (BOOL)isEqual:(id)a3;
- (LNAction)action;
- (LNActionAppContext)actionAppContext;
- (LNActionOutput)output;
- (LNSuccessResult)initWithAction:(id)a3 output:(id)a4 actionAppContext:(id)a5 predictions:(id)a6 undoReference:(id)a7;
- (LNSuccessResult)initWithActionData:(id)a3 outputData:(id)a4 appContextData:(id)a5 predictionsData:(id)a6 undoReference:(id)a7;
- (LNSuccessResult)initWithCoder:(id)a3;
- (NSArray)predictions;
- (id)description;
- (id)verboseDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNSuccessResult

- (LNSuccessResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionData"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"outputData"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"appContextData"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionsData"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"undoReference"];
  if (v5 && v6 && v8)
  {
    self = [(LNSuccessResult *)self initWithActionData:v5 outputData:v6 appContextData:v7 predictionsData:v8 undoReference:v9];
    v10 = self;
  }

  else
  {
    v19 = v5;
    v20 = v7;
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"output"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionAppContext"];
    v14 = MEMORY[0x1E695DFD8];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [v4 decodeObjectOfClasses:v16 forKey:@"predictions"];

    v10 = 0;
    if (v11 && v12 && v17)
    {
      self = [(LNSuccessResult *)self initWithAction:v11 output:v12 actionAppContext:v13 predictions:v17 undoReference:v9];
      v10 = self;
    }

    v5 = v19;
    v7 = v20;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(LNSuccessResult *)self actionData];
  [v4 encodeObject:v5 forKey:@"actionData"];

  v6 = [(LNSuccessResult *)self outputData];
  [v4 encodeObject:v6 forKey:@"outputData"];

  v7 = [(LNSuccessResult *)self appContextData];
  [v4 encodeObject:v7 forKey:@"appContextData"];

  v8 = [(LNSuccessResult *)self predictionsData];
  [v4 encodeObject:v8 forKey:@"predictionsData"];

  v9 = [(LNSuccessResult *)self undoReference];
  [v4 encodeObject:v9 forKey:@"undoReference"];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self != v4)
  {
    v6 = v4;
    if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      LOBYTE(v12) = 0;
LABEL_46:

      goto LABEL_47;
    }

    v7 = [(LNSuccessResult *)self actionData];
    v8 = [(LNSuccessResult *)v6 actionData];
    v9 = v7;
    v10 = v8;
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

    v16 = [(LNSuccessResult *)self outputData];
    v17 = [(LNSuccessResult *)v6 outputData];
    v14 = v16;
    v18 = v17;
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

    v22 = [(LNSuccessResult *)self appContextData];
    v23 = [(LNSuccessResult *)v6 appContextData];
    v20 = v22;
    v24 = v23;
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
          v27 = [(LNSuccessResult *)self predictionsData];
          v28 = [(LNSuccessResult *)v6 predictionsData];
          v29 = v27;
          v30 = v28;
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
          v34 = [(LNSuccessResult *)v6 undoReference];
          v29 = v33;
          v35 = v34;
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
  v3 = [(LNSuccessResult *)self actionData];
  v4 = [v3 hash];
  v5 = [(LNSuccessResult *)self outputData];
  v6 = [v5 hash] ^ v4;
  v7 = [(LNSuccessResult *)self appContextData];
  v8 = [v7 hash];
  v9 = [(LNSuccessResult *)self predictionsData];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(LNSuccessResult *)self undoReference];
  v12 = [v11 hash];

  return v10 ^ v12;
}

- (id)verboseDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNSuccessResult *)self action];
  v7 = [(LNSuccessResult *)self output];
  v8 = [(LNSuccessResult *)self actionAppContext];
  v9 = [(LNSuccessResult *)self predictions];
  v10 = [(LNSuccessResult *)self undoReference];
  v11 = [v3 stringWithFormat:@"<%@: %p, action: %@, output: %@, appContext: %@, predictions: %@, undoReference: %@>", v5, self, v6, v7, v8, v9, v10];

  return v11;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNSuccessResult *)self actionData];
  v7 = [(LNSuccessResult *)self outputData];
  v8 = [(LNSuccessResult *)self appContextData];
  v9 = [(LNSuccessResult *)self predictionsData];
  v10 = [(LNSuccessResult *)self undoReference];
  v11 = [v3 stringWithFormat:@"<%@: %p, actionData: %@, outputData: %@, appContextData: %@, predictionsData: %@, undoReferenceData: %@>", v5, self, v6, v7, v8, v9, v10];

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
    v9 = [(LNSuccessResult *)self predictionsData];
    v17 = 0;
    v10 = [v8 unarchivedObjectOfClasses:v7 fromData:v9 error:&v17];
    v11 = v17;

    if (v11 || !v10)
    {
      v12 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [(LNSuccessResult *)self predictionsData];
        *buf = 138412802;
        v19 = v7;
        v20 = 2112;
        v21 = v13;
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
    v6 = [(LNSuccessResult *)self appContextData];
    v15 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:v6 error:&v15];
    v8 = v15;

    if (v8 || !v7)
    {
      v9 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = [(LNSuccessResult *)self appContextData];
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
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
    v6 = [(LNSuccessResult *)self outputData];
    v15 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:v6 error:&v15];
    v8 = v15;

    if (v8 || !v7)
    {
      v9 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = [(LNSuccessResult *)self outputData];
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
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
    v6 = [(LNSuccessResult *)self actionData];
    v15 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:v6 error:&v15];
    v8 = v15;

    if (v8 || !v7)
    {
      v9 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = [(LNSuccessResult *)self actionData];
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
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

- (LNSuccessResult)initWithActionData:(id)a3 outputData:(id)a4 appContextData:(id)a5 predictionsData:(id)a6 undoReference:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:
    v30 = [MEMORY[0x1E696AAA8] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"LNSuccessResult.m" lineNumber:53 description:{@"Invalid parameter not satisfying: %@", @"outputData"}];

    if (v16)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v29 = [MEMORY[0x1E696AAA8] currentHandler];
  [v29 handleFailureInMethod:a2 object:self file:@"LNSuccessResult.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"actionData"}];

  if (!v14)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v16)
  {
    goto LABEL_4;
  }

LABEL_9:
  v31 = [MEMORY[0x1E696AAA8] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"LNSuccessResult.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"predictionsData"}];

LABEL_4:
  v32.receiver = self;
  v32.super_class = LNSuccessResult;
  v18 = [(LNSuccessResult *)&v32 init];
  if (v18)
  {
    v19 = [v13 copy];
    actionData = v18->_actionData;
    v18->_actionData = v19;

    v21 = [v14 copy];
    outputData = v18->_outputData;
    v18->_outputData = v21;

    v23 = [v15 copy];
    appContextData = v18->_appContextData;
    v18->_appContextData = v23;

    v25 = [v16 copy];
    predictionsData = v18->_predictionsData;
    v18->_predictionsData = v25;

    objc_storeStrong(&v18->_undoReference, a7);
    v27 = v18;
  }

  return v18;
}

- (LNSuccessResult)initWithAction:(id)a3 output:(id)a4 actionAppContext:(id)a5 predictions:(id)a6 undoReference:(id)a7
{
  v44 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v35 = a5;
  v13 = a6;
  v14 = MEMORY[0x1E696ACC8];
  v39 = 0;
  v15 = a7;
  v16 = [v14 archivedDataWithRootObject:v11 requiringSecureCoding:1 error:&v39];
  v17 = v39;
  if (v17 || !v16)
  {
    v18 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = v11;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_19763D000, v18, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v34 = v11;

  v38 = 0;
  v19 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:&v38];
  v20 = v38;
  v21 = v35;
  if (v20 || !v19)
  {
    v22 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = v12;
      v42 = 2112;
      v43 = v20;
      _os_log_impl(&dword_19763D000, v22, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v23 = v12;

  v37 = 0;
  v24 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v35 requiringSecureCoding:1 error:&v37];
  v25 = v37;
  if (v25 || !v24)
  {
    v26 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = v35;
      v42 = 2112;
      v43 = v25;
      _os_log_impl(&dword_19763D000, v26, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v36 = 0;
  v27 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:&v36];
  v28 = v36;
  if (v28 || !v27)
  {
    v29 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v41 = v13;
      v42 = 2112;
      v43 = v28;
      _os_log_impl(&dword_19763D000, v29, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }

    v21 = v35;
  }

  v30 = [(LNSuccessResult *)self initWithActionData:v16 outputData:v19 appContextData:v24 predictionsData:v27 undoReference:v15];
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

@end
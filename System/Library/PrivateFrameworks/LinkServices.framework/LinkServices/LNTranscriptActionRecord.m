@interface LNTranscriptActionRecord
+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4;
- (BOOL)isEqual:(id)a3;
- (LNAction)action;
- (LNAction)resolvedAction;
- (LNActionOutput)actionOutput;
- (LNTranscriptActionRecord)initWithAction:(id)a3 resolvedAction:(id)a4 bundleIdentifier:(id)a5 actionOutput:(id)a6 executionUUID:(id)a7 source:(unsigned __int16)a8 executionDate:(id)a9 clientLabel:(id)a10 predictions:(id)a11;
- (LNTranscriptActionRecord)initWithBundleIdentifier:(id)a3 source:(unsigned __int16)a4 clientLabel:(id)a5 executionUUID:(id)a6 executionDate:(id)a7 action:(id)a8 resolvedAction:(id)a9 actionOutput:(id)a10 predictions:(id)a11;
- (LNTranscriptActionRecord)initWithBundleIdentifier:(id)a3 source:(unsigned __int16)a4 clientLabel:(id)a5 executionUUID:(id)a6 executionDate:(id)a7 actionData:(id)a8 resolvedActionData:(id)a9 actionOutputData:(id)a10 predictionsData:(id)a11 hasNextAction:(BOOL)a12;
- (LNTranscriptActionRecord)initWithCoder:(id)a3;
- (NSArray)predictions;
- (NSString)description;
- (id)serialize;
- (id)verboseDescription;
- (unint64_t)hash;
- (void)asBMAppIntentInvocationWithCompletionHandler:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation LNTranscriptActionRecord

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
    v9 = [(LNTranscriptActionRecord *)self predictionsData];
    v17 = 0;
    v10 = [v8 unarchivedObjectOfClasses:v7 fromData:v9 error:&v17];
    v11 = v17;

    if (v11 || !v10)
    {
      v12 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = [(LNTranscriptActionRecord *)self predictionsData];
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

- (LNAction)action
{
  v22 = *MEMORY[0x1E69E9840];
  action = self->_action;
  if (!action)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    v6 = [(LNTranscriptActionRecord *)self actionData];
    v15 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:v6 error:&v15];
    v8 = v15;

    if (v8 || !v7)
    {
      v9 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = [(LNTranscriptActionRecord *)self actionData];
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

- (LNAction)resolvedAction
{
  v22 = *MEMORY[0x1E69E9840];
  resolvedAction = self->_resolvedAction;
  if (!resolvedAction)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    v6 = [(LNTranscriptActionRecord *)self resolvedActionData];
    v15 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:v6 error:&v15];
    v8 = v15;

    if (v8 || !v7)
    {
      v9 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        v11 = [(LNTranscriptActionRecord *)self resolvedActionData];
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = v11;
        v20 = 2112;
        v21 = v8;
        _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "Object archival failed for %@ with %@: %@", buf, 0x20u);
      }
    }

    v12 = self->_resolvedAction;
    self->_resolvedAction = v7;

    resolvedAction = self->_resolvedAction;
  }

  v13 = *MEMORY[0x1E69E9840];

  return resolvedAction;
}

- (void)asBMAppIntentInvocationWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  v6 = self;

  sub_197693D14();
}

- (id)serialize
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v2 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:self requiringSecureCoding:1 error:&v9];
  v3 = v9;
  v4 = v3;
  if (v2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3 == 0;
  }

  if (!v5)
  {
    v6 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_impl(&dword_19763D000, v6, OS_LOG_TYPE_ERROR, "Failed to serialize LNTranscriptActionRecord: %{public}@", buf, 0xCu);
    }

    v2 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v2;
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
LABEL_71:

      goto LABEL_72;
    }

    v7 = [(LNTranscriptActionRecord *)self bundleIdentifier];
    v8 = [(LNTranscriptActionRecord *)v6 bundleIdentifier];
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
        goto LABEL_69;
      }

      v15 = [v9 isEqualToString:v10];

      if (!v15)
      {
        goto LABEL_18;
      }
    }

    v16 = [(LNTranscriptActionRecord *)self source];
    if (v16 != [(LNTranscriptActionRecord *)v6 source])
    {
LABEL_18:
      LOBYTE(v12) = 0;
LABEL_70:

      goto LABEL_71;
    }

    v17 = [(LNTranscriptActionRecord *)self clientLabel];
    v18 = [(LNTranscriptActionRecord *)v6 clientLabel];
    v14 = v17;
    v19 = v18;
    v13 = v19;
    if (v14 == v19)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v20 = v19;
      v21 = v14;
      if (!v14 || !v19)
      {
        goto LABEL_68;
      }

      v22 = [v14 isEqualToString:v19];

      if (!v22)
      {
        LOBYTE(v12) = 0;
LABEL_69:

        goto LABEL_70;
      }
    }

    v23 = [(LNTranscriptActionRecord *)self executionUUID];
    v24 = [(LNTranscriptActionRecord *)v6 executionUUID];
    v21 = v23;
    v25 = v24;
    v20 = v25;
    v66 = v21;
    if (v21 == v25)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      v26 = v25;
      if (!v21 || !v25)
      {
        goto LABEL_67;
      }

      v12 = [v21 isEqual:v25];

      if (!v12)
      {
        goto LABEL_68;
      }
    }

    v65 = v20;
    v27 = [(LNTranscriptActionRecord *)self executionDate];
    v28 = [(LNTranscriptActionRecord *)v6 executionDate];
    v29 = v27;
    v30 = v28;
    v63 = v30;
    v64 = v29;
    if (v29 == v30)
    {
    }

    else
    {
      LOBYTE(v12) = 0;
      if (!v29)
      {
        v31 = v30;
        v20 = v65;
        goto LABEL_65;
      }

      v31 = v30;
      v20 = v65;
      if (!v30)
      {
LABEL_65:

        goto LABEL_66;
      }

      v32 = [v29 isEqual:v30];

      if (!v32)
      {
        LOBYTE(v12) = 0;
        v20 = v65;
LABEL_66:
        v26 = v63;
        v21 = v64;
LABEL_67:

        v21 = v66;
LABEL_68:

        goto LABEL_69;
      }
    }

    v33 = [(LNTranscriptActionRecord *)self actionData];
    v34 = [(LNTranscriptActionRecord *)v6 actionData];
    v29 = v33;
    v35 = v34;
    v61 = v29;
    v62 = v35;
    if (v29 != v35)
    {
      LOBYTE(v12) = 0;
      if (v29)
      {
        v36 = v35;
        v20 = v65;
        if (v35)
        {
          v37 = [v29 isEqual:v35];

          if (!v37)
          {
            LOBYTE(v12) = 0;
            v20 = v65;
            v31 = v62;
            goto LABEL_65;
          }

LABEL_38:
          v38 = [(LNTranscriptActionRecord *)self resolvedActionData];
          v39 = [(LNTranscriptActionRecord *)v6 resolvedActionData];
          v40 = v38;
          v41 = v39;
          v59 = v41;
          v60 = v40;
          if (v40 == v41)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            if (!v40)
            {
              v42 = v41;
              v20 = v65;
              goto LABEL_62;
            }

            v42 = v41;
            v20 = v65;
            if (!v41)
            {
LABEL_62:

              goto LABEL_63;
            }

            v43 = [v40 isEqual:v41];

            if (!v43)
            {
              LOBYTE(v12) = 0;
              v20 = v65;
LABEL_63:
              v36 = v59;
              v29 = v60;
              goto LABEL_64;
            }
          }

          v44 = [(LNTranscriptActionRecord *)self actionOutputData];
          v45 = [(LNTranscriptActionRecord *)v6 actionOutputData];
          v40 = v44;
          v46 = v45;
          v57 = v40;
          v58 = v46;
          if (v40 == v46)
          {
          }

          else
          {
            LOBYTE(v12) = 0;
            if (!v40)
            {
              v47 = v46;
              v20 = v65;
              goto LABEL_61;
            }

            v47 = v46;
            v20 = v65;
            if (!v46)
            {
LABEL_61:

              v40 = v57;
              v42 = v58;
              goto LABEL_62;
            }

            v48 = [v40 isEqual:v46];

            if (!v48)
            {
              LOBYTE(v12) = 0;
              v20 = v65;
              v42 = v58;
              goto LABEL_62;
            }
          }

          v49 = [(LNTranscriptActionRecord *)self predictionsData];
          v50 = [(LNTranscriptActionRecord *)v6 predictionsData];
          v51 = v49;
          v52 = v50;
          v53 = v51;
          v54 = v51 == v52;
          v55 = v52;
          if (v54)
          {
            LOBYTE(v12) = 1;
          }

          else
          {
            LOBYTE(v12) = 0;
            if (v53)
            {
              v20 = v65;
              if (v52)
              {
                LOBYTE(v12) = [v53 isEqual:v52];
              }

              goto LABEL_59;
            }
          }

          v20 = v65;
LABEL_59:

          v47 = v55;
          v40 = v53;
          goto LABEL_61;
        }
      }

      else
      {
        v36 = v35;
        v20 = v65;
      }

LABEL_64:

      v29 = v61;
      v31 = v62;
      goto LABEL_65;
    }

    goto LABEL_38;
  }

  LOBYTE(v12) = 1;
LABEL_72:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(LNTranscriptActionRecord *)self bundleIdentifier];
  v4 = [v3 hash];
  v5 = [(LNTranscriptActionRecord *)self source];
  v6 = [(LNTranscriptActionRecord *)self clientLabel];
  v7 = v4 ^ [v6 hash] ^ v5;
  v8 = [(LNTranscriptActionRecord *)self executionUUID];
  v9 = [v8 hash];
  v10 = [(LNTranscriptActionRecord *)self executionDate];
  v11 = v9 ^ [v10 hash];
  v12 = [(LNTranscriptActionRecord *)self actionData];
  v13 = v7 ^ v11 ^ [v12 hash];
  v14 = [(LNTranscriptActionRecord *)self resolvedActionData];
  v15 = [v14 hash];
  v16 = [(LNTranscriptActionRecord *)self actionOutputData];
  v17 = v15 ^ [v16 hash];
  v18 = [(LNTranscriptActionRecord *)self predictionsData];
  v19 = v17 ^ [v18 hash];

  return v13 ^ v19;
}

- (id)verboseDescription
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v18 = NSStringFromClass(v3);
  v4 = [(LNTranscriptActionRecord *)self bundleIdentifier];
  v5 = [(LNTranscriptActionRecord *)self source];
  if (v5 > 0xA)
  {
    v6 = @"app";
  }

  else
  {
    v6 = off_1E74B0848[v5];
  }

  v16 = v6;
  v7 = [(LNTranscriptActionRecord *)self clientLabel];
  v8 = [(LNTranscriptActionRecord *)self executionUUID];
  v9 = [(LNTranscriptActionRecord *)self executionDate];
  v10 = [(LNTranscriptActionRecord *)self action];
  v11 = [(LNTranscriptActionRecord *)self resolvedAction];
  v12 = [(LNTranscriptActionRecord *)self actionOutput];
  v13 = [(LNTranscriptActionRecord *)self predictions];
  v14 = [v17 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, source: %@, clientLabel: %@, executionUUID: %@, executionDate: %@, action: %@, resolvedAction: %@, actionOutput: %@, predictions %@>", v18, self, v4, v16, v7, v8, v9, v10, v11, v12, v13];

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(LNTranscriptActionRecord *)self bundleIdentifier];
  v7 = [(LNTranscriptActionRecord *)self executionUUID];
  v8 = [(LNTranscriptActionRecord *)self executionDate];
  v9 = [v3 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, executionUUID: %@, executionDate: %@>", v5, self, v6, v7, v8];

  return v9;
}

- (LNTranscriptActionRecord)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [v4 decodeIntegerForKey:@"source"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientLabel"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"executionUUID"];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
  }

  v42 = v10;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"executionDate"];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x1E695DF00] now];
  }

  v14 = v13;

  v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionData"];
  v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolvedActionData"];
  v41 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionOutputData"];
  v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"predictionsData"];
  v18 = v17;
  if (v15 && v16)
  {
    LOBYTE(v34) = [v4 decodeBoolForKey:@"hasNextAction"];
    v19 = v41;
    v20 = self;
    v21 = v42;
    v22 = [(LNTranscriptActionRecord *)v20 initWithBundleIdentifier:v5 source:v6 clientLabel:v7 executionUUID:v42 executionDate:v14 actionData:v15 resolvedActionData:v16 actionOutputData:v41 predictionsData:v18 hasNextAction:v34];
    v23 = v18;
    v24 = v22;
    v25 = v22;
  }

  else
  {
    v35 = v6;
    v36 = v17;
    v37 = v14;
    v38 = v7;
    v39 = v5;
    v40 = self;
    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"resolvedAction"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionOutput"];
    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [v4 decodeObjectOfClasses:v31 forKey:@"predictions"];

    v25 = 0;
    if (v26 && v27)
    {
      v25 = [(LNTranscriptActionRecord *)v40 initWithBundleIdentifier:v39 source:v35 clientLabel:v38 executionUUID:v42 executionDate:v37 action:v26 resolvedAction:v27 actionOutput:v28 predictions:v32];
      v40 = v25;
    }

    v5 = v39;
    v24 = v40;
    v14 = v37;
    v7 = v38;
    v19 = v41;
    v21 = v42;
    v23 = v36;
  }

  return v25;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(LNTranscriptActionRecord *)self bundleIdentifier];
  [v12 encodeObject:v4 forKey:@"bundleIdentifier"];

  [v12 encodeInteger:-[LNTranscriptActionRecord source](self forKey:{"source"), @"source"}];
  v5 = [(LNTranscriptActionRecord *)self clientLabel];
  [v12 encodeObject:v5 forKey:@"clientLabel"];

  v6 = [(LNTranscriptActionRecord *)self executionUUID];
  [v12 encodeObject:v6 forKey:@"executionUUID"];

  v7 = [(LNTranscriptActionRecord *)self executionDate];
  [v12 encodeObject:v7 forKey:@"executionDate"];

  v8 = [(LNTranscriptActionRecord *)self actionData];
  [v12 encodeObject:v8 forKey:@"actionData"];

  v9 = [(LNTranscriptActionRecord *)self resolvedActionData];
  [v12 encodeObject:v9 forKey:@"resolvedActionData"];

  v10 = [(LNTranscriptActionRecord *)self actionOutputData];
  [v12 encodeObject:v10 forKey:@"actionOutputData"];

  v11 = [(LNTranscriptActionRecord *)self predictionsData];
  [v12 encodeObject:v11 forKey:@"predictionsData"];

  [v12 encodeBool:-[LNTranscriptActionRecord hasNextAction](self forKey:{"hasNextAction"), @"hasNextAction"}];
}

- (LNActionOutput)actionOutput
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_actionOutput)
  {
    v3 = [(LNTranscriptActionRecord *)self actionOutputData];

    if (v3)
    {
      v4 = MEMORY[0x1E696ACD0];
      v5 = objc_opt_class();
      v6 = [(LNTranscriptActionRecord *)self actionOutputData];
      v16 = 0;
      v7 = [v4 unarchivedObjectOfClass:v5 fromData:v6 error:&v16];
      v8 = v16;

      if (v8 || !v7)
      {
        v9 = getLNLogCategoryGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          v11 = [(LNTranscriptActionRecord *)self actionOutputData];
          *buf = 138412802;
          v18 = v10;
          v19 = 2112;
          v20 = v11;
          v21 = 2112;
          v22 = v8;
          _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "Object archival failed for %@ with %@: %@", buf, 0x20u);
        }
      }

      actionOutput = self->_actionOutput;
      self->_actionOutput = v7;
    }
  }

  v13 = self->_actionOutput;
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (LNTranscriptActionRecord)initWithBundleIdentifier:(id)a3 source:(unsigned __int16)a4 clientLabel:(id)a5 executionUUID:(id)a6 executionDate:(id)a7 actionData:(id)a8 resolvedActionData:(id)a9 actionOutputData:(id)a10 predictionsData:(id)a11 hasNextAction:(BOOL)a12
{
  v18 = a3;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  if (v22)
  {
    if (v23)
    {
      goto LABEL_3;
    }

LABEL_8:
    v46 = [MEMORY[0x1E696AAA8] currentHandler];
    [v46 handleFailureInMethod:a2 object:self file:@"LNTranscriptActionRecord.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"resolvedActionData"}];

    if (v25)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  v45 = [MEMORY[0x1E696AAA8] currentHandler];
  [v45 handleFailureInMethod:a2 object:self file:@"LNTranscriptActionRecord.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"actionData"}];

  if (!v23)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (v25)
  {
    goto LABEL_4;
  }

LABEL_9:
  v47 = [MEMORY[0x1E696AAA8] currentHandler];
  [v47 handleFailureInMethod:a2 object:self file:@"LNTranscriptActionRecord.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"predictionsData"}];

LABEL_4:
  v49.receiver = self;
  v49.super_class = LNTranscriptActionRecord;
  v26 = [(LNTranscriptActionRecord *)&v49 init];
  if (v26)
  {
    v27 = [v18 copy];
    bundleIdentifier = v26->_bundleIdentifier;
    v26->_bundleIdentifier = v27;

    v26->_source = a4;
    v29 = [v19 copy];
    clientLabel = v26->_clientLabel;
    v26->_clientLabel = v29;

    v31 = [v20 copy];
    executionUUID = v26->_executionUUID;
    v26->_executionUUID = v31;

    v33 = [v21 copy];
    executionDate = v26->_executionDate;
    v26->_executionDate = v33;

    v35 = [v22 copy];
    actionData = v26->_actionData;
    v26->_actionData = v35;

    v37 = [v23 copy];
    resolvedActionData = v26->_resolvedActionData;
    v26->_resolvedActionData = v37;

    v39 = [v24 copy];
    actionOutputData = v26->_actionOutputData;
    v26->_actionOutputData = v39;

    v41 = [v25 copy];
    predictionsData = v26->_predictionsData;
    v26->_predictionsData = v41;

    v26->_hasNextAction = a12;
    v43 = v26;
  }

  return v26;
}

- (LNTranscriptActionRecord)initWithBundleIdentifier:(id)a3 source:(unsigned __int16)a4 clientLabel:(id)a5 executionUUID:(id)a6 executionDate:(id)a7 action:(id)a8 resolvedAction:(id)a9 actionOutput:(id)a10 predictions:(id)a11
{
  v43 = a4;
  v53 = *MEMORY[0x1E69E9840];
  v15 = a8;
  v16 = a9;
  v17 = a10;
  v18 = a11;
  v19 = MEMORY[0x1E696ACC8];
  v48 = 0;
  v40 = a7;
  v39 = a6;
  v38 = a5;
  v20 = a3;
  v44 = v15;
  v21 = [v19 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:&v48];
  v22 = v48;
  if (v22 || !v21)
  {
    v23 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = v15;
      v51 = 2112;
      v52 = v22;
      _os_log_impl(&dword_19763D000, v23, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v47 = 0;
  v24 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:&v47];
  v25 = v47;
  v26 = v18;
  if (v25 || !v24)
  {
    v27 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = v16;
      v51 = 2112;
      v52 = v25;
      _os_log_impl(&dword_19763D000, v27, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v46 = 0;
  v28 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v46];
  v29 = v46;
  if (v29 || !v28)
  {
    v30 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = v17;
      v51 = 2112;
      v52 = v29;
      _os_log_impl(&dword_19763D000, v30, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v45 = 0;
  v31 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:&v45];
  v32 = v45;
  if (v32 || !v31)
  {
    v33 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = v26;
      v51 = 2112;
      v52 = v32;
      _os_log_impl(&dword_19763D000, v33, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v34 = [v17 nextAction];
  LOBYTE(v37) = v34 != 0;
  v42 = [(LNTranscriptActionRecord *)self initWithBundleIdentifier:v20 source:v43 clientLabel:v38 executionUUID:v39 executionDate:v40 actionData:v21 resolvedActionData:v24 actionOutputData:v28 predictionsData:v31 hasNextAction:v37];

  v35 = *MEMORY[0x1E69E9840];
  return v42;
}

+ (id)eventWithData:(id)a3 dataVersion:(unsigned int)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v4 error:&v12];
  v6 = v12;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8)
  {
    v9 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v7;
      _os_log_impl(&dword_19763D000, v9, OS_LOG_TYPE_ERROR, "Failed to unarchive LNTranscriptActionRecord: %{public}@", buf, 0xCu);
    }

    v5 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (LNTranscriptActionRecord)initWithAction:(id)a3 resolvedAction:(id)a4 bundleIdentifier:(id)a5 actionOutput:(id)a6 executionUUID:(id)a7 source:(unsigned __int16)a8 executionDate:(id)a9 clientLabel:(id)a10 predictions:(id)a11
{
  v28 = a8;
  v29 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  if (!v17)
  {
    v23 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v23, OS_LOG_TYPE_ERROR, "Bundle identifier not provided for action transcript record.", buf, 2u);
    }

    v17 = @"com.apple.example";
  }

  v24 = v19;
  if (v19)
  {
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_11:
    v27 = [MEMORY[0x1E695DF00] now];
    v25 = [(LNTranscriptActionRecord *)self initWithBundleIdentifier:v17 source:v28 clientLabel:v21 executionUUID:v24 executionDate:v27 action:v29 resolvedAction:v16 actionOutput:v18 predictions:v22];

    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v24 = [MEMORY[0x1E696AFB0] UUID];
  if (!v20)
  {
    goto LABEL_11;
  }

LABEL_7:
  v25 = [(LNTranscriptActionRecord *)self initWithBundleIdentifier:v17 source:v28 clientLabel:v21 executionUUID:v24 executionDate:v20 action:v29 resolvedAction:v16 actionOutput:v18 predictions:v22];
  if (!v19)
  {
LABEL_8:
  }

LABEL_9:

  return v25;
}

@end
@interface LNTranscriptActionRecord
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (BOOL)isEqual:(id)equal;
- (LNAction)action;
- (LNAction)resolvedAction;
- (LNActionOutput)actionOutput;
- (LNTranscriptActionRecord)initWithAction:(id)action resolvedAction:(id)resolvedAction bundleIdentifier:(id)identifier actionOutput:(id)output executionUUID:(id)d source:(unsigned __int16)source executionDate:(id)date clientLabel:(id)self0 predictions:(id)self1;
- (LNTranscriptActionRecord)initWithBundleIdentifier:(id)identifier source:(unsigned __int16)source clientLabel:(id)label executionUUID:(id)d executionDate:(id)date action:(id)action resolvedAction:(id)resolvedAction actionOutput:(id)self0 predictions:(id)self1;
- (LNTranscriptActionRecord)initWithBundleIdentifier:(id)identifier source:(unsigned __int16)source clientLabel:(id)label executionUUID:(id)d executionDate:(id)date actionData:(id)data resolvedActionData:(id)actionData actionOutputData:(id)self0 predictionsData:(id)self1 hasNextAction:(BOOL)self2;
- (LNTranscriptActionRecord)initWithCoder:(id)coder;
- (NSArray)predictions;
- (NSString)description;
- (id)serialize;
- (id)verboseDescription;
- (unint64_t)hash;
- (void)asBMAppIntentInvocationWithCompletionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
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
    predictionsData = [(LNTranscriptActionRecord *)self predictionsData];
    v17 = 0;
    v10 = [v8 unarchivedObjectOfClasses:v7 fromData:predictionsData error:&v17];
    v11 = v17;

    if (v11 || !v10)
    {
      v12 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        predictionsData2 = [(LNTranscriptActionRecord *)self predictionsData];
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

- (LNAction)action
{
  v22 = *MEMORY[0x1E69E9840];
  action = self->_action;
  if (!action)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    actionData = [(LNTranscriptActionRecord *)self actionData];
    v15 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:actionData error:&v15];
    v8 = v15;

    if (v8 || !v7)
    {
      v9 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        actionData2 = [(LNTranscriptActionRecord *)self actionData];
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

- (LNAction)resolvedAction
{
  v22 = *MEMORY[0x1E69E9840];
  resolvedAction = self->_resolvedAction;
  if (!resolvedAction)
  {
    v4 = MEMORY[0x1E696ACD0];
    v5 = objc_opt_class();
    resolvedActionData = [(LNTranscriptActionRecord *)self resolvedActionData];
    v15 = 0;
    v7 = [v4 unarchivedObjectOfClass:v5 fromData:resolvedActionData error:&v15];
    v8 = v15;

    if (v8 || !v7)
    {
      v9 = getLNLogCategoryGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = objc_opt_class();
        resolvedActionData2 = [(LNTranscriptActionRecord *)self resolvedActionData];
        *buf = 138412802;
        v17 = v10;
        v18 = 2112;
        v19 = resolvedActionData2;
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

- (void)asBMAppIntentInvocationWithCompletionHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;
  selfCopy = self;

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
LABEL_71:

      goto LABEL_72;
    }

    bundleIdentifier = [(LNTranscriptActionRecord *)self bundleIdentifier];
    bundleIdentifier2 = [(LNTranscriptActionRecord *)v6 bundleIdentifier];
    v9 = bundleIdentifier;
    v10 = bundleIdentifier2;
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

    source = [(LNTranscriptActionRecord *)self source];
    if (source != [(LNTranscriptActionRecord *)v6 source])
    {
LABEL_18:
      LOBYTE(v12) = 0;
LABEL_70:

      goto LABEL_71;
    }

    clientLabel = [(LNTranscriptActionRecord *)self clientLabel];
    clientLabel2 = [(LNTranscriptActionRecord *)v6 clientLabel];
    v14 = clientLabel;
    v19 = clientLabel2;
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

    executionUUID = [(LNTranscriptActionRecord *)self executionUUID];
    executionUUID2 = [(LNTranscriptActionRecord *)v6 executionUUID];
    v21 = executionUUID;
    v25 = executionUUID2;
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
    executionDate = [(LNTranscriptActionRecord *)self executionDate];
    executionDate2 = [(LNTranscriptActionRecord *)v6 executionDate];
    v29 = executionDate;
    v30 = executionDate2;
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

    actionData = [(LNTranscriptActionRecord *)self actionData];
    actionData2 = [(LNTranscriptActionRecord *)v6 actionData];
    v29 = actionData;
    v35 = actionData2;
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
          resolvedActionData = [(LNTranscriptActionRecord *)self resolvedActionData];
          resolvedActionData2 = [(LNTranscriptActionRecord *)v6 resolvedActionData];
          v40 = resolvedActionData;
          v41 = resolvedActionData2;
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

          actionOutputData = [(LNTranscriptActionRecord *)self actionOutputData];
          actionOutputData2 = [(LNTranscriptActionRecord *)v6 actionOutputData];
          v40 = actionOutputData;
          v46 = actionOutputData2;
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

          predictionsData = [(LNTranscriptActionRecord *)self predictionsData];
          predictionsData2 = [(LNTranscriptActionRecord *)v6 predictionsData];
          v51 = predictionsData;
          v52 = predictionsData2;
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
  bundleIdentifier = [(LNTranscriptActionRecord *)self bundleIdentifier];
  v4 = [bundleIdentifier hash];
  source = [(LNTranscriptActionRecord *)self source];
  clientLabel = [(LNTranscriptActionRecord *)self clientLabel];
  v7 = v4 ^ [clientLabel hash] ^ source;
  executionUUID = [(LNTranscriptActionRecord *)self executionUUID];
  v9 = [executionUUID hash];
  executionDate = [(LNTranscriptActionRecord *)self executionDate];
  v11 = v9 ^ [executionDate hash];
  actionData = [(LNTranscriptActionRecord *)self actionData];
  v13 = v7 ^ v11 ^ [actionData hash];
  resolvedActionData = [(LNTranscriptActionRecord *)self resolvedActionData];
  v15 = [resolvedActionData hash];
  actionOutputData = [(LNTranscriptActionRecord *)self actionOutputData];
  v17 = v15 ^ [actionOutputData hash];
  predictionsData = [(LNTranscriptActionRecord *)self predictionsData];
  v19 = v17 ^ [predictionsData hash];

  return v13 ^ v19;
}

- (id)verboseDescription
{
  v17 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v18 = NSStringFromClass(v3);
  bundleIdentifier = [(LNTranscriptActionRecord *)self bundleIdentifier];
  source = [(LNTranscriptActionRecord *)self source];
  if (source > 0xA)
  {
    v6 = @"app";
  }

  else
  {
    v6 = off_1E74B0848[source];
  }

  v16 = v6;
  clientLabel = [(LNTranscriptActionRecord *)self clientLabel];
  executionUUID = [(LNTranscriptActionRecord *)self executionUUID];
  executionDate = [(LNTranscriptActionRecord *)self executionDate];
  action = [(LNTranscriptActionRecord *)self action];
  resolvedAction = [(LNTranscriptActionRecord *)self resolvedAction];
  actionOutput = [(LNTranscriptActionRecord *)self actionOutput];
  predictions = [(LNTranscriptActionRecord *)self predictions];
  v14 = [v17 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, source: %@, clientLabel: %@, executionUUID: %@, executionDate: %@, action: %@, resolvedAction: %@, actionOutput: %@, predictions %@>", v18, self, bundleIdentifier, v16, clientLabel, executionUUID, executionDate, action, resolvedAction, actionOutput, predictions];

  return v14;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  bundleIdentifier = [(LNTranscriptActionRecord *)self bundleIdentifier];
  executionUUID = [(LNTranscriptActionRecord *)self executionUUID];
  executionDate = [(LNTranscriptActionRecord *)self executionDate];
  v9 = [v3 stringWithFormat:@"<%@: %p, bundleIdentifier: %@, executionUUID: %@, executionDate: %@>", v5, self, bundleIdentifier, executionUUID, executionDate];

  return v9;
}

- (LNTranscriptActionRecord)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
  v6 = [coderCopy decodeIntegerForKey:@"source"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientLabel"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"executionUUID"];
  v9 = v8;
  if (v8)
  {
    uUID = v8;
  }

  else
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
  }

  v42 = uUID;

  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"executionDate"];
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

  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionData"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolvedActionData"];
  v41 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionOutputData"];
  v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predictionsData"];
  v18 = v17;
  if (v15 && v16)
  {
    LOBYTE(v34) = [coderCopy decodeBoolForKey:@"hasNextAction"];
    v19 = v41;
    selfCopy = self;
    v21 = v42;
    v22 = [(LNTranscriptActionRecord *)selfCopy initWithBundleIdentifier:v5 source:v6 clientLabel:v7 executionUUID:v42 executionDate:v14 actionData:v15 resolvedActionData:v16 actionOutputData:v41 predictionsData:v18 hasNextAction:v34];
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
    selfCopy2 = self;
    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"action"];
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"resolvedAction"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionOutput"];
    v29 = MEMORY[0x1E695DFD8];
    v30 = objc_opt_class();
    v31 = [v29 setWithObjects:{v30, objc_opt_class(), 0}];
    v32 = [coderCopy decodeObjectOfClasses:v31 forKey:@"predictions"];

    v25 = 0;
    if (v26 && v27)
    {
      v25 = [(LNTranscriptActionRecord *)selfCopy2 initWithBundleIdentifier:v39 source:v35 clientLabel:v38 executionUUID:v42 executionDate:v37 action:v26 resolvedAction:v27 actionOutput:v28 predictions:v32];
      selfCopy2 = v25;
    }

    v5 = v39;
    v24 = selfCopy2;
    v14 = v37;
    v7 = v38;
    v19 = v41;
    v21 = v42;
    v23 = v36;
  }

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  bundleIdentifier = [(LNTranscriptActionRecord *)self bundleIdentifier];
  [coderCopy encodeObject:bundleIdentifier forKey:@"bundleIdentifier"];

  [coderCopy encodeInteger:-[LNTranscriptActionRecord source](self forKey:{"source"), @"source"}];
  clientLabel = [(LNTranscriptActionRecord *)self clientLabel];
  [coderCopy encodeObject:clientLabel forKey:@"clientLabel"];

  executionUUID = [(LNTranscriptActionRecord *)self executionUUID];
  [coderCopy encodeObject:executionUUID forKey:@"executionUUID"];

  executionDate = [(LNTranscriptActionRecord *)self executionDate];
  [coderCopy encodeObject:executionDate forKey:@"executionDate"];

  actionData = [(LNTranscriptActionRecord *)self actionData];
  [coderCopy encodeObject:actionData forKey:@"actionData"];

  resolvedActionData = [(LNTranscriptActionRecord *)self resolvedActionData];
  [coderCopy encodeObject:resolvedActionData forKey:@"resolvedActionData"];

  actionOutputData = [(LNTranscriptActionRecord *)self actionOutputData];
  [coderCopy encodeObject:actionOutputData forKey:@"actionOutputData"];

  predictionsData = [(LNTranscriptActionRecord *)self predictionsData];
  [coderCopy encodeObject:predictionsData forKey:@"predictionsData"];

  [coderCopy encodeBool:-[LNTranscriptActionRecord hasNextAction](self forKey:{"hasNextAction"), @"hasNextAction"}];
}

- (LNActionOutput)actionOutput
{
  v23 = *MEMORY[0x1E69E9840];
  if (!self->_actionOutput)
  {
    actionOutputData = [(LNTranscriptActionRecord *)self actionOutputData];

    if (actionOutputData)
    {
      v4 = MEMORY[0x1E696ACD0];
      v5 = objc_opt_class();
      actionOutputData2 = [(LNTranscriptActionRecord *)self actionOutputData];
      v16 = 0;
      v7 = [v4 unarchivedObjectOfClass:v5 fromData:actionOutputData2 error:&v16];
      v8 = v16;

      if (v8 || !v7)
      {
        v9 = getLNLogCategoryGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          actionOutputData3 = [(LNTranscriptActionRecord *)self actionOutputData];
          *buf = 138412802;
          v18 = v10;
          v19 = 2112;
          v20 = actionOutputData3;
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

- (LNTranscriptActionRecord)initWithBundleIdentifier:(id)identifier source:(unsigned __int16)source clientLabel:(id)label executionUUID:(id)d executionDate:(id)date actionData:(id)data resolvedActionData:(id)actionData actionOutputData:(id)self0 predictionsData:(id)self1 hasNextAction:(BOOL)self2
{
  identifierCopy = identifier;
  labelCopy = label;
  dCopy = d;
  dateCopy = date;
  dataCopy = data;
  actionDataCopy = actionData;
  outputDataCopy = outputData;
  predictionsDataCopy = predictionsData;
  if (dataCopy)
  {
    if (actionDataCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"LNTranscriptActionRecord.m" lineNumber:96 description:{@"Invalid parameter not satisfying: %@", @"resolvedActionData"}];

    if (predictionsDataCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"LNTranscriptActionRecord.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"actionData"}];

  if (!actionDataCopy)
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
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"LNTranscriptActionRecord.m" lineNumber:97 description:{@"Invalid parameter not satisfying: %@", @"predictionsData"}];

LABEL_4:
  v49.receiver = self;
  v49.super_class = LNTranscriptActionRecord;
  v26 = [(LNTranscriptActionRecord *)&v49 init];
  if (v26)
  {
    v27 = [identifierCopy copy];
    bundleIdentifier = v26->_bundleIdentifier;
    v26->_bundleIdentifier = v27;

    v26->_source = source;
    v29 = [labelCopy copy];
    clientLabel = v26->_clientLabel;
    v26->_clientLabel = v29;

    v31 = [dCopy copy];
    executionUUID = v26->_executionUUID;
    v26->_executionUUID = v31;

    v33 = [dateCopy copy];
    executionDate = v26->_executionDate;
    v26->_executionDate = v33;

    v35 = [dataCopy copy];
    actionData = v26->_actionData;
    v26->_actionData = v35;

    v37 = [actionDataCopy copy];
    resolvedActionData = v26->_resolvedActionData;
    v26->_resolvedActionData = v37;

    v39 = [outputDataCopy copy];
    actionOutputData = v26->_actionOutputData;
    v26->_actionOutputData = v39;

    v41 = [predictionsDataCopy copy];
    predictionsData = v26->_predictionsData;
    v26->_predictionsData = v41;

    v26->_hasNextAction = action;
    v43 = v26;
  }

  return v26;
}

- (LNTranscriptActionRecord)initWithBundleIdentifier:(id)identifier source:(unsigned __int16)source clientLabel:(id)label executionUUID:(id)d executionDate:(id)date action:(id)action resolvedAction:(id)resolvedAction actionOutput:(id)self0 predictions:(id)self1
{
  sourceCopy = source;
  v53 = *MEMORY[0x1E69E9840];
  actionCopy = action;
  resolvedActionCopy = resolvedAction;
  outputCopy = output;
  predictionsCopy = predictions;
  v19 = MEMORY[0x1E696ACC8];
  v48 = 0;
  dateCopy = date;
  dCopy = d;
  labelCopy = label;
  identifierCopy = identifier;
  v44 = actionCopy;
  v21 = [v19 archivedDataWithRootObject:actionCopy requiringSecureCoding:1 error:&v48];
  v22 = v48;
  if (v22 || !v21)
  {
    v23 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = actionCopy;
      v51 = 2112;
      v52 = v22;
      _os_log_impl(&dword_19763D000, v23, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v47 = 0;
  v24 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:resolvedActionCopy requiringSecureCoding:1 error:&v47];
  v25 = v47;
  v26 = predictionsCopy;
  if (v25 || !v24)
  {
    v27 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = resolvedActionCopy;
      v51 = 2112;
      v52 = v25;
      _os_log_impl(&dword_19763D000, v27, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v46 = 0;
  v28 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:outputCopy requiringSecureCoding:1 error:&v46];
  v29 = v46;
  if (v29 || !v28)
  {
    v30 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v50 = outputCopy;
      v51 = 2112;
      v52 = v29;
      _os_log_impl(&dword_19763D000, v30, OS_LOG_TYPE_ERROR, "Object archival failed for %@: %@", buf, 0x16u);
    }
  }

  v45 = 0;
  v31 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:predictionsCopy requiringSecureCoding:1 error:&v45];
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

  nextAction = [outputCopy nextAction];
  LOBYTE(v37) = nextAction != 0;
  v42 = [(LNTranscriptActionRecord *)self initWithBundleIdentifier:identifierCopy source:sourceCopy clientLabel:labelCopy executionUUID:dCopy executionDate:dateCopy actionData:v21 resolvedActionData:v24 actionOutputData:v28 predictionsData:v31 hasNextAction:v37];

  v35 = *MEMORY[0x1E69E9840];
  return v42;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  v15 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v12 = 0;
  v5 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:dataCopy error:&v12];
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

- (LNTranscriptActionRecord)initWithAction:(id)action resolvedAction:(id)resolvedAction bundleIdentifier:(id)identifier actionOutput:(id)output executionUUID:(id)d source:(unsigned __int16)source executionDate:(id)date clientLabel:(id)self0 predictions:(id)self1
{
  sourceCopy = source;
  actionCopy = action;
  resolvedActionCopy = resolvedAction;
  identifierCopy = identifier;
  outputCopy = output;
  dCopy = d;
  dateCopy = date;
  labelCopy = label;
  predictionsCopy = predictions;
  if (!identifierCopy)
  {
    v23 = getLNLogCategoryGeneral();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19763D000, v23, OS_LOG_TYPE_ERROR, "Bundle identifier not provided for action transcript record.", buf, 2u);
    }

    identifierCopy = @"com.apple.example";
  }

  uUID = dCopy;
  if (dCopy)
  {
    if (dateCopy)
    {
      goto LABEL_7;
    }

LABEL_11:
    v27 = [MEMORY[0x1E695DF00] now];
    v25 = [(LNTranscriptActionRecord *)self initWithBundleIdentifier:identifierCopy source:sourceCopy clientLabel:labelCopy executionUUID:uUID executionDate:v27 action:actionCopy resolvedAction:resolvedActionCopy actionOutput:outputCopy predictions:predictionsCopy];

    if (dCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  uUID = [MEMORY[0x1E696AFB0] UUID];
  if (!dateCopy)
  {
    goto LABEL_11;
  }

LABEL_7:
  v25 = [(LNTranscriptActionRecord *)self initWithBundleIdentifier:identifierCopy source:sourceCopy clientLabel:labelCopy executionUUID:uUID executionDate:dateCopy action:actionCopy resolvedAction:resolvedActionCopy actionOutput:outputCopy predictions:predictionsCopy];
  if (!dCopy)
  {
LABEL_8:
  }

LABEL_9:

  return v25;
}

@end
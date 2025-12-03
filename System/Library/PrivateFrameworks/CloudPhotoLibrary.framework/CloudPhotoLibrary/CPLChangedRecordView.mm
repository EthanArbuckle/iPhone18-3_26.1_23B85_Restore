@interface CPLChangedRecordView
- (CPLChangedRecordView)initWithChange:(id)change overRecordView:(id)view;
- (Class)recordClass;
- (id)changeForType:(unint64_t)type;
- (id)description;
- (id)placeholderRecord;
- (id)recordChangeData;
- (id)redactedDescription;
- (id)sharingRecordChangeData;
- (id)synthesizedRecord;
@end

@implementation CPLChangedRecordView

- (Class)recordClass
{
  change = [(CPLChangedRecordView *)self change];
  v3 = objc_opt_class();

  return v3;
}

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  redactedDescription = [(CPLRecordView *)self->_baseRecordView redactedDescription];
  redactedDescription2 = [(CPLRecordChange *)self->_change redactedDescription];
  v6 = [v3 initWithFormat:@"%@+[%@]", redactedDescription, redactedDescription2];

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  baseRecordView = self->_baseRecordView;
  v5 = [v3 initWithFormat:@"%@+[%@]", baseRecordView, self->_change];

  return v5;
}

- (id)sharingRecordChangeData
{
  sharingRecordChangeData = [(CPLRecordChange *)self->_change sharingRecordChangeData];
  v4 = sharingRecordChangeData;
  if (sharingRecordChangeData)
  {
    sharingRecordChangeData2 = sharingRecordChangeData;
  }

  else
  {
    sharingRecordChangeData2 = [(CPLRecordView *)self->_baseRecordView sharingRecordChangeData];
  }

  v6 = sharingRecordChangeData2;

  return v6;
}

- (id)recordChangeData
{
  recordChangeData = [(CPLRecordChange *)self->_change recordChangeData];
  v4 = recordChangeData;
  if (recordChangeData)
  {
    recordChangeData2 = recordChangeData;
  }

  else
  {
    recordChangeData2 = [(CPLRecordView *)self->_baseRecordView recordChangeData];
  }

  v6 = recordChangeData2;

  return v6;
}

- (id)changeForType:(unint64_t)type
{
  if (!type)
  {
    synthesizedRecord = [(CPLChangedRecordView *)self synthesizedRecord];
    goto LABEL_9;
  }

  isFullRecord = [(CPLRecordChange *)self->_change isFullRecord];
  change = self->_change;
  if (isFullRecord)
  {
    synthesizedRecord = change;
LABEL_9:
    v9 = synthesizedRecord;
    goto LABEL_10;
  }

  v8 = [(CPLRecordChange *)change changeType]& type;
  if (!v8)
  {
    synthesizedRecord = [(CPLRecordView *)self->_baseRecordView changeForType:type];
    goto LABEL_9;
  }

  if (v8 == type)
  {
    synthesizedRecord = self->_change;
    goto LABEL_9;
  }

  type = [(CPLRecordView *)self->_baseRecordView changeForType:v8 ^ type];
  v9 = [type copy];

  [(CPLRecordChange *)v9 applyChangeType:v8 fromChange:self->_change];
LABEL_10:

  return v9;
}

- (id)placeholderRecord
{
  if ([(CPLRecordChange *)self->_change hasChangeType:2])
  {
    placeholderRecord = [[CPLPlaceholderRecord alloc] initWithRecord:self->_change];
  }

  else
  {
    placeholderRecord = [(CPLRecordView *)self->_baseRecordView placeholderRecord];
  }

  return placeholderRecord;
}

- (id)synthesizedRecord
{
  v18 = *MEMORY[0x1E69E9840];
  isFullRecord = [(CPLRecordChange *)self->_change isFullRecord];
  change = self->_change;
  if (isFullRecord)
  {
    v6 = change;
  }

  else
  {
    changeType = [(CPLRecordChange *)change changeType];
    fullChangeTypeForFullRecord = [(CPLRecordChange *)self->_change fullChangeTypeForFullRecord];
    if ((fullChangeTypeForFullRecord & ~changeType) != 0)
    {
      v9 = fullChangeTypeForFullRecord;
      synthesizedRecord = [(CPLRecordView *)self->_baseRecordView synthesizedRecord];
      if (([synthesizedRecord isFullRecord] & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v17 = synthesizedRecord;
            _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "%@ should be a full record", buf, 0xCu);
          }
        }

        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangedRecordStorageView.m"];
        [currentHandler handleFailureInMethod:a2 object:self file:v15 lineNumber:63 description:{@"%@ should be a full record", synthesizedRecord}];

        abort();
      }

      v6 = [synthesizedRecord copyChangeType:v9 & ~changeType];
      [(CPLRecordChange *)v6 applyChange:self->_change];
      [(CPLRecordChange *)v6 setChangeType:0];
    }

    else
    {
      v6 = [(CPLRecordChange *)self->_change copy];
      [(CPLRecordChange *)v6 setChangeType:0];
    }
  }

  v11 = *MEMORY[0x1E69E9840];

  return v6;
}

- (CPLChangedRecordView)initWithChange:(id)change overRecordView:(id)view
{
  v23 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  viewCopy = view;
  if ([changeCopy isDelete])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = objc_opt_class();
        v21 = 2112;
        v22 = changeCopy;
        v15 = v20;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Should not create a %@ with %@", buf, 0x16u);
      }
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangedRecordStorageView.m"];
    [currentHandler handleFailureInMethod:a2 object:self file:v17 lineNumber:37 description:{@"Should not create a %@ with %@", objc_opt_class(), changeCopy}];

    abort();
  }

  v18.receiver = self;
  v18.super_class = CPLChangedRecordView;
  v10 = [(CPLChangedRecordView *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_baseRecordView, view);
    objc_storeStrong(&v11->_change, change);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end
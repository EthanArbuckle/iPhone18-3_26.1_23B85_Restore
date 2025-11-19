@interface CPLChangedRecordView
- (CPLChangedRecordView)initWithChange:(id)a3 overRecordView:(id)a4;
- (Class)recordClass;
- (id)changeForType:(unint64_t)a3;
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
  v2 = [(CPLChangedRecordView *)self change];
  v3 = objc_opt_class();

  return v3;
}

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(CPLRecordView *)self->_baseRecordView redactedDescription];
  v5 = [(CPLRecordChange *)self->_change redactedDescription];
  v6 = [v3 initWithFormat:@"%@+[%@]", v4, v5];

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
  v3 = [(CPLRecordChange *)self->_change sharingRecordChangeData];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CPLRecordView *)self->_baseRecordView sharingRecordChangeData];
  }

  v6 = v5;

  return v6;
}

- (id)recordChangeData
{
  v3 = [(CPLRecordChange *)self->_change recordChangeData];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(CPLRecordView *)self->_baseRecordView recordChangeData];
  }

  v6 = v5;

  return v6;
}

- (id)changeForType:(unint64_t)a3
{
  if (!a3)
  {
    v7 = [(CPLChangedRecordView *)self synthesizedRecord];
    goto LABEL_9;
  }

  v5 = [(CPLRecordChange *)self->_change isFullRecord];
  change = self->_change;
  if (v5)
  {
    v7 = change;
LABEL_9:
    v9 = v7;
    goto LABEL_10;
  }

  v8 = [(CPLRecordChange *)change changeType]& a3;
  if (!v8)
  {
    v7 = [(CPLRecordView *)self->_baseRecordView changeForType:a3];
    goto LABEL_9;
  }

  if (v8 == a3)
  {
    v7 = self->_change;
    goto LABEL_9;
  }

  v11 = [(CPLRecordView *)self->_baseRecordView changeForType:v8 ^ a3];
  v9 = [v11 copy];

  [(CPLRecordChange *)v9 applyChangeType:v8 fromChange:self->_change];
LABEL_10:

  return v9;
}

- (id)placeholderRecord
{
  if ([(CPLRecordChange *)self->_change hasChangeType:2])
  {
    v3 = [[CPLPlaceholderRecord alloc] initWithRecord:self->_change];
  }

  else
  {
    v3 = [(CPLRecordView *)self->_baseRecordView placeholderRecord];
  }

  return v3;
}

- (id)synthesizedRecord
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = [(CPLRecordChange *)self->_change isFullRecord];
  change = self->_change;
  if (v4)
  {
    v6 = change;
  }

  else
  {
    v7 = [(CPLRecordChange *)change changeType];
    v8 = [(CPLRecordChange *)self->_change fullChangeTypeForFullRecord];
    if ((v8 & ~v7) != 0)
    {
      v9 = v8;
      v10 = [(CPLRecordView *)self->_baseRecordView synthesizedRecord];
      if (([v10 isFullRecord] & 1) == 0)
      {
        if ((_CPLSilentLogging & 1) == 0)
        {
          v13 = __CPLGenericOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v17 = v10;
            _os_log_impl(&dword_1DC05A000, v13, OS_LOG_TYPE_ERROR, "%@ should be a full record", buf, 0xCu);
          }
        }

        v14 = [MEMORY[0x1E696AAA8] currentHandler];
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangedRecordStorageView.m"];
        [v14 handleFailureInMethod:a2 object:self file:v15 lineNumber:63 description:{@"%@ should be a full record", v10}];

        abort();
      }

      v6 = [v10 copyChangeType:v9 & ~v7];
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

- (CPLChangedRecordView)initWithChange:(id)a3 overRecordView:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if ([v8 isDelete])
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v14 = __CPLGenericOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = objc_opt_class();
        v21 = 2112;
        v22 = v8;
        v15 = v20;
        _os_log_impl(&dword_1DC05A000, v14, OS_LOG_TYPE_ERROR, "Should not create a %@ with %@", buf, 0x16u);
      }
    }

    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangedRecordStorageView.m"];
    [v16 handleFailureInMethod:a2 object:self file:v17 lineNumber:37 description:{@"Should not create a %@ with %@", objc_opt_class(), v8}];

    abort();
  }

  v18.receiver = self;
  v18.super_class = CPLChangedRecordView;
  v10 = [(CPLChangedRecordView *)&v18 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_baseRecordView, a4);
    objc_storeStrong(&v11->_change, a3);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end
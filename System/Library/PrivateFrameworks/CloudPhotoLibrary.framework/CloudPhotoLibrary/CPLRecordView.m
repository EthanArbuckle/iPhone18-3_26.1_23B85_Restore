@interface CPLRecordView
- (BOOL)supportsResources;
- (CPLPlaceholderRecord)placeholderRecord;
- (CPLRecordChange)synthesizedRecord;
- (CPLScopedIdentifier)scopedIdentifier;
- (Class)recordClass;
- (NSData)recordChangeData;
- (NSData)sharingRecordChangeData;
- (id)description;
- (id)realRecordChangeFromRecordChange:(id)a3 direction:(unint64_t)a4 newRecord:(id *)a5 changeType:(unint64_t)a6 diffTracker:(id)a7;
- (id)realRecordChangeFromRecordChange:(id)a3 direction:(unint64_t)a4 newRecord:(id *)a5 diffTracker:(id)a6;
- (id)redactedDescription;
- (id)relatedScopedIdentifier;
- (id)relation;
- (id)secondaryScopedIdentifier;
@end

@implementation CPLRecordView

- (BOOL)supportsResources
{
  v2 = [(CPLRecordView *)self recordClass];

  return [(objc_class *)v2 supportsResources];
}

- (id)relation
{
  v2 = [(CPLRecordView *)self changeForType:2];
  v3 = [v2 relation];

  return v3;
}

- (Class)recordClass
{
  v2 = [(CPLRecordView *)self synthesizedRecord];
  v3 = objc_opt_class();

  return v3;
}

- (id)secondaryScopedIdentifier
{
  v2 = [(CPLRecordView *)self changeForType:2];
  v3 = [v2 secondaryScopedIdentifier];

  return v3;
}

- (id)relatedScopedIdentifier
{
  v2 = [(CPLRecordView *)self changeForType:2];
  v3 = [v2 relatedScopedIdentifier];

  return v3;
}

- (NSData)sharingRecordChangeData
{
  v2 = [(CPLRecordView *)self synthesizedRecord];
  v3 = [v2 sharingRecordChangeData];

  return v3;
}

- (NSData)recordChangeData
{
  v2 = [(CPLRecordView *)self synthesizedRecord];
  v3 = [v2 recordChangeData];

  return v3;
}

- (id)realRecordChangeFromRecordChange:(id)a3 direction:(unint64_t)a4 newRecord:(id *)a5 diffTracker:(id)a6
{
  v10 = a6;
  v11 = a3;
  v12 = [v11 changeType];
  if (v12)
  {
    v13 = v12 | 0x100;
  }

  else
  {
    v13 = 378;
  }

  v14 = [(CPLRecordView *)self realRecordChangeFromRecordChange:v11 direction:a4 newRecord:a5 changeType:v13 diffTracker:v10];

  return v14;
}

- (id)realRecordChangeFromRecordChange:(id)a3 direction:(unint64_t)a4 newRecord:(id *)a5 changeType:(unint64_t)a6 diffTracker:(id)a7
{
  v12 = a7;
  v13 = a3;
  v14 = [(CPLRecordView *)self synthesizedRecord];
  v15 = [v14 realRecordChangeFromRecordChange:v13 direction:a4 newRecord:a5 changeType:a6 diffTracker:v12];

  return v15;
}

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(CPLRecordView *)self synthesizedRecord];
  v5 = [v4 redactedDescription];
  v6 = [v3 initWithFormat:@"%@", v5];

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = [(CPLRecordView *)self synthesizedRecord];
  v5 = [v3 initWithFormat:@"%@", v4];

  return v5;
}

- (CPLPlaceholderRecord)placeholderRecord
{
  v3 = [CPLPlaceholderRecord alloc];
  v4 = [(CPLRecordView *)self synthesizedRecord];
  v5 = [(CPLPlaceholderRecord *)v3 initWithRecord:v4];

  return v5;
}

- (CPLRecordChange)synthesizedRecord
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLRecordStorageView.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:21 description:{@"%@ should be implemented by subclasses", v6}];

  abort();
}

- (CPLScopedIdentifier)scopedIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLRecordStorageView.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:16 description:{@"%@ should be implemented by subclasses", v6}];

  abort();
}

@end
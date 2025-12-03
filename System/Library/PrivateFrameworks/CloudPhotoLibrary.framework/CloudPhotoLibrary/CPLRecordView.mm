@interface CPLRecordView
- (BOOL)supportsResources;
- (CPLPlaceholderRecord)placeholderRecord;
- (CPLRecordChange)synthesizedRecord;
- (CPLScopedIdentifier)scopedIdentifier;
- (Class)recordClass;
- (NSData)recordChangeData;
- (NSData)sharingRecordChangeData;
- (id)description;
- (id)realRecordChangeFromRecordChange:(id)change direction:(unint64_t)direction newRecord:(id *)record changeType:(unint64_t)type diffTracker:(id)tracker;
- (id)realRecordChangeFromRecordChange:(id)change direction:(unint64_t)direction newRecord:(id *)record diffTracker:(id)tracker;
- (id)redactedDescription;
- (id)relatedScopedIdentifier;
- (id)relation;
- (id)secondaryScopedIdentifier;
@end

@implementation CPLRecordView

- (BOOL)supportsResources
{
  recordClass = [(CPLRecordView *)self recordClass];

  return [(objc_class *)recordClass supportsResources];
}

- (id)relation
{
  v2 = [(CPLRecordView *)self changeForType:2];
  relation = [v2 relation];

  return relation;
}

- (Class)recordClass
{
  synthesizedRecord = [(CPLRecordView *)self synthesizedRecord];
  v3 = objc_opt_class();

  return v3;
}

- (id)secondaryScopedIdentifier
{
  v2 = [(CPLRecordView *)self changeForType:2];
  secondaryScopedIdentifier = [v2 secondaryScopedIdentifier];

  return secondaryScopedIdentifier;
}

- (id)relatedScopedIdentifier
{
  v2 = [(CPLRecordView *)self changeForType:2];
  relatedScopedIdentifier = [v2 relatedScopedIdentifier];

  return relatedScopedIdentifier;
}

- (NSData)sharingRecordChangeData
{
  synthesizedRecord = [(CPLRecordView *)self synthesizedRecord];
  sharingRecordChangeData = [synthesizedRecord sharingRecordChangeData];

  return sharingRecordChangeData;
}

- (NSData)recordChangeData
{
  synthesizedRecord = [(CPLRecordView *)self synthesizedRecord];
  recordChangeData = [synthesizedRecord recordChangeData];

  return recordChangeData;
}

- (id)realRecordChangeFromRecordChange:(id)change direction:(unint64_t)direction newRecord:(id *)record diffTracker:(id)tracker
{
  trackerCopy = tracker;
  changeCopy = change;
  changeType = [changeCopy changeType];
  if (changeType)
  {
    v13 = changeType | 0x100;
  }

  else
  {
    v13 = 378;
  }

  v14 = [(CPLRecordView *)self realRecordChangeFromRecordChange:changeCopy direction:direction newRecord:record changeType:v13 diffTracker:trackerCopy];

  return v14;
}

- (id)realRecordChangeFromRecordChange:(id)change direction:(unint64_t)direction newRecord:(id *)record changeType:(unint64_t)type diffTracker:(id)tracker
{
  trackerCopy = tracker;
  changeCopy = change;
  synthesizedRecord = [(CPLRecordView *)self synthesizedRecord];
  v15 = [synthesizedRecord realRecordChangeFromRecordChange:changeCopy direction:direction newRecord:record changeType:type diffTracker:trackerCopy];

  return v15;
}

- (id)redactedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  synthesizedRecord = [(CPLRecordView *)self synthesizedRecord];
  redactedDescription = [synthesizedRecord redactedDescription];
  v6 = [v3 initWithFormat:@"%@", redactedDescription];

  return v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  synthesizedRecord = [(CPLRecordView *)self synthesizedRecord];
  v5 = [v3 initWithFormat:@"%@", synthesizedRecord];

  return v5;
}

- (CPLPlaceholderRecord)placeholderRecord
{
  v3 = [CPLPlaceholderRecord alloc];
  synthesizedRecord = [(CPLRecordView *)self synthesizedRecord];
  v5 = [(CPLPlaceholderRecord *)v3 initWithRecord:synthesizedRecord];

  return v5;
}

- (CPLRecordChange)synthesizedRecord
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLRecordStorageView.m"];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:21 description:{@"%@ should be implemented by subclasses", v6}];

  abort();
}

- (CPLScopedIdentifier)scopedIdentifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLRecordStorageView.m"];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:16 description:{@"%@ should be implemented by subclasses", v6}];

  abort();
}

@end
@interface CPLChangeStorage
- (BOOL)getRelatedScopedIdentifier:(id *)identifier forRecordWithScopedIdentifier:(id)scopedIdentifier;
- (BOOL)getStoredChangeType:(unint64_t *)type forRecordWithScopedIdentifier:(id)identifier;
- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
- (NSString)storageDescription;
- (id)changeWithScopedIdentifier:(id)identifier;
- (id)changesWithRelatedScopedIdentifier:(id)identifier class:(Class)class;
@end

@implementation CPLChangeStorage

- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(CPLChangeStorage *)self changesWithRelatedScopedIdentifier:identifier class:class, 0, 0, 0, 0, 0, 0, 0, 0];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v9 count:16] != 0;

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)getStoredChangeType:(unint64_t *)type forRecordWithScopedIdentifier:(id)identifier
{
  v5 = [(CPLChangeStorage *)self changeWithScopedIdentifier:identifier];
  v6 = v5;
  if (v5)
  {
    *type = [v5 changeType];
  }

  return v6 != 0;
}

- (BOOL)getRelatedScopedIdentifier:(id *)identifier forRecordWithScopedIdentifier:(id)scopedIdentifier
{
  v5 = [(CPLChangeStorage *)self changeWithScopedIdentifier:scopedIdentifier];
  v6 = v5;
  if (v5)
  {
    if ([v5 isDelete])
    {
      relatedScopedIdentifier = 0;
LABEL_6:
      *identifier = relatedScopedIdentifier;
      goto LABEL_7;
    }

    if ([v6 hasChangeType:2])
    {
      relatedScopedIdentifier = [v6 relatedScopedIdentifier];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v6 != 0;
}

- (NSString)storageDescription
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangedRecordStorageView.m"];
  v6 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v5 lineNumber:28 description:{@"%@ should be implemented by subclasses", v6}];

  abort();
}

- (id)changesWithRelatedScopedIdentifier:(id)identifier class:(Class)class
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangedRecordStorageView.m"];
  v9 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v8 lineNumber:23 description:{@"%@ should be implemented by subclasses", v9}];

  abort();
}

- (id)changeWithScopedIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangedRecordStorageView.m"];
  v8 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:v7 lineNumber:18 description:{@"%@ should be implemented by subclasses", v8}];

  abort();
}

@end
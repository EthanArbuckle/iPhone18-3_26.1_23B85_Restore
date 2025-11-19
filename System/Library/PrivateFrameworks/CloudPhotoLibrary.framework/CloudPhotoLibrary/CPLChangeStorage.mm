@interface CPLChangeStorage
- (BOOL)getRelatedScopedIdentifier:(id *)a3 forRecordWithScopedIdentifier:(id)a4;
- (BOOL)getStoredChangeType:(unint64_t *)a3 forRecordWithScopedIdentifier:(id)a4;
- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
- (NSString)storageDescription;
- (id)changeWithScopedIdentifier:(id)a3;
- (id)changesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4;
@end

@implementation CPLChangeStorage

- (BOOL)hasChangesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = [(CPLChangeStorage *)self changesWithRelatedScopedIdentifier:a3 class:a4, 0, 0, 0, 0, 0, 0, 0, 0];
  v5 = [v4 countByEnumeratingWithState:&v8 objects:v9 count:16] != 0;

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)getStoredChangeType:(unint64_t *)a3 forRecordWithScopedIdentifier:(id)a4
{
  v5 = [(CPLChangeStorage *)self changeWithScopedIdentifier:a4];
  v6 = v5;
  if (v5)
  {
    *a3 = [v5 changeType];
  }

  return v6 != 0;
}

- (BOOL)getRelatedScopedIdentifier:(id *)a3 forRecordWithScopedIdentifier:(id)a4
{
  v5 = [(CPLChangeStorage *)self changeWithScopedIdentifier:a4];
  v6 = v5;
  if (v5)
  {
    if ([v5 isDelete])
    {
      v7 = 0;
LABEL_6:
      *a3 = v7;
      goto LABEL_7;
    }

    if ([v6 hasChangeType:2])
    {
      v7 = [v6 relatedScopedIdentifier];
      goto LABEL_6;
    }
  }

LABEL_7:

  return v6 != 0;
}

- (NSString)storageDescription
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangedRecordStorageView.m"];
  v6 = NSStringFromSelector(a2);
  [v4 handleFailureInMethod:a2 object:self file:v5 lineNumber:28 description:{@"%@ should be implemented by subclasses", v6}];

  abort();
}

- (id)changesWithRelatedScopedIdentifier:(id)a3 class:(Class)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangedRecordStorageView.m"];
  v9 = NSStringFromSelector(a2);
  [v7 handleFailureInMethod:a2 object:self file:v8 lineNumber:23 description:{@"%@ should be implemented by subclasses", v9}];

  abort();
}

- (id)changeWithScopedIdentifier:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangedRecordStorageView.m"];
  v8 = NSStringFromSelector(a2);
  [v6 handleFailureInMethod:a2 object:self file:v7 lineNumber:18 description:{@"%@ should be implemented by subclasses", v8}];

  abort();
}

@end
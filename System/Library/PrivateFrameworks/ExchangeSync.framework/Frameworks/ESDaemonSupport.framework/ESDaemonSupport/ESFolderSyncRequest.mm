@interface ESFolderSyncRequest
- (id)description;
@end

@implementation ESFolderSyncRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(ESFolderSyncRequest *)self folder];
  v6 = [(ESFolderSyncRequest *)self hasRemoteChanges];
  v7 = [(ESFolderSyncRequest *)self isInitialUberSync];
  v8 = [(ESFolderSyncRequest *)self isResyncAfterConnectionFailed];
  v9 = [(ESFolderSyncRequest *)self actions];
  v10 = [v3 stringWithFormat:@"<%@: %p> { Folder %@, hasRemoteChanges: %d, isInitialUberSync %d isResyncAfterConnectionFailed %d actions %@ }", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

@end
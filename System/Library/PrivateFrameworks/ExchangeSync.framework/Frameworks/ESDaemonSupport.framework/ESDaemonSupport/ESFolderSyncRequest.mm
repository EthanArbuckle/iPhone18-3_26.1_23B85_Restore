@interface ESFolderSyncRequest
- (id)description;
@end

@implementation ESFolderSyncRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  folder = [(ESFolderSyncRequest *)self folder];
  hasRemoteChanges = [(ESFolderSyncRequest *)self hasRemoteChanges];
  isInitialUberSync = [(ESFolderSyncRequest *)self isInitialUberSync];
  isResyncAfterConnectionFailed = [(ESFolderSyncRequest *)self isResyncAfterConnectionFailed];
  actions = [(ESFolderSyncRequest *)self actions];
  v10 = [v3 stringWithFormat:@"<%@: %p> { Folder %@, hasRemoteChanges: %d, isInitialUberSync %d isResyncAfterConnectionFailed %d actions %@ }", v4, self, folder, hasRemoteChanges, isInitialUberSync, isResyncAfterConnectionFailed, actions];

  return v10;
}

@end
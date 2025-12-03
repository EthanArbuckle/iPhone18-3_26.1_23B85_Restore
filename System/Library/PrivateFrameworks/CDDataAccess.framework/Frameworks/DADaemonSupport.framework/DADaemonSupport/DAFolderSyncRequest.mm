@interface DAFolderSyncRequest
- (id)description;
@end

@implementation DAFolderSyncRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  folder = [(DAFolderSyncRequest *)self folder];
  hasRemoteChanges = [(DAFolderSyncRequest *)self hasRemoteChanges];
  isInitialUberSync = [(DAFolderSyncRequest *)self isInitialUberSync];
  isResyncAfterConnectionFailed = [(DAFolderSyncRequest *)self isResyncAfterConnectionFailed];
  actions = [(DAFolderSyncRequest *)self actions];
  v10 = [v3 stringWithFormat:@"<%@: %p> { Folder %@, hasRemoteChanges: %d, isInitialUberSync %d isResyncAfterConnectionFailed %d actions %@ }", v4, self, folder, hasRemoteChanges, isInitialUberSync, isResyncAfterConnectionFailed, actions];

  return v10;
}

@end
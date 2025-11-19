@interface DAFolderSyncRequest
- (id)description;
@end

@implementation DAFolderSyncRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(DAFolderSyncRequest *)self folder];
  v6 = [(DAFolderSyncRequest *)self hasRemoteChanges];
  v7 = [(DAFolderSyncRequest *)self isInitialUberSync];
  v8 = [(DAFolderSyncRequest *)self isResyncAfterConnectionFailed];
  v9 = [(DAFolderSyncRequest *)self actions];
  v10 = [v3 stringWithFormat:@"<%@: %p> { Folder %@, hasRemoteChanges: %d, isInitialUberSync %d isResyncAfterConnectionFailed %d actions %@ }", v4, self, v5, v6, v7, v8, v9];

  return v10;
}

@end
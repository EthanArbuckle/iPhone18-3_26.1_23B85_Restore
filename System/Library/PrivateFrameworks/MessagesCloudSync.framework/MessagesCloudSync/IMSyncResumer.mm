@interface IMSyncResumer
- (IMSyncResumer)initWithDelegate:(id)a3 syncStateManager:(id)a4;
- (void)attemptToResumeSyncIfAppropriate;
- (void)attemptToResumeSyncOnAccountUpdateIfAppropriate;
- (void)attemptToResumeSyncOnIdentityUpdateIfAppropriate;
@end

@implementation IMSyncResumer

- (IMSyncResumer)initWithDelegate:(id)a3 syncStateManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = IMSyncResumer;
  v8 = [(IMSyncResumer *)&v17 init];
  if (v8)
  {
    v9 = [MCSSyncResumer alloc];
    v12 = objc_msgSend_initWithDelegate_syncStateManager_(v9, v10, v6, v7, v11);
    objc_msgSend_setResumer_(v8, v13, v12, v14, v15);
  }

  return v8;
}

- (void)attemptToResumeSyncOnAccountUpdateIfAppropriate
{
  v9 = objc_msgSend_resumer(self, a2, v2, v3, v4);
  objc_msgSend_attemptToResumeSyncOnAccountUpdateIfAppropriate(v9, v5, v6, v7, v8);
}

- (void)attemptToResumeSyncOnIdentityUpdateIfAppropriate
{
  v9 = objc_msgSend_resumer(self, a2, v2, v3, v4);
  objc_msgSend_attemptToResumeSyncOnIdentityUpdateIfAppropriate(v9, v5, v6, v7, v8);
}

- (void)attemptToResumeSyncIfAppropriate
{
  v9 = objc_msgSend_resumer(self, a2, v2, v3, v4);
  objc_msgSend_attemptToResumeSyncIfAppropriate(v9, v5, v6, v7, v8);
}

@end
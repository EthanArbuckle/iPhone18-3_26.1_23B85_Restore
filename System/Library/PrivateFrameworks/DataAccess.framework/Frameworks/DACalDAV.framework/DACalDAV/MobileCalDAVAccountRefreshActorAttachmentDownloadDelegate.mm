@interface MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate
- (MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate)initWithAttachmentUUID:(id)d;
- (void)downloadFinishedError:(id)error;
@end

@implementation MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate

- (MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate)initWithAttachmentUUID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate;
  v6 = [(MobileCalDAVAccountRefreshActorAttachmentDownloadDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
  }

  return v7;
}

- (void)downloadFinishedError:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v5 = DALoggingwithCategory();
  v6 = v5;
  if (errorCopy)
  {
    v7 = *(MEMORY[0x277D03988] + 3);
    if (os_log_type_enabled(v5, v7))
    {
      uuid = self->_uuid;
      v18 = 138543618;
      v19 = uuid;
      v20 = 2112;
      v21 = errorCopy;
      v9 = "Error downloading an attachment %{public}@: %@";
      v10 = v6;
      v11 = v7;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_2484B2000, v10, v11, v9, &v18, v12);
    }
  }

  else
  {
    v13 = *(MEMORY[0x277D03988] + 5);
    if (os_log_type_enabled(v5, v13))
    {
      v14 = self->_uuid;
      v18 = 138543362;
      v19 = v14;
      v9 = "Completed download of attachment %{public}@";
      v10 = v6;
      v11 = v13;
      v12 = 12;
      goto LABEL_6;
    }
  }

  retainedSelf = self->_retainedSelf;
  self->_retainedSelf = 0;
  v16 = retainedSelf;

  v17 = *MEMORY[0x277D85DE8];
}

@end
@interface MFMessageBody
- (id)attachmentURLs;
- (id)attachments;
- (void)setMessage:(id)a3;
@end

@implementation MFMessageBody

- (void)setMessage:(id)a3
{
  v5 = a3;
  _MFLockGlobalLock();
  objc_storeStrong(&self->_message, a3);
  _MFUnlockGlobalLock();
}

- (id)attachments
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D36B2000, v2, OS_LOG_TYPE_INFO, "[MFMessageBody attachments]", v4, 2u);
  }

  return 0;
}

- (id)attachmentURLs
{
  v2 = MFLogGeneral();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1D36B2000, v2, OS_LOG_TYPE_INFO, "[MFMessageBody attachmentURLs]", v4, 2u);
  }

  return 0;
}

@end
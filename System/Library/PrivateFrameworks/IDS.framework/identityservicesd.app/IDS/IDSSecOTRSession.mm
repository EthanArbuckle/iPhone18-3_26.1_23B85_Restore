@interface IDSSecOTRSession
- (IDSSecOTRSession)initWithSecOTRSessionRef:(_SecOTRSession *)ref;
- (id)signAndProtectMessage:(id)message withError:(id *)error;
- (id)verifyAndExposeMessage:(id)message withError:(id *)error;
- (void)dealloc;
@end

@implementation IDSSecOTRSession

- (IDSSecOTRSession)initWithSecOTRSessionRef:(_SecOTRSession *)ref
{
  selfCopy = ref;
  if (ref)
  {
    v6.receiver = self;
    v6.super_class = IDSSecOTRSession;
    v4 = [(IDSSecOTRSession *)&v6 init];
    if (v4)
    {
      v4->_backingOTRSessionRef = CFRetain(selfCopy);
    }

    self = v4;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  backingOTRSessionRef = self->_backingOTRSessionRef;
  if (backingOTRSessionRef)
  {
    CFRelease(backingOTRSessionRef);
    self->_backingOTRSessionRef = 0;
  }

  v4.receiver = self;
  v4.super_class = IDSSecOTRSession;
  [(IDSSecOTRSession *)&v4 dealloc];
}

- (id)signAndProtectMessage:(id)message withError:(id *)error
{
  messageCopy = message;
  v7 = objc_alloc_init(NSMutableData);
  backingOTRSessionRef = self->_backingOTRSessionRef;
  if (qword_100CBD0F8 != -1)
  {
    sub_100917DD0();
  }

  if (off_100CBD0F0)
  {
    v9 = off_100CBD0F0(backingOTRSessionRef, messageCopy, v7);
    if (!v9)
    {
      v10 = v7;
      goto LABEL_15;
    }
  }

  else
  {
    v9 = -26276;
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "   OTR encryption failed with error: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (error)
  {
    [NSError errorWithDomain:NSOSStatusErrorDomain code:v9 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_15:

  return v10;
}

- (id)verifyAndExposeMessage:(id)message withError:(id *)error
{
  messageCopy = message;
  v7 = objc_alloc_init(NSMutableData);
  backingOTRSessionRef = self->_backingOTRSessionRef;
  if (qword_100CBD108 != -1)
  {
    sub_100917DE4();
  }

  if (off_100CBD100)
  {
    v9 = off_100CBD100(backingOTRSessionRef, messageCopy, v7);
    if (!v9)
    {
      v10 = v7;
      goto LABEL_15;
    }
  }

  else
  {
    v9 = -26276;
  }

  v11 = OSLogHandleForIDSCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "   OTR decryption failed with error: %d", buf, 8u);
  }

  if (os_log_shim_legacy_logging_enabled() && _IDSShouldLog())
  {
    _IDSLogV();
  }

  if (error)
  {
    [NSError errorWithDomain:NSOSStatusErrorDomain code:v9 userInfo:0];
    *error = v10 = 0;
  }

  else
  {
    v10 = 0;
  }

LABEL_15:

  return v10;
}

@end
@interface IMDMessageActiveDevice
- (BOOL)_hasReceivedReadReceiptRecently;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldDisplayAttachmentDownloadFailure;
- (BOOL)shouldDisplayRemoteDecryptionFailure;
- (BOOL)shouldSendTypingIndicator;
- (IMDMessageActiveDevice)initWithIDSDestination:(id)a3 latestDate:(id)a4 latestReadReceiptDate:(id)a5 hasReceivedReadReceipt:(BOOL)a6;
- (id)description;
@end

@implementation IMDMessageActiveDevice

- (IMDMessageActiveDevice)initWithIDSDestination:(id)a3 latestDate:(id)a4 latestReadReceiptDate:(id)a5 hasReceivedReadReceipt:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = 0;
  if (v11 && v12)
  {
    v18.receiver = self;
    v18.super_class = IMDMessageActiveDevice;
    v15 = [(IMDMessageActiveDevice *)&v18 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_idsDestination, a3);
      objc_storeStrong(&v16->_latestActiveDate, a4);
      v16->_hasReceivedReadReceipt = a6;
      objc_storeStrong(&v16->_latestReadReceipt, a5);
    }

    self = v16;
    v14 = self;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v4 == self)
    {
      v7 = 1;
    }

    else
    {
      idsDestination = self->_idsDestination;
      v6 = [(IMDMessageActiveDevice *)v4 idsDestination];
      v7 = [(NSString *)idsDestination isEqualToString:v6];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_hasReceivedReadReceiptRecently
{
  if (self->_hasReceivedReadReceipt)
  {
    v3 = [MEMORY[0x277CBEAA8] date];
    [v3 timeIntervalSinceDate:self->_latestReadReceipt];
    v5 = v4;

    return v5 <= 86400.0 && self->_hasReceivedReadReceipt;
  }

  else
  {
    return 0;
  }
}

- (BOOL)shouldSendTypingIndicator
{
  if (![(IMDMessageActiveDevice *)self _hasReceivedReadReceiptRecently])
  {
    return 1;
  }

  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:self->_latestActiveDate];
  v5 = v4 <= 300.0;

  return v5;
}

- (BOOL)shouldDisplayAttachmentDownloadFailure
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:self->_latestActiveDate];
  LOBYTE(self) = v4 <= 86400.0;

  return self;
}

- (BOOL)shouldDisplayRemoteDecryptionFailure
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSinceDate:self->_latestActiveDate];
  LOBYTE(self) = v4 <= 600.0;

  return self;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"NO";
  if (self->_hasReceivedReadReceipt)
  {
    v7 = @"YES";
  }

  v8 = [v3 stringWithFormat:@"[%@: <Device%@ activeDate:%@ readReceipt:%@, read ReceiptDate %@>]", v5, self->_idsDestination, self->_latestActiveDate, v7, self->_latestReadReceipt];

  return v8;
}

@end
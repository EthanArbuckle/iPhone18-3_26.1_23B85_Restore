@interface IMDMessageActiveDevice
- (BOOL)_hasReceivedReadReceiptRecently;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldDisplayAttachmentDownloadFailure;
- (BOOL)shouldDisplayRemoteDecryptionFailure;
- (BOOL)shouldSendTypingIndicator;
- (IMDMessageActiveDevice)initWithIDSDestination:(id)destination latestDate:(id)date latestReadReceiptDate:(id)receiptDate hasReceivedReadReceipt:(BOOL)receipt;
- (id)description;
@end

@implementation IMDMessageActiveDevice

- (IMDMessageActiveDevice)initWithIDSDestination:(id)destination latestDate:(id)date latestReadReceiptDate:(id)receiptDate hasReceivedReadReceipt:(BOOL)receipt
{
  destinationCopy = destination;
  dateCopy = date;
  receiptDateCopy = receiptDate;
  selfCopy = 0;
  if (destinationCopy && dateCopy)
  {
    v18.receiver = self;
    v18.super_class = IMDMessageActiveDevice;
    v15 = [(IMDMessageActiveDevice *)&v18 init];
    v16 = v15;
    if (v15)
    {
      objc_storeStrong(&v15->_idsDestination, destination);
      objc_storeStrong(&v16->_latestActiveDate, date);
      v16->_hasReceivedReadReceipt = receipt;
      objc_storeStrong(&v16->_latestReadReceipt, receiptDate);
    }

    self = v16;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (equalCopy == self)
    {
      v7 = 1;
    }

    else
    {
      idsDestination = self->_idsDestination;
      idsDestination = [(IMDMessageActiveDevice *)equalCopy idsDestination];
      v7 = [(NSString *)idsDestination isEqualToString:idsDestination];
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
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceDate:self->_latestReadReceipt];
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

  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_latestActiveDate];
  v5 = v4 <= 300.0;

  return v5;
}

- (BOOL)shouldDisplayAttachmentDownloadFailure
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_latestActiveDate];
  LOBYTE(self) = v4 <= 86400.0;

  return self;
}

- (BOOL)shouldDisplayRemoteDecryptionFailure
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceDate:self->_latestActiveDate];
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
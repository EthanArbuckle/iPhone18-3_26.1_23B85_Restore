@interface MFMessageTransferResult
- (MFMessageTransferResult)initWithResultCode:(unint64_t)code failedMessages:(id)messages transferedMessage:(id)message;
- (id)debugDescription;
- (void)dealloc;
@end

@implementation MFMessageTransferResult

- (MFMessageTransferResult)initWithResultCode:(unint64_t)code failedMessages:(id)messages transferedMessage:(id)message
{
  v11.receiver = self;
  v11.super_class = MFMessageTransferResult;
  v8 = [(MFMessageTransferResult *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_resultCode = code;
    v8->_failedMessages = [messages copy];
    v9->_transferedMessages = [message copy];
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = MFMessageTransferResult;
  [(MFMessageTransferResult *)&v3 dealloc];
}

- (id)debugDescription
{
  resultCode = [(MFMessageTransferResult *)self resultCode];
  if (resultCode > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_2798B6A08[resultCode];
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"<%@:%p (\n\tresult:%@\n\ttransfered:%@\n\tfailed:%@)>", objc_opt_class(), self, v4, -[MFMessageTransferResult transferedMessages](self, "transferedMessages"), -[MFMessageTransferResult failedMessages](self, "failedMessages")];
}

@end
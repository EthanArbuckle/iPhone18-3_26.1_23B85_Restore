@interface MFDAMessageStoreSaveDraftRequest
- (MFDAMessageStoreSaveDraftRequest)initWithMessage:(id)message mailbox:(id)mailbox;
@end

@implementation MFDAMessageStoreSaveDraftRequest

- (MFDAMessageStoreSaveDraftRequest)initWithMessage:(id)message mailbox:(id)mailbox
{
  messageCopy = message;
  mailboxCopy = mailbox;
  v8 = [MFDADraftMessage alloc];
  if (_nextClientID_onceToken != -1)
  {
    [MFDAMessageStoreSaveDraftRequest initWithMessage:mailbox:];
  }

  v9 = _nextClientID___clientID;
  objc_sync_enter(v9);
  unsignedIntegerValue = [_nextClientID___clientID unsignedIntegerValue];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedIntegerValue + 1];
  v12 = _nextClientID___clientID;
  _nextClientID___clientID = v11;

  objc_sync_exit(v9);
  v13 = [(MFDADraftMessage *)v8 initWithMailMessage:messageCopy clientID:unsignedIntegerValue + 1];
  v20.receiver = self;
  v20.super_class = MFDAMessageStoreSaveDraftRequest;
  v14 = [(DADraftMessageRequest *)&v20 initWithRequestType:4 message:v13 send:0];
  if (v14)
  {
    messageIDHeader = [messageCopy messageIDHeader];
    messageIDHeader = v14->_messageIDHeader;
    v14->_messageIDHeader = messageIDHeader;

    v17 = [mailboxCopy copy];
    folderID = v14->_folderID;
    v14->_folderID = v17;
  }

  return v14;
}

@end
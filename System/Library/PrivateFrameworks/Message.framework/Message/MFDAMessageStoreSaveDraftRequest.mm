@interface MFDAMessageStoreSaveDraftRequest
- (MFDAMessageStoreSaveDraftRequest)initWithMessage:(id)a3 mailbox:(id)a4;
@end

@implementation MFDAMessageStoreSaveDraftRequest

- (MFDAMessageStoreSaveDraftRequest)initWithMessage:(id)a3 mailbox:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MFDADraftMessage alloc];
  if (_nextClientID_onceToken != -1)
  {
    [MFDAMessageStoreSaveDraftRequest initWithMessage:mailbox:];
  }

  v9 = _nextClientID___clientID;
  objc_sync_enter(v9);
  v10 = [_nextClientID___clientID unsignedIntegerValue];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v10 + 1];
  v12 = _nextClientID___clientID;
  _nextClientID___clientID = v11;

  objc_sync_exit(v9);
  v13 = [(MFDADraftMessage *)v8 initWithMailMessage:v6 clientID:v10 + 1];
  v20.receiver = self;
  v20.super_class = MFDAMessageStoreSaveDraftRequest;
  v14 = [(DADraftMessageRequest *)&v20 initWithRequestType:4 message:v13 send:0];
  if (v14)
  {
    v15 = [v6 messageIDHeader];
    messageIDHeader = v14->_messageIDHeader;
    v14->_messageIDHeader = v15;

    v17 = [v7 copy];
    folderID = v14->_folderID;
    v14->_folderID = v17;
  }

  return v14;
}

@end
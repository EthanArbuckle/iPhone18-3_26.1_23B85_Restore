@interface IMDMomentShareIngestionContext
- (IMDMomentShareIngestionContext)initWithURL:(id)l message:(id)message inChat:(id)chat;
@end

@implementation IMDMomentShareIngestionContext

- (IMDMomentShareIngestionContext)initWithURL:(id)l message:(id)message inChat:(id)chat
{
  lCopy = l;
  messageCopy = message;
  chatCopy = chat;
  v17.receiver = self;
  v17.super_class = IMDMomentShareIngestionContext;
  v12 = [(IMDMomentShareIngestionContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_shareURL, l);
    objc_storeStrong(&v13->_message, message);
    objc_storeStrong(&v13->_chat, chat);
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assetUUIDsToFileTransfers = v13->_assetUUIDsToFileTransfers;
    v13->_assetUUIDsToFileTransfers = v14;
  }

  return v13;
}

@end
@interface IMDMomentShareIngestionContext
- (IMDMomentShareIngestionContext)initWithURL:(id)a3 message:(id)a4 inChat:(id)a5;
@end

@implementation IMDMomentShareIngestionContext

- (IMDMomentShareIngestionContext)initWithURL:(id)a3 message:(id)a4 inChat:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = IMDMomentShareIngestionContext;
  v12 = [(IMDMomentShareIngestionContext *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_shareURL, a3);
    objc_storeStrong(&v13->_message, a4);
    objc_storeStrong(&v13->_chat, a5);
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    assetUUIDsToFileTransfers = v13->_assetUUIDsToFileTransfers;
    v13->_assetUUIDsToFileTransfers = v14;
  }

  return v13;
}

@end
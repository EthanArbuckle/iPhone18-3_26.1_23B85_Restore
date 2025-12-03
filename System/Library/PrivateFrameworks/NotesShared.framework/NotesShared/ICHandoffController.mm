@interface ICHandoffController
+ (id)sharedController;
- (BOOL)sendMessage:(id)message toSource:(id)source error:(id *)error;
- (ICHandoffController)init;
- (ICPeerInputStream)inputStream;
- (void)didDisconnectInputStream:(id)stream;
- (void)didReceiveInputStream:(id)stream outputStream:(id)outputStream;
- (void)handleMessage:(id)message fromInputStream:(id)stream;
- (void)requestNoteWithIdentifier:(id)identifier;
- (void)setInputStream:(id)stream;
@end

@implementation ICHandoffController

+ (id)sharedController
{
  if (sharedController_once != -1)
  {
    +[ICHandoffController sharedController];
  }

  v3 = sharedController_sharedController;

  return v3;
}

void __39__ICHandoffController_sharedController__block_invoke()
{
  v0 = objc_alloc_init(ICHandoffController);
  v1 = sharedController_sharedController;
  sharedController_sharedController = v0;
}

- (ICHandoffController)init
{
  v6.receiver = self;
  v6.super_class = ICHandoffController;
  v2 = [(ICHandoffController *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(ICPeerMessageController);
    peerController = v2->_peerController;
    v2->_peerController = v3;

    [(ICPeerMessageController *)v2->_peerController setDelegate:v2];
  }

  return v2;
}

- (void)setInputStream:(id)stream
{
  streamCopy = stream;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  inputStream = selfCopy->_inputStream;
  if (inputStream != streamCopy)
  {
    [(ICPeerInputStream *)inputStream setDelegate:0];
    objc_storeStrong(&selfCopy->_inputStream, stream);
    [(ICPeerInputStream *)selfCopy->_inputStream setDelegate:selfCopy];
  }

  objc_sync_exit(selfCopy);
}

- (ICPeerInputStream)inputStream
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_inputStream;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)didReceiveInputStream:(id)stream outputStream:(id)outputStream
{
  outputStreamCopy = outputStream;
  streamCopy = stream;
  v9 = [[ICPeerInputStream alloc] initWithInputStream:streamCopy];

  v8 = [[ICPeerOutputStream alloc] initWithOutputStream:outputStreamCopy];
  [(ICHandoffController *)self setInputStream:v9];
  [(ICHandoffController *)self setOutputStream:v8];
}

- (void)requestNoteWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  peerController = [(ICHandoffController *)self peerController];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:identifierCopy];

  [peerController requestNote:v5 from:0];
}

- (BOOL)sendMessage:(id)message toSource:(id)source error:(id *)error
{
  messageCopy = message;
  outputStream = [(ICHandoffController *)self outputStream];
  [outputStream writeMessageData:messageCopy];

  return 1;
}

- (void)handleMessage:(id)message fromInputStream:(id)stream
{
  messageCopy = message;
  peerController = [(ICHandoffController *)self peerController];
  [peerController handleMessage:messageCopy fromSource:0];
}

- (void)didDisconnectInputStream:(id)stream
{
  streamCopy = stream;
  inputStream = [(ICHandoffController *)self inputStream];

  if (inputStream == streamCopy)
  {
    [(ICHandoffController *)self setInputStream:0];

    [(ICHandoffController *)self setOutputStream:0];
  }
}

@end
@interface IDSTransferServicesController
- (void)sendFilePath:(id)path topic:(id)topic userInfo:(id)info transferID:(id)d encryptFile:(BOOL)file progressBlock:(id)block completionBlock:(id)completionBlock;
@end

@implementation IDSTransferServicesController

- (void)sendFilePath:(id)path topic:(id)topic userInfo:(id)info transferID:(id)d encryptFile:(BOOL)file progressBlock:(id)block completionBlock:(id)completionBlock
{
  fileCopy = file;
  completionBlockCopy = completionBlock;
  blockCopy = block;
  dCopy = d;
  infoCopy = info;
  topicCopy = topic;
  pathCopy = path;
  v21 = [IDSDaemon _IMTransferServiceController]_0();
  [v21 sendFilePath:pathCopy topic:topicCopy userInfo:infoCopy transferID:dCopy sourceAppID:0 encryptFile:fileCopy progressBlock:blockCopy completionBlock:completionBlockCopy];
}

@end
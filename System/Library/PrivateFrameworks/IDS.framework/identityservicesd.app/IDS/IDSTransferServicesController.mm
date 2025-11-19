@interface IDSTransferServicesController
- (void)sendFilePath:(id)a3 topic:(id)a4 userInfo:(id)a5 transferID:(id)a6 encryptFile:(BOOL)a7 progressBlock:(id)a8 completionBlock:(id)a9;
@end

@implementation IDSTransferServicesController

- (void)sendFilePath:(id)a3 topic:(id)a4 userInfo:(id)a5 transferID:(id)a6 encryptFile:(BOOL)a7 progressBlock:(id)a8 completionBlock:(id)a9
{
  v10 = a7;
  v15 = a9;
  v16 = a8;
  v17 = a6;
  v18 = a5;
  v19 = a4;
  v20 = a3;
  v21 = [IDSDaemon _IMTransferServiceController]_0();
  [v21 sendFilePath:v20 topic:v19 userInfo:v18 transferID:v17 sourceAppID:0 encryptFile:v10 progressBlock:v16 completionBlock:v15];
}

@end
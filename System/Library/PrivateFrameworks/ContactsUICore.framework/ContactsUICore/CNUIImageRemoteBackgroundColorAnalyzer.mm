@interface CNUIImageRemoteBackgroundColorAnalyzer
- (void)_closeConnection;
- (void)_openConnectionIfNeeded;
- (void)dealloc;
- (void)getBackgroundColorOnImageData:(id)data bitmapFormat:(id)format reply:(id)reply;
@end

@implementation CNUIImageRemoteBackgroundColorAnalyzer

- (void)dealloc
{
  [(CNUIImageRemoteBackgroundColorAnalyzer *)self _closeConnection];
  v3.receiver = self;
  v3.super_class = CNUIImageRemoteBackgroundColorAnalyzer;
  [(CNUIImageRemoteBackgroundColorAnalyzer *)&v3 dealloc];
}

- (void)_openConnectionIfNeeded
{
  if (!self->_serviceConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithServiceName:@"com.apple.ContactsBackgroundColorService"];
    serviceConnection = self->_serviceConnection;
    self->_serviceConnection = v4;

    v6 = contactsBackgroundColorServiceInterface();
    [(NSXPCConnection *)self->_serviceConnection setRemoteObjectInterface:v6];

    v7 = self->_serviceConnection;

    [(NSXPCConnection *)v7 resume];
  }
}

- (void)_closeConnection
{
  [(NSXPCConnection *)self->_serviceConnection invalidate];
  serviceConnection = self->_serviceConnection;
  self->_serviceConnection = 0;
}

- (void)getBackgroundColorOnImageData:(id)data bitmapFormat:(id)format reply:(id)reply
{
  dataCopy = data;
  formatCopy = format;
  replyCopy = reply;
  [(CNUIImageRemoteBackgroundColorAnalyzer *)self _openConnectionIfNeeded];
  if (dataCopy)
  {
    serviceConnection = [(CNUIImageRemoteBackgroundColorAnalyzer *)self serviceConnection];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __91__CNUIImageRemoteBackgroundColorAnalyzer_getBackgroundColorOnImageData_bitmapFormat_reply___block_invoke;
    v16[3] = &unk_1E76EA2B0;
    v12 = replyCopy;
    v17 = v12;
    v13 = [serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __91__CNUIImageRemoteBackgroundColorAnalyzer_getBackgroundColorOnImageData_bitmapFormat_reply___block_invoke_2;
    v14[3] = &unk_1E76EA2D8;
    v15 = v12;
    [v13 getBackgroundColorOnImageData:dataCopy bitmapFormat:formatCopy withReply:v14];
  }
}

@end
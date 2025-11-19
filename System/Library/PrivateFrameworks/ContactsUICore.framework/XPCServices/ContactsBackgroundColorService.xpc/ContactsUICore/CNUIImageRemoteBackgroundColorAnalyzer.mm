@interface CNUIImageRemoteBackgroundColorAnalyzer
- (void)_closeConnection;
- (void)_openConnectionIfNeeded;
- (void)dealloc;
- (void)getBackgroundColorOnImageData:(id)a3 bitmapFormat:(id)a4 reply:(id)a5;
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
    v4 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.ContactsBackgroundColorService"];
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

- (void)getBackgroundColorOnImageData:(id)a3 bitmapFormat:(id)a4 reply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(CNUIImageRemoteBackgroundColorAnalyzer *)self _openConnectionIfNeeded];
  if (v8)
  {
    v11 = [(CNUIImageRemoteBackgroundColorAnalyzer *)self serviceConnection];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000113C;
    v16[3] = &unk_100008398;
    v12 = v10;
    v17 = v12;
    v13 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v16];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100001154;
    v14[3] = &unk_1000083C0;
    v15 = v12;
    [v13 getBackgroundColorOnImageData:v8 bitmapFormat:v9 withReply:v14];
  }
}

@end
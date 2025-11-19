@interface MRApplicationConnectionListener
- (BOOL)handleIncomingConnection:(id)a3 requestInfo:(id)a4;
- (MRApplicationConnectionListener)initWithServiceName:(id)a3 playerPath:(id)a4 incomingConnectionHandler:(id)a5;
@end

@implementation MRApplicationConnectionListener

- (MRApplicationConnectionListener)initWithServiceName:(id)a3 playerPath:(id)a4 incomingConnectionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = MRApplicationConnectionListener;
  v12 = [(MRApplicationConnectionListener *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceName, a3);
    objc_storeStrong(&v13->_playerPath, a4);
    v14 = MEMORY[0x1A58E3570](v11);
    handler = v13->_handler;
    v13->_handler = v14;
  }

  v16 = +[MRClientApplicationConnectionManager sharedManager];
  [v16 registerListener:v13];

  return v13;
}

- (BOOL)handleIncomingConnection:(id)a3 requestInfo:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(MRApplicationConnectionListener *)self handler];
  v9 = (v8)[2](v8, v7, v6);

  return v9;
}

@end
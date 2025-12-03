@interface MRApplicationConnectionListener
- (BOOL)handleIncomingConnection:(id)connection requestInfo:(id)info;
- (MRApplicationConnectionListener)initWithServiceName:(id)name playerPath:(id)path incomingConnectionHandler:(id)handler;
@end

@implementation MRApplicationConnectionListener

- (MRApplicationConnectionListener)initWithServiceName:(id)name playerPath:(id)path incomingConnectionHandler:(id)handler
{
  nameCopy = name;
  pathCopy = path;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = MRApplicationConnectionListener;
  v12 = [(MRApplicationConnectionListener *)&v18 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_serviceName, name);
    objc_storeStrong(&v13->_playerPath, path);
    v14 = MEMORY[0x1A58E3570](handlerCopy);
    handler = v13->_handler;
    v13->_handler = v14;
  }

  v16 = +[MRClientApplicationConnectionManager sharedManager];
  [v16 registerListener:v13];

  return v13;
}

- (BOOL)handleIncomingConnection:(id)connection requestInfo:(id)info
{
  infoCopy = info;
  connectionCopy = connection;
  handler = [(MRApplicationConnectionListener *)self handler];
  v9 = (handler)[2](handler, connectionCopy, infoCopy);

  return v9;
}

@end
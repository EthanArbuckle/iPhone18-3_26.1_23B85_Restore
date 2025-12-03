@interface MNNavigationServicePeer
- (MNNavigationServicePeer)initWithConnection:(id)connection;
- (id)description;
- (void)clearConnection;
@end

@implementation MNNavigationServicePeer

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  peerIdentifier = self->_peerIdentifier;
  processIdentifier = self->_processIdentifier;
  remoteObjectProxy = [*(&self->super.super.isa + *MEMORY[0x1E69A27C0]) remoteObjectProxy];
  v6 = [v2 stringWithFormat:@"('%@', pid: %d, remoteObjectProxy: %p)", peerIdentifier, processIdentifier, remoteObjectProxy];

  return v6;
}

- (void)clearConnection
{
  v3 = *MEMORY[0x1E69A27C0];
  [*(&self->super.super.isa + v3) setInvalidationHandler:0];
  [*(&self->super.super.isa + v3) setInterruptionHandler:0];
  v4 = *(&self->super.super.isa + v3);

  [v4 setExportedObject:0];
}

- (MNNavigationServicePeer)initWithConnection:(id)connection
{
  v23 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v17.receiver = self;
  v17.super_class = MNNavigationServicePeer;
  v5 = [(GEONavdPeer *)&v17 initWithXPCConnection:connectionCopy];
  if (v5)
  {
    lastPathComponent = [connectionCopy valueForEntitlement:@"application-identifier"];
    processIdentifier = [connectionCopy processIdentifier];
    v8 = processIdentifier;
    if (!lastPathComponent)
    {
      v9 = proc_pidpath(processIdentifier, buffer, 0x400u);
      if (v9 < 1)
      {
        lastPathComponent = [MEMORY[0x1E696AEC0] stringWithFormat:@"pid = %d", v8];
        v10 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v19 = lastPathComponent;
          _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "No application ID or process name found. Using process ID as ID: %@", buf, 0xCu);
        }
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v9 encoding:4];
        lastPathComponent = [v10 lastPathComponent];
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v19 = lastPathComponent;
          _os_log_impl(&dword_1D311E000, v11, OS_LOG_TYPE_DEBUG, "No application ID found. Using process name as ID: %@", buf, 0xCu);
        }
      }
    }

    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      buffer[0] = 67109378;
      buffer[1] = v8;
      v21 = 2112;
      v22 = lastPathComponent;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_INFO, "Allocating new peer for process identifier: %d, peer identifier: %@", buffer, 0x12u);
    }

    peerIdentifier = v5->_peerIdentifier;
    v5->_peerIdentifier = lastPathComponent;

    v5->_processIdentifier = v8;
    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
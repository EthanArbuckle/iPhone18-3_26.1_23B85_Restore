@interface MNNavigationServicePeer
- (MNNavigationServicePeer)initWithConnection:(id)a3;
- (id)description;
- (void)clearConnection;
@end

@implementation MNNavigationServicePeer

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  peerIdentifier = self->_peerIdentifier;
  processIdentifier = self->_processIdentifier;
  v5 = [*(&self->super.super.isa + *MEMORY[0x1E69A27C0]) remoteObjectProxy];
  v6 = [v2 stringWithFormat:@"('%@', pid: %d, remoteObjectProxy: %p)", peerIdentifier, processIdentifier, v5];

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

- (MNNavigationServicePeer)initWithConnection:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MNNavigationServicePeer;
  v5 = [(GEONavdPeer *)&v17 initWithXPCConnection:v4];
  if (v5)
  {
    v6 = [v4 valueForEntitlement:@"application-identifier"];
    v7 = [v4 processIdentifier];
    v8 = v7;
    if (!v6)
    {
      v9 = proc_pidpath(v7, buffer, 0x400u);
      if (v9 < 1)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"pid = %d", v8];
        v10 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v19 = v6;
          _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_DEBUG, "No application ID or process name found. Using process ID as ID: %@", buf, 0xCu);
        }
      }

      else
      {
        v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v9 encoding:4];
        v6 = [v10 lastPathComponent];
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v19 = v6;
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
      v22 = v6;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_INFO, "Allocating new peer for process identifier: %d, peer identifier: %@", buffer, 0x12u);
    }

    peerIdentifier = v5->_peerIdentifier;
    v5->_peerIdentifier = v6;

    v5->_processIdentifier = v8;
    v14 = v5;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end
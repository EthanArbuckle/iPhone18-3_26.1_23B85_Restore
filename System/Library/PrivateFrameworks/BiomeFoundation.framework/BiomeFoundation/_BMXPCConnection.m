@interface _BMXPCConnection
- (id)_errorDescription;
- (id)_initWithConnection:(id)a3 queue:(id)a4 flags:(unint64_t)a5;
@end

@implementation _BMXPCConnection

- (id)_initWithConnection:(id)a3 queue:(id)a4 flags:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [[_BMXPCTransport alloc] initWithConnection:v8];
  v16.receiver = self;
  v16.super_class = _BMXPCConnection;
  v11 = [(_BMXPCConnection *)&v16 _initWithCustomTransport:v10];
  v12 = v11;
  if (v11)
  {
    if (v9)
    {
      [v11 _setQueue:v9];
    }

    name = xpc_connection_get_name(v8);
    if (name)
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:name];
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(v12 + 20, v14);
    if (name)
    {
    }

    objc_storeStrong(v12 + 21, v10);
    v12[22] = a5;
  }

  return v12;
}

- (id)_errorDescription
{
  v3 = [(_BMXPCTransport *)self->_transport processIdentifier];
  if (self->_flags)
  {
    if (v3)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" from pid %d", v3];
    }

    else
    {
      v4 = &stru_1F20E2850;
    }

    serviceName = self->_serviceName;
    if (serviceName && [(NSString *)serviceName length])
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"connection%@ on mach service named %@", v4, self->_serviceName];
    }

    else
    {
      if ((self->_flags & 4) != 0)
      {
        v6 = @"serviceListener";
      }

      else
      {
        v6 = @"anonymousListener";
      }

      [MEMORY[0x1E696AEC0] stringWithFormat:@"connection%@ on %@", v4, v6];
    }
  }

  else
  {
    if (v3)
    {
      v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" with pid %d", v3];
    }

    else
    {
      v4 = &stru_1F20E2850;
    }

    if ((self->_flags & 2) != 0)
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"connection to service%@ created from an endpoint", v4, v9];
    }

    else
    {
      [MEMORY[0x1E696AEC0] stringWithFormat:@"connection to service%@ named %@", v4, self->_serviceName];
    }
  }
  v7 = ;

  return v7;
}

@end
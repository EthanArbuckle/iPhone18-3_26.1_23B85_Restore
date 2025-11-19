@interface IDSMultiplexerSimulatorConnection
- (BOOL)tryConsumePacketBuffer:(id *)a3;
- (IDSMultiplexerSimulatorConnection)initWithConnection:(id)a3;
- (void)callPacketBufferReadHandler:(id *)a3;
- (void)invalidate;
- (void)receiveFromSimulatorSendToQRLoopFromConnection:(id)a3;
- (void)writePacketBuffer:(id *)a3;
@end

@implementation IDSMultiplexerSimulatorConnection

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  readHandler = self->super._readHandler;
  self->super._readHandler = 0;

  self->super._invalidated = 1;

  os_unfair_lock_unlock(&self->_lock);
}

- (IDSMultiplexerSimulatorConnection)initWithConnection:(id)a3
{
  v7.receiver = self;
  v7.super_class = IDSMultiplexerSimulatorConnection;
  v3 = a3;
  v4 = [(IDSMultiplexerConnection *)&v7 init];
  v4->super._invalidated = 0;
  [(IDSMultiplexerConnection *)v4 setConnection:v3, v7.receiver, v7.super_class];

  v5 = [(IDSMultiplexerConnection *)v4 connection];
  [(IDSMultiplexerSimulatorConnection *)v4 receiveFromSimulatorSendToQRLoopFromConnection:v5];

  return v4;
}

- (void)receiveFromSimulatorSendToQRLoopFromConnection:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1006D5A50;
  v4[3] = &unk_100BE57C8;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  nw_connection_receive(v3, 1u, 0xFFFFFFFF, v4);
}

- (void)callPacketBufferReadHandler:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  invalidated = self->super._invalidated;
  os_unfair_lock_unlock(&self->_lock);
  if (invalidated)
  {
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "readPacketBuffer called but invalidated - %@", &v7, 0xCu);
    }
  }

  else
  {
    v6 = *(self->super._readHandler + 2);

    v6();
  }
}

- (void)writePacketBuffer:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(IDSMultiplexerConnection *)self connection];
  invalidated = self->super._invalidated;
  os_unfair_lock_unlock(&self->_lock);
  if (invalidated)
  {
    v7 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "writePacketBuffer called but invalidated - %@", &v8, 0xCu);
    }
  }

  else
  {
    v7 = dispatch_data_create(a3->var0 + 8, a3->var2 - 8, 0, 0);
    [(IDSMultiplexerSimulatorConnection *)self sendToSimulatorLoopOnConnection:v5 withData:v7];
  }
}

- (BOOL)tryConsumePacketBuffer:(id *)a3
{
  os_unfair_lock_lock(&self->_lock);
  if (self->super._invalidated)
  {
    os_unfair_lock_unlock(&self->_lock);
    v5 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      *v16 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "writePacketBuffer called but invalidated - %@", &v15, 0xCu);
    }
  }

  else if (a3->var2 > 3)
  {
    v8 = __rev16(*a3->var0);
    v9 = __rev16(*(a3->var0 + 1));
    v10 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [(IDSMultiplexerConnection *)self localPort];
      v12 = [(IDSMultiplexerConnection *)self remotePort];
      var2 = a3->var2;
      v15 = 67110144;
      *v16 = v11;
      *&v16[4] = 1024;
      *&v16[6] = v12;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v8;
      v21 = 2048;
      v22 = var2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "connection local:%u remote:%u tryConsume packet dst:%u src:%u packetBufferLength:%ld", &v15, 0x24u);
    }

    if ([(IDSMultiplexerConnection *)self localPort]== v9 && (![(IDSMultiplexerConnection *)self remotePort]|| [(IDSMultiplexerConnection *)self remotePort]== v8))
    {
      os_unfair_lock_unlock(&self->_lock);
      [(IDSMultiplexerSimulatorConnection *)self writePacketBuffer:a3];
      return 1;
    }

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v6 = +[IDSFoundationLog Multiplexer];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a3->var2;
      v15 = 134217984;
      *v16 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Connection cannot retrieve port signature, invalid packetBuffer size: %ld", &v15, 0xCu);
    }
  }

  return 0;
}

@end
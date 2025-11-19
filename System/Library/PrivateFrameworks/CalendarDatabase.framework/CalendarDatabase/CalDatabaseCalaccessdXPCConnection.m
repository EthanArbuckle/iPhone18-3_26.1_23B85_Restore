@interface CalDatabaseCalaccessdXPCConnection
@end

@implementation CalDatabaseCalaccessdXPCConnection

void ___CalDatabaseCalaccessdXPCConnection_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2 == MEMORY[0x1E69E9E18] || a2 == MEMORY[0x1E69E9E20])
  {
    pthread_mutex_lock(&_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnectionLock);
    v4 = _CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection;
    if (_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection)
    {
      _CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnection = 0;
    }

    pthread_mutex_unlock(&_CalDatabaseCalaccessdXPCConnection___CalaccessdXPCConnectionLock);
  }
}

@end
@interface BRXPCAutomaticErrorProxy
+ (void)decrementConnectionRefCount:(id)a3;
+ (void)incrementConnectionRefCount:(id)a3;
- (BRXPCAutomaticErrorProxy)initWithConnection:(id)a3 service:(id)a4 interface:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BRXPCAutomaticErrorProxy

- (BRXPCAutomaticErrorProxy)initWithConnection:(id)a3 service:(id)a4 interface:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  [v9 setRemoteObjectInterface:v11];
  v12 = [v11 protocol];

  v13 = [v10 name];
  v14 = [v13 stringByAppendingString:@" error proxy"];
  v15 = getpid();
  v18.receiver = self;
  v18.super_class = BRXPCAutomaticErrorProxy;
  v16 = [(FPXPCAutomaticErrorProxy *)&v18 initWithConnection:v9 protocol:v12 orError:0 name:v14 requestPid:v15];

  if (v16)
  {
    objc_storeStrong(&v16->_connection, a3);
    objc_storeStrong(&v16->_service, a4);
    [BRXPCAutomaticErrorProxy incrementConnectionRefCount:v16->_connection];
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = BRXPCAutomaticErrorProxy;
  v4 = [(FPXPCAutomaticErrorProxy *)&v7 copyWithZone:a3];
  objc_storeStrong(v4 + 13, self->_service);
  objc_storeStrong(v4 + 12, self->_connection);
  v5 = __connectionToReferenceCount;
  objc_sync_enter(v5);
  [BRXPCAutomaticErrorProxy incrementConnectionRefCount:self->_connection];
  objc_sync_exit(v5);

  return v4;
}

- (void)invalidate
{
  obj = __connectionToReferenceCount;
  objc_sync_enter(obj);
  [BRXPCAutomaticErrorProxy decrementConnectionRefCount:self->_connection];
  connection = self->_connection;
  self->_connection = 0;

  objc_sync_exit(obj);
}

- (void)dealloc
{
  [(BRXPCAutomaticErrorProxy *)self invalidate];
  v3.receiver = self;
  v3.super_class = BRXPCAutomaticErrorProxy;
  [(BRXPCAutomaticErrorProxy *)&v3 dealloc];
}

+ (void)incrementConnectionRefCount:(id)a3
{
  v8 = a3;
  if (v8)
  {
    if (incrementConnectionRefCount__onceToken != -1)
    {
      +[BRXPCAutomaticErrorProxy incrementConnectionRefCount:];
    }

    v3 = __connectionToReferenceCount;
    objc_sync_enter(v3);
    v4 = [__connectionToReferenceCount objectForKey:v8];
    v5 = v4;
    v6 = __connectionToReferenceCount;
    if (v4)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(v4, "longLongValue") + 1}];
      [v6 setObject:v7 forKey:v8];
    }

    else
    {
      [__connectionToReferenceCount setObject:&unk_1F23E6910 forKey:v8];
    }

    objc_sync_exit(v3);
  }
}

uint64_t __56__BRXPCAutomaticErrorProxy_incrementConnectionRefCount___block_invoke()
{
  __connectionToReferenceCount = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];

  return MEMORY[0x1EEE66BB8]();
}

+ (void)decrementConnectionRefCount:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = __connectionToReferenceCount;
    objc_sync_enter(v4);
    v5 = [__connectionToReferenceCount objectForKey:v3];
    v6 = [v5 longLongValue];
    v7 = v6 - 1;
    if (v6 > 1)
    {
      v8 = __connectionToReferenceCount;
      v9 = [MEMORY[0x1E696AD98] numberWithLongLong:v7];
      [v8 setObject:v9 forKey:v3];
    }

    else
    {
      if (v6 != 1)
      {
        v10 = brc_bread_crumbs("+[BRXPCAutomaticErrorProxy decrementConnectionRefCount:]", 103);
        v11 = brc_default_log(0, 0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          [(BRXPCAutomaticErrorProxy *)v10 decrementConnectionRefCount:v11];
        }
      }

      [v3 invalidate];
      [__connectionToReferenceCount removeObjectForKey:v3];
    }

    objc_sync_exit(v4);
  }
}

+ (void)decrementConnectionRefCount:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] Assertion failed: count == 1%@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

@end
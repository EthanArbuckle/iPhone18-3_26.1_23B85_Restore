@interface CHLogServer
+ (id)sharedInstance;
- (CHLogServer)init;
- (id)logHandleForDomain:(const char *)domain;
@end

@implementation CHLogServer

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[CHLogServer sharedInstance];
  }

  v3 = sharedInstance_sLogServer;

  return v3;
}

- (CHLogServer)init
{
  v7.receiver = self;
  v7.super_class = CHLogServer;
  v2 = [(CHLogServer *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    logHandleToDomain = v3->_logHandleToDomain;
    v3->_logHandleToDomain = v4;
  }

  return v3;
}

uint64_t __29__CHLogServer_sharedInstance__block_invoke()
{
  sharedInstance_sLogServer = objc_alloc_init(CHLogServer);

  return MEMORY[0x1EEE66BB8]();
}

- (id)logHandleForDomain:(const char *)domain
{
  os_unfair_lock_lock(&self->_accessorLock);
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:domain];
  logHandleToDomain = [(CHLogServer *)self logHandleToDomain];
  v7 = [logHandleToDomain objectForKeyedSubscript:v5];

  if (!v7)
  {
    v7 = os_log_create("com.apple.callhistory", domain);
    logHandleToDomain2 = [(CHLogServer *)self logHandleToDomain];
    [logHandleToDomain2 setObject:v7 forKeyedSubscript:v5];
  }

  os_unfair_lock_unlock(&self->_accessorLock);

  return v7;
}

@end
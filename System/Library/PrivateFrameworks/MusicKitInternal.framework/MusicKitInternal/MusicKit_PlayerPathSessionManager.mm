@interface MusicKit_PlayerPathSessionManager
+ (MusicKit_PlayerPathSessionManager)sharedSessionManager;
- (MusicKit_PlayerPathSessionManager)init;
- (id)sessionIDForPlayerPath:(id)path;
@end

@implementation MusicKit_PlayerPathSessionManager

- (MusicKit_PlayerPathSessionManager)init
{
  v6.receiver = self;
  v6.super_class = MusicKit_PlayerPathSessionManager;
  v2 = [(MusicKit_PlayerPathSessionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sessionIDsByPlayerPath = v2->_sessionIDsByPlayerPath;
    v2->_sessionIDsByPlayerPath = v3;

    v2->_lock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

+ (MusicKit_PlayerPathSessionManager)sharedSessionManager
{
  if (sharedSessionManager_sOnceToken != -1)
  {
    +[MusicKit_PlayerPathSessionManager sharedSessionManager];
  }

  v3 = sharedSessionManager_sSharedSessionManager;

  return v3;
}

- (id)sessionIDForPlayerPath:(id)path
{
  pathCopy = path;
  os_unfair_lock_lock(&self->_lock);
  v5 = pathCopy;
  uUIDString = [(NSMutableDictionary *)self->_sessionIDsByPlayerPath objectForKey:v5];
  if (!uUIDString)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    [(NSMutableDictionary *)self->_sessionIDsByPlayerPath setObject:uUIDString forKey:v5];
  }

  os_unfair_lock_unlock(&self->_lock);

  return uUIDString;
}

@end
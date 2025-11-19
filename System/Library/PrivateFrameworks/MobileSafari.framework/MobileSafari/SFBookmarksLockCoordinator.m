@interface SFBookmarksLockCoordinator
+ (SFBookmarksLockCoordinator)sharedCoordinator;
+ (void)showLockedDatabaseAlertForAction:(int64_t)a3 fromViewController:(id)a4;
- (BOOL)lockBookmarks;
- (SFBookmarksLockCoordinator)init;
- (void)_clearBookmarkLockTimer;
- (void)_didBecomeActive;
- (void)_unlockBookmarksNow;
- (void)_willResignActive;
- (void)dealloc;
- (void)unlockBookmarksIfNeeded;
- (void)unlockBookmarksSoon;
@end

@implementation SFBookmarksLockCoordinator

+ (SFBookmarksLockCoordinator)sharedCoordinator
{
  if (sharedCoordinator_onceToken != -1)
  {
    +[SFBookmarksLockCoordinator sharedCoordinator];
  }

  v3 = sharedCoordinator_sharedInstance;

  return v3;
}

void __47__SFBookmarksLockCoordinator_sharedCoordinator__block_invoke()
{
  v0 = objc_alloc_init(SFBookmarksLockCoordinator);
  v1 = sharedCoordinator_sharedInstance;
  sharedCoordinator_sharedInstance = v0;
}

- (SFBookmarksLockCoordinator)init
{
  v6.receiver = self;
  v6.super_class = SFBookmarksLockCoordinator;
  v2 = [(SFBookmarksLockCoordinator *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD88] defaultCenter];
    [v3 addObserver:v2 selector:sel__willResignActive name:*MEMORY[0x1E69DDBC8] object:0];
    [v3 addObserver:v2 selector:sel__didBecomeActive name:*MEMORY[0x1E69DDAB0] object:0];
    v2->_needsBookmarksLockOnAppResume = 0;
    v4 = v2;
  }

  return v2;
}

- (void)_willResignActive
{
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, v3, OS_LOG_TYPE_INFO, "Application will resign active, unlocking bookmarks if needed", v4, 2u);
  }

  self->_needsBookmarksLockOnAppResume = self->_haveBookmarksLock;
  [(SFBookmarksLockCoordinator *)self unlockBookmarksIfNeeded];
}

- (void)_didBecomeActive
{
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, v3, OS_LOG_TYPE_INFO, "Application did become active, locking bookmarks if needed", v4, 2u);
  }

  if (self->_needsBookmarksLockOnAppResume)
  {
    [(SFBookmarksLockCoordinator *)self lockBookmarks];
  }

  self->_needsBookmarksLockOnAppResume = 0;
}

- (BOOL)lockBookmarks
{
  [(SFBookmarksLockCoordinator *)self _clearBookmarkLockTimer];
  if (self->_haveBookmarksLock)
  {
    return 1;
  }

  v4 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_18B7AC000, v4, OS_LOG_TYPE_INFO, "Lock coordinator locking bookmarks", v5, 2u);
  }

  result = [MEMORY[0x1E69E20F8] lockSync];
  self->_haveBookmarksLock = result;
  return result;
}

- (void)unlockBookmarksSoon
{
  v3 = [MEMORY[0x1E695DFF0] scheduledTimerWithTimeInterval:self target:sel__unlockBookmarksNow selector:0 userInfo:0 repeats:10.0];
  bookmarkLockTimer = self->_bookmarkLockTimer;
  self->_bookmarkLockTimer = v3;
}

- (void)unlockBookmarksIfNeeded
{
  if (self->_haveBookmarksLock)
  {
    [(SFBookmarksLockCoordinator *)self _unlockBookmarksNow];
  }
}

- (void)_unlockBookmarksNow
{
  v3 = WBS_LOG_CHANNEL_PREFIXBookmarkSync();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_18B7AC000, v3, OS_LOG_TYPE_INFO, "Lock coordinator unlocking bookmarks", v4, 2u);
  }

  [(SFBookmarksLockCoordinator *)self _clearBookmarkLockTimer];
  [MEMORY[0x1E69E20F8] unlockSync];
  self->_haveBookmarksLock = 0;
}

- (void)_clearBookmarkLockTimer
{
  [(NSTimer *)self->_bookmarkLockTimer invalidate];
  bookmarkLockTimer = self->_bookmarkLockTimer;
  self->_bookmarkLockTimer = 0;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = SFBookmarksLockCoordinator;
  [(SFBookmarksLockCoordinator *)&v2 dealloc];
}

+ (void)showLockedDatabaseAlertForAction:(int64_t)a3 fromViewController:(id)a4
{
  v15 = a4;
  if (a3 > 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = _WBSLocalizedString();
  }

  v6 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v5 preferredStyle:1];
  v7 = MEMORY[0x1E69DC648];
  v8 = _WBSLocalizedString();
  v9 = [v7 actionWithTitle:v8 style:1 handler:0];
  [v6 addAction:v9];

  v10 = [v15 view];
  v11 = [v10 window];

  v12 = *MEMORY[0x1E69DDA98];
  v13 = [v11 _eventRoutingScene];
  [v12 _cancelAllEventsOfType:3 onEventRoutingScene:v13];

  v14 = [v11 rootViewController];
  [v14 presentViewController:v6 animated:1 completion:0];
}

@end
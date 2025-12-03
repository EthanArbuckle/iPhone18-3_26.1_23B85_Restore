@interface CPLSyncIndicator
+ (void)_doProtected:(id)protected;
+ (void)hideSyncIndicator;
+ (void)setForeground:(BOOL)foreground;
+ (void)showSyncIndicator;
@end

@implementation CPLSyncIndicator

+ (void)setForeground:(BOOL)foreground
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __34__CPLSyncIndicator_setForeground___block_invoke;
  v3[3] = &__block_descriptor_41_e5_v8__0l;
  foregroundCopy = foreground;
  v3[4] = self;
  [self _doProtected:v3];
}

uint64_t __34__CPLSyncIndicator_setForeground___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1 != _foreground)
  {
    _foreground = *(result + 40);
    if (_showSyncIndicator == 1)
    {
      v2 = *(result + 32);
      if (v1)
      {
        return [v2 _reallyShowSyncIndicator];
      }

      else
      {
        return [v2 _reallyHideSyncIndicator];
      }
    }
  }

  return result;
}

+ (void)hideSyncIndicator
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __37__CPLSyncIndicator_hideSyncIndicator__block_invoke;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = self;
  [self _doProtected:v2];
}

uint64_t __37__CPLSyncIndicator_hideSyncIndicator__block_invoke(uint64_t result)
{
  if (_showSyncIndicator == 1)
  {
    if (_foreground == 1)
    {
      result = [*(result + 32) _reallyHideSyncIndicator];
    }

    _showSyncIndicator = 0;
  }

  return result;
}

+ (void)showSyncIndicator
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __37__CPLSyncIndicator_showSyncIndicator__block_invoke;
  v2[3] = &__block_descriptor_40_e5_v8__0l;
  v2[4] = self;
  [self _doProtected:v2];
}

uint64_t __37__CPLSyncIndicator_showSyncIndicator__block_invoke(uint64_t result)
{
  if ((_showSyncIndicator & 1) == 0)
  {
    if (_foreground == 1)
    {
      result = [*(result + 32) _reallyShowSyncIndicator];
    }

    _showSyncIndicator = 1;
  }

  return result;
}

+ (void)_doProtected:(id)protected
{
  v3 = _doProtected__onceToken_15352;
  protectedCopy = protected;
  v6 = protectedCopy;
  if (v3 == -1)
  {
    v5 = protectedCopy;
  }

  else
  {
    dispatch_once(&_doProtected__onceToken_15352, &__block_literal_global_15353);
    v5 = v6;
  }

  dispatch_sync(_doProtected__queue, v5);
}

uint64_t __33__CPLSyncIndicator__doProtected___block_invoke()
{
  v0 = dispatch_queue_create("com.apple.cpl.syncindicator", 0);
  v1 = _doProtected__queue;
  _doProtected__queue = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end
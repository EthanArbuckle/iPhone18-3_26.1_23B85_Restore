@interface EMNSUserDefaultsBoolObserver
- (EMNSUserDefaultsBoolObserver)initWithUserDefaults:(id)defaults keyPath:(id)path keyRepresentsDisabled:(BOOL)disabled handler:(id)handler;
- (uint64_t)_getEnabledWithUserDefaults:(void *)defaults keyPath:(int)path keyRepresentsDisabled:;
@end

@implementation EMNSUserDefaultsBoolObserver

- (EMNSUserDefaultsBoolObserver)initWithUserDefaults:(id)defaults keyPath:(id)path keyRepresentsDisabled:(BOOL)disabled handler:(id)handler
{
  disabledCopy = disabled;
  defaultsCopy = defaults;
  pathCopy = path;
  handlerCopy = handler;
  v25.receiver = self;
  v25.super_class = EMNSUserDefaultsBoolObserver;
  v13 = [(EMNSUserDefaultsBoolObserver *)&v25 init];
  v14 = v13;
  if (v13)
  {
    v13->_enabled = [(EMNSUserDefaultsBoolObserver *)v13 _getEnabledWithUserDefaults:defaultsCopy keyPath:pathCopy keyRepresentsDisabled:disabledCopy];
    objc_initWeak(&location, v14);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __91__EMNSUserDefaultsBoolObserver_initWithUserDefaults_keyPath_keyRepresentsDisabled_handler___block_invoke;
    v18[3] = &unk_1E826F010;
    objc_copyWeak(&v22, &location);
    v19 = defaultsCopy;
    v20 = pathCopy;
    v23 = disabledCopy;
    v21 = handlerCopy;
    v15 = [v19 ef_observeKeyPath:v20 options:1 autoCancelToken:1 usingBlock:v18];
    observationToken = v14->_observationToken;
    v14->_observationToken = v15;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v14;
}

- (uint64_t)_getEnabledWithUserDefaults:(void *)defaults keyPath:(int)path keyRepresentsDisabled:
{
  v7 = a2;
  defaultsCopy = defaults;
  if (self)
  {
    v9 = [v7 BOOLForKey:defaultsCopy] ^ path;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __91__EMNSUserDefaultsBoolObserver_initWithUserDefaults_keyPath_keyRepresentsDisabled_handler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    WeakRetained[16] = [(EMNSUserDefaultsBoolObserver *)WeakRetained _getEnabledWithUserDefaults:*(a1 + 40) keyPath:*(a1 + 64) keyRepresentsDisabled:?];
    v2 = *(a1 + 48);
    if (v2)
    {
      (*(v2 + 16))(v2, *(a1 + 40));
    }
  }
}

@end
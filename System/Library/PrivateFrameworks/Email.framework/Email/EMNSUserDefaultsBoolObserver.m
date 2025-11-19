@interface EMNSUserDefaultsBoolObserver
- (EMNSUserDefaultsBoolObserver)initWithUserDefaults:(id)a3 keyPath:(id)a4 keyRepresentsDisabled:(BOOL)a5 handler:(id)a6;
- (uint64_t)_getEnabledWithUserDefaults:(void *)a3 keyPath:(int)a4 keyRepresentsDisabled:;
@end

@implementation EMNSUserDefaultsBoolObserver

- (EMNSUserDefaultsBoolObserver)initWithUserDefaults:(id)a3 keyPath:(id)a4 keyRepresentsDisabled:(BOOL)a5 handler:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v25.receiver = self;
  v25.super_class = EMNSUserDefaultsBoolObserver;
  v13 = [(EMNSUserDefaultsBoolObserver *)&v25 init];
  v14 = v13;
  if (v13)
  {
    v13->_enabled = [(EMNSUserDefaultsBoolObserver *)v13 _getEnabledWithUserDefaults:v10 keyPath:v11 keyRepresentsDisabled:v7];
    objc_initWeak(&location, v14);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __91__EMNSUserDefaultsBoolObserver_initWithUserDefaults_keyPath_keyRepresentsDisabled_handler___block_invoke;
    v18[3] = &unk_1E826F010;
    objc_copyWeak(&v22, &location);
    v19 = v10;
    v20 = v11;
    v23 = v7;
    v21 = v12;
    v15 = [v19 ef_observeKeyPath:v20 options:1 autoCancelToken:1 usingBlock:v18];
    observationToken = v14->_observationToken;
    v14->_observationToken = v15;

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v14;
}

- (uint64_t)_getEnabledWithUserDefaults:(void *)a3 keyPath:(int)a4 keyRepresentsDisabled:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v9 = [v7 BOOLForKey:v8] ^ a4;
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
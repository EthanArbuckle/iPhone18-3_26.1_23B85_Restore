@interface NACXPCClient
+ (id)sharedClient;
- (NACXPCClient)init;
- (id)_proxy;
- (void)EULimitForTarget:(id)a3 result:(id)a4;
- (void)_createConnection;
- (void)_resumeListeningModesObservingIfNecessary;
- (void)_resumeRouteObservingIfNecessary;
- (void)_resumeVolumeObservingIfNecessary;
- (void)audioRoutesForCategory:(id)a3 result:(id)a4;
- (void)availableListeningModesForTarget:(id)a3 result:(id)a4;
- (void)beginObservingAudioRoutesForCategory:(id)a3;
- (void)beginObservingListeningModesForTarget:(id)a3;
- (void)beginObservingVolumeForTarget:(id)a3;
- (void)currentListeningModeForTarget:(id)a3 result:(id)a4;
- (void)endObservingAudioRoutesForCategory:(id)a3;
- (void)endObservingListeningModesForTarget:(id)a3;
- (void)endObservingVolumeForTarget:(id)a3;
- (void)hapticIntensity:(id)a3;
- (void)hapticState:(id)a3;
- (void)mutedStateForTarget:(id)a3 result:(id)a4;
- (void)pickAudioRouteWithIdentifier:(id)a3 category:(id)a4;
- (void)playAudioAndHapticPreview;
- (void)playDefaultHapticPreview;
- (void)playProminentHapticPreview;
- (void)playToneWithConfiguration:(id)a3;
- (void)prominentHapticEnabled:(id)a3;
- (void)setCurrentListeningMode:(id)a3 forTarget:(id)a4;
- (void)setHapticIntensity:(float)a3;
- (void)setHapticState:(int64_t)a3;
- (void)setMuted:(BOOL)a3 forTarget:(id)a4;
- (void)setProminentHapticEnabled:(BOOL)a3;
- (void)setSystemMuted:(BOOL)a3;
- (void)setVolumeValue:(float)a3 forTarget:(id)a4;
- (void)stopToneWithOptions:(id)a3;
- (void)systemMutedState:(id)a3;
- (void)volumeControlAvailabilityForTarget:(id)a3 result:(id)a4;
- (void)volumeValueForTarget:(id)a3 result:(id)a4;
- (void)volumeWarningForTarget:(id)a3 result:(id)a4;
@end

@implementation NACXPCClient

+ (id)sharedClient
{
  if (sharedClient___onceToken != -1)
  {
    +[NACXPCClient sharedClient];
  }

  v3 = sharedClient_sharedClient;

  return v3;
}

uint64_t __28__NACXPCClient_sharedClient__block_invoke()
{
  sharedClient_sharedClient = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (NACXPCClient)init
{
  v15.receiver = self;
  v15.super_class = NACXPCClient;
  v2 = [(NACXPCClient *)&v15 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);
    v5 = dispatch_queue_create("com.apple.NanoAudioControl.XPC", v4);
    xpcConnectionQueue = v2->_xpcConnectionQueue;
    v2->_xpcConnectionQueue = v5;

    v7 = objc_opt_new();
    routeObservingCategories = v2->_routeObservingCategories;
    v2->_routeObservingCategories = v7;

    v9 = objc_opt_new();
    volumeObservingTargets = v2->_volumeObservingTargets;
    v2->_volumeObservingTargets = v9;

    v11 = v2->_xpcConnectionQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __20__NACXPCClient_init__block_invoke;
    block[3] = &unk_27992B4E8;
    v14 = v2;
    dispatch_async(v11, block);
  }

  return v2;
}

- (void)_resumeVolumeObservingIfNecessary
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_volumeObservingTargets;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NACXPCClient *)self beginObservingVolumeForTarget:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resumeListeningModesObservingIfNecessary
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_listeningModesObservingTargets;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(NACXPCClient *)self beginObservingListeningModesForTarget:*(*(&v9 + 1) + 8 * v7++), v9];
      }

      while (v5 != v7);
      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resumeRouteObservingIfNecessary
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = self->_routeObservingCategories;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        [(NSMutableSet *)self->_routeObservingCategories removeObject:v8, v10];
        [(NACXPCClient *)self beginObservingAudioRoutesForCategory:v8];
      }

      v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)beginObservingVolumeForTarget:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_volumeObservingTargets containsObject:v4]& 1) == 0)
  {
    xpcConnectionQueue = self->_xpcConnectionQueue;
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __46__NACXPCClient_beginObservingVolumeForTarget___block_invoke;
    v10 = &unk_27992B510;
    v11 = self;
    v6 = v4;
    v12 = v6;
    dispatch_async(xpcConnectionQueue, &v7);
    [(NSMutableSet *)self->_volumeObservingTargets addObject:v6, v7, v8, v9, v10, v11];
  }
}

void __46__NACXPCClient_beginObservingVolumeForTarget___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 beginObservingVolumeForTarget:*(a1 + 40)];
}

- (void)endObservingVolumeForTarget:(id)a3
{
  v4 = a3;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __44__NACXPCClient_endObservingVolumeForTarget___block_invoke;
  v10 = &unk_27992B510;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_async(xpcConnectionQueue, &v7);
  [(NSMutableSet *)self->_volumeObservingTargets removeObject:v6, v7, v8, v9, v10, v11];
}

void __44__NACXPCClient_endObservingVolumeForTarget___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 endObservingVolumeForTarget:*(a1 + 40)];
}

- (void)beginObservingListeningModesForTarget:(id)a3
{
  v4 = a3;
  if (([(NSMutableSet *)self->_listeningModesObservingTargets containsObject:v4]& 1) == 0)
  {
    xpcConnectionQueue = self->_xpcConnectionQueue;
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __54__NACXPCClient_beginObservingListeningModesForTarget___block_invoke;
    v13 = &unk_27992B510;
    v14 = self;
    v6 = v4;
    v15 = v6;
    dispatch_async(xpcConnectionQueue, &v10);
    listeningModesObservingTargets = self->_listeningModesObservingTargets;
    if (!listeningModesObservingTargets)
    {
      v8 = [MEMORY[0x277CBEB58] set];
      v9 = self->_listeningModesObservingTargets;
      self->_listeningModesObservingTargets = v8;

      listeningModesObservingTargets = self->_listeningModesObservingTargets;
    }

    [(NSMutableSet *)listeningModesObservingTargets addObject:v6, v10, v11, v12, v13, v14];
  }
}

void __54__NACXPCClient_beginObservingListeningModesForTarget___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 beginObservingListeningModesForTarget:*(a1 + 40)];
}

- (void)endObservingListeningModesForTarget:(id)a3
{
  v4 = a3;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __52__NACXPCClient_endObservingListeningModesForTarget___block_invoke;
  v10 = &unk_27992B510;
  v11 = self;
  v12 = v4;
  v6 = v4;
  dispatch_async(xpcConnectionQueue, &v7);
  [(NSMutableSet *)self->_listeningModesObservingTargets removeObject:v6, v7, v8, v9, v10, v11];
}

void __52__NACXPCClient_endObservingListeningModesForTarget___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 endObservingListeningModesForTarget:*(a1 + 40)];
}

- (void)volumeValueForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__NACXPCClient_volumeValueForTarget_result___block_invoke;
  block[3] = &unk_27992B538;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(xpcConnectionQueue, block);
}

void __44__NACXPCClient_volumeValueForTarget_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 volumeValueForTarget:*(a1 + 40) result:*(a1 + 48)];
}

- (void)volumeControlAvailabilityForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__NACXPCClient_volumeControlAvailabilityForTarget_result___block_invoke;
  block[3] = &unk_27992B538;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(xpcConnectionQueue, block);
}

void __58__NACXPCClient_volumeControlAvailabilityForTarget_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 volumeControlAvailabilityForTarget:*(a1 + 40) result:*(a1 + 48)];
}

- (void)mutedStateForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__NACXPCClient_mutedStateForTarget_result___block_invoke;
  block[3] = &unk_27992B538;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(xpcConnectionQueue, block);
}

void __43__NACXPCClient_mutedStateForTarget_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 mutedStateForTarget:*(a1 + 40) result:*(a1 + 48)];
}

- (void)hapticState:(id)a3
{
  v4 = a3;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __28__NACXPCClient_hapticState___block_invoke;
  v7[3] = &unk_27992B560;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcConnectionQueue, v7);
}

void __28__NACXPCClient_hapticState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 hapticState:*(a1 + 40)];
}

- (void)hapticIntensity:(id)a3
{
  v4 = a3;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__NACXPCClient_hapticIntensity___block_invoke;
  v7[3] = &unk_27992B560;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcConnectionQueue, v7);
}

void __32__NACXPCClient_hapticIntensity___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 hapticIntensity:*(a1 + 40)];
}

- (void)prominentHapticEnabled:(id)a3
{
  v4 = a3;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__NACXPCClient_prominentHapticEnabled___block_invoke;
  v7[3] = &unk_27992B560;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcConnectionQueue, v7);
}

void __39__NACXPCClient_prominentHapticEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 prominentHapticEnabled:*(a1 + 40)];
}

- (void)systemMutedState:(id)a3
{
  v4 = a3;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__NACXPCClient_systemMutedState___block_invoke;
  v7[3] = &unk_27992B560;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcConnectionQueue, v7);
}

void __33__NACXPCClient_systemMutedState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 systemMutedState:*(a1 + 40)];
}

- (void)EULimitForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NACXPCClient_EULimitForTarget_result___block_invoke;
  block[3] = &unk_27992B538;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(xpcConnectionQueue, block);
}

void __40__NACXPCClient_EULimitForTarget_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 EULimitForTarget:*(a1 + 40) result:*(a1 + 48)];
}

- (void)volumeWarningForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NACXPCClient_volumeWarningForTarget_result___block_invoke;
  block[3] = &unk_27992B538;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(xpcConnectionQueue, block);
}

void __46__NACXPCClient_volumeWarningForTarget_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 volumeWarningForTarget:*(a1 + 40) result:*(a1 + 48)];
}

- (void)setVolumeValue:(float)a3 forTarget:(id)a4
{
  v6 = a4;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NACXPCClient_setVolumeValue_forTarget___block_invoke;
  block[3] = &unk_27992B588;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(xpcConnectionQueue, block);
}

void __41__NACXPCClient_setVolumeValue_forTarget___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _proxy];
  LODWORD(v2) = *(a1 + 48);
  [v3 setVolumeValue:*(a1 + 40) forTarget:v2];
}

- (void)setMuted:(BOOL)a3 forTarget:(id)a4
{
  v6 = a4;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__NACXPCClient_setMuted_forTarget___block_invoke;
  block[3] = &unk_27992B5B0;
  v11 = a3;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(xpcConnectionQueue, block);
}

void __35__NACXPCClient_setMuted_forTarget___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 setMuted:*(a1 + 48) forTarget:*(a1 + 40)];
}

- (void)setHapticIntensity:(float)a3
{
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__NACXPCClient_setHapticIntensity___block_invoke;
  v4[3] = &unk_27992B5D8;
  v4[4] = self;
  v5 = a3;
  dispatch_async(xpcConnectionQueue, v4);
}

void __35__NACXPCClient_setHapticIntensity___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) _proxy];
  LODWORD(v2) = *(a1 + 40);
  [v3 setHapticIntensity:v2];
}

- (void)setProminentHapticEnabled:(BOOL)a3
{
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__NACXPCClient_setProminentHapticEnabled___block_invoke;
  v4[3] = &unk_27992B600;
  v4[4] = self;
  v5 = a3;
  dispatch_async(xpcConnectionQueue, v4);
}

void __42__NACXPCClient_setProminentHapticEnabled___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 setProminentHapticEnabled:*(a1 + 40)];
}

- (void)setHapticState:(int64_t)a3
{
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__NACXPCClient_setHapticState___block_invoke;
  v4[3] = &unk_27992B628;
  v4[4] = self;
  v4[5] = a3;
  dispatch_async(xpcConnectionQueue, v4);
}

void __31__NACXPCClient_setHapticState___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 setHapticState:*(a1 + 40)];
}

- (void)setSystemMuted:(BOOL)a3
{
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __31__NACXPCClient_setSystemMuted___block_invoke;
  v4[3] = &unk_27992B600;
  v4[4] = self;
  v5 = a3;
  dispatch_async(xpcConnectionQueue, v4);
}

void __31__NACXPCClient_setSystemMuted___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 setSystemMuted:*(a1 + 40)];
}

- (void)availableListeningModesForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__NACXPCClient_availableListeningModesForTarget_result___block_invoke;
  block[3] = &unk_27992B538;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(xpcConnectionQueue, block);
}

void __56__NACXPCClient_availableListeningModesForTarget_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 availableListeningModesForTarget:*(a1 + 40) result:*(a1 + 48)];
}

- (void)currentListeningModeForTarget:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __53__NACXPCClient_currentListeningModeForTarget_result___block_invoke;
  block[3] = &unk_27992B538;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(xpcConnectionQueue, block);
}

void __53__NACXPCClient_currentListeningModeForTarget_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 currentListeningModeForTarget:*(a1 + 40) result:*(a1 + 48)];
}

- (void)setCurrentListeningMode:(id)a3 forTarget:(id)a4
{
  v6 = a3;
  v7 = a4;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__NACXPCClient_setCurrentListeningMode_forTarget___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(xpcConnectionQueue, block);
}

void __50__NACXPCClient_setCurrentListeningMode_forTarget___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 setCurrentListeningMode:*(a1 + 40) forTarget:*(a1 + 48)];
}

- (void)audioRoutesForCategory:(id)a3 result:(id)a4
{
  v6 = a3;
  v7 = a4;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__NACXPCClient_audioRoutesForCategory_result___block_invoke;
  block[3] = &unk_27992B538;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(xpcConnectionQueue, block);
}

void __46__NACXPCClient_audioRoutesForCategory_result___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 audioRoutesForCategory:*(a1 + 40) result:*(a1 + 48)];
}

- (void)beginObservingAudioRoutesForCategory:(id)a3
{
  v4 = a3;
  v5 = NACCategoryStringWithRouteCategory(v4);
  if (([(NSMutableSet *)self->_routeObservingCategories containsObject:v5]& 1) == 0)
  {
    xpcConnectionQueue = self->_xpcConnectionQueue;
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __53__NACXPCClient_beginObservingAudioRoutesForCategory___block_invoke;
    v10 = &unk_27992B510;
    v11 = self;
    v12 = v4;
    dispatch_async(xpcConnectionQueue, &v7);
    [(NSMutableSet *)self->_routeObservingCategories addObject:v5, v7, v8, v9, v10, v11];
  }
}

void __53__NACXPCClient_beginObservingAudioRoutesForCategory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 beginObservingAudioRoutesForCategory:*(a1 + 40)];
}

- (void)endObservingAudioRoutesForCategory:(id)a3
{
  v4 = a3;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __51__NACXPCClient_endObservingAudioRoutesForCategory___block_invoke;
  v11 = &unk_27992B510;
  v12 = self;
  v13 = v4;
  v6 = v4;
  dispatch_async(xpcConnectionQueue, &v8);
  v7 = NACCategoryStringWithRouteCategory(v6);
  [(NSMutableSet *)self->_routeObservingCategories removeObject:v7, v8, v9, v10, v11, v12];
}

void __51__NACXPCClient_endObservingAudioRoutesForCategory___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 endObservingAudioRoutesForCategory:*(a1 + 40)];
}

- (void)pickAudioRouteWithIdentifier:(id)a3 category:(id)a4
{
  v6 = a3;
  v7 = a4;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __54__NACXPCClient_pickAudioRouteWithIdentifier_category___block_invoke;
  block[3] = &unk_27992B650;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(xpcConnectionQueue, block);
}

void __54__NACXPCClient_pickAudioRouteWithIdentifier_category___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 pickAudioRouteWithIdentifier:*(a1 + 40) category:*(a1 + 48)];
}

- (void)playAudioAndHapticPreview
{
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__NACXPCClient_playAudioAndHapticPreview__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(xpcConnectionQueue, block);
}

void __41__NACXPCClient_playAudioAndHapticPreview__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _proxy];
  [v1 playAudioAndHapticPreview];
}

- (void)playDefaultHapticPreview
{
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__NACXPCClient_playDefaultHapticPreview__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(xpcConnectionQueue, block);
}

void __40__NACXPCClient_playDefaultHapticPreview__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _proxy];
  [v1 playDefaultHapticPreview];
}

- (void)playProminentHapticPreview
{
  xpcConnectionQueue = self->_xpcConnectionQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__NACXPCClient_playProminentHapticPreview__block_invoke;
  block[3] = &unk_27992B4E8;
  block[4] = self;
  dispatch_async(xpcConnectionQueue, block);
}

void __42__NACXPCClient_playProminentHapticPreview__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _proxy];
  [v1 playProminentHapticPreview];
}

- (void)playToneWithConfiguration:(id)a3
{
  v4 = a3;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__NACXPCClient_playToneWithConfiguration___block_invoke;
  v7[3] = &unk_27992B510;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcConnectionQueue, v7);
}

void __42__NACXPCClient_playToneWithConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 playToneWithConfiguration:*(a1 + 40)];
}

- (void)stopToneWithOptions:(id)a3
{
  v4 = a3;
  xpcConnectionQueue = self->_xpcConnectionQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__NACXPCClient_stopToneWithOptions___block_invoke;
  v7[3] = &unk_27992B510;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcConnectionQueue, v7);
}

void __36__NACXPCClient_stopToneWithOptions___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _proxy];
  [v2 stopToneWithOptions:*(a1 + 40)];
}

- (void)_createConnection
{
  v3 = MEMORY[0x277CBEB98];
  v4 = objc_opt_class();
  v5 = [v3 setWithObjects:{v4, objc_opt_class(), 0}];
  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286C49AC8];
  [v6 setClasses:v5 forSelector:sel_audioRoutesForCategory_result_ argumentIndex:0 ofReply:1];
  objc_initWeak(&location, self);
  v7 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.NanoAudioControl" options:0];
  xpcConnection = self->_xpcConnection;
  self->_xpcConnection = v7;

  [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v6];
  v9 = self->_xpcConnection;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __33__NACXPCClient__createConnection__block_invoke;
  v13[3] = &unk_27992B678;
  objc_copyWeak(&v14, &location);
  [(NSXPCConnection *)v9 setInterruptionHandler:v13];
  v10 = self->_xpcConnection;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__NACXPCClient__createConnection__block_invoke_2;
  v11[3] = &unk_27992B678;
  objc_copyWeak(&v12, &location);
  [(NSXPCConnection *)v10 setInvalidationHandler:v11];
  [(NSXPCConnection *)self->_xpcConnection resume];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __33__NACXPCClient__createConnection__block_invoke(uint64_t a1)
{
  v2 = NMLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AEBF000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection interrupted", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__NACXPCClient__createConnection__block_invoke_108;
    block[3] = &unk_27992B4E8;
    block[4] = WeakRetained;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

uint64_t __33__NACXPCClient__createConnection__block_invoke_108(uint64_t a1)
{
  [*(a1 + 32) _resumeVolumeObservingIfNecessary];
  [*(a1 + 32) _resumeListeningModesObservingIfNecessary];
  v2 = *(a1 + 32);

  return [v2 _resumeRouteObservingIfNecessary];
}

void __33__NACXPCClient__createConnection__block_invoke_2(uint64_t a1)
{
  v2 = NMLogForCategory(4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_25AEBF000, v2, OS_LOG_TYPE_DEFAULT, "XPC connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = WeakRetained[2];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__NACXPCClient__createConnection__block_invoke_109;
    block[3] = &unk_27992B4E8;
    block[4] = v4;
    dispatch_async(v5, block);
  }
}

void __33__NACXPCClient__createConnection__block_invoke_109(uint64_t a1)
{
  [*(*(a1 + 32) + 8) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (id)_proxy
{
  xpcConnection = self->_xpcConnection;
  if (!xpcConnection)
  {
    [(NACXPCClient *)self _createConnection];
    xpcConnection = self->_xpcConnection;
  }

  return [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:&__block_literal_global_112];
}

void __22__NACXPCClient__proxy__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = NMLogForCategory(4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __22__NACXPCClient__proxy__block_invoke_cold_1(v2, v3);
  }
}

void __22__NACXPCClient__proxy__block_invoke_cold_1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 localizedDescription];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_25AEBF000, a2, OS_LOG_TYPE_ERROR, "Error getting proxy object: %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end
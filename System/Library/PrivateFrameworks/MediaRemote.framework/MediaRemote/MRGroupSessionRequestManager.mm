@interface MRGroupSessionRequestManager
+ (id)sharedManager;
- (BOOL)updateGroupSessionEligibility:(id)eligibility;
- (MRGroupSessionEligibilityStatus)eligibilityStatus;
- (MRGroupSessionInfo)groupSessionInfo;
- (MRGroupSessionRequestManager)init;
- (MRUserIdentity)localUserIdentity;
- (void)augmentLocalCommandOptions:(id)options;
- (void)handleGroupSessionNearbyContactDiscoveryDidChange:(id)change;
- (void)registerObservers;
- (void)restoreState;
- (void)updateGroupSessionInfo:(id)info;
- (void)updateLocalIdentity:(id)identity;
@end

@implementation MRGroupSessionRequestManager

+ (id)sharedManager
{
  if (sharedManager_onceToken != -1)
  {
    +[MRGroupSessionRequestManager sharedManager];
  }

  v3 = sharedManager___shared;

  return v3;
}

void __45__MRGroupSessionRequestManager_sharedManager__block_invoke()
{
  v2 = +[MRSharedSettings currentSettings];
  if ([v2 supportGroupSession])
  {
    v0 = objc_alloc_init(MRGroupSessionRequestManager);
  }

  else
  {
    v0 = 0;
  }

  v1 = sharedManager___shared;
  sharedManager___shared = v0;
}

- (MRGroupSessionRequestManager)init
{
  v5.receiver = self;
  v5.super_class = MRGroupSessionRequestManager;
  v2 = [(MRGroupSessionRequestManager *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    [(MRGroupSessionRequestManager *)v2 registerObservers];
  }

  return v3;
}

- (void)registerObservers
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = +[MRUserSettings currentSettings];
  groupSessionNearbyContactDiscoveryDidChangeNotification = [v3 groupSessionNearbyContactDiscoveryDidChangeNotification];
  [defaultCenter addObserver:self selector:sel_handleGroupSessionNearbyContactDiscoveryDidChange_ name:groupSessionNearbyContactDiscoveryDidChangeNotification object:0];
}

- (MRGroupSessionInfo)groupSessionInfo
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_groupSessionInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)restoreState
{
  os_unfair_lock_lock(&self->_lock);
  self->_hasPopulatedIdentity = 0;
  localUserIdentity = self->_localUserIdentity;
  self->_localUserIdentity = 0;

  eligibilityStatus = self->_eligibilityStatus;
  self->_eligibilityStatus = 0;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)augmentLocalCommandOptions:(id)options
{
  optionsCopy = options;
  localUserIdentity = [(MRGroupSessionRequestManager *)self localUserIdentity];
  v5 = [MRPlaybackQueueParticipant expectedIdentifierForUserIdentity:localUserIdentity withRandomData:0];
  [optionsCopy setObject:v5 forKeyedSubscript:@"kMRMediaRemoteOptionAssociatedParticipantIdentifier"];
}

- (MRUserIdentity)localUserIdentity
{
  os_unfair_lock_lock(&self->_lock);
  localUserIdentity = self->_localUserIdentity;
  if (!localUserIdentity)
  {
    if (self->_hasPopulatedIdentity)
    {
      localUserIdentity = 0;
    }

    else
    {
      v4 = MRGetSharedService();
      applicationUserIdentity = [v4 applicationUserIdentity];
      v6 = self->_localUserIdentity;
      self->_localUserIdentity = applicationUserIdentity;

      self->_hasPopulatedIdentity = 1;
      localUserIdentity = self->_localUserIdentity;
    }
  }

  v7 = localUserIdentity;
  os_unfair_lock_unlock(&self->_lock);

  return v7;
}

- (MRGroupSessionEligibilityStatus)eligibilityStatus
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_eligibilityStatus;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateGroupSessionInfo:(id)info
{
  v10 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = infoCopy;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRGroupSessionRequestManager] Updating group session info: %@", &v8, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  groupSessionInfo = self->_groupSessionInfo;
  self->_groupSessionInfo = infoCopy;

  os_unfair_lock_unlock(&self->_lock);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)updateLocalIdentity:(id)identity
{
  v10 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v5 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = identityCopy;
    _os_log_impl(&dword_1A2860000, v5, OS_LOG_TYPE_DEFAULT, "[MRGroupSessionRequestManager] Updating local identity: %@", &v8, 0xCu);
  }

  os_unfair_lock_lock(&self->_lock);
  localUserIdentity = self->_localUserIdentity;
  self->_localUserIdentity = identityCopy;

  self->_hasPopulatedIdentity = 1;
  os_unfair_lock_unlock(&self->_lock);
  v7 = *MEMORY[0x1E69E9840];
}

- (BOOL)updateGroupSessionEligibility:(id)eligibility
{
  v15 = *MEMORY[0x1E69E9840];
  eligibilityCopy = eligibility;
  os_unfair_lock_lock(&self->_lock);
  eligibilityStatus = self->_eligibilityStatus;
  v7 = eligibilityCopy;
  v8 = v7;
  if (eligibilityStatus == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = [(MRGroupSessionEligibilityStatus *)v7 isEqual:eligibilityStatus];
  }

  objc_storeStrong(&self->_eligibilityStatus, eligibility);
  os_unfair_lock_unlock(&self->_lock);
  if ((v9 & 1) == 0)
  {
    v10 = _MRLogForCategory(0xCuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[MRGroupSessionRequestManager] Updating group session eligibility: %@", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v9 ^ 1;
}

- (void)handleGroupSessionNearbyContactDiscoveryDidChange:(id)change
{
  v3 = _MRLogForCategory(0xCuLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[MRGroupSessionRequestManager] Nearby contact discovery preference changed.", v5, 2u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"MRGroupSessionNearbyContactDiscoveryPreferenceDidChangeNotification" object:0];
}

@end
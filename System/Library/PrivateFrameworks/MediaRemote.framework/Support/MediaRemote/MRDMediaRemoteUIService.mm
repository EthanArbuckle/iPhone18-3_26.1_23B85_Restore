@interface MRDMediaRemoteUIService
- (BOOL)isValid;
- (MRDMediaRemoteUIService)initWithClientBundleIdentifier:(id)identifier configuration:(id)configuration endpoint:(id)endpoint;
- (MRDMediaRemoteUIService)initWithClientBundleIdentifier:(id)identifier configurationData:(id)data endpoint:(id)endpoint;
- (void)_createRemoteAlertHandleIfNeeded;
- (void)dealloc;
- (void)presentWithCompletion:(id)completion;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
@end

@implementation MRDMediaRemoteUIService

- (MRDMediaRemoteUIService)initWithClientBundleIdentifier:(id)identifier configuration:(id)configuration endpoint:(id)endpoint
{
  endpointCopy = endpoint;
  identifierCopy = identifier;
  v10 = [NSKeyedArchiver archivedDataWithRootObject:configuration requiringSecureCoding:1 error:0];
  v11 = [(MRDMediaRemoteUIService *)self initWithClientBundleIdentifier:identifierCopy configurationData:v10 endpoint:endpointCopy];

  return v11;
}

- (MRDMediaRemoteUIService)initWithClientBundleIdentifier:(id)identifier configurationData:(id)data endpoint:(id)endpoint
{
  identifierCopy = identifier;
  dataCopy = data;
  endpointCopy = endpoint;
  v15.receiver = self;
  v15.super_class = MRDMediaRemoteUIService;
  v12 = [(MRDMediaRemoteUIService *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_configurationData, data);
    objc_storeStrong(&v13->_endpoint, endpoint);
    objc_storeStrong(&v13->_clientBundleIdentifier, identifier);
    v13->_lock._os_unfair_lock_opaque = 0;
    [(MRDMediaRemoteUIService *)v13 _createRemoteAlertHandleIfNeeded];
  }

  return v13;
}

- (void)dealloc
{
  v3 = _MRLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    clientBundleIdentifier = [(MRDMediaRemoteUIService *)self clientBundleIdentifier];
    *buf = 134218242;
    selfCopy = self;
    v9 = 2114;
    v10 = clientBundleIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[MRDMediaRemoteUIService] <%p|%{public}@> dealloc", buf, 0x16u);
  }

  completion = self->_completion;
  self->_completion = 0;

  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle unregisterObserver:self];
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
  v6.receiver = self;
  v6.super_class = MRDMediaRemoteUIService;
  [(MRDMediaRemoteUIService *)&v6 dealloc];
}

- (BOOL)isValid
{
  os_unfair_lock_lock(&self->_lock);
  isValid = [(SBSRemoteAlertHandle *)self->_remoteAlertHandle isValid];
  os_unfair_lock_unlock(&self->_lock);
  return isValid;
}

- (void)presentWithCompletion:(id)completion
{
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  isActivated = [(MRDMediaRemoteUIService *)self isActivated];
  v6 = objc_retainBlock(self->_completion);
  if (v6)
  {
    os_unfair_lock_unlock(&self->_lock);
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      clientBundleIdentifier = [(MRDMediaRemoteUIService *)self clientBundleIdentifier];
      v18 = 134218242;
      selfCopy3 = self;
      v20 = 2114;
      v21 = clientBundleIdentifier;
      v9 = "[MRDMediaRemoteUIService] <%p|%{public}@> presentWithCompletion - dropping because we are already activating";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, &v18, 0x16u);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v10 = objc_retainBlock(completionCopy);
  completion = self->_completion;
  self->_completion = v10;

  [(MRDMediaRemoteUIService *)self _createRemoteAlertHandleIfNeeded];
  os_unfair_lock_unlock(&self->_lock);
  if (isActivated)
  {
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      clientBundleIdentifier = [(MRDMediaRemoteUIService *)self clientBundleIdentifier];
      v18 = 134218242;
      selfCopy3 = self;
      v20 = 2114;
      v21 = clientBundleIdentifier;
      v9 = "[MRDMediaRemoteUIService] <%p|%{public}@> presentWithCompletion - dropping because we are already activated";
      goto LABEL_7;
    }

LABEL_8:

    (*(completionCopy + 2))(completionCopy, 0);
    goto LABEL_9;
  }

  v12 = objc_alloc_init(SBSRemoteAlertActivationContext);
  clientBundleIdentifier2 = [(MRDMediaRemoteUIService *)self clientBundleIdentifier];
  lowercaseString = [clientBundleIdentifier2 lowercaseString];
  v15 = [lowercaseString isEqualToString:@"com.apple.siri"];

  if (v15)
  {
    [v12 setActivatingForSiri:1];
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    clientBundleIdentifier3 = [(MRDMediaRemoteUIService *)self clientBundleIdentifier];
    v18 = 134218242;
    selfCopy3 = self;
    v20 = 2114;
    v21 = clientBundleIdentifier3;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[MRDMediaRemoteUIService] <%p|%{public}@> presentWithCompletion - activating", &v18, 0x16u);
  }

  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:v12];
LABEL_9:
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    clientBundleIdentifier = [(MRDMediaRemoteUIService *)self clientBundleIdentifier];
    v8 = 134218242;
    selfCopy = self;
    v10 = 2114;
    v11 = clientBundleIdentifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDMediaRemoteUIService] <%p|%{public}@> remoteAlertHandleDidActivate", &v8, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  v6 = objc_retainBlock(self->_completion);
  completion = self->_completion;
  self->_completion = 0;

  self->_activated = 1;
  os_unfair_lock_unlock(&self->_lock);
  if (v6)
  {
    v6[2](v6, 0);
  }
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  v4 = _MRLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    clientBundleIdentifier = [(MRDMediaRemoteUIService *)self clientBundleIdentifier];
    v7 = 134218242;
    selfCopy = self;
    v9 = 2114;
    v10 = clientBundleIdentifier;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDMediaRemoteUIService] <%p|%{public}@> remoteAlertHandleDidDeactivate", &v7, 0x16u);
  }

  os_unfair_lock_lock(&self->_lock);
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle unregisterObserver:self];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = 0;

  self->_activated = 0;
  os_unfair_lock_unlock(&self->_lock);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  errorCopy = error;
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    clientBundleIdentifier = [(MRDMediaRemoteUIService *)self clientBundleIdentifier];
    v11 = 134218498;
    selfCopy = self;
    v13 = 2114;
    v14 = clientBundleIdentifier;
    v15 = 2112;
    v16 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDMediaRemoteUIService] <%p|%{public}@> remoteAlertHandleDidInvalidate - error: %@", &v11, 0x20u);
  }

  os_unfair_lock_lock(&self->_lock);
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = 0;

  v9 = objc_retainBlock(self->_completion);
  completion = self->_completion;
  self->_completion = 0;

  self->_activated = 0;
  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    v9[2](v9, errorCopy);
  }
}

- (void)_createRemoteAlertHandleIfNeeded
{
  remoteAlertHandle = self->_remoteAlertHandle;
  if (!remoteAlertHandle || ([(SBSRemoteAlertHandle *)remoteAlertHandle isValid]& 1) == 0)
  {
    v4 = _MRLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      clientBundleIdentifier = [(MRDMediaRemoteUIService *)self clientBundleIdentifier];
      v12 = 134218754;
      selfCopy = self;
      v14 = 2114;
      v15 = clientBundleIdentifier;
      v16 = 2114;
      v17 = @"com.apple.MediaRemoteUIService";
      v18 = 2114;
      v19 = @"route-picker";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[MRDMediaRemoteUIService] <%p|%{public}@> createRemoteAlertHandleIfNeeded - create remote alert handle for presenter: %{public}@, identifier: %{public}@", &v12, 0x2Au);
    }

    v6 = [RBSProcessIdentity identityForApplicationJobLabel:@"com.apple.MediaRemoteUIService"];
    v7 = [[SBSRemoteAlertDefinition alloc] initWithSceneProvidingProcess:v6 configurationIdentifier:@"route-picker"];
    v8 = objc_alloc_init(SBSRemoteAlertConfigurationContext);
    v9 = [NSDictionary dictionaryWithObject:self->_configurationData forKey:kMRMediaRemoteMediaControlsConfigurationKey];
    [v8 setUserInfo:v9];

    [v8 setXpcEndpoint:self->_endpoint];
    v10 = [SBSRemoteAlertHandle newHandleWithDefinition:v7 configurationContext:v8];
    v11 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = v10;

    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle registerObserver:self];
  }
}

@end
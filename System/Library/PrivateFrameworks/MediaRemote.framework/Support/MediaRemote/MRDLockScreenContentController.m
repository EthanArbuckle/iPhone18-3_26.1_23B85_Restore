@interface MRDLockScreenContentController
- (BOOL)lockScreenPlatterHasContent;
- (MRDLockScreenContentController)init;
- (MRDLockScreenContentControllerDelegate)delegate;
- (void)_handlePlaybackQueueChangedNotification:(id)a3;
- (void)_notifyDelegate;
- (void)_updateSuggestionCountIfNeeded;
@end

@implementation MRDLockScreenContentController

- (MRDLockScreenContentController)init
{
  v17.receiver = self;
  v17.super_class = MRDLockScreenContentController;
  v2 = [(MRDLockScreenContentController *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_shouldConsiderSuggestions = 0;
    v2->_suggestionCount = 0;
    v4 = objc_alloc_init(MRMediaSuggestionPreferences);
    suggestionPreferences = v3->_suggestionPreferences;
    v3->_suggestionPreferences = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.MediaRemote.MRDLockScreenContentController.queryQueue", v6);
    queryQueue = v3->_queryQueue;
    v3->_queryQueue = v7;

    objc_initWeak(&location, v3);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100196CD4;
    v14 = &unk_1004B8280;
    objc_copyWeak(&v15, &location);
    [(MRMediaSuggestionPreferences *)v3->_suggestionPreferences setUserDisplayPreferencesDidChangeCallback:&v11];
    v9 = [NSNotificationCenter defaultCenter:v11];
    [v9 addObserver:v3 selector:"_handlePlaybackQueueChangedNotification:" name:kMRPlayerPlaybackQueueChangedNotification object:0];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (void)_updateSuggestionCountIfNeeded
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(MRDLockScreenContentController *)self shouldConsiderSuggestions];
  v4 = [(MRDLockScreenContentController *)self isQuerying];
  v5 = [(MRDLockScreenContentController *)self suggestionPreferences];
  v6 = [v5 suggestionsDisabledInContext:MRSuggestionContextHomeScreen];

  if (v6)
  {
    v7 = [(MRDLockScreenContentController *)self suggestionCount];
    if (v7 >= 1)
    {
      [(MRDLockScreenContentController *)self setSuggestionCount:0];
    }

    os_unfair_lock_unlock(&self->_lock);
    if (!(v4 & 1 | ((v3 & 1) == 0)) && v7 >= 1)
    {

      [(MRDLockScreenContentController *)self _notifyDelegate];
    }
  }

  else if (v4 & 1 | ((v3 & 1) == 0))
  {

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    [(MRDLockScreenContentController *)self setIsQuerying:1];
    os_unfair_lock_unlock(&self->_lock);
    v8 = _MRLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_1003AFB88(v8);
    }

    v9 = dispatch_time(0, 60000000000);
    v10 = [(MRDLockScreenContentController *)self queryQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100196EF4;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_after(v9, v10, block);
  }
}

- (void)_notifyDelegate
{
  v3 = [(MRDLockScreenContentController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(MRDLockScreenContentController *)self delegate];
    [v5 lockScreenContentControllerStateDidChange:self];
  }
}

- (void)_handlePlaybackQueueChangedNotification:(id)a3
{
  v4 = [a3 userInfo];
  v7 = [v4 objectForKeyedSubscript:kMRNowPlayingPlayerPathUserInfoKey];

  if ([(MRDLockScreenContentController *)self suggestionCount]<= 3)
  {
    v5 = [v7 origin];
    v6 = [v5 isLocal];

    if (v6)
    {
      [(MRDLockScreenContentController *)self _updateSuggestionCountIfNeeded];
    }
  }
}

- (BOOL)lockScreenPlatterHasContent
{
  v3 = +[MRDMediaRemoteServer server];
  v4 = [v3 nowPlayingServer];
  v5 = [v4 localActivePlayerClient];
  v6 = [v5 playbackQueue];
  v7 = [v6 contentItemWithOffset:0];

  if (v7)
  {
    return 1;
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(MRDLockScreenContentController *)self shouldConsiderSuggestions];
  if ((v9 & 1) == 0)
  {
    [(MRDLockScreenContentController *)self setShouldConsiderSuggestions:1];
  }

  v10 = [(MRDLockScreenContentController *)self suggestionCount];
  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    return v10 > 3;
  }

  [(MRDLockScreenContentController *)self _updateSuggestionCountIfNeeded];
  return 0;
}

- (MRDLockScreenContentControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
@interface MRDPlaybackQueueRemoteParticipantDataSource
- (MRDPlaybackQueueRemoteParticipantDataSource)initWithDelegate:(id)a3;
- (MRDPlaybackQueueRemoteParticipantDataSourceDelegate)delegate;
- (NSArray)participants;
- (void)updateParticipants:(id)a3;
@end

@implementation MRDPlaybackQueueRemoteParticipantDataSource

- (MRDPlaybackQueueRemoteParticipantDataSource)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = +[MRUserSettings currentSettings];
  v6 = [v5 supportGroupSessionAttribution];

  if (v6)
  {
    v16.receiver = self;
    v16.super_class = MRDPlaybackQueueRemoteParticipantDataSource;
    v7 = [(MRDPlaybackQueueRemoteParticipantDataSource *)&v16 init];
    v8 = v7;
    if (v7)
    {
      v7->_lock._os_unfair_lock_opaque = 0;
      objc_storeWeak(&v7->_delegate, v4);
      v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = sub_10000E9DC();
      v11 = dispatch_queue_create_with_target_V2("com.apple.amp.MediaRemote.MRDPlaybackQueueRemoteParticipantDataSource.delegateQueue", v9, v10);
      delegateQueue = v8->_delegateQueue;
      v8->_delegateQueue = v11;

      participants = v8->_participants;
      v8->_participants = &__NSArray0__struct;
    }

    self = v8;
    v14 = self;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSArray)participants
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_participants;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)updateParticipants:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_participants, a3);
  v6 = _MRLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[MRDPlaybackQueueRemoteParticipantDataSource] Updated participants: %@", buf, 0xCu);
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = [(MRDPlaybackQueueRemoteParticipantDataSource *)self delegate];
  if (v7)
  {
    v8 = [(MRDPlaybackQueueRemoteParticipantDataSource *)self delegateQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100145218;
    block[3] = &unk_1004B69D0;
    v10 = v7;
    v11 = self;
    v12 = v5;
    dispatch_async(v8, block);
  }
}

- (MRDPlaybackQueueRemoteParticipantDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end
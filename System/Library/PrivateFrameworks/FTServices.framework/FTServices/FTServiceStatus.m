@interface FTServiceStatus
+ (id)sharedInstance;
- (id)initPrivate;
- (unint64_t)_noCache_supportedServicesFlags;
- (void)_addObservers;
- (void)_reload;
- (void)_removeObservers;
- (void)dealloc;
@end

@implementation FTServiceStatus

+ (id)sharedInstance
{
  if (qword_1ED768730 != -1)
  {
    sub_195927F00();
  }

  v3 = qword_1ED768740;

  return v3;
}

- (id)initPrivate
{
  v5.receiver = self;
  v5.super_class = FTServiceStatus;
  v2 = [(FTServiceStatus *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_blockPost = 1;
    [(FTServiceStatus *)v2 _addObservers];
    [(FTServiceStatus *)v3 _reload];
    v3->_blockPost = 0;
  }

  return v3;
}

- (void)_addObservers
{
  IMUserScopedNotification();
  objc_initWeak(&location, self);
  v3 = im_primary_queue();
  v4 = MEMORY[0x1E69E9820];
  objc_copyWeak(&v5, &location);
  [(FTServiceStatus *)self setSupportedServicesToken:IMDispatchForNotify(), v4, 3221225472, sub_19593D898, &unk_1E7435268];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_reload
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [(FTServiceStatus *)self supportedServicesFlags];
  v4 = [(FTServiceStatus *)self _noCache_supportedServicesFlags];
  [(FTServiceStatus *)self setSupportedServicesFlags:v4];
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v6 = @"YES";
    }

    else
    {
      v6 = @"NO";
    }

    if ((v4 & 2) != 0)
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    if ((v4 & 4) != 0)
    {
      v8 = @"YES";
    }

    else
    {
      v8 = @"NO";
    }

    v11 = 138413058;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2048;
    v18 = [(FTServiceStatus *)self supportedServicesFlags];
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Updating supported service status { iMessageSupported: %@, faceTimeAudioSupported: %@, faceTimeMultiwaySupported: %@, supportedServicesFlags: %llu }", &v11, 0x2Au);
  }

  if ((((v3 ^ v4) & 1) != 0 || ((v3 >> 1) & 1) != ((v4 >> 1) & 1) || ((v3 >> 2) & 1) != ((v4 >> 2) & 1)) && ![(FTServiceStatus *)self blockPost])
  {
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 __mainThreadPostNotificationName:@"FTServiceStatusDidChangeNotification" object:0];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (unint64_t)_noCache_supportedServicesFlags
{
  state64 = 0;
  notify_get_state([(FTServiceStatus *)self supportedServicesToken], &state64);
  return state64;
}

- (void)dealloc
{
  [(FTServiceStatus *)self _removeObservers];
  v3.receiver = self;
  v3.super_class = FTServiceStatus;
  [(FTServiceStatus *)&v3 dealloc];
}

- (void)_removeObservers
{
  v2 = [(FTServiceStatus *)self supportedServicesToken];

  notify_cancel(v2);
}

@end
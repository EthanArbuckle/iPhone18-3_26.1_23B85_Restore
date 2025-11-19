@interface CSFallbackAudioSessionReleaseProvider
- (BOOL)fallbackDeactivateAudioSession:(unint64_t)a3 error:(id *)a4;
- (CSFallbackAudioSessionReleaseProvider)initWithAudioRecorder:(id)a3;
- (void)audioRecorderWillBeDestroyed:(id)a3;
- (void)setAudioRecorder:(id)a3;
@end

@implementation CSFallbackAudioSessionReleaseProvider

- (void)audioRecorderWillBeDestroyed:(id)a3
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018FA4;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)fallbackDeactivateAudioSession:(unint64_t)a3 error:(id *)a4
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100019200;
  v15 = sub_100019210;
  v16 = 0;
  queue = self->_queue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100019218;
  v10[3] = &unk_1002502B0;
  v10[4] = self;
  v10[5] = &v17;
  v10[6] = &v11;
  v10[7] = a3;
  dispatch_async_and_wait(queue, v10);
  if ((v18[3] & 1) == 0)
  {
    v6 = CSLogCategoryAudio;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v12[5] localizedDescription];
      *buf = 136315394;
      v22 = "[CSFallbackAudioSessionReleaseProvider fallbackDeactivateAudioSession:error:]";
      v23 = 2114;
      v24 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s Cannot deactivateAudioSession with %{public}@", buf, 0x16u);
    }
  }

  if (a4)
  {
    *a4 = v12[5];
  }

  v8 = *(v18 + 24);
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(&v17, 8);
  return v8 & 1;
}

- (void)setAudioRecorder:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000193C8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

- (CSFallbackAudioSessionReleaseProvider)initWithAudioRecorder:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CSFallbackAudioSessionReleaseProvider;
  v6 = [(CSFallbackAudioSessionReleaseProvider *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_create("CSFallbackAudioSessionReleaseProvider", 0);
    queue = v6->_queue;
    v6->_queue = v7;

    objc_storeStrong(&v6->_audioRecorder, a3);
    v9 = [(CSFallbackAudioSessionReleaseProvider *)v6 audioRecorder];
    [v9 registerObserver:v6];
  }

  return v6;
}

@end
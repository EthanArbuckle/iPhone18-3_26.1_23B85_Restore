@interface CSSiriAudioMessageRequestHandler
- (CSSiriAudioMessageRequestHandler)init;
- (id)_createAudioMessageFile:(id)file;
- (void)_releaseRetainIfNeeded;
- (void)attSiriAudioSrcNodeDidStartRecording:(id)recording successfully:(BOOL)successfully error:(id)error;
- (void)attSiriAudioSrcNodeDidStop:(id)stop;
- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk;
- (void)deleteAudioMessageFile:(id)file completion:(id)completion;
- (void)forceReleaseAllAudioMessageRetainLock;
- (void)getAudioFileWithRequestId:(id)id completion:(id)completion;
- (void)releaseAudioMessageRetainLockFromRequestId:(id)id;
- (void)startLoggingWithRequestId:(id)id recordContext:(id)context;
@end

@implementation CSSiriAudioMessageRequestHandler

- (void)attSiriAudioSrcNodeLPCMRecordBufferAvailable:(id)available audioChunk:(id)chunk
{
  chunkCopy = chunk;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10014FDB4;
  v8[3] = &unk_100253C48;
  v8[4] = self;
  v9 = chunkCopy;
  v7 = chunkCopy;
  dispatch_async(queue, v8);
}

- (void)attSiriAudioSrcNodeDidStop:(id)stop
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10014FE34;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)attSiriAudioSrcNodeDidStartRecording:(id)recording successfully:(BOOL)successfully error:(id)error
{
  if (!successfully)
  {
    queue = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014FF88;
    block[3] = &unk_100253C20;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)deleteAudioMessageFile:(id)file completion:(id)completion
{
  fileCopy = file;
  completionCopy = completion;
  v8 = completionCopy;
  if (fileCopy)
  {
    queue = self->_queue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100150100;
    v10[3] = &unk_100253C48;
    v10[4] = self;
    v11 = fileCopy;
    dispatch_async(queue, v10);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
  }
}

- (id)_createAudioMessageFile:(id)file
{
  fileCopy = file;
  v5 = [[CSSiriAudioMessageFile alloc] initWithRequestUUID:fileCopy];
  [(NSMutableDictionary *)self->_audioMessageAudioFiles setObject:v5 forKey:fileCopy];

  return v5;
}

- (void)_releaseRetainIfNeeded
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  audioMessageAudioFiles = [(CSSiriAudioMessageRequestHandler *)self audioMessageAudioFiles];
  obj = [audioMessageAudioFiles allKeys];

  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v12 = 0;
        v13 = &v12;
        v14 = 0x2020000000;
        v15 = 0;
        audioMessageFileRetainLocks = [(CSSiriAudioMessageRequestHandler *)self audioMessageFileRetainLocks];
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 3221225472;
        v11[2] = sub_10015036C;
        v11[3] = &unk_100252E80;
        v11[4] = v7;
        v11[5] = &v12;
        [audioMessageFileRetainLocks enumerateKeysAndObjectsUsingBlock:v11];

        if (!v13[3])
        {
          audioMessageAudioFiles2 = [(CSSiriAudioMessageRequestHandler *)self audioMessageAudioFiles];
          [audioMessageAudioFiles2 removeObjectForKey:v7];
        }

        _Block_object_dispose(&v12, 8);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v4);
  }
}

- (void)forceReleaseAllAudioMessageRetainLock
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100150440;
  block[3] = &unk_100253C20;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)releaseAudioMessageRetainLockFromRequestId:(id)id
{
  idCopy = id;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100150518;
  v7[3] = &unk_100253C48;
  v8 = idCopy;
  selfCopy = self;
  v6 = idCopy;
  dispatch_async(queue, v7);
}

- (void)getAudioFileWithRequestId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v8 = [[CSSiriAudioMessageFileRetainLock alloc] initWithRequestId:idCopy];
  v9 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[CSSiriAudioMessageRequestHandler getAudioFileWithRequestId:completion:]";
    v17 = 2112;
    v18 = idCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s Fetching Audio File with RequestID : %@", buf, 0x16u);
  }

  if (idCopy)
  {
    if (completionCopy)
    {
      queue = self->_queue;
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1001508B4;
      v11[3] = &unk_100252E58;
      v11[4] = self;
      v12 = idCopy;
      v13 = v8;
      v14 = completionCopy;
      dispatch_async(queue, v11);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0, 0);
  }
}

- (void)startLoggingWithRequestId:(id)id recordContext:(id)context
{
  idCopy = id;
  contextCopy = context;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100150CA4;
  block[3] = &unk_100253680;
  v12 = contextCopy;
  v13 = idCopy;
  selfCopy = self;
  v9 = idCopy;
  v10 = contextCopy;
  dispatch_async(queue, block);
}

- (CSSiriAudioMessageRequestHandler)init
{
  v12.receiver = self;
  v12.super_class = CSSiriAudioMessageRequestHandler;
  v2 = [(CSSiriAudioMessageRequestHandler *)&v12 init];
  if (v2)
  {
    v3 = dispatch_queue_create("CSSiriAudioMessageRequestHandler", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = +[NSMutableDictionary dictionary];
    audioMessageAudioFiles = v2->_audioMessageAudioFiles;
    v2->_audioMessageAudioFiles = v5;

    v7 = +[NSMutableDictionary dictionary];
    audioMessageFileRetainLocks = v2->_audioMessageFileRetainLocks;
    v2->_audioMessageFileRetainLocks = v7;

    v9 = dispatch_group_create();
    recordingAudioGroup = v2->_recordingAudioGroup;
    v2->_recordingAudioGroup = v9;
  }

  return v2;
}

@end
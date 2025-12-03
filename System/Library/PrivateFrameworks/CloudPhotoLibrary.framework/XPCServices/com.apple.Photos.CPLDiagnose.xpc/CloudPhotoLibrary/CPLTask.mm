@interface CPLTask
+ (BOOL)waitForAllLongTasksToFinish;
+ (id)taskWithCommand:(id)command;
+ (id)taskWithCommandAndArguments:(id)arguments;
+ (void)_enqueueTaskCompletionForLaterWait:(id)wait;
- (CPLTask)init;
- (id)_waitDeadline;
- (int64_t)exec;
- (int64_t)executeWithPIDHandler:(id)handler endHandler:(id)endHandler;
- (void)_updateWaitDeadline;
- (void)resetRedirect;
- (void)setCommand:(id)command;
- (void)setCommandWithArguments:(id)arguments;
@end

@implementation CPLTask

+ (void)_enqueueTaskCompletionForLaterWait:(id)wait
{
  waitCopy = wait;
  v4 = qword_100040BA0;
  v7 = waitCopy;
  if (!qword_100040BA0)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = qword_100040BA0;
    qword_100040BA0 = v5;

    waitCopy = v7;
    v4 = qword_100040BA0;
  }

  [v4 addObject:waitCopy];
}

+ (BOOL)waitForAllLongTasksToFinish
{
  if (![qword_100040BA0 count])
  {
    return 1;
  }

  v2 = dispatch_group_create();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = qword_100040BA0;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        dispatch_group_async(v2, *(*(*(&v11 + 1) + 8 * i) + 48), &stru_100034BA8);
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v8 = dispatch_time(0, 60000000000);
  v9 = dispatch_group_wait(v2, v8) == 0;

  return v9;
}

- (CPLTask)init
{
  v3.receiver = self;
  v3.super_class = CPLTask;
  result = [(CPLTask *)&v3 init];
  if (result)
  {
    result->_redirectStdoutToFileDescriptor = -1;
    result->_redirectStderrToFileDescriptor = -1;
    result->_waitInBackgroundIfTaskTimesOut = 1;
    result->_waitDeadlineLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

+ (id)taskWithCommand:(id)command
{
  commandCopy = command;
  v5 = [[NSString alloc] initWithFormat:commandCopy arguments:&v9];

  v6 = [self taskWithCommandAndArguments:v5];

  return v6;
}

+ (id)taskWithCommandAndArguments:(id)arguments
{
  argumentsCopy = arguments;
  v4 = objc_alloc_init(CPLTask);
  [(CPLTask *)v4 setCommandWithArguments:argumentsCopy];

  return v4;
}

- (void)setCommand:(id)command
{
  commandCopy = command;
  v5 = [[NSString alloc] initWithFormat:commandCopy arguments:&v6];

  [(CPLTask *)self setCommandWithArguments:v5];
}

- (void)setCommandWithArguments:(id)arguments
{
  argumentsCopy = arguments;
  v4 = +[NSMutableArray array];
  if (![argumentsCopy length])
  {
    goto LABEL_22;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = -1;
  v10 = 1;
  do
  {
    v11 = [argumentsCopy characterAtIndex:v6];
    if (v11 != 39 || (v8 & 1) != 0)
    {
      if ((v11 != 34) | v5 & 1)
      {
        v13 = v11 != 32;
        v12 = argumentsCopy;
        if ((v13 | v5 | v8))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v12 = argumentsCopy;
        if ((v8 & 1) == 0)
        {
          v5 = 0;
          v8 = 1;
          goto LABEL_17;
        }
      }
    }

    else
    {
      v12 = argumentsCopy;
      if ((v5 & 1) == 0)
      {
        v8 = 0;
        v5 = 1;
LABEL_17:
        v9 = v6;
LABEL_18:
        v17 = v10;
        goto LABEL_19;
      }
    }

    if (v10 != 1)
    {
      v14 = [v12 substringWithRange:{v7, v10 - 1}];
      v15 = v14;
      if (v9 != -1)
      {
        v16 = [v14 stringByReplacingCharactersInRange:v9 - v7 withString:{1, &stru_100035A18}];

        v15 = v16;
      }

      [v4 addObject:v15];

      v12 = argumentsCopy;
    }

    v5 = 0;
    v8 = 0;
    v17 = 0;
    v7 += v10;
    v9 = -1;
LABEL_19:
    v10 = v17 + 1;
    ++v6;
  }

  while (v6 < [v12 length]);
  if (v17)
  {
    v18 = [argumentsCopy substringWithRange:{v7, v17}];
    [v4 addObject:v18];
  }

LABEL_22:
  [(CPLTask *)self setArgv:v4];
}

- (void)_updateWaitDeadline
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v5 = sub_10000422C;
  v6 = &unk_100034BD0;
  selfCopy = self;
  v3 = v4;
  os_unfair_lock_lock(&self->_waitDeadlineLock);
  v5(v3);
  os_unfair_lock_unlock(&self->_waitDeadlineLock);
}

- (id)_waitDeadline
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100004444;
  v18 = sub_100004454;
  v19 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v10 = sub_10000445C;
  v11 = &unk_100034BF8;
  selfCopy = self;
  v13 = &v14;
  v3 = v9;
  os_unfair_lock_lock(&self->_waitDeadlineLock);
  v10(v3);
  os_unfair_lock_unlock(&self->_waitDeadlineLock);

  v4 = v15[5];
  if (!v4)
  {
    v5 = +[NSDate distantFuture];
    v6 = v15[5];
    v15[5] = v5;

    v4 = v15[5];
  }

  v7 = v4;
  _Block_object_dispose(&v14, 8);

  return v7;
}

- (int64_t)executeWithPIDHandler:(id)handler endHandler:(id)endHandler
{
  handlerCopy = handler;
  endHandlerCopy = endHandler;
  argv = [(CPLTask *)self argv];
  if (![argv count])
  {
    sub_10001DFDC();
  }

  argv2 = [(CPLTask *)self argv];
  v10 = malloc_type_malloc(8 * [argv2 count] + 8, 0x10040436913F5uLL);

  argv3 = [(CPLTask *)self argv];
  v12 = [argv3 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      argv4 = [(CPLTask *)self argv];
      v15 = [argv4 objectAtIndex:v13];
      v10[v13] = strdup([v15 UTF8String]);

      ++v13;
      argv5 = [(CPLTask *)self argv];
      v17 = [argv5 count];
    }

    while (v13 < v17);
  }

  argv6 = [(CPLTask *)self argv];
  v10[[argv6 count]] = 0;

  v19 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  if (posix_spawn_file_actions_init(v19))
  {
    sub_10001DBF0(buf);
LABEL_65:
    v73 = *buf;
    goto LABEL_66;
  }

  redirectStdoutToFileAtPath = [(CPLTask *)self redirectStdoutToFileAtPath];
  v21 = [redirectStdoutToFileAtPath length];

  if (v21)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = sub_100004E20();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *v10;
        redirectStdoutToFileAtPath2 = [(CPLTask *)self redirectStdoutToFileAtPath];
        *buf = 136315394;
        *&buf[4] = v23;
        v90 = 2112;
        v91[0] = redirectStdoutToFileAtPath2;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Setting up stdout for %s to %@", buf, 0x16u);
      }
    }

    redirectStdoutToFileAtPath3 = [(CPLTask *)self redirectStdoutToFileAtPath];
    v26 = posix_spawn_file_actions_addopen(v19, 1, [redirectStdoutToFileAtPath3 fileSystemRepresentation], 513, 0x1B6u);

    if (v26)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_10001DD48();
      }

      goto LABEL_63;
    }
  }

  redirectStderrToFileAtPath = [(CPLTask *)self redirectStderrToFileAtPath];
  v28 = [redirectStderrToFileAtPath length];

  if (v28)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v29 = sub_100004E20();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = *v10;
        redirectStderrToFileAtPath2 = [(CPLTask *)self redirectStderrToFileAtPath];
        *buf = 136315394;
        *&buf[4] = v30;
        v90 = 2112;
        v91[0] = redirectStderrToFileAtPath2;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Setting up stderr for %s to %@", buf, 0x16u);
      }
    }

    redirectStderrToFileAtPath3 = [(CPLTask *)self redirectStderrToFileAtPath];
    v33 = posix_spawn_file_actions_addopen(v19, 2, [redirectStderrToFileAtPath3 fileSystemRepresentation], 513, 0x1B6u);

    if (v33)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_10001DDD8();
      }

      goto LABEL_63;
    }
  }

  stdinPipe = [(CPLTask *)self stdinPipe];

  v84 = v19;
  if (stdinPipe)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v35 = sub_100004E20();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = endHandlerCopy;
        v37 = *v10;
        stdinPipe2 = [(CPLTask *)self stdinPipe];
        fileHandleForReading = [stdinPipe2 fileHandleForReading];
        fileDescriptor = [fileHandleForReading fileDescriptor];
        [(CPLTask *)self stdinPipe];
        v41 = v83 = handlerCopy;
        fileHandleForWriting = [v41 fileHandleForWriting];
        fileDescriptor2 = [fileHandleForWriting fileDescriptor];
        *buf = 136315650;
        *&buf[4] = v37;
        endHandlerCopy = v36;
        v90 = 1024;
        LODWORD(v91[0]) = fileDescriptor;
        WORD2(v91[0]) = 1024;
        *(v91 + 6) = fileDescriptor2;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Setting up stdin for %s to %d (and closing %d)", buf, 0x18u);

        handlerCopy = v83;
        v19 = v84;
      }
    }

    stdinPipe3 = [(CPLTask *)self stdinPipe];
    fileHandleForReading2 = [stdinPipe3 fileHandleForReading];
    v46 = posix_spawn_file_actions_adddup2(v19, [fileHandleForReading2 fileDescriptor], 0);

    if (v46)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    stdinPipe4 = [(CPLTask *)self stdinPipe];
    fileHandleForWriting2 = [stdinPipe4 fileHandleForWriting];
    v49 = posix_spawn_file_actions_addclose(v19, [fileHandleForWriting2 fileDescriptor]);

    if (v49)
    {
      goto LABEL_63;
    }
  }

  if ([(CPLTask *)self redirectStdoutToFileDescriptor]!= -1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v50 = sub_100004E20();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        v51 = *v10;
        redirectStdoutToFileDescriptor = [(CPLTask *)self redirectStdoutToFileDescriptor];
        *buf = 136315394;
        *&buf[4] = v51;
        v90 = 1024;
        LODWORD(v91[0]) = redirectStdoutToFileDescriptor;
        _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEBUG, "Setting up stdout for %s to %d", buf, 0x12u);
      }
    }

    if (posix_spawn_file_actions_adddup2(v19, [(CPLTask *)self redirectStdoutToFileDescriptor], 1))
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
LABEL_62:
        sub_10001DE68();
      }

LABEL_63:
      v73 = 1;
      goto LABEL_66;
    }
  }

  if ([(CPLTask *)self redirectStderrToFileDescriptor]!= -1)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v53 = sub_100004E20();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
      {
        v54 = *v10;
        redirectStderrToFileDescriptor = [(CPLTask *)self redirectStderrToFileDescriptor];
        *buf = 136315394;
        *&buf[4] = v54;
        v90 = 1024;
        LODWORD(v91[0]) = redirectStderrToFileDescriptor;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEBUG, "Setting up stderr for %s to %d", buf, 0x12u);
      }
    }

    if (posix_spawn_file_actions_adddup2(v19, [(CPLTask *)self redirectStderrToFileDescriptor], 2))
    {
      sub_10001DC9C(buf);
      goto LABEL_65;
    }
  }

  *buf = 0;
  argv7 = [(CPLTask *)self argv];
  v57 = [argv7 objectAtIndex:0];
  fileSystemRepresentation = [v57 fileSystemRepresentation];
  if (self->_environ)
  {
    environ = self->_environ;
  }

  else
  {
    environ = ::environ;
  }

  v60 = posix_spawnp(buf, fileSystemRepresentation, v19, 0, v10, environ);

  if (v60)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_10001DB60(v60);
    }

    self->_waitStatus = 0;
    goto LABEL_63;
  }

  v61 = endHandlerCopy;
  v62 = handlerCopy;
  handlerCopy[2](handlerCopy, *buf);
  v63 = dispatch_queue_create("com.apple.cplctl.task", 0);
  waitQueue = self->_waitQueue;
  self->_waitQueue = v63;

  v65 = [[NSConditionLock alloc] initWithCondition:0];
  v66 = self->_waitQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100004E64;
  block[3] = &unk_100034C20;
  v88 = *buf;
  block[4] = self;
  v67 = v65;
  v87 = v67;
  dispatch_async(v66, block);
  [(CPLTask *)self _updateWaitDeadline];
  _waitDeadline = [(CPLTask *)self _waitDeadline];
  do
  {
    v69 = [v67 lockWhenCondition:1 beforeDate:_waitDeadline];
    if (v69)
    {
      v73 = 0;
      _waitDeadline2 = _waitDeadline;
      handlerCopy = v62;
      goto LABEL_49;
    }

    _waitDeadline2 = [(CPLTask *)self _waitDeadline];

    [_waitDeadline2 timeIntervalSinceNow];
    _waitDeadline = _waitDeadline2;
  }

  while (v71 > 0.0);
  v85[0] = _NSConcreteStackBlock;
  v85[1] = 3221225472;
  v85[2] = sub_10001D914;
  v85[3] = &unk_100034C40;
  v85[4] = v10;
  v85[5] = v84;
  v72 = objc_retainBlock(v85);
  if (self->_waitInBackgroundIfTaskTimesOut)
  {
    [CPLTask _enqueueTaskCompletionForLaterWait:self];
    dispatch_async(self->_waitQueue, v72);
  }

  else
  {
    kill(*buf, 15);
    (v72[2])(v72);
  }

  handlerCopy = v62;
  [v67 lock];

  v73 = 2;
LABEL_49:
  endHandlerCopy = v61;
  [v67 unlock];
  v61[2](v61, v73);

  if (v69)
  {
    v73 = 0;
    v19 = v84;
LABEL_66:
    sub_10001DEF8(v10, v19);
  }

  if ([(CPLTask *)self cleanupEmptyFiles])
  {
    redirectStderrToFileAtPath4 = [(CPLTask *)self redirectStderrToFileAtPath];
    v75 = [redirectStderrToFileAtPath4 length];

    if (v75)
    {
      redirectStderrToFileAtPath5 = [(CPLTask *)self redirectStderrToFileAtPath];
      fileSystemRepresentation2 = [redirectStderrToFileAtPath5 fileSystemRepresentation];
      sub_100004EB8(fileSystemRepresentation2, fileSystemRepresentation2);
    }

    redirectStdoutToFileAtPath4 = [(CPLTask *)self redirectStdoutToFileAtPath];
    v79 = [redirectStdoutToFileAtPath4 length];

    if (v79)
    {
      redirectStdoutToFileAtPath5 = [(CPLTask *)self redirectStdoutToFileAtPath];
      fileSystemRepresentation3 = [redirectStdoutToFileAtPath5 fileSystemRepresentation];
      sub_100004EB8(fileSystemRepresentation3, fileSystemRepresentation3);
    }
  }

  return v73;
}

- (int64_t)exec
{
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v6[0] = 0;
  v6[1] = v6;
  v6[2] = 0x3032000000;
  v6[3] = sub_100004444;
  v6[4] = sub_100004454;
  v7 = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001D9F8;
  v5[3] = &unk_100034C90;
  v5[5] = v8;
  v5[6] = v6;
  v5[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000051E0;
  v4[3] = &unk_100034CE0;
  v4[4] = v8;
  v4[5] = v6;
  v2 = [(CPLTask *)self executeWithPIDHandler:v5 endHandler:v4];
  _Block_object_dispose(v6, 8);

  _Block_object_dispose(v8, 8);
  return v2;
}

- (void)resetRedirect
{
  [(CPLTask *)self setRedirectStdoutToFileAtPath:0];
  [(CPLTask *)self setRedirectStdoutToFileDescriptor:0xFFFFFFFFLL];
  [(CPLTask *)self setRedirectStderrToFileAtPath:0];

  [(CPLTask *)self setRedirectStderrToFileDescriptor:0xFFFFFFFFLL];
}

@end
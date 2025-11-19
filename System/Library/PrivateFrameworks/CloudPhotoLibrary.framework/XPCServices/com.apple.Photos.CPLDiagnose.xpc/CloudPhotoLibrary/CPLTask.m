@interface CPLTask
+ (BOOL)waitForAllLongTasksToFinish;
+ (id)taskWithCommand:(id)a3;
+ (id)taskWithCommandAndArguments:(id)a3;
+ (void)_enqueueTaskCompletionForLaterWait:(id)a3;
- (CPLTask)init;
- (id)_waitDeadline;
- (int64_t)exec;
- (int64_t)executeWithPIDHandler:(id)a3 endHandler:(id)a4;
- (void)_updateWaitDeadline;
- (void)resetRedirect;
- (void)setCommand:(id)a3;
- (void)setCommandWithArguments:(id)a3;
@end

@implementation CPLTask

+ (void)_enqueueTaskCompletionForLaterWait:(id)a3
{
  v3 = a3;
  v4 = qword_100040BA0;
  v7 = v3;
  if (!qword_100040BA0)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = qword_100040BA0;
    qword_100040BA0 = v5;

    v3 = v7;
    v4 = qword_100040BA0;
  }

  [v4 addObject:v3];
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

+ (id)taskWithCommand:(id)a3
{
  v4 = a3;
  v5 = [[NSString alloc] initWithFormat:v4 arguments:&v9];

  v6 = [a1 taskWithCommandAndArguments:v5];

  return v6;
}

+ (id)taskWithCommandAndArguments:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CPLTask);
  [(CPLTask *)v4 setCommandWithArguments:v3];

  return v4;
}

- (void)setCommand:(id)a3
{
  v4 = a3;
  v5 = [[NSString alloc] initWithFormat:v4 arguments:&v6];

  [(CPLTask *)self setCommandWithArguments:v5];
}

- (void)setCommandWithArguments:(id)a3
{
  v19 = a3;
  v4 = +[NSMutableArray array];
  if (![v19 length])
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
    v11 = [v19 characterAtIndex:v6];
    if (v11 != 39 || (v8 & 1) != 0)
    {
      if ((v11 != 34) | v5 & 1)
      {
        v13 = v11 != 32;
        v12 = v19;
        if ((v13 | v5 | v8))
        {
          goto LABEL_18;
        }
      }

      else
      {
        v12 = v19;
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
      v12 = v19;
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

      v12 = v19;
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
    v18 = [v19 substringWithRange:{v7, v17}];
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
  v7 = self;
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
  v12 = self;
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

- (int64_t)executeWithPIDHandler:(id)a3 endHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPLTask *)self argv];
  if (![v8 count])
  {
    sub_10001DFDC();
  }

  v9 = [(CPLTask *)self argv];
  v10 = malloc_type_malloc(8 * [v9 count] + 8, 0x10040436913F5uLL);

  v11 = [(CPLTask *)self argv];
  v12 = [v11 count];

  if (v12)
  {
    v13 = 0;
    do
    {
      v14 = [(CPLTask *)self argv];
      v15 = [v14 objectAtIndex:v13];
      v10[v13] = strdup([v15 UTF8String]);

      ++v13;
      v16 = [(CPLTask *)self argv];
      v17 = [v16 count];
    }

    while (v13 < v17);
  }

  v18 = [(CPLTask *)self argv];
  v10[[v18 count]] = 0;

  v19 = malloc_type_malloc(8uLL, 0x80040B8603338uLL);
  if (posix_spawn_file_actions_init(v19))
  {
    sub_10001DBF0(buf);
LABEL_65:
    v73 = *buf;
    goto LABEL_66;
  }

  v20 = [(CPLTask *)self redirectStdoutToFileAtPath];
  v21 = [v20 length];

  if (v21)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v22 = sub_100004E20();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
      {
        v23 = *v10;
        v24 = [(CPLTask *)self redirectStdoutToFileAtPath];
        *buf = 136315394;
        *&buf[4] = v23;
        v90 = 2112;
        v91[0] = v24;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Setting up stdout for %s to %@", buf, 0x16u);
      }
    }

    v25 = [(CPLTask *)self redirectStdoutToFileAtPath];
    v26 = posix_spawn_file_actions_addopen(v19, 1, [v25 fileSystemRepresentation], 513, 0x1B6u);

    if (v26)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_10001DD48();
      }

      goto LABEL_63;
    }
  }

  v27 = [(CPLTask *)self redirectStderrToFileAtPath];
  v28 = [v27 length];

  if (v28)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v29 = sub_100004E20();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        v30 = *v10;
        v31 = [(CPLTask *)self redirectStderrToFileAtPath];
        *buf = 136315394;
        *&buf[4] = v30;
        v90 = 2112;
        v91[0] = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "Setting up stderr for %s to %@", buf, 0x16u);
      }
    }

    v32 = [(CPLTask *)self redirectStderrToFileAtPath];
    v33 = posix_spawn_file_actions_addopen(v19, 2, [v32 fileSystemRepresentation], 513, 0x1B6u);

    if (v33)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        sub_10001DDD8();
      }

      goto LABEL_63;
    }
  }

  v34 = [(CPLTask *)self stdinPipe];

  v84 = v19;
  if (v34)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      v35 = sub_100004E20();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v36 = v7;
        v37 = *v10;
        v38 = [(CPLTask *)self stdinPipe];
        v39 = [v38 fileHandleForReading];
        v40 = [v39 fileDescriptor];
        [(CPLTask *)self stdinPipe];
        v41 = v83 = v6;
        v42 = [v41 fileHandleForWriting];
        v43 = [v42 fileDescriptor];
        *buf = 136315650;
        *&buf[4] = v37;
        v7 = v36;
        v90 = 1024;
        LODWORD(v91[0]) = v40;
        WORD2(v91[0]) = 1024;
        *(v91 + 6) = v43;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, "Setting up stdin for %s to %d (and closing %d)", buf, 0x18u);

        v6 = v83;
        v19 = v84;
      }
    }

    v44 = [(CPLTask *)self stdinPipe];
    v45 = [v44 fileHandleForReading];
    v46 = posix_spawn_file_actions_adddup2(v19, [v45 fileDescriptor], 0);

    if (v46)
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    v47 = [(CPLTask *)self stdinPipe];
    v48 = [v47 fileHandleForWriting];
    v49 = posix_spawn_file_actions_addclose(v19, [v48 fileDescriptor]);

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
        v52 = [(CPLTask *)self redirectStdoutToFileDescriptor];
        *buf = 136315394;
        *&buf[4] = v51;
        v90 = 1024;
        LODWORD(v91[0]) = v52;
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
        v55 = [(CPLTask *)self redirectStderrToFileDescriptor];
        *buf = 136315394;
        *&buf[4] = v54;
        v90 = 1024;
        LODWORD(v91[0]) = v55;
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
  v56 = [(CPLTask *)self argv];
  v57 = [v56 objectAtIndex:0];
  v58 = [v57 fileSystemRepresentation];
  if (self->_environ)
  {
    environ = self->_environ;
  }

  else
  {
    environ = ::environ;
  }

  v60 = posix_spawnp(buf, v58, v19, 0, v10, environ);

  if (v60)
  {
    if ((_CPLSilentLogging & 1) == 0)
    {
      sub_10001DB60(v60);
    }

    self->_waitStatus = 0;
    goto LABEL_63;
  }

  v61 = v7;
  v62 = v6;
  v6[2](v6, *buf);
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
  v68 = [(CPLTask *)self _waitDeadline];
  do
  {
    v69 = [v67 lockWhenCondition:1 beforeDate:v68];
    if (v69)
    {
      v73 = 0;
      v70 = v68;
      v6 = v62;
      goto LABEL_49;
    }

    v70 = [(CPLTask *)self _waitDeadline];

    [v70 timeIntervalSinceNow];
    v68 = v70;
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

  v6 = v62;
  [v67 lock];

  v73 = 2;
LABEL_49:
  v7 = v61;
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
    v74 = [(CPLTask *)self redirectStderrToFileAtPath];
    v75 = [v74 length];

    if (v75)
    {
      v76 = [(CPLTask *)self redirectStderrToFileAtPath];
      v77 = [v76 fileSystemRepresentation];
      sub_100004EB8(v77, v77);
    }

    v78 = [(CPLTask *)self redirectStdoutToFileAtPath];
    v79 = [v78 length];

    if (v79)
    {
      v80 = [(CPLTask *)self redirectStdoutToFileAtPath];
      v81 = [v80 fileSystemRepresentation];
      sub_100004EB8(v81, v81);
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
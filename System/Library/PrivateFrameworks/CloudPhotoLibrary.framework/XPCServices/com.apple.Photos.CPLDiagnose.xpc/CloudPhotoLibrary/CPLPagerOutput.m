@interface CPLPagerOutput
- (CPLPagerOutput)initWithInputFromOutput:(id)a3 interruptionHandler:(id)a4;
- (void)_fdIsInvalid;
- (void)_taskHasFinished;
- (void)closeOutput;
- (void)cplInterrupt;
@end

@implementation CPLPagerOutput

- (CPLPagerOutput)initWithInputFromOutput:(id)a3 interruptionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  *v28 = 0;
  if (pipe(v28))
  {
    sub_10001E01C();
  }

  v8 = v28[0];
  v9 = v28[1];
  v26.receiver = self;
  v26.super_class = CPLPagerOutput;
  v10 = -[CPLOutput initWithFileDescriptor:isATTY:supportsEscapeSequences:usesColor:supports24BitColor:](&v26, "initWithFileDescriptor:isATTY:supportsEscapeSequences:usesColor:supports24BitColor:", v28[1], [v6 isATTY], objc_msgSend(v6, "supportsEscapeSequences"), objc_msgSend(v6, "usesColor"), objc_msgSend(v6, "supports24BitColor"));
  if (!v10)
  {
    goto LABEL_16;
  }

  v11 = dispatch_queue_create("com.apple.cplctl.pipe", 0);
  v12 = *(v10 + 7);
  *(v10 + 7) = v11;

  v13 = [v7 copy];
  v14 = *(v10 + 11);
  *(v10 + 11) = v13;

  *(v10 + 20) = -1;
  v25 = 0;
  if (posix_spawn_file_actions_init(&v25))
  {
    sub_10001E048();
  }

  if (posix_spawn_file_actions_addclose(&v25, v9))
  {
    sub_10001E074();
  }

  if (posix_spawn_file_actions_adddup2(&v25, v8, 0))
  {
    sub_10001E0A0();
  }

  if (posix_spawn_file_actions_addclose(&v25, v8))
  {
    sub_10001E0CC();
  }

  v24 = -1;
  if (qword_100040BB8 != -1)
  {
    sub_10001E0F8();
  }

  *__argv = off_100034D40;
  os_unfair_lock_lock(v10 + 13);
  v15 = posix_spawn(&v24, "/usr/bin/less", &v25, 0, __argv, environ);
  if (v15)
  {
    os_unfair_lock_unlock(v10 + 13);
  }

  else
  {
    *(v10 + 20) = v24;
    os_unfair_lock_unlock(v10 + 13);
    v16 = dispatch_source_create(&_dispatch_source_type_proc, v24, 0x80000000uLL, *(v10 + 7));
    v17 = *(v10 + 9);
    *(v10 + 9) = v16;

    v18 = *(v10 + 9);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000076A0;
    handler[3] = &unk_100034BD0;
    v23 = v10;
    dispatch_source_set_event_handler(v18, handler);
  }

  posix_spawn_file_actions_destroy(&v25);
  close(v8);
  if (!v15)
  {
    v20 = *(v10 + 9);
    if (v20)
    {
      dispatch_resume(v20);
LABEL_16:
      v19 = v10;
      goto LABEL_17;
    }
  }

  v19 = 0;
LABEL_17:

  return v19;
}

- (void)closeOutput
{
  os_unfair_lock_lock((&self->super._usesColor + 3));
  v3 = *&self->_pid;
  if (v3)
  {
    *&self->_pid = 0;
  }

  source = self->_source;
  os_unfair_lock_unlock((&self->super._usesColor + 3));
  v7.receiver = self;
  v7.super_class = CPLPagerOutput;
  [(CPLOutput *)&v7 closeOutput];
  dispatch_source_cancel(*&self->_finished);
  if (source != -1)
  {
    v6 = 0;
    waitpid(source, &v6, 0);
  }

  v5 = *&self->_finished;
  *&self->_finished = 0;
}

- (void)cplInterrupt
{
  os_unfair_lock_lock((&self->super._usesColor + 3));
  source = self->_source;
  if (source != -1)
  {
    kill(source, 9);
  }

  os_unfair_lock_unlock((&self->super._usesColor + 3));
}

- (void)_taskHasFinished
{
  os_unfair_lock_lock((&self->super._usesColor + 3));
  v3 = *&self->_pid;
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *&self->_pid;
    *&self->_pid = 0;
  }

  source = self->_source;
  os_unfair_lock_unlock((&self->super._usesColor + 3));
  if (source != -1)
  {
    v6 = 0;
    waitpid(source, &v6, 0);
  }
}

- (void)_fdIsInvalid
{
  os_unfair_lock_lock((&self->super._usesColor + 3));
  v3 = *&self->_pid;
  if (v3)
  {
    (*(v3 + 16))();
    v4 = *&self->_pid;
    *&self->_pid = 0;
  }

  os_unfair_lock_unlock((&self->super._usesColor + 3));
}

@end
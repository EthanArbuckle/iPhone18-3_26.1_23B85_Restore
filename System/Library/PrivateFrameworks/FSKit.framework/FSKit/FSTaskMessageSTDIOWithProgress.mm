@interface FSTaskMessageSTDIOWithProgress
- (FSTaskMessageSTDIOWithProgress)init;
- (NSProgress)progress;
- (int)printAboveProgress:(const char *)progress;
- (void)completed:(id)completed replyHandler:(id)handler;
- (void)dealloc;
- (void)drawTwiddleBar;
- (void)fillProgressBar:(float)bar;
- (void)hideProgress;
- (void)hideProgressLocked;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)prompt:(id)prompt replyHandler:(id)handler;
- (void)promptTrueFalse:(id)false replyHandler:(id)handler;
- (void)setProgress:(id)progress;
- (void)showProgress;
- (void)showProgressLocked;
@end

@implementation FSTaskMessageSTDIOWithProgress

- (FSTaskMessageSTDIOWithProgress)init
{
  v10.receiver = self;
  v10.super_class = FSTaskMessageSTDIOWithProgress;
  v2 = [(FSTaskMessageSTDIOWithProgress *)&v10 init];
  v3 = v2;
  if (!v2)
  {
    goto LABEL_5;
  }

  *&v2->_progressShowing = 0;
  v2->_twiddleState = 0;
  completedError = v2->_completedError;
  v2->_completedError = 0;

  v9 = 0;
  if (ioctl(1, 0x40087468uLL, &v9) || (v5 = WORD1(v9), WORD1(v9) < 0x28u) || (v3->screen_width = WORD1(v9) - 2, v6 = malloc_type_malloc((v5 - 1), 0x6F7F84E8uLL), (v3->progress_buffer = v6) != 0))
  {
LABEL_5:
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)dealloc
{
  progress_buffer = self->progress_buffer;
  if (progress_buffer)
  {
    free(progress_buffer);
    self->progress_buffer = 0;
  }

  if (self->_progress)
  {
    [(FSTaskMessageSTDIOWithProgress *)self setProgress:0];
  }

  v4.receiver = self;
  v4.super_class = FSTaskMessageSTDIOWithProgress;
  [(FSTaskMessageSTDIOWithProgress *)&v4 dealloc];
}

- (void)hideProgressLocked
{
  if (self->_progressShowing)
  {
    printf("%s", "\x1B[J\x1B[2K");
    fflush(*MEMORY[0x277D85E08]);
    self->_progressShowing = 0;
  }
}

- (void)drawTwiddleBar
{
  memset(self->progress_buffer, 32, self->screen_width);
  twiddleState = self->_twiddleState;
  self->_twiddleState = twiddleState + 1;
  self->progress_buffer[self->screen_width >> 1] = asc_24A97636E[twiddleState & 3];
  self->progress_buffer[self->screen_width] = 0;
}

- (void)fillProgressBar:(float)bar
{
  memset(self->progress_buffer, 32, self->screen_width);
  if ([(NSProgress *)self->_progress isFinished])
  {
    screen_width = self->screen_width;
    v6 = 100;
  }

  else
  {
    barCopy = 0.0;
    if (bar >= 0.0)
    {
      barCopy = bar;
    }

    v6 = (barCopy * 100.0);
    screen_width = (barCopy * self->screen_width);
  }

  memset(self->progress_buffer, 42, screen_width);
  snprintf(__str, 5uLL, "%02d%%", v6);
  v8 = strlen(__str);
  strncpy(&self->progress_buffer[(self->screen_width >> 1) - 1], __str, v8);
  self->progress_buffer[self->screen_width] = 0;
}

- (void)showProgressLocked
{
  if (self->screen_width >= 10)
  {
    progress = self->_progress;
    if (progress)
    {
      if (!self->_progressHasShown)
      {
        self->_progressHasShown = 1;
        putchar(13);
        progress = self->_progress;
      }

      [(NSProgress *)progress isIndeterminate];
      [(NSProgress *)self->_progress fractionCompleted];
      *&v4 = v4;
      [(FSTaskMessageSTDIOWithProgress *)self fillProgressBar:v4];
      printf("|%s|\r", self->progress_buffer);
      fflush(*MEMORY[0x277D85E08]);
      self->_progressShowing = 1;
    }
  }
}

- (void)hideProgress
{
  obj = self;
  objc_sync_enter(obj);
  [(FSTaskMessageSTDIOWithProgress *)obj hideProgressLocked];
  objc_sync_exit(obj);
}

- (void)showProgress
{
  obj = self;
  objc_sync_enter(obj);
  [(FSTaskMessageSTDIOWithProgress *)obj showProgressLocked];
  objc_sync_exit(obj);
}

- (NSProgress)progress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_progress;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setProgress:(id)progress
{
  progressCopy = progress;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  p_progress = &selfCopy->_progress;
  progress = selfCopy->_progress;
  if (progress)
  {
    [(NSProgress *)progress removeObserver:selfCopy forKeyPath:@"fractionCompleted" context:firstVoidPointer];
    v8 = *p_progress;
    *p_progress = 0;
  }

  objc_storeStrong(&selfCopy->_progress, progress);
  if (progressCopy)
  {
    [progressCopy addObserver:selfCopy forKeyPath:@"fractionCompleted" options:1 context:firstVoidPointer];
  }

  objc_sync_exit(selfCopy);
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (firstVoidPointer == context)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_progress)
    {
      [(FSTaskMessageSTDIOWithProgress *)selfCopy showProgressLocked];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = FSTaskMessageSTDIOWithProgress;
    if ([(FSTaskMessageSTDIOWithProgress *)&v15 respondsToSelector:sel_observeValueForKeyPath_ofObject_change_context_])
    {
      v14.receiver = self;
      v14.super_class = FSTaskMessageSTDIOWithProgress;
      [(FSTaskMessageSTDIOWithProgress *)&v14 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
    }
  }
}

- (int)printAboveProgress:(const char *)progress
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  progressShowing = selfCopy->_progressShowing;
  [(FSTaskMessageSTDIOWithProgress *)selfCopy hideProgressLocked];
  v6 = locking_vprintf(progress, &v8);
  if (progressShowing)
  {
    [(FSTaskMessageSTDIOWithProgress *)selfCopy showProgressLocked];
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (void)prompt:(id)prompt replyHandler:(id)handler
{
  handlerCopy = handler;
  -[FSTaskMessageSTDIOWithProgress printAboveProgress:](self, "printAboveProgress:", "%s\n", [prompt UTF8String]);
  v6 = malloc_type_malloc(0x400uLL, 0xCC45B557uLL);
  if (!v6)
  {
    v10 = __error();
    v11 = fs_errorForPOSIXError(*v10);
    handlerCopy[2](handlerCopy, 0, v11);
LABEL_5:

    goto LABEL_8;
  }

  v7 = v6;
  v8 = MEMORY[0x277D85E00];
  if (fgets(v6, 1024, *MEMORY[0x277D85E00]))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    free(v7);
    (handlerCopy)[2](handlerCopy, v9, 0);

    goto LABEL_8;
  }

  v12 = *__error();
  free(v7);
  v13 = feof(*v8);
  clearerr(*v8);
  if (!v13)
  {
    v11 = fs_errorForPOSIXError(v12);
    handlerCopy[2](handlerCopy, 0, v11);
    goto LABEL_5;
  }

  (handlerCopy[2])();
LABEL_8:
}

- (void)promptTrueFalse:(id)false replyHandler:(id)handler
{
  handlerCopy = handler;
  -[FSTaskMessageSTDIOWithProgress printAboveProgress:](self, "printAboveProgress:", "%s\n", [false UTF8String]);
  v6 = malloc_type_malloc(0x400uLL, 0x9287AB81uLL);
  if (!v6)
  {
    v16 = __error();
    v17 = fs_errorForPOSIXError(*v16);
    handlerCopy[2](handlerCopy, 0, v17);
LABEL_15:

    goto LABEL_16;
  }

  v7 = v6;
  v8 = MEMORY[0x277D85E00];
  v9 = fgets(v6, 1024, *MEMORY[0x277D85E00]);
  if (!v9)
  {
LABEL_10:
    v13 = *__error();
    free(v7);
    v14 = feof(*v8);
    clearerr(*v8);
    if (v14)
    {
      v15 = 96;
    }

    else
    {
      v15 = v13;
    }

    v17 = fs_errorForPOSIXError(v15);
    handlerCopy[2](handlerCopy, 0, v17);
    goto LABEL_15;
  }

  v10 = MEMORY[0x277D85DF8];
  while (1)
  {
    v11 = *v9;
    if ((v11 - 78) <= 0x2B && ((1 << (v11 - 78)) & 0x80100000801) != 0)
    {
      break;
    }

    fwrite("Y/N\n", 4uLL, 1uLL, *v10);
    v9 = fgets(v7, 1024, *v8);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  v18 = (v11 & 0xFFFFFFDF) == 89;
  free(v7);
  handlerCopy[2](handlerCopy, v18, 0);
LABEL_16:
}

- (void)completed:(id)completed replyHandler:(id)handler
{
  completedCopy = completed;
  handlerCopy = handler;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_progressShowing)
  {
    selfCopy->_progressShowing = 0;
    locking_printf("\n", v9, v10, v11, v12, v13, v14, v15, v26);
  }

  objc_sync_exit(selfCopy);

  objc_storeStrong(&selfCopy->_completedError, completed);
  if (completedCopy)
  {
    v16 = [completedCopy description];
    uTF8String = [v16 UTF8String];
    locking_printf("Completed with error: %s\n", v18, v19, v20, v21, v22, v23, v24, uTF8String);
  }

  dispatch_group = selfCopy->_dispatch_group;
  if (dispatch_group)
  {
    dispatch_group_leave(dispatch_group);
  }

  (*(handlerCopy + 2))(handlerCopy, 0, 0);
}

@end
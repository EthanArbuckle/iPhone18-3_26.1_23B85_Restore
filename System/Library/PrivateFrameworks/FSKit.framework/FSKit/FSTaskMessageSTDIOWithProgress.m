@interface FSTaskMessageSTDIOWithProgress
- (FSTaskMessageSTDIOWithProgress)init;
- (NSProgress)progress;
- (int)printAboveProgress:(const char *)a3;
- (void)completed:(id)a3 replyHandler:(id)a4;
- (void)dealloc;
- (void)drawTwiddleBar;
- (void)fillProgressBar:(float)a3;
- (void)hideProgress;
- (void)hideProgressLocked;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)prompt:(id)a3 replyHandler:(id)a4;
- (void)promptTrueFalse:(id)a3 replyHandler:(id)a4;
- (void)setProgress:(id)a3;
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

- (void)fillProgressBar:(float)a3
{
  memset(self->progress_buffer, 32, self->screen_width);
  if ([(NSProgress *)self->_progress isFinished])
  {
    screen_width = self->screen_width;
    v6 = 100;
  }

  else
  {
    v7 = 0.0;
    if (a3 >= 0.0)
    {
      v7 = a3;
    }

    v6 = (v7 * 100.0);
    screen_width = (v7 * self->screen_width);
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
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_progress;
  objc_sync_exit(v2);

  return v3;
}

- (void)setProgress:(id)a3
{
  v9 = a3;
  v5 = self;
  objc_sync_enter(v5);
  p_progress = &v5->_progress;
  progress = v5->_progress;
  if (progress)
  {
    [(NSProgress *)progress removeObserver:v5 forKeyPath:@"fractionCompleted" context:firstVoidPointer];
    v8 = *p_progress;
    *p_progress = 0;
  }

  objc_storeStrong(&v5->_progress, a3);
  if (v9)
  {
    [v9 addObserver:v5 forKeyPath:@"fractionCompleted" options:1 context:firstVoidPointer];
  }

  objc_sync_exit(v5);
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (firstVoidPointer == a6)
  {
    v13 = self;
    objc_sync_enter(v13);
    if (v13->_progress)
    {
      [(FSTaskMessageSTDIOWithProgress *)v13 showProgressLocked];
    }

    objc_sync_exit(v13);
  }

  else
  {
    v15.receiver = self;
    v15.super_class = FSTaskMessageSTDIOWithProgress;
    if ([(FSTaskMessageSTDIOWithProgress *)&v15 respondsToSelector:sel_observeValueForKeyPath_ofObject_change_context_])
    {
      v14.receiver = self;
      v14.super_class = FSTaskMessageSTDIOWithProgress;
      [(FSTaskMessageSTDIOWithProgress *)&v14 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
    }
  }
}

- (int)printAboveProgress:(const char *)a3
{
  v4 = self;
  objc_sync_enter(v4);
  progressShowing = v4->_progressShowing;
  [(FSTaskMessageSTDIOWithProgress *)v4 hideProgressLocked];
  v6 = locking_vprintf(a3, &v8);
  if (progressShowing)
  {
    [(FSTaskMessageSTDIOWithProgress *)v4 showProgressLocked];
  }

  objc_sync_exit(v4);

  return v6;
}

- (void)prompt:(id)a3 replyHandler:(id)a4
{
  v14 = a4;
  -[FSTaskMessageSTDIOWithProgress printAboveProgress:](self, "printAboveProgress:", "%s\n", [a3 UTF8String]);
  v6 = malloc_type_malloc(0x400uLL, 0xCC45B557uLL);
  if (!v6)
  {
    v10 = __error();
    v11 = fs_errorForPOSIXError(*v10);
    v14[2](v14, 0, v11);
LABEL_5:

    goto LABEL_8;
  }

  v7 = v6;
  v8 = MEMORY[0x277D85E00];
  if (fgets(v6, 1024, *MEMORY[0x277D85E00]))
  {
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v7];
    free(v7);
    (v14)[2](v14, v9, 0);

    goto LABEL_8;
  }

  v12 = *__error();
  free(v7);
  v13 = feof(*v8);
  clearerr(*v8);
  if (!v13)
  {
    v11 = fs_errorForPOSIXError(v12);
    v14[2](v14, 0, v11);
    goto LABEL_5;
  }

  (v14[2])();
LABEL_8:
}

- (void)promptTrueFalse:(id)a3 replyHandler:(id)a4
{
  v19 = a4;
  -[FSTaskMessageSTDIOWithProgress printAboveProgress:](self, "printAboveProgress:", "%s\n", [a3 UTF8String]);
  v6 = malloc_type_malloc(0x400uLL, 0x9287AB81uLL);
  if (!v6)
  {
    v16 = __error();
    v17 = fs_errorForPOSIXError(*v16);
    v19[2](v19, 0, v17);
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
    v19[2](v19, 0, v17);
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
  v19[2](v19, v18, 0);
LABEL_16:
}

- (void)completed:(id)a3 replyHandler:(id)a4
{
  v27 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (v8->_progressShowing)
  {
    v8->_progressShowing = 0;
    locking_printf("\n", v9, v10, v11, v12, v13, v14, v15, v26);
  }

  objc_sync_exit(v8);

  objc_storeStrong(&v8->_completedError, a3);
  if (v27)
  {
    v16 = [v27 description];
    v17 = [v16 UTF8String];
    locking_printf("Completed with error: %s\n", v18, v19, v20, v21, v22, v23, v24, v17);
  }

  dispatch_group = v8->_dispatch_group;
  if (dispatch_group)
  {
    dispatch_group_leave(dispatch_group);
  }

  (*(v7 + 2))(v7, 0, 0);
}

@end
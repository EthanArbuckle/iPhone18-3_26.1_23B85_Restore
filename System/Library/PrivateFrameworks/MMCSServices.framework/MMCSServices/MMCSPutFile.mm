@interface MMCSPutFile
- (void)dealloc;
- (void)setProgress:(double)progress;
@end

@implementation MMCSPutFile

- (void)dealloc
{
  objc_msgSend_setCompletionBlock_(self, a2, 0, v2, v3);
  objc_msgSend_setProgressUpdateBlock_(self, v5, 0, v6, v7);
  objc_msgSend_setRegistrationBlock_(self, v8, 0, v9, v10);

  v11.receiver = self;
  v11.super_class = MMCSPutFile;
  [(MMCSSimpleFile *)&v11 dealloc];
}

- (void)setProgress:(double)progress
{
  if (progress < 0.0)
  {
    progress = 0.0;
  }

  if (progress <= 1.0)
  {
    progressCopy = progress;
  }

  else
  {
    progressCopy = 1.0;
  }

  v12.receiver = self;
  v12.super_class = MMCSPutFile;
  [(MMCSSimpleFile *)&v12 progress];
  if (progressCopy != v5)
  {
    v11.receiver = self;
    v11.super_class = MMCSPutFile;
    [(MMCSSimpleFile *)&v11 setProgress:progressCopy];
    updated = objc_msgSend_progressUpdateBlock(self, v6, v7, v8, v9);
    if (updated)
    {
      (*(updated + 16))(updated, self, progressCopy);
    }
  }
}

@end
@interface MMCSPutFile
- (void)dealloc;
- (void)setProgress:(double)a3;
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

- (void)setProgress:(double)a3
{
  if (a3 < 0.0)
  {
    a3 = 0.0;
  }

  if (a3 <= 1.0)
  {
    v4 = a3;
  }

  else
  {
    v4 = 1.0;
  }

  v12.receiver = self;
  v12.super_class = MMCSPutFile;
  [(MMCSSimpleFile *)&v12 progress];
  if (v4 != v5)
  {
    v11.receiver = self;
    v11.super_class = MMCSPutFile;
    [(MMCSSimpleFile *)&v11 setProgress:v4];
    updated = objc_msgSend_progressUpdateBlock(self, v6, v7, v8, v9);
    if (updated)
    {
      (*(updated + 16))(updated, self, v4);
    }
  }
}

@end
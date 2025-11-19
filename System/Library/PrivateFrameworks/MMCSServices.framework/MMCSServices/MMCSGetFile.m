@interface MMCSGetFile
- (void)dealloc;
- (void)setProgress:(double)a3;
@end

@implementation MMCSGetFile

- (void)dealloc
{
  objc_msgSend_setCompletionBlock_(self, a2, 0, v2, v3);
  objc_msgSend_setProgressUpdateBlock_(self, v5, 0, v6, v7);
  v8.receiver = self;
  v8.super_class = MMCSGetFile;
  [(MMCSSimpleFile *)&v8 dealloc];
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
  v12.super_class = MMCSGetFile;
  [(MMCSSimpleFile *)&v12 progress];
  if (v4 != v5)
  {
    v11.receiver = self;
    v11.super_class = MMCSGetFile;
    [(MMCSSimpleFile *)&v11 setProgress:v4];
    updated = objc_msgSend_progressUpdateBlock(self, v6, v7, v8, v9);
    if (updated)
    {
      (*(updated + 16))(updated, self, v4);
    }
  }
}

@end
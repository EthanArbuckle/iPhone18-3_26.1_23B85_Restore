@interface VCPTask
- (BOOL)isCancelled;
- (VCPTask)initWithPhotoLibrary:(id)a3;
- (void)main;
@end

@implementation VCPTask

- (VCPTask)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = VCPTask;
  v6 = [(VCPTask *)&v10 init];
  v7 = v6;
  if (v6)
  {
    cancel = v6->_cancel;
    v6->_cancel = &stru_100288918;

    v7->_error = 0;
    objc_storeStrong(&v7->_photoLibrary, a3);
  }

  return v7;
}

- (BOOL)isCancelled
{
  v5.receiver = self;
  v5.super_class = VCPTask;
  if ([(VCPTask *)&v5 isCancelled])
  {
    LOBYTE(cancel) = 1;
  }

  else
  {
    cancel = self->_cancel;
    if (cancel)
    {
      LOBYTE(cancel) = cancel[2]();
    }
  }

  return cancel;
}

- (void)main
{
  v3 = objc_autoreleasePoolPush();
  self->_error = [(VCPTask *)self mainInternal];

  objc_autoreleasePoolPop(v3);
}

@end
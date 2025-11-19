@interface AVSessionManager
- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5;
- (void)captureOutput:(id)a3 willCapturePhotoForResolvedSettings:(id)a4;
- (void)dataOutputSynchronizer:(id)a3 didOutputSynchronizedDataCollection:(id)a4;
@end

@implementation AVSessionManager

- (void)captureOutput:(id)a3 willCapturePhotoForResolvedSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2456ED59C();
}

- (void)captureOutput:(id)a3 didFinishProcessingPhoto:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_2456ED950(v9, a5);
}

- (void)dataOutputSynchronizer:(id)a3 didOutputSynchronizedDataCollection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2456EDE04(v7);
}

@end
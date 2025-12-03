@interface AVSessionManager
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)captureOutput:(id)output willCapturePhotoForResolvedSettings:(id)settings;
- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection;
@end

@implementation AVSessionManager

- (void)captureOutput:(id)output willCapturePhotoForResolvedSettings:(id)settings
{
  outputCopy = output;
  settingsCopy = settings;
  selfCopy = self;
  sub_2456ED59C();
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  outputCopy = output;
  photoCopy = photo;
  selfCopy = self;
  errorCopy = error;
  sub_2456ED950(photoCopy, error);
}

- (void)dataOutputSynchronizer:(id)synchronizer didOutputSynchronizedDataCollection:(id)collection
{
  synchronizerCopy = synchronizer;
  collectionCopy = collection;
  selfCopy = self;
  sub_2456EDE04(collectionCopy);
}

@end
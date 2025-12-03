@interface AVCameraSessionProvider
- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
@end

@implementation AVCameraSessionProvider

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  bufferCopy = buffer;
  connectionCopy = connection;
  selfCopy = self;
  sub_247CE4E14(bufferCopy);
}

- (void)captureOutput:(id)output didFinishProcessingPhoto:(id)photo error:(id)error
{
  outputCopy = output;
  photoCopy = photo;
  selfCopy = self;
  errorCopy = error;
  sub_247CE4F74(photoCopy);
}

@end
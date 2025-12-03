@interface MRZCaptureSessionManager
- (_TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager)init;
- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection;
@end

@implementation MRZCaptureSessionManager

- (void)captureOutput:(id)output didOutputSampleBuffer:(opaqueCMSampleBuffer *)buffer fromConnection:(id)connection
{
  outputCopy = output;
  bufferCopy = buffer;
  connectionCopy = connection;

  sub_2457EA940(outputCopy, bufferCopy, connectionCopy);
}

- (_TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
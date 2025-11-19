@interface MRZCaptureSessionManager
- (_TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager)init;
- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5;
@end

@implementation MRZCaptureSessionManager

- (void)captureOutput:(id)a3 didOutputSampleBuffer:(opaqueCMSampleBuffer *)a4 fromConnection:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;

  sub_2457EA940(v7, v8, v9);
}

- (_TtC9CoreIDVUIP33_053BED35772C6BC99F084550158E630624MRZCaptureSessionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end
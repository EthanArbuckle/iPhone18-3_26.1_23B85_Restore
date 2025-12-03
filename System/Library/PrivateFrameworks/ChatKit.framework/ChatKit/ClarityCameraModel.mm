@interface ClarityCameraModel
- (void)captureOutput:(id)output didFinishRecordingToOutputFileAtURL:(id)l fromConnections:(id)connections error:(id)error;
@end

@implementation ClarityCameraModel

- (void)captureOutput:(id)output didFinishRecordingToOutputFileAtURL:(id)l fromConnections:(id)connections error:(id)error
{
  v9 = sub_190D515F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D515B0();
  outputCopy = output;
  selfCopy = self;
  errorCopy = error;
  sub_190BD821C(v12, error);

  (*(v10 + 8))(v12, v9);
}

@end
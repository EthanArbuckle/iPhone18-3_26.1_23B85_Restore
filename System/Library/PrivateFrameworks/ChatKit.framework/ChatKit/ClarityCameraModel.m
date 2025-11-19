@interface ClarityCameraModel
- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6;
@end

@implementation ClarityCameraModel

- (void)captureOutput:(id)a3 didFinishRecordingToOutputFileAtURL:(id)a4 fromConnections:(id)a5 error:(id)a6
{
  v9 = sub_190D515F0();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_190D515B0();
  v13 = a3;
  v14 = self;
  v15 = a6;
  sub_190BD821C(v12, a6);

  (*(v10 + 8))(v12, v9);
}

@end
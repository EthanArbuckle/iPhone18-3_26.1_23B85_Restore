@interface CAMCaptureResponse
- (CAMCaptureResponse)init;
- (CAMCaptureResponse)initWithType:(int64_t)type captureSession:(unsigned __int16)session coordinationInfo:(id)info;
@end

@implementation CAMCaptureResponse

- (CAMCaptureResponse)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"CAMCaptureResponse must be initialized using -initWithType:captureSession:"];

  return 0;
}

- (CAMCaptureResponse)initWithType:(int64_t)type captureSession:(unsigned __int16)session coordinationInfo:(id)info
{
  infoCopy = info;
  v14.receiver = self;
  v14.super_class = CAMCaptureResponse;
  v10 = [(CAMCaptureResponse *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v10->_sessionIdentifier = session;
    objc_storeStrong(&v10->_coordinationInfo, info);
    v12 = v11;
  }

  return v11;
}

@end
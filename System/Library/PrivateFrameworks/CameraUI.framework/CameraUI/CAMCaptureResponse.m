@interface CAMCaptureResponse
- (CAMCaptureResponse)init;
- (CAMCaptureResponse)initWithType:(int64_t)a3 captureSession:(unsigned __int16)a4 coordinationInfo:(id)a5;
@end

@implementation CAMCaptureResponse

- (CAMCaptureResponse)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"CAMCaptureResponse must be initialized using -initWithType:captureSession:"];

  return 0;
}

- (CAMCaptureResponse)initWithType:(int64_t)a3 captureSession:(unsigned __int16)a4 coordinationInfo:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CAMCaptureResponse;
  v10 = [(CAMCaptureResponse *)&v14 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = a3;
    v10->_sessionIdentifier = a4;
    objc_storeStrong(&v10->_coordinationInfo, a5);
    v12 = v11;
  }

  return v11;
}

@end
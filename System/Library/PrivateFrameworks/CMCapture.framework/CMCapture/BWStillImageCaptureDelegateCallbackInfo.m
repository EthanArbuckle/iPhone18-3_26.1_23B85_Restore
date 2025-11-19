@interface BWStillImageCaptureDelegateCallbackInfo
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)pts;
- (BWStillImageCaptureDelegateCallbackInfo)initWithFlag:(unsigned int)a3;
- (BWStillImageCaptureDelegateCallbackInfo)initWithFlag:(unsigned int)a3 pts:(id *)a4 isPreBracketFrame:(BOOL)a5;
@end

@implementation BWStillImageCaptureDelegateCallbackInfo

- (BWStillImageCaptureDelegateCallbackInfo)initWithFlag:(unsigned int)a3 pts:(id *)a4 isPreBracketFrame:(BOOL)a5
{
  v10.receiver = self;
  v10.super_class = BWStillImageCaptureDelegateCallbackInfo;
  result = [(BWStillImageCaptureDelegateCallbackInfo *)&v10 init];
  if (result)
  {
    result->_flag = a3;
    v9 = *&a4->var0;
    *&result->_pts.flags = a4->var3;
    *(&result->_flag + 1) = v9;
    BYTE4(result->_pts.epoch) = a5;
    if ((a3 & (a3 - 1)) != 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"BWStillImageCaptureDelegateCallbackInfo can only be instantiated with one flag set" userInfo:0]);
    }
  }

  return result;
}

- (BWStillImageCaptureDelegateCallbackInfo)initWithFlag:(unsigned int)a3
{
  v4 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  return [(BWStillImageCaptureDelegateCallbackInfo *)self initWithFlag:*&a3 pts:&v4 isPreBracketFrame:0];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)pts
{
  *&retstr->var0 = *&self->var2;
  retstr->var3 = *(&self[1].var0 + 4);
  return self;
}

@end
@interface BWStillImageCaptureDelegateCallbackInfo
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)pts;
- (BWStillImageCaptureDelegateCallbackInfo)initWithFlag:(unsigned int)flag;
- (BWStillImageCaptureDelegateCallbackInfo)initWithFlag:(unsigned int)flag pts:(id *)pts isPreBracketFrame:(BOOL)frame;
@end

@implementation BWStillImageCaptureDelegateCallbackInfo

- (BWStillImageCaptureDelegateCallbackInfo)initWithFlag:(unsigned int)flag pts:(id *)pts isPreBracketFrame:(BOOL)frame
{
  v10.receiver = self;
  v10.super_class = BWStillImageCaptureDelegateCallbackInfo;
  result = [(BWStillImageCaptureDelegateCallbackInfo *)&v10 init];
  if (result)
  {
    result->_flag = flag;
    v9 = *&pts->var0;
    *&result->_pts.flags = pts->var3;
    *(&result->_flag + 1) = v9;
    BYTE4(result->_pts.epoch) = frame;
    if ((flag & (flag - 1)) != 0)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"BWStillImageCaptureDelegateCallbackInfo can only be instantiated with one flag set" userInfo:0]);
    }
  }

  return result;
}

- (BWStillImageCaptureDelegateCallbackInfo)initWithFlag:(unsigned int)flag
{
  v4 = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  return [(BWStillImageCaptureDelegateCallbackInfo *)self initWithFlag:*&flag pts:&v4 isPreBracketFrame:0];
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)pts
{
  *&retstr->var0 = *&self->var2;
  retstr->var3 = *(&self[1].var0 + 4);
  return self;
}

@end
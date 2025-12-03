@interface CVNLPCaptionEncoder
- (void)computeCaptionForImage:(vImage_Buffer *)image outputs:(id *)outputs;
- (void)computeCaptionForPixelBuffer:(__CVBuffer *)buffer outputs:(id *)outputs;
- (void)computeCaptionForVideoPixelBuffer:(void *)buffer outputs:(id *)outputs;
@end

@implementation CVNLPCaptionEncoder

- (void)computeCaptionForVideoPixelBuffer:(void *)buffer outputs:(id *)outputs
{
  v4 = MEMORY[0x1E695DF30];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v7, @"You must override %@ in a subclass", v8, v6);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v4, v10, *MEMORY[0x1E695D930], v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)computeCaptionForPixelBuffer:(__CVBuffer *)buffer outputs:(id *)outputs
{
  v4 = MEMORY[0x1E695DF30];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v7, @"You must override %@ in a subclass", v8, v6);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v4, v10, *MEMORY[0x1E695D930], v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)computeCaptionForImage:(vImage_Buffer *)image outputs:(id *)outputs
{
  v4 = MEMORY[0x1E695DF30];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v7, @"You must override %@ in a subclass", v8, v6);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v4, v10, *MEMORY[0x1E695D930], v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

@end
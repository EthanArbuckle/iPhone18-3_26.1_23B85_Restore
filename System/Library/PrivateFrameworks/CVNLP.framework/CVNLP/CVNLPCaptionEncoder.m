@interface CVNLPCaptionEncoder
- (void)computeCaptionForImage:(vImage_Buffer *)a3 outputs:(id *)a4;
- (void)computeCaptionForPixelBuffer:(__CVBuffer *)a3 outputs:(id *)a4;
- (void)computeCaptionForVideoPixelBuffer:(void *)a3 outputs:(id *)a4;
@end

@implementation CVNLPCaptionEncoder

- (void)computeCaptionForVideoPixelBuffer:(void *)a3 outputs:(id *)a4
{
  v4 = MEMORY[0x1E695DF30];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v7, @"You must override %@ in a subclass", v8, v6);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v4, v10, *MEMORY[0x1E695D930], v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)computeCaptionForPixelBuffer:(__CVBuffer *)a3 outputs:(id *)a4
{
  v4 = MEMORY[0x1E695DF30];
  v5 = MEMORY[0x1E696AEC0];
  v6 = NSStringFromSelector(a2);
  v9 = objc_msgSend_stringWithFormat_(v5, v7, @"You must override %@ in a subclass", v8, v6);
  v11 = objc_msgSend_exceptionWithName_reason_userInfo_(v4, v10, *MEMORY[0x1E695D930], v9, 0);
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)computeCaptionForImage:(vImage_Buffer *)a3 outputs:(id *)a4
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
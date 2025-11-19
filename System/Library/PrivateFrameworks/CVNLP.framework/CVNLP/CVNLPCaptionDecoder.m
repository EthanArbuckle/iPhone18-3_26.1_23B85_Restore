@interface CVNLPCaptionDecoder
- (id)computeCaptionForImageWithInputs:(id)a3 genderOption:(int)a4;
@end

@implementation CVNLPCaptionDecoder

- (id)computeCaptionForImageWithInputs:(id)a3 genderOption:(int)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF30];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v11 = objc_msgSend_stringWithFormat_(v7, v9, @"You must override %@ in a subclass", v10, v8);
  v13 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v12, *MEMORY[0x1E695D930], v11, 0);
  v14 = v13;

  objc_exception_throw(v13);
}

@end
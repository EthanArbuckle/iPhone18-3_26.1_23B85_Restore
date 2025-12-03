@interface ComAppleContextkitUtilObjcSpindleArray_NativeState
- (ComAppleContextkitUtilObjcSpindleArray_NativeState)init;
- (int)decodeWithInt:(int)int withByteArray:(id)array withByteArray:(id)byteArray;
- (void)dealloc;
@end

@implementation ComAppleContextkitUtilObjcSpindleArray_NativeState

- (void)dealloc
{
  free(self->_dstBuffer);
  free(self->_scratchBuffer);
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilObjcSpindleArray_NativeState;
  [(ComAppleContextkitUtilSpindleArray_State *)&v3 dealloc];
}

- (ComAppleContextkitUtilObjcSpindleArray_NativeState)init
{
  ComAppleContextkitUtilSpindleArray_State_init(self);
  sub_1000A269C(self);
  return self;
}

- (int)decodeWithInt:(int)int withByteArray:(id)array withByteArray:(id)byteArray
{
  if (!array)
  {
    goto LABEL_6;
  }

  if (!*(array + 2))
  {
    v7 = @"Empty buffer";
    goto LABEL_9;
  }

  if (!byteArray)
  {
LABEL_6:
    JreThrowNullPointerException();
  }

  v5 = *(byteArray + 2);
  if (v5 < int)
  {
    v7 = @"OutBuf too small";
LABEL_9:
    v8 = new_JavaIoIOException_initWithNSString_(v7);
    objc_exception_throw(v8);
  }

  return compression_decode_buffer(byteArray + 12, v5, array + 12, *(array + 2), self->_scratchBuffer, COMPRESSION_LZFSE);
}

@end
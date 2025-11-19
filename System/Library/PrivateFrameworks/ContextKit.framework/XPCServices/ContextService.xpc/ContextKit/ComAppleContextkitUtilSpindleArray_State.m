@interface ComAppleContextkitUtilSpindleArray_State
- (ComAppleContextkitUtilSpindleArray_State)init;
- (void)dealloc;
@end

@implementation ComAppleContextkitUtilSpindleArray_State

- (ComAppleContextkitUtilSpindleArray_State)init
{
  JreStrongAssign(&self->compressedBuf_, 0);
  JreStrongAssign(&self->uncompressedBuf_, 0);
  return self;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = ComAppleContextkitUtilSpindleArray_State;
  [(ComAppleContextkitUtilSpindleArray_State *)&v3 dealloc];
}

@end
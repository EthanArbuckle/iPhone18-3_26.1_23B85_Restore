@interface JavaUtilIllegalFormatPrecisionException
- (JavaUtilIllegalFormatPrecisionException)initWithInt:(int)int;
@end

@implementation JavaUtilIllegalFormatPrecisionException

- (JavaUtilIllegalFormatPrecisionException)initWithInt:(int)int
{
  JavaUtilIllegalFormatException_init(self, a2);
  *(&self->super.super.super.super.super.rawFrameCount + 1) = int;
  return self;
}

@end
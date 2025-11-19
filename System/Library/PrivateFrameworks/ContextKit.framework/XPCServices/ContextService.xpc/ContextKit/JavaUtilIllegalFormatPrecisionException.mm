@interface JavaUtilIllegalFormatPrecisionException
- (JavaUtilIllegalFormatPrecisionException)initWithInt:(int)a3;
@end

@implementation JavaUtilIllegalFormatPrecisionException

- (JavaUtilIllegalFormatPrecisionException)initWithInt:(int)a3
{
  JavaUtilIllegalFormatException_init(self, a2);
  *(&self->super.super.super.super.super.rawFrameCount + 1) = a3;
  return self;
}

@end
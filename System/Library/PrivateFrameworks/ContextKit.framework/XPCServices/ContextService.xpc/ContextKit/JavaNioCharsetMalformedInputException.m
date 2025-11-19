@interface JavaNioCharsetMalformedInputException
- (JavaNioCharsetMalformedInputException)initWithInt:(int)a3;
@end

@implementation JavaNioCharsetMalformedInputException

- (JavaNioCharsetMalformedInputException)initWithInt:(int)a3
{
  JavaNioCharsetCharacterCodingException_init(self, a2);
  *(&self->super.super.super.super.rawFrameCount + 1) = a3;
  return self;
}

@end
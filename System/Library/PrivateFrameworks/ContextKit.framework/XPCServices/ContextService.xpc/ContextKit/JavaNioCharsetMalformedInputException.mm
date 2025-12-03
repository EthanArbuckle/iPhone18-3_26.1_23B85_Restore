@interface JavaNioCharsetMalformedInputException
- (JavaNioCharsetMalformedInputException)initWithInt:(int)int;
@end

@implementation JavaNioCharsetMalformedInputException

- (JavaNioCharsetMalformedInputException)initWithInt:(int)int
{
  JavaNioCharsetCharacterCodingException_init(self, a2);
  *(&self->super.super.super.super.rawFrameCount + 1) = int;
  return self;
}

@end
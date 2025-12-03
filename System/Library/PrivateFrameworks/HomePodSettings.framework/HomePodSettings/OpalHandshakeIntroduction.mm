@interface OpalHandshakeIntroduction
- (void)encodeWithCoder:(id)coder;
@end

@implementation OpalHandshakeIntroduction

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  OpalHandshakeIntroduction.encode(with:)(coderCopy);
}

@end
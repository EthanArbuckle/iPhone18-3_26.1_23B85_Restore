@interface _MFMessageFlags
- (_MFMessageFlags)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MFMessageFlags

- (_MFMessageFlags)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0;
  v6 = -1431655766;
  [coderCopy decodeValueOfObjCType:"@" at:&v8];
  [coderCopy decodeValueOfObjCType:"Q" at:&v7];
  [coderCopy decodeValueOfObjCType:"I" at:&v6];
  self->realFlags = (v7 ^ 1) & 0x81BDDDB7FFFFLL | ((v6 & 7) << 16);

  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  realFlags = self->realFlags;
  v6 = WORD1(realFlags) & 7;
  v7 = realFlags & 0x81BDDDB7FFFFLL ^ 1;
  v8 = 0;
  [coderCopy encodeValueOfObjCType:"@" at:&v8];
  [coderCopy encodeValueOfObjCType:"Q" at:&v7];
  [coderCopy encodeValueOfObjCType:"I" at:&v6];
}

@end
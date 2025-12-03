@interface _MFMessageFlags
- (_MFMessageFlags)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _MFMessageFlags

- (_MFMessageFlags)initWithCoder:(id)coder
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  [coder decodeValueOfObjCType:"@" at:&v8];
  [coder decodeValueOfObjCType:"Q" at:&v7];
  [coder decodeValueOfObjCType:"I" at:&v6];

  self->realFlags = (v7 & 0x1BFDDF7FFFFLL | ((v6 & 7) << 16)) ^ 1;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  realFlags = self->realFlags;
  v5 = WORD1(realFlags) & 7;
  v6 = realFlags & 0x1BFDDF7FFFFLL ^ 1;
  v7 = 0;
  [coder encodeValueOfObjCType:"@" at:&v7];
  [coder encodeValueOfObjCType:"Q" at:&v6];
  [coder encodeValueOfObjCType:"I" at:&v5];
}

@end
@interface _MFMessageFlags
- (_MFMessageFlags)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MFMessageFlags

- (_MFMessageFlags)initWithCoder:(id)a3
{
  v7 = 0;
  v8 = 0;
  v6 = 0;
  [a3 decodeValueOfObjCType:"@" at:&v8];
  [a3 decodeValueOfObjCType:"Q" at:&v7];
  [a3 decodeValueOfObjCType:"I" at:&v6];

  self->realFlags = (v7 & 0x1BFDDF7FFFFLL | ((v6 & 7) << 16)) ^ 1;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  realFlags = self->realFlags;
  v5 = WORD1(realFlags) & 7;
  v6 = realFlags & 0x1BFDDF7FFFFLL ^ 1;
  v7 = 0;
  [a3 encodeValueOfObjCType:"@" at:&v7];
  [a3 encodeValueOfObjCType:"Q" at:&v6];
  [a3 encodeValueOfObjCType:"I" at:&v5];
}

@end
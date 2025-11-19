@interface _MFMessageFlags
- (_MFMessageFlags)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _MFMessageFlags

- (_MFMessageFlags)initWithCoder:(id)a3
{
  v4 = a3;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v8 = 0;
  v6 = -1431655766;
  [v4 decodeValueOfObjCType:"@" at:&v8];
  [v4 decodeValueOfObjCType:"Q" at:&v7];
  [v4 decodeValueOfObjCType:"I" at:&v6];
  self->realFlags = (v7 ^ 1) & 0x81BDDDB7FFFFLL | ((v6 & 7) << 16);

  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  realFlags = self->realFlags;
  v6 = WORD1(realFlags) & 7;
  v7 = realFlags & 0x81BDDDB7FFFFLL ^ 1;
  v8 = 0;
  [v4 encodeValueOfObjCType:"@" at:&v8];
  [v4 encodeValueOfObjCType:"Q" at:&v7];
  [v4 encodeValueOfObjCType:"I" at:&v6];
}

@end
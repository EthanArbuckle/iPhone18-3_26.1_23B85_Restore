@interface CDMNluResponse
- (SIRINLUEXTERNALCDMNluResponse)objcProto;
- (void)encodeWithCoder:(id)coder;
- (void)setObjcProto:(id)proto;
@end

@implementation CDMNluResponse

- (SIRINLUEXTERNALCDMNluResponse)objcProto
{
  v2 = sub_1DC37F0F8();

  return v2;
}

- (void)setObjcProto:(id)proto
{
  protoCopy = proto;
  selfCopy = self;
  sub_1DC37F1A0(proto);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1DC37FD20(coderCopy);
}

@end
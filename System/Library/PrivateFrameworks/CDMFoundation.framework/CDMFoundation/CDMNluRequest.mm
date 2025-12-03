@interface CDMNluRequest
- (SIRINLUEXTERNALCDMNluRequest)objcProto;
- (void)encodeWithCoder:(id)coder;
- (void)setObjcProto:(id)proto;
@end

@implementation CDMNluRequest

- (SIRINLUEXTERNALCDMNluRequest)objcProto
{
  v2 = sub_1DC4183F4();

  return v2;
}

- (void)setObjcProto:(id)proto
{
  protoCopy = proto;
  selfCopy = self;
  sub_1DC41849C(proto);
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1DC418F1C(coderCopy);
}

@end
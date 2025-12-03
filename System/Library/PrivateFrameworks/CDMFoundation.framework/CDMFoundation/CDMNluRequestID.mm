@interface CDMNluRequestID
- (SIRINLUEXTERNALRequestID)objcProto;
- (void)setObjcProto:(id)proto;
@end

@implementation CDMNluRequestID

- (SIRINLUEXTERNALRequestID)objcProto
{
  v2 = sub_1DC3EFC80();

  return v2;
}

- (void)setObjcProto:(id)proto
{
  protoCopy = proto;
  selfCopy = self;
  sub_1DC3EFD28(proto);
}

@end
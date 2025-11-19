@interface CDMNluRequest
- (SIRINLUEXTERNALCDMNluRequest)objcProto;
- (void)encodeWithCoder:(id)a3;
- (void)setObjcProto:(id)a3;
@end

@implementation CDMNluRequest

- (SIRINLUEXTERNALCDMNluRequest)objcProto
{
  v2 = sub_1DC4183F4();

  return v2;
}

- (void)setObjcProto:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1DC41849C(a3);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DC418F1C(v4);
}

@end
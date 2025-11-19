@interface CDMNluResponse
- (SIRINLUEXTERNALCDMNluResponse)objcProto;
- (void)encodeWithCoder:(id)a3;
- (void)setObjcProto:(id)a3;
@end

@implementation CDMNluResponse

- (SIRINLUEXTERNALCDMNluResponse)objcProto
{
  v2 = sub_1DC37F0F8();

  return v2;
}

- (void)setObjcProto:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1DC37F1A0(a3);
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1DC37FD20(v4);
}

@end
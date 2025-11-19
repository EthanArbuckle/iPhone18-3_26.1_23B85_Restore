@interface IDSNAT64PrefixWrapper
- ($B0CAF2F970A52CDCEAEBD8ED9A40FEA0)prefix;
- (void)setPrefix:(id)a3;
@end

@implementation IDSNAT64PrefixWrapper

- ($B0CAF2F970A52CDCEAEBD8ED9A40FEA0)prefix
{
  v2 = (self + OBJC_IVAR___IDSNAT64PrefixWrapper_prefix);
  swift_beginAccess();
  v3 = *v2;
  v4 = v2[1];
  *&result.var1[4] = v4;
  result.var0 = v3;
  *result.var1 = HIDWORD(v3);
  return result;
}

- (void)setPrefix:(id)a3
{
  v3 = *&a3.var1[4];
  v4 = *&a3.var0;
  v5 = (&self->super.isa + OBJC_IVAR___IDSNAT64PrefixWrapper_prefix);
  swift_beginAccess();
  *v5 = v4;
  v5[1] = v3;
}

@end
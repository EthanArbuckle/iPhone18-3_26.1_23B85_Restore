@interface JavaLangHexStringParser
+ (void)initialize;
- (void)dealloc;
- (void)discardTrailingBitsWithLong:(int64_t)a3;
- (void)parseHexSignWithNSString:(id)a3;
- (void)processNormalNumber;
@end

@implementation JavaLangHexStringParser

- (void)parseHexSignWithNSString:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  self->sign_ = [a3 isEqual:@"-"];
}

- (void)processNormalNumber
{
  sub_10022A798(self, self->MANTISSA_WIDTH_ + 2);
  sub_10022A884(self);
  self->mantissa_ &= self->MANTISSA_MASK_;
}

- (void)discardTrailingBitsWithLong:(int64_t)a3
{
  v8 = a3;
  JreStrAppendStrong(&self->abandonedNumber_, "J", a3, v3, v4, v5, v6, v7, self->mantissa_ & ~(-1 << a3));
  self->mantissa_ >>= v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangHexStringParser;
  [(JavaLangHexStringParser *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = JavaUtilRegexPattern_compileWithNSString_(off_100552058);
    JreStrongAssign(&qword_100555230, v2);
    atomic_store(1u, JavaLangHexStringParser__initialized);
  }
}

@end
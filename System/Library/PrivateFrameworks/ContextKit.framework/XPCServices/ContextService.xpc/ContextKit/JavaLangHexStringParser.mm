@interface JavaLangHexStringParser
+ (void)initialize;
- (void)dealloc;
- (void)discardTrailingBitsWithLong:(int64_t)long;
- (void)parseHexSignWithNSString:(id)string;
- (void)processNormalNumber;
@end

@implementation JavaLangHexStringParser

- (void)parseHexSignWithNSString:(id)string
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  self->sign_ = [string isEqual:@"-"];
}

- (void)processNormalNumber
{
  sub_10022A798(self, self->MANTISSA_WIDTH_ + 2);
  sub_10022A884(self);
  self->mantissa_ &= self->MANTISSA_MASK_;
}

- (void)discardTrailingBitsWithLong:(int64_t)long
{
  longCopy = long;
  JreStrAppendStrong(&self->abandonedNumber_, "J", long, v3, v4, v5, v6, v7, self->mantissa_ & ~(-1 << long));
  self->mantissa_ >>= longCopy;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangHexStringParser;
  [(JavaLangHexStringParser *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = JavaUtilRegexPattern_compileWithNSString_(off_100552058);
    JreStrongAssign(&qword_100555230, v2);
    atomic_store(1u, JavaLangHexStringParser__initialized);
  }
}

@end
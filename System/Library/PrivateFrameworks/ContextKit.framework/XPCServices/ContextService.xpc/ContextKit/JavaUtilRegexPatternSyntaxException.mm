@interface JavaUtilRegexPatternSyntaxException
- (id)getMessage;
- (void)dealloc;
@end

@implementation JavaUtilRegexPatternSyntaxException

- (id)getMessage
{
  v3 = new_JavaLangStringBuilder_init();
  v4 = v3;
  if (self->desc_)
  {
    [(JavaLangStringBuilder *)v3 appendWithNSString:?];
  }

  if ((self->index_ & 0x80000000) == 0)
  {
    if (self->desc_)
    {
      [(JavaLangStringBuilder *)v4 appendWithChar:32];
    }

    [(JavaLangStringBuilder *)v4 appendWithNSString:@"near index "];
    [(JavaLangStringBuilder *)v4 appendWithInt:self->index_];
    [(JavaLangStringBuilder *)v4 appendWithChar:58];
  }

  if (self->pattern_)
  {
    [(JavaLangStringBuilder *)v4 appendWithChar:10];
    [(JavaLangStringBuilder *)v4 appendWithNSString:self->pattern_];
    if ((self->index_ & 0x80000000) == 0)
    {
      v5 = [IOSCharArray arrayWithLength:?];
      JavaUtilArrays_fillWithCharArray_withChar_(v5, 32);
      [(JavaLangStringBuilder *)v4 appendWithChar:10];
      [(JavaLangStringBuilder *)v4 appendWithCharArray:v5];
      [(JavaLangStringBuilder *)v4 appendWithChar:94];
    }
  }

  return [(JavaLangStringBuilder *)v4 description];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaUtilRegexPatternSyntaxException;
  [(JavaLangThrowable *)&v3 dealloc];
}

@end
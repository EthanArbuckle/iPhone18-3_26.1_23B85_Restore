@interface JavaLangStringToReal_StringExponentPair
- (float)specialValue;
- (void)dealloc;
@end

@implementation JavaLangStringToReal_StringExponentPair

- (float)specialValue
{
  result = INFINITY;
  if (self->negative_)
  {
    result = -INFINITY;
  }

  v3 = -0.0;
  if (!self->negative_)
  {
    v3 = 0.0;
  }

  if (!self->infinity_)
  {
    return v3;
  }

  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaLangStringToReal_StringExponentPair;
  [(JavaLangStringToReal_StringExponentPair *)&v3 dealloc];
}

@end
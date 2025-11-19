@interface LibcoreNetUriCodec
+ (int)hexToIntWithChar:(unsigned __int16)a3;
- (id)encodeWithNSString:(id)a3 withJavaNioCharsetCharset:(id)a4;
- (void)appendEncodedWithJavaLangStringBuilder:(id)a3 withNSString:(id)a4;
- (void)appendPartiallyEncodedWithJavaLangStringBuilder:(id)a3 withNSString:(id)a4;
@end

@implementation LibcoreNetUriCodec

- (id)encodeWithNSString:(id)a3 withJavaNioCharsetCharset:(id)a4
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v7 = new_JavaLangStringBuilder_initWithInt_([a3 length] + 16);
  sub_100177150(self, v7, a3, a4, 0);

  return [(JavaLangStringBuilder *)v7 description];
}

- (void)appendEncodedWithJavaLangStringBuilder:(id)a3 withNSString:(id)a4
{
  if ((atomic_load_explicit(JavaNioCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140190();
  }

  v7 = JavaNioCharsetStandardCharsets_UTF_8_;

  sub_100177150(self, a3, a4, v7, 0);
}

- (void)appendPartiallyEncodedWithJavaLangStringBuilder:(id)a3 withNSString:(id)a4
{
  if ((atomic_load_explicit(JavaNioCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140190();
  }

  v7 = JavaNioCharsetStandardCharsets_UTF_8_;

  sub_100177150(self, a3, a4, v7, 1);
}

+ (int)hexToIntWithChar:(unsigned __int16)a3
{
  if ((a3 - 65) >= 6)
  {
    v3 = -1;
  }

  else
  {
    v3 = a3 - 55;
  }

  if ((a3 - 97) <= 5)
  {
    v4 = a3 - 87;
  }

  else
  {
    v4 = v3;
  }

  if ((a3 - 48) <= 9)
  {
    return a3 - 48;
  }

  else
  {
    return v4;
  }
}

@end
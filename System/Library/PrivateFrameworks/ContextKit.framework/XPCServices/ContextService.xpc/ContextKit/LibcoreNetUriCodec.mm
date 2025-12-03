@interface LibcoreNetUriCodec
+ (int)hexToIntWithChar:(unsigned __int16)char;
- (id)encodeWithNSString:(id)string withJavaNioCharsetCharset:(id)charset;
- (void)appendEncodedWithJavaLangStringBuilder:(id)builder withNSString:(id)string;
- (void)appendPartiallyEncodedWithJavaLangStringBuilder:(id)builder withNSString:(id)string;
@end

@implementation LibcoreNetUriCodec

- (id)encodeWithNSString:(id)string withJavaNioCharsetCharset:(id)charset
{
  if (!string)
  {
    JreThrowNullPointerException();
  }

  v7 = new_JavaLangStringBuilder_initWithInt_([string length] + 16);
  sub_100177150(self, v7, string, charset, 0);

  return [(JavaLangStringBuilder *)v7 description];
}

- (void)appendEncodedWithJavaLangStringBuilder:(id)builder withNSString:(id)string
{
  if ((atomic_load_explicit(JavaNioCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140190();
  }

  v7 = JavaNioCharsetStandardCharsets_UTF_8_;

  sub_100177150(self, builder, string, v7, 0);
}

- (void)appendPartiallyEncodedWithJavaLangStringBuilder:(id)builder withNSString:(id)string
{
  if ((atomic_load_explicit(JavaNioCharsetStandardCharsets__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_100140190();
  }

  v7 = JavaNioCharsetStandardCharsets_UTF_8_;

  sub_100177150(self, builder, string, v7, 1);
}

+ (int)hexToIntWithChar:(unsigned __int16)char
{
  if ((char - 65) >= 6)
  {
    v3 = -1;
  }

  else
  {
    v3 = char - 55;
  }

  if ((char - 97) <= 5)
  {
    v4 = char - 87;
  }

  else
  {
    v4 = v3;
  }

  if ((char - 48) <= 9)
  {
    return char - 48;
  }

  else
  {
    return v4;
  }
}

@end
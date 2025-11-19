@interface JavaNetURLStreamHandler
- (BOOL)equalsWithJavaNetURL:(id)a3 withJavaNetURL:(id)a4;
- (BOOL)hostsEqualWithJavaNetURL:(id)a3 withJavaNetURL:(id)a4;
- (BOOL)sameFileWithJavaNetURL:(id)a3 withJavaNetURL:(id)a4;
- (id)getHostAddressWithJavaNetURL:(id)a3;
- (id)toExternalFormWithJavaNetURL:(id)a3 withBoolean:(BOOL)a4;
- (int)hashCodeWithJavaNetURL:(id)a3;
@end

@implementation JavaNetURLStreamHandler

- (id)toExternalFormWithJavaNetURL:(id)a3 withBoolean:(BOOL)a4
{
  v4 = a4;
  v6 = new_JavaLangStringBuilder_init();
  if (!a3)
  {
    goto LABEL_27;
  }

  v7 = v6;
  -[JavaLangStringBuilder appendWithNSString:](v6, "appendWithNSString:", [a3 getProtocol]);
  [(JavaLangStringBuilder *)v7 appendWithChar:58];
  v8 = [a3 getAuthority];
  if (!v8)
  {
    v11 = [a3 getFile];
    if (!v11)
    {
      goto LABEL_17;
    }

    v10 = v11;
    if (v4)
    {
      goto LABEL_11;
    }

LABEL_16:
    [(JavaLangStringBuilder *)v7 appendWithNSString:v10];
    goto LABEL_17;
  }

  v9 = v8;
  [(JavaLangStringBuilder *)v7 appendWithNSString:@"//"];
  if (!v4)
  {
    [(JavaLangStringBuilder *)v7 appendWithNSString:v9];
    v10 = [a3 getFile];
    if (!v10)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if ((atomic_load_explicit(JavaNetURI__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10024FD08();
  }

  if (!JavaNetURI_AUTHORITY_ENCODER_)
  {
    goto LABEL_27;
  }

  [JavaNetURI_AUTHORITY_ENCODER_ appendPartiallyEncodedWithJavaLangStringBuilder:v7 withNSString:v9];
  v10 = [a3 getFile];
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_11:
  if ((atomic_load_explicit(JavaNetURI__initialized, memory_order_acquire) & 1) == 0)
  {
    sub_10024FD08();
  }

  if (!JavaNetURI_FILE_AND_QUERY_ENCODER_)
  {
    goto LABEL_27;
  }

  [JavaNetURI_FILE_AND_QUERY_ENCODER_ appendPartiallyEncodedWithJavaLangStringBuilder:v7 withNSString:v10];
LABEL_17:
  v12 = [a3 getRef];
  if (!v12)
  {
    goto LABEL_24;
  }

  v13 = v12;
  [(JavaLangStringBuilder *)v7 appendWithChar:35];
  if (v4)
  {
    if ((atomic_load_explicit(JavaNetURI__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_10024FD08();
    }

    if (JavaNetURI_ALL_LEGAL_ENCODER_)
    {
      [JavaNetURI_ALL_LEGAL_ENCODER_ appendPartiallyEncodedWithJavaLangStringBuilder:v7 withNSString:v13];
      goto LABEL_24;
    }

LABEL_27:
    JreThrowNullPointerException();
  }

  [(JavaLangStringBuilder *)v7 appendWithNSString:v13];
LABEL_24:

  return [(JavaLangStringBuilder *)v7 description];
}

- (BOOL)equalsWithJavaNetURL:(id)a3 withJavaNetURL:(id)a4
{
  if (![JavaNetURLStreamHandler sameFileWithJavaNetURL:"sameFileWithJavaNetURL:withJavaNetURL:" withJavaNetURL:?])
  {
    return 0;
  }

  if (!a3 || (v6 = [a3 getRef], !a4))
  {
    JreThrowNullPointerException();
  }

  if (!LibcoreUtilObjects_equalWithId_withId_(v6, [a4 getRef]))
  {
    return 0;
  }

  v7 = [a3 getQuery];
  v8 = [a4 getQuery];

  return LibcoreUtilObjects_equalWithId_withId_(v7, v8);
}

- (id)getHostAddressWithJavaNetURL:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  v3 = [a3 getHost];
  v4 = v3;
  if (v3 && [v3 length])
  {
    return JavaNetInetAddress_getByNameWithNSString_(v4);
  }

  else
  {
    return 0;
  }
}

- (int)hashCodeWithJavaNetURL:(id)a3
{
  v3 = [(JavaNetURLStreamHandler *)self toExternalFormWithJavaNetURL:a3];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 hash];
}

- (BOOL)hostsEqualWithJavaNetURL:(id)a3 withJavaNetURL:(id)a4
{
  if (!a3 || (v5 = [a3 getHost], !a4))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  v7 = [a4 getHost];
  if (v6 == v7)
  {
    return 1;
  }

  if (!v6)
  {
    return 0;
  }

  return [v6 equalsIgnoreCase:v7];
}

- (BOOL)sameFileWithJavaNetURL:(id)a3 withJavaNetURL:(id)a4
{
  if (!a3 || (v7 = [a3 getProtocol], !a4))
  {
    JreThrowNullPointerException();
  }

  if (!LibcoreUtilObjects_equalWithId_withId_(v7, [a4 getProtocol]))
  {
    return 0;
  }

  if (![(JavaNetURLStreamHandler *)self hostsEqualWithJavaNetURL:a3 withJavaNetURL:a4])
  {
    return 0;
  }

  v8 = [a3 getEffectivePort];
  if (v8 != [a4 getEffectivePort])
  {
    return 0;
  }

  v9 = [a3 getFile];
  v10 = [a4 getFile];

  return LibcoreUtilObjects_equalWithId_withId_(v9, v10);
}

@end
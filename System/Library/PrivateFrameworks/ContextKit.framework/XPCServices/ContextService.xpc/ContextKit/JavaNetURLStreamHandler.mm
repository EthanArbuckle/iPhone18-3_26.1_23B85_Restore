@interface JavaNetURLStreamHandler
- (BOOL)equalsWithJavaNetURL:(id)l withJavaNetURL:(id)rL;
- (BOOL)hostsEqualWithJavaNetURL:(id)l withJavaNetURL:(id)rL;
- (BOOL)sameFileWithJavaNetURL:(id)l withJavaNetURL:(id)rL;
- (id)getHostAddressWithJavaNetURL:(id)l;
- (id)toExternalFormWithJavaNetURL:(id)l withBoolean:(BOOL)boolean;
- (int)hashCodeWithJavaNetURL:(id)l;
@end

@implementation JavaNetURLStreamHandler

- (id)toExternalFormWithJavaNetURL:(id)l withBoolean:(BOOL)boolean
{
  booleanCopy = boolean;
  v6 = new_JavaLangStringBuilder_init();
  if (!l)
  {
    goto LABEL_27;
  }

  v7 = v6;
  -[JavaLangStringBuilder appendWithNSString:](v6, "appendWithNSString:", [l getProtocol]);
  [(JavaLangStringBuilder *)v7 appendWithChar:58];
  getAuthority = [l getAuthority];
  if (!getAuthority)
  {
    getFile = [l getFile];
    if (!getFile)
    {
      goto LABEL_17;
    }

    getFile2 = getFile;
    if (booleanCopy)
    {
      goto LABEL_11;
    }

LABEL_16:
    [(JavaLangStringBuilder *)v7 appendWithNSString:getFile2];
    goto LABEL_17;
  }

  v9 = getAuthority;
  [(JavaLangStringBuilder *)v7 appendWithNSString:@"//"];
  if (!booleanCopy)
  {
    [(JavaLangStringBuilder *)v7 appendWithNSString:v9];
    getFile2 = [l getFile];
    if (!getFile2)
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
  getFile2 = [l getFile];
  if (!getFile2)
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

  [JavaNetURI_FILE_AND_QUERY_ENCODER_ appendPartiallyEncodedWithJavaLangStringBuilder:v7 withNSString:getFile2];
LABEL_17:
  getRef = [l getRef];
  if (!getRef)
  {
    goto LABEL_24;
  }

  v13 = getRef;
  [(JavaLangStringBuilder *)v7 appendWithChar:35];
  if (booleanCopy)
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

- (BOOL)equalsWithJavaNetURL:(id)l withJavaNetURL:(id)rL
{
  if (![JavaNetURLStreamHandler sameFileWithJavaNetURL:"sameFileWithJavaNetURL:withJavaNetURL:" withJavaNetURL:?])
  {
    return 0;
  }

  if (!l || (v6 = [l getRef], !rL))
  {
    JreThrowNullPointerException();
  }

  if (!LibcoreUtilObjects_equalWithId_withId_(v6, [rL getRef]))
  {
    return 0;
  }

  getQuery = [l getQuery];
  getQuery2 = [rL getQuery];

  return LibcoreUtilObjects_equalWithId_withId_(getQuery, getQuery2);
}

- (id)getHostAddressWithJavaNetURL:(id)l
{
  if (!l)
  {
    JreThrowNullPointerException();
  }

  getHost = [l getHost];
  v4 = getHost;
  if (getHost && [getHost length])
  {
    return JavaNetInetAddress_getByNameWithNSString_(v4);
  }

  else
  {
    return 0;
  }
}

- (int)hashCodeWithJavaNetURL:(id)l
{
  v3 = [(JavaNetURLStreamHandler *)self toExternalFormWithJavaNetURL:l];
  if (!v3)
  {
    JreThrowNullPointerException();
  }

  return [v3 hash];
}

- (BOOL)hostsEqualWithJavaNetURL:(id)l withJavaNetURL:(id)rL
{
  if (!l || (v5 = [l getHost], !rL))
  {
    JreThrowNullPointerException();
  }

  v6 = v5;
  getHost = [rL getHost];
  if (v6 == getHost)
  {
    return 1;
  }

  if (!v6)
  {
    return 0;
  }

  return [v6 equalsIgnoreCase:getHost];
}

- (BOOL)sameFileWithJavaNetURL:(id)l withJavaNetURL:(id)rL
{
  if (!l || (v7 = [l getProtocol], !rL))
  {
    JreThrowNullPointerException();
  }

  if (!LibcoreUtilObjects_equalWithId_withId_(v7, [rL getProtocol]))
  {
    return 0;
  }

  if (![(JavaNetURLStreamHandler *)self hostsEqualWithJavaNetURL:l withJavaNetURL:rL])
  {
    return 0;
  }

  getEffectivePort = [l getEffectivePort];
  if (getEffectivePort != [rL getEffectivePort])
  {
    return 0;
  }

  getFile = [l getFile];
  getFile2 = [rL getFile];

  return LibcoreUtilObjects_equalWithId_withId_(getFile, getFile2);
}

@end
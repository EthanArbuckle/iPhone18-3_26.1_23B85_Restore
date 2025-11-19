@interface JavaNetURI
+ (void)initialize;
- (BOOL)isEqual:(id)a3;
- (JavaNetURI)init;
- (JavaNetURI)initWithNSString:(id)a3;
- (NSString)description;
- (NSString)getHashString;
- (id)decodeWithNSString:(id)a3;
- (id)getAuthority;
- (id)getFragment;
- (id)getPath;
- (id)getQuery;
- (id)getSchemeSpecificPart;
- (id)getUserInfo;
- (id)normalize;
- (id)parseServerAuthority;
- (id)relativizeWithJavaNetURI:(id)a3;
- (id)resolveWithJavaNetURI:(id)a3;
- (id)resolveWithNSString:(id)a3;
- (id)setSchemeSpecificPart;
- (id)toASCIIString;
- (id)toURL;
- (int)compareToWithId:(id)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)readObjectWithJavaIoObjectInputStream:(id)a3;
- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3;
@end

@implementation JavaNetURI

- (JavaNetURI)init
{
  self->port_ = -1;
  self->serverAuthority_ = 0;
  self->hash__ = -1;
  return self;
}

- (JavaNetURI)initWithNSString:(id)a3
{
  self->port_ = -1;
  self->serverAuthority_ = 0;
  self->hash__ = -1;
  sub_10024DD08(self, a3, 0);
  return self;
}

- (int)compareToWithId:(id)a3
{
  objc_opt_class();
  if (!a3)
  {
    goto LABEL_45;
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  scheme = self->scheme_;
  v6 = *(a3 + 2);
  if (scheme)
  {
    if (!v6)
    {
      return 1;
    }

    result = [(NSString *)scheme compareToIgnoreCase:?];
    if (result)
    {
      return result;
    }
  }

  else if (v6)
  {
    return -1;
  }

  if (self->opaque_)
  {
    if (*(a3 + 88))
    {
      schemeSpecificPart = self->schemeSpecificPart_;
      if (schemeSpecificPart)
      {
        v9 = *(a3 + 3);
LABEL_12:
        result = [(NSString *)schemeSpecificPart compareToWithId:v9];
        if (result)
        {
          return result;
        }

        goto LABEL_13;
      }

LABEL_45:
      JreThrowNullPointerException();
    }

    return 1;
  }

  if (*(a3 + 88))
  {
    return -1;
  }

  v12 = *(a3 + 4);
  if (self->authority_)
  {
    if (!v12)
    {
      return 1;
    }

    host = self->host_;
    if (host && (v14 = *(a3 + 6)) != 0)
    {
      v15 = *(a3 + 5);
      if (self->userInfo_)
      {
        if (!v15)
        {
          return 1;
        }

        result = [(NSString *)self->userInfo_ compareToWithId:*(a3 + 5)];
        if (result)
        {
          return result;
        }

        host = self->host_;
        v14 = *(a3 + 6);
      }

      else if (v15)
      {
        return -1;
      }

      result = [(NSString *)host compareToIgnoreCase:v14];
      if (result)
      {
        return result;
      }

      port = self->port_;
      v18 = *(a3 + 14);
      result = port - v18;
      if (port != v18)
      {
        return result;
      }
    }

    else
    {
      result = [(NSString *)self->authority_ compareToWithId:*(a3 + 4)];
      if (result)
      {
        return result;
      }
    }
  }

  else if (v12)
  {
    return -1;
  }

  path = self->path_;
  if (!path)
  {
    goto LABEL_45;
  }

  result = [(NSString *)path compareToWithId:*(a3 + 8)];
  if (result)
  {
    return result;
  }

  schemeSpecificPart = self->query_;
  v9 = *(a3 + 9);
  if (schemeSpecificPart)
  {
    if (!v9)
    {
      return 1;
    }

    goto LABEL_12;
  }

  if (v9)
  {
    return -1;
  }

LABEL_13:
  fragment = self->fragment_;
  v11 = *(a3 + 10);
  if (!fragment)
  {
    if (!v11)
    {
      return 0;
    }

    return -1;
  }

  if (!v11)
  {
    return 1;
  }

  result = [(NSString *)fragment compareToWithId:?];
  if (!result)
  {
    return 0;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  objc_opt_class();
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    JreThrowClassCastException();
  }

  v5 = *(a3 + 10);
  fragment = self->fragment_;
  if (v5)
  {
    if (!fragment)
    {
      goto LABEL_21;
    }

    LODWORD(host) = sub_10024EA88(v5, fragment);
    if (!host)
    {
      return host;
    }
  }

  else if (fragment)
  {
    goto LABEL_21;
  }

  v8 = *(a3 + 2);
  scheme = self->scheme_;
  if (v8)
  {
    if (!scheme)
    {
      goto LABEL_21;
    }

    LODWORD(host) = [v8 equalsIgnoreCase:?];
    if (!host)
    {
      return host;
    }
  }

  else if (scheme)
  {
    goto LABEL_21;
  }

  if (*(a3 + 88) != 1)
  {
    if (self->opaque_)
    {
      goto LABEL_21;
    }

    LODWORD(host) = sub_10024EA88(self->path_, *(a3 + 8));
    if (!host)
    {
      return host;
    }

    v12 = *(a3 + 9);
    query = self->query_;
    if (v12)
    {
      if (!query)
      {
        goto LABEL_21;
      }

      LODWORD(host) = sub_10024EA88(v12, query);
      if (!host)
      {
        return host;
      }
    }

    else if (query)
    {
      goto LABEL_21;
    }

    userInfo = *(a3 + 4);
    authority = self->authority_;
    LOBYTE(host) = (userInfo | authority) == 0;
    if (!userInfo || !authority)
    {
      return host;
    }

    host = self->host_;
    if (!*(a3 + 6))
    {
      if (host)
      {
        goto LABEL_21;
      }

LABEL_39:
      v10 = userInfo;
      goto LABEL_17;
    }

    if (!host)
    {
      return host;
    }

    LODWORD(host) = [(NSString *)host equalsIgnoreCase:?];
    if (!host)
    {
      return host;
    }

    if (self->port_ == *(a3 + 14))
    {
      authority = *(a3 + 5);
      userInfo = self->userInfo_;
      LOBYTE(host) = (authority | userInfo) == 0;
      if (!authority || !userInfo)
      {
        return host;
      }

      goto LABEL_39;
    }

LABEL_21:
    LOBYTE(host) = 0;
    return host;
  }

  if (!self->opaque_)
  {
    goto LABEL_21;
  }

  v10 = *(a3 + 3);
  authority = self->schemeSpecificPart_;
LABEL_17:

  LOBYTE(host) = sub_10024EA88(v10, authority);
  return host;
}

- (id)getSchemeSpecificPart
{
  result = self->schemeSpecificPart_;
  if (result)
  {
    return LibcoreNetUriCodec_decodeWithNSString_(result);
  }

  return result;
}

- (id)getAuthority
{
  result = self->authority_;
  if (result)
  {
    return LibcoreNetUriCodec_decodeWithNSString_(result);
  }

  return result;
}

- (id)getUserInfo
{
  result = self->userInfo_;
  if (result)
  {
    return LibcoreNetUriCodec_decodeWithNSString_(result);
  }

  return result;
}

- (id)getPath
{
  result = self->path_;
  if (result)
  {
    return LibcoreNetUriCodec_decodeWithNSString_(result);
  }

  return result;
}

- (id)getQuery
{
  result = self->query_;
  if (result)
  {
    return LibcoreNetUriCodec_decodeWithNSString_(result);
  }

  return result;
}

- (id)getFragment
{
  result = self->fragment_;
  if (result)
  {
    return LibcoreNetUriCodec_decodeWithNSString_(result);
  }

  return result;
}

- (unint64_t)hash
{
  v2 = self;
  LODWORD(self) = *(self + 92);
  if (self == -1)
  {
    v3 = [JavaNetURI getHashString]_0(v2);
    if (!v3)
    {
      JreThrowNullPointerException();
    }

    LODWORD(self) = [(NSString *)v3 hash];
    *(v2 + 92) = self;
  }

  return self;
}

- (NSString)getHashString
{
  v2 = new_JavaLangStringBuilder_init();
  v3 = *(a1 + 16);
  if (v3)
  {
    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      sub_1000458CC();
    }

    -[JavaLangStringBuilder appendWithNSString:](v2, "appendWithNSString:", [v3 lowercaseStringWithJRELocale:JavaUtilLocale_US_]);
    [(JavaLangStringBuilder *)v2 appendWithChar:58];
  }

  if (*(a1 + 88) == 1)
  {
    v4 = (a1 + 24);
LABEL_21:
    [(JavaLangStringBuilder *)v2 appendWithNSString:*v4];
    goto LABEL_22;
  }

  if (*(a1 + 32))
  {
    [(JavaLangStringBuilder *)v2 appendWithNSString:@"//"];
    v12 = *(a1 + 48);
    if (!v12)
    {
      v20 = *(a1 + 32);
      goto LABEL_16;
    }

    if (*(a1 + 40))
    {
      [(JavaLangStringBuilder *)v2 appendWithNSString:JreStrcat("$C", v5, v6, v7, v8, v9, v10, v11, *(a1 + 40))];
      v12 = *(a1 + 48);
    }

    if ((atomic_load_explicit(JavaUtilLocale__initialized, memory_order_acquire) & 1) == 0)
    {
      v23 = v12;
      sub_1000458CC();
      v12 = v23;
    }

    -[JavaLangStringBuilder appendWithNSString:](v2, "appendWithNSString:", [v12 lowercaseStringWithJRELocale:JavaUtilLocale_US_]);
    if (*(a1 + 56) != -1)
    {
      v24 = *(a1 + 56);
      v20 = JreStrcat("CI", v13, v14, v15, v16, v17, v18, v19, 58);
LABEL_16:
      [(JavaLangStringBuilder *)v2 appendWithNSString:v20];
    }
  }

  if (*(a1 + 64))
  {
    [(JavaLangStringBuilder *)v2 appendWithNSString:?];
  }

  v4 = (a1 + 72);
  if (*(a1 + 72))
  {
    [(JavaLangStringBuilder *)v2 appendWithChar:63];
    goto LABEL_21;
  }

LABEL_22:
  if (*(a1 + 80))
  {
    [(JavaLangStringBuilder *)v2 appendWithChar:35];
    [(JavaLangStringBuilder *)v2 appendWithNSString:*(a1 + 80)];
  }

  v21 = [(JavaLangStringBuilder *)v2 description];

  return sub_10024E940(v21);
}

- (id)normalize
{
  v2 = self;
  if (!self->opaque_)
  {
    v3 = sub_10024F0B8(self->path_, 0);
    path = v2->path_;
    if (!path)
    {
      goto LABEL_7;
    }

    if (([(NSString *)path isEqual:v3]& 1) == 0)
    {
      v5 = sub_10024E870(v2);
      if (v5)
      {
        v2 = v5;
        JreStrongAssign(&v5->path_, v3);
        [JavaNetURI setSchemeSpecificPart]_0(v2);
        return v2;
      }

LABEL_7:
      JreThrowNullPointerException();
    }
  }

  return v2;
}

- (id)setSchemeSpecificPart
{
  v9 = new_JavaLangStringBuilder_init();
  if (*(a1 + 32))
  {
    v12 = *(a1 + 32);
    [(JavaLangStringBuilder *)v9 appendWithNSString:JreStrcat("$$", v2, v3, v4, v5, v6, v7, v8, @"//")];
  }

  v10 = *(a1 + 64);
  if (v10)
  {
    [(JavaLangStringBuilder *)v9 appendWithNSString:?];
  }

  if (*(a1 + 72))
  {
    v13 = *(a1 + 72);
    [(JavaLangStringBuilder *)v9 appendWithNSString:JreStrcat("C$", v2, v10, v4, v5, v6, v7, v8, 63)];
  }

  JreStrongAssign((a1 + 24), [(JavaLangStringBuilder *)v9 description]);

  return JreStrongAssign((a1 + 8), 0);
}

- (id)parseServerAuthority
{
  if (!self->serverAuthority_)
  {
    sub_10024E0EC(self, 1);
  }

  return self;
}

- (id)relativizeWithJavaNetURI:(id)a3
{
  if (!a3)
  {
    goto LABEL_20;
  }

  v3 = a3;
  if ((*(a3 + 88) & 1) == 0 && !self->opaque_)
  {
    scheme = self->scheme_;
    v6 = *(a3 + 2);
    if (scheme)
    {
      if (![(NSString *)scheme isEqual:v6])
      {
        return v3;
      }
    }

    else if (v6)
    {
      return v3;
    }

    authority = self->authority_;
    v8 = *(v3 + 4);
    if (authority)
    {
      if (![(NSString *)authority isEqual:v8])
      {
        return v3;
      }
    }

    else if (v8)
    {
      return v3;
    }

    v9 = sub_10024F0B8(self->path_, 0);
    v10 = sub_10024F0B8(*(v3 + 8), 0);
    if (!v9)
    {
      goto LABEL_20;
    }

    v11 = v10;
    if (([(__CFString *)v9 isEqual:v10]& 1) != 0)
    {
      goto LABEL_16;
    }

    v12 = [(__CFString *)v9 substring:0 endIndex:[(__CFString *)v9 lastIndexOf:47]+ 1];
    if (!v11)
    {
      goto LABEL_20;
    }

    v9 = v12;
    if ([(__CFString *)v11 hasPrefix:v12])
    {
LABEL_16:
      v13 = [JavaNetURI alloc];
      v13->port_ = -1;
      v13->serverAuthority_ = 0;
      v13->hash__ = -1;
      v14 = v13;
      JreStrongAssign(v14 + 10, *(v3 + 10));
      JreStrongAssign(v14 + 9, *(v3 + 9));
      if (v11 && v9)
      {
        JreStrongAssign(v14 + 8, [(__CFString *)v11 substring:[(__CFString *)v9 length]]);
        [JavaNetURI setSchemeSpecificPart]_0(v14);
        return v14;
      }

LABEL_20:
      JreThrowNullPointerException();
    }
  }

  return v3;
}

- (id)resolveWithJavaNetURI:(id)a3
{
  if (!a3)
  {
    goto LABEL_20;
  }

  if ((*(a3 + 89) & 1) != 0 || self->opaque_)
  {
    return a3;
  }

  if (*(a3 + 4))
  {
    v7 = sub_10024E870(a3);
    if (v7)
    {
      v5 = v7;
      JreStrongAssign(&v7->scheme_, self->scheme_);
      *(v5 + 89) = self->absolute_;
      return v5;
    }

LABEL_20:
    JreThrowNullPointerException();
  }

  v8 = *(a3 + 8);
  if (!v8)
  {
    goto LABEL_20;
  }

  if ([v8 isEmpty] && !*(a3 + 2) && !*(a3 + 9))
  {
    v24 = sub_10024E870(self);
    if (v24)
    {
      v5 = v24;
      JreStrongAssign(&v24->fragment_, *(a3 + 10));
      return v5;
    }

    goto LABEL_20;
  }

  v9 = sub_10024E870(self);
  if (!v9)
  {
    goto LABEL_20;
  }

  v5 = v9;
  JreStrongAssign(&v9->fragment_, *(a3 + 10));
  JreStrongAssign((v5 + 72), *(a3 + 9));
  v10 = [*(a3 + 8) hasPrefix:@"/"];
  path = *(a3 + 8);
  if ((v10 & 1) == 0)
  {
    v12 = [(__CFString *)path isEmpty];
    path = self->path_;
    if ((v12 & 1) == 0)
    {
      v13 = [(NSString *)self->path_ substring:0 endIndex:[(__CFString *)path lastIndexOf:47]+ 1];
      v25 = *(a3 + 8);
      path = JreStrcat("$$", v14, v15, v16, v17, v18, v19, v20, v13);
    }
  }

  v21 = *(v5 + 32);
  v22 = sub_10024F0B8(path, 1);
  v23 = LibcoreNetUrlUrlUtils_authoritySafePathWithNSString_withNSString_(v21, v22);
  JreStrongAssign((v5 + 64), v23);
  [JavaNetURI setSchemeSpecificPart]_0(v5);
  return v5;
}

- (id)resolveWithNSString:(id)a3
{
  v4 = JavaNetURI_createWithNSString_(a3);

  return [(JavaNetURI *)self resolveWithJavaNetURI:v4];
}

- (id)decodeWithNSString:(id)a3
{
  if (a3)
  {
    return LibcoreNetUriCodec_decodeWithNSString_(a3);
  }

  else
  {
    return 0;
  }
}

- (id)toASCIIString
{
  v3 = new_JavaLangStringBuilder_init();
  if (!qword_1005553F8)
  {
    JreThrowNullPointerException();
  }

  v4 = v3;
  [qword_1005553F8 appendEncodedWithJavaLangStringBuilder:v3 withNSString:{-[JavaNetURI description](self, "description")}];

  return [(JavaLangStringBuilder *)v4 description];
}

- (NSString)description
{
  p_string = &self->string_;
  result = self->string_;
  if (result)
  {
    return result;
  }

  v5 = new_JavaLangStringBuilder_init();
  v6 = v5;
  if (self->scheme_)
  {
    [(JavaLangStringBuilder *)v5 appendWithNSString:?];
    [(JavaLangStringBuilder *)v6 appendWithChar:58];
  }

  if (self->opaque_)
  {
    p_schemeSpecificPart = &self->schemeSpecificPart_;
  }

  else
  {
    if (self->authority_)
    {
      [(JavaLangStringBuilder *)v6 appendWithNSString:@"//"];
      [(JavaLangStringBuilder *)v6 appendWithNSString:self->authority_];
    }

    if (self->path_)
    {
      [(JavaLangStringBuilder *)v6 appendWithNSString:?];
    }

    p_schemeSpecificPart = &self->query_;
    if (!self->query_)
    {
      goto LABEL_13;
    }

    [(JavaLangStringBuilder *)v6 appendWithChar:63];
  }

  [(JavaLangStringBuilder *)v6 appendWithNSString:*p_schemeSpecificPart];
LABEL_13:
  if (self->fragment_)
  {
    [(JavaLangStringBuilder *)v6 appendWithChar:35];
    [(JavaLangStringBuilder *)v6 appendWithNSString:self->fragment_];
  }

  JreStrongAssign(p_string, [(JavaLangStringBuilder *)v6 description]);
  return *p_string;
}

- (id)toURL
{
  absolute = self->absolute_;
  v3 = [(JavaNetURI *)self description];
  if (!absolute)
  {
    v13 = JreStrcat("$$", v4, v5, v6, v7, v8, v9, v10, @"URI is not absolute: ");
    v14 = new_JavaLangIllegalArgumentException_initWithNSString_(v13);
    objc_exception_throw(v14);
  }

  v11 = new_JavaNetURL_initWithNSString_(v3);

  return v11;
}

- (void)readObjectWithJavaIoObjectInputStream:(id)a3
{
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultReadObject];
  sub_10024DD08(self, self->string_, 0);
}

- (void)writeObjectWithJavaIoObjectOutputStream:(id)a3
{
  [(JavaNetURI *)self description];
  if (!a3)
  {
    JreThrowNullPointerException();
  }

  [a3 defaultWriteObject];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = JavaNetURI;
  [(JavaNetURI *)&v3 dealloc];
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v2 = sub_10024F9F8(&stru_100484358);
    JreStrongAssignAndConsume(&JavaNetURI_USER_INFO_ENCODER_, v2);
    v3 = sub_10024F9F8(@"/@");
    JreStrongAssignAndConsume(&JavaNetURI_PATH_ENCODER_, v3);
    v4 = sub_10024F9F8(@"@[]");
    JreStrongAssignAndConsume(&JavaNetURI_AUTHORITY_ENCODER_, v4);
    v5 = sub_10024F9F8(@"/@?");
    JreStrongAssignAndConsume(&JavaNetURI_FILE_AND_QUERY_ENCODER_, v5);
    v6 = sub_10024F9F8(@"?/[]@");
    JreStrongAssignAndConsume(&JavaNetURI_ALL_LEGAL_ENCODER_, v6);
    v7 = [JavaNetURI__1 alloc];
    LibcoreNetUriCodec_init(v7, v8);
    JreStrongAssignAndConsume(&qword_1005553F8, v7);
    atomic_store(1u, JavaNetURI__initialized);
  }
}

@end
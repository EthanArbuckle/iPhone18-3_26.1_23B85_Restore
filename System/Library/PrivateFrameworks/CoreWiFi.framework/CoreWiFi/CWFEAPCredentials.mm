@interface CWFEAPCredentials
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToEAPCredentials:(id)a3;
- (CWFEAPCredentials)initWithCoder:(id)a3;
- (__SecIdentity)TLSIdentity;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)TLSIdentityHandle;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setTLSIdentity:(__SecIdentity *)a3;
- (void)setTLSIdentityHandle:(void *)a3;
@end

@implementation CWFEAPCredentials

- (void)dealloc
{
  TLSIdentityHandle = self->_TLSIdentityHandle;
  if (TLSIdentityHandle)
  {
    CFRelease(TLSIdentityHandle);
  }

  v4.receiver = self;
  v4.super_class = CWFEAPCredentials;
  [(CWFEAPCredentials *)&v4 dealloc];
}

- (__SecIdentity)TLSIdentity
{
  arg = 0;
  if (!self->_TLSIdentityHandle)
  {
    return 0;
  }

  result = sub_1E0C57068();
  if (result)
  {
    sub_1E0C56764(self->_TLSIdentityHandle, &arg);
    result = arg;
    if (arg)
    {
      return CFAutorelease(arg);
    }
  }

  return result;
}

- (void)setTLSIdentity:(__SecIdentity *)a3
{
  TLSIdentityHandle = self->_TLSIdentityHandle;
  if (TLSIdentityHandle)
  {
    CFRelease(TLSIdentityHandle);
  }

  v6 = 0;
  if (a3)
  {
    v6 = sub_1E0C57068();
    if (v6)
    {
      sub_1E0C5691C(a3);
    }
  }

  self->_TLSIdentityHandle = v6;
}

- (void)TLSIdentityHandle
{
  v2 = [(CWFEAPCredentials *)self TLSIdentity];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!sub_1E0C57068())
  {
    return 0;
  }

  sub_1E0C5691C(v3);
  if (!v4)
  {
    return 0;
  }

  return CFAutorelease(v4);
}

- (void)setTLSIdentityHandle:(void *)a3
{
  TLSIdentityHandle = self->_TLSIdentityHandle;
  if (TLSIdentityHandle != a3)
  {
    cf = 0;
    if (a3)
    {
      if (sub_1E0C57068())
      {
        sub_1E0C56764(a3, &cf);
        if (cf)
        {
          [(CWFEAPCredentials *)self setTLSIdentity:?];
          CFRelease(cf);
        }

        return;
      }

      TLSIdentityHandle = self->_TLSIdentityHandle;
    }

    if (TLSIdentityHandle)
    {
      CFRelease(TLSIdentityHandle);
    }

    self->_TLSIdentityHandle = 0;
  }
}

- (BOOL)isEqualToEAPCredentials:(id)a3
{
  v6 = a3;
  v7 = [v6 TLSIdentity];
  if (v7)
  {
    if (sub_1E0C57068())
    {
      sub_1E0C5691C(v7);
      v7 = v8;
    }

    else
    {
      v7 = 0;
    }
  }

  TLSIdentityHandle = self->_TLSIdentityHandle;
  if (TLSIdentityHandle == v7)
  {
    goto LABEL_9;
  }

  v10 = 0;
  if (v7 && TLSIdentityHandle)
  {
    if (!CFEqual(TLSIdentityHandle, v7))
    {
      v10 = 0;
      goto LABEL_24;
    }

LABEL_9:
    username = self->_username;
    v12 = [v6 username];
    if (username != v12)
    {
      if (!self->_username || ([v6 username], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v10 = 0;
        goto LABEL_22;
      }

      v3 = v13;
      v14 = self->_username;
      v4 = [v6 username];
      if (![(NSString *)v14 isEqual:v4])
      {
        v10 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    password = self->_password;
    v16 = [v6 password];
    v10 = password == v16;
    if (!v10 && self->_password)
    {
      v17 = [v6 password];
      if (!v17)
      {

        v10 = 0;
LABEL_20:
        if (username != v12)
        {
          goto LABEL_21;
        }

LABEL_22:

        goto LABEL_23;
      }

      v18 = v17;
      v19 = self->_password;
      [v6 password];
      v20 = v22 = v4;
      v10 = [(NSString *)v19 isEqual:v20];

      v4 = v22;
    }

    goto LABEL_20;
  }

LABEL_23:
  if (v7)
  {
LABEL_24:
    CFRelease(v7);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFEAPCredentials *)self isEqualToEAPCredentials:v5];
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_username hash];
  v4 = [(NSString *)self->_password hash];
  TLSIdentityHandle = self->_TLSIdentityHandle;
  if (TLSIdentityHandle)
  {
    TLSIdentityHandle = CFHash(TLSIdentityHandle);
  }

  return v4 ^ v3 ^ TLSIdentityHandle;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[CWFEAPCredentials allocWithZone:?]];
  [(CWFEAPCredentials *)v4 setUsername:self->_username];
  [(CWFEAPCredentials *)v4 setPassword:self->_password];
  [(CWFEAPCredentials *)v4 setTLSIdentity:[(CWFEAPCredentials *)self TLSIdentity]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  username = self->_username;
  v5 = a3;
  [v5 encodeObject:username forKey:@"_username"];
  [v5 encodeObject:self->_password forKey:@"_password"];
  [v5 encodeObject:self->_TLSIdentityHandle forKey:@"_TLSIdentityHandle"];
}

- (CWFEAPCredentials)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CWFEAPCredentials;
  v5 = [(CWFEAPCredentials *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_username"];
    username = v5->_username;
    v5->_username = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_password"];
    password = v5->_password;
    v5->_password = v8;

    v5->_TLSIdentityHandle = [v4 decodePropertyListForKey:@"_TLSIdentityHandle"];
  }

  return v5;
}

@end
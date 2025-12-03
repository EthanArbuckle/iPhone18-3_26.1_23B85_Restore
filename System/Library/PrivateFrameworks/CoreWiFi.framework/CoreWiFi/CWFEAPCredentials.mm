@interface CWFEAPCredentials
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToEAPCredentials:(id)credentials;
- (CWFEAPCredentials)initWithCoder:(id)coder;
- (__SecIdentity)TLSIdentity;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)TLSIdentityHandle;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setTLSIdentity:(__SecIdentity *)identity;
- (void)setTLSIdentityHandle:(void *)handle;
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

- (void)setTLSIdentity:(__SecIdentity *)identity
{
  TLSIdentityHandle = self->_TLSIdentityHandle;
  if (TLSIdentityHandle)
  {
    CFRelease(TLSIdentityHandle);
  }

  v6 = 0;
  if (identity)
  {
    v6 = sub_1E0C57068();
    if (v6)
    {
      sub_1E0C5691C(identity);
    }
  }

  self->_TLSIdentityHandle = v6;
}

- (void)TLSIdentityHandle
{
  tLSIdentity = [(CWFEAPCredentials *)self TLSIdentity];
  if (!tLSIdentity)
  {
    return 0;
  }

  v3 = tLSIdentity;
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

- (void)setTLSIdentityHandle:(void *)handle
{
  TLSIdentityHandle = self->_TLSIdentityHandle;
  if (TLSIdentityHandle != handle)
  {
    cf = 0;
    if (handle)
    {
      if (sub_1E0C57068())
      {
        sub_1E0C56764(handle, &cf);
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

- (BOOL)isEqualToEAPCredentials:(id)credentials
{
  credentialsCopy = credentials;
  tLSIdentity = [credentialsCopy TLSIdentity];
  if (tLSIdentity)
  {
    if (sub_1E0C57068())
    {
      sub_1E0C5691C(tLSIdentity);
      tLSIdentity = v8;
    }

    else
    {
      tLSIdentity = 0;
    }
  }

  TLSIdentityHandle = self->_TLSIdentityHandle;
  if (TLSIdentityHandle == tLSIdentity)
  {
    goto LABEL_9;
  }

  v10 = 0;
  if (tLSIdentity && TLSIdentityHandle)
  {
    if (!CFEqual(TLSIdentityHandle, tLSIdentity))
    {
      v10 = 0;
      goto LABEL_24;
    }

LABEL_9:
    username = self->_username;
    username = [credentialsCopy username];
    if (username != username)
    {
      if (!self->_username || ([credentialsCopy username], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
      {
        v10 = 0;
        goto LABEL_22;
      }

      v3 = v13;
      v14 = self->_username;
      username2 = [credentialsCopy username];
      if (![(NSString *)v14 isEqual:username2])
      {
        v10 = 0;
LABEL_21:

        goto LABEL_22;
      }
    }

    password = self->_password;
    password = [credentialsCopy password];
    v10 = password == password;
    if (!v10 && self->_password)
    {
      password2 = [credentialsCopy password];
      if (!password2)
      {

        v10 = 0;
LABEL_20:
        if (username != username)
        {
          goto LABEL_21;
        }

LABEL_22:

        goto LABEL_23;
      }

      v18 = password2;
      v19 = self->_password;
      [credentialsCopy password];
      v20 = v22 = username2;
      v10 = [(NSString *)v19 isEqual:v20];

      username2 = v22;
    }

    goto LABEL_20;
  }

LABEL_23:
  if (tLSIdentity)
  {
LABEL_24:
    CFRelease(tLSIdentity);
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CWFEAPCredentials *)self isEqualToEAPCredentials:v5];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[CWFEAPCredentials allocWithZone:?]];
  [(CWFEAPCredentials *)v4 setUsername:self->_username];
  [(CWFEAPCredentials *)v4 setPassword:self->_password];
  [(CWFEAPCredentials *)v4 setTLSIdentity:[(CWFEAPCredentials *)self TLSIdentity]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  username = self->_username;
  coderCopy = coder;
  [coderCopy encodeObject:username forKey:@"_username"];
  [coderCopy encodeObject:self->_password forKey:@"_password"];
  [coderCopy encodeObject:self->_TLSIdentityHandle forKey:@"_TLSIdentityHandle"];
}

- (CWFEAPCredentials)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CWFEAPCredentials;
  v5 = [(CWFEAPCredentials *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_username"];
    username = v5->_username;
    v5->_username = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_password"];
    password = v5->_password;
    v5->_password = v8;

    v5->_TLSIdentityHandle = [coderCopy decodePropertyListForKey:@"_TLSIdentityHandle"];
  }

  return v5;
}

@end
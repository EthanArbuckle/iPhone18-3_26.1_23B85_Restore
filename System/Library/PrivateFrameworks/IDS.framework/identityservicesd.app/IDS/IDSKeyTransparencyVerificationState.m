@interface IDSKeyTransparencyVerificationState
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToKeyTransparencyVerificationState:(id)a3;
- (IDSKeyTransparencyVerificationState)initWithTransparencyStatus:(id)a3 transparencyBlob:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSKeyTransparencyVerificationState

- (IDSKeyTransparencyVerificationState)initWithTransparencyStatus:(id)a3 transparencyBlob:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = IDSKeyTransparencyVerificationState;
  v9 = [(IDSKeyTransparencyVerificationState *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transparencyStatus, a3);
    v11 = [v8 copy];
    transparencyBlob = v10->_transparencyBlob;
    v10->_transparencyBlob = v11;
  }

  return v10;
}

- (BOOL)isEqualToKeyTransparencyVerificationState:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self == v6)
  {
    v10 = 1;
  }

  else
  {
    if (v6)
    {
      v8 = [(IDSKeyTransparencyVerificationState *)self transparencyStatus];
      v9 = [(IDSKeyTransparencyVerificationState *)v7 transparencyStatus];
      if (v8 == v9 || (-[IDSKeyTransparencyVerificationState transparencyStatus](self, "transparencyStatus"), v3 = objc_claimAutoreleasedReturnValue(), -[IDSKeyTransparencyVerificationState transparencyStatus](v7, "transparencyStatus"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        v11 = [(IDSKeyTransparencyVerificationState *)self transparencyBlob];
        v12 = [(IDSKeyTransparencyVerificationState *)v7 transparencyBlob];
        if (v11 == v12)
        {
          v10 = 1;
        }

        else
        {
          v13 = [(IDSKeyTransparencyVerificationState *)self transparencyBlob];
          v14 = [(IDSKeyTransparencyVerificationState *)v7 transparencyBlob];
          v10 = [v13 isEqual:v14];
        }

        if (v8 == v9)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v10 = 0;
      }

LABEL_13:
      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_14:

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSKeyTransparencyVerificationState *)self isEqualToKeyTransparencyVerificationState:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v3 = [(IDSKeyTransparencyVerificationState *)self transparencyStatus];
  v4 = [v3 hash];
  v5 = [(IDSKeyTransparencyVerificationState *)self transparencyBlob];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(IDSKeyTransparencyVerificationState *)self transparencyStatus];
  v5 = [(IDSKeyTransparencyVerificationState *)self transparencyBlob];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p transparencyStatus: %@, transparencyBlob.length: %lu>", v3, self, v4, [v5 length]);

  return v6;
}

@end
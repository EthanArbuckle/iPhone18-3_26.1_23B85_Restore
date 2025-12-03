@interface IDSKeyTransparencyVerificationState
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToKeyTransparencyVerificationState:(id)state;
- (IDSKeyTransparencyVerificationState)initWithTransparencyStatus:(id)status transparencyBlob:(id)blob;
- (id)description;
- (unint64_t)hash;
@end

@implementation IDSKeyTransparencyVerificationState

- (IDSKeyTransparencyVerificationState)initWithTransparencyStatus:(id)status transparencyBlob:(id)blob
{
  statusCopy = status;
  blobCopy = blob;
  v14.receiver = self;
  v14.super_class = IDSKeyTransparencyVerificationState;
  v9 = [(IDSKeyTransparencyVerificationState *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_transparencyStatus, status);
    v11 = [blobCopy copy];
    transparencyBlob = v10->_transparencyBlob;
    v10->_transparencyBlob = v11;
  }

  return v10;
}

- (BOOL)isEqualToKeyTransparencyVerificationState:(id)state
{
  stateCopy = state;
  v7 = stateCopy;
  if (self == stateCopy)
  {
    v10 = 1;
  }

  else
  {
    if (stateCopy)
    {
      transparencyStatus = [(IDSKeyTransparencyVerificationState *)self transparencyStatus];
      transparencyStatus2 = [(IDSKeyTransparencyVerificationState *)v7 transparencyStatus];
      if (transparencyStatus == transparencyStatus2 || (-[IDSKeyTransparencyVerificationState transparencyStatus](self, "transparencyStatus"), v3 = objc_claimAutoreleasedReturnValue(), -[IDSKeyTransparencyVerificationState transparencyStatus](v7, "transparencyStatus"), v4 = objc_claimAutoreleasedReturnValue(), [v3 isEqual:v4]))
      {
        transparencyBlob = [(IDSKeyTransparencyVerificationState *)self transparencyBlob];
        transparencyBlob2 = [(IDSKeyTransparencyVerificationState *)v7 transparencyBlob];
        if (transparencyBlob == transparencyBlob2)
        {
          v10 = 1;
        }

        else
        {
          transparencyBlob3 = [(IDSKeyTransparencyVerificationState *)self transparencyBlob];
          transparencyBlob4 = [(IDSKeyTransparencyVerificationState *)v7 transparencyBlob];
          v10 = [transparencyBlob3 isEqual:transparencyBlob4];
        }

        if (transparencyStatus == transparencyStatus2)
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(IDSKeyTransparencyVerificationState *)self isEqualToKeyTransparencyVerificationState:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  transparencyStatus = [(IDSKeyTransparencyVerificationState *)self transparencyStatus];
  v4 = [transparencyStatus hash];
  transparencyBlob = [(IDSKeyTransparencyVerificationState *)self transparencyBlob];
  v6 = [transparencyBlob hash];

  return v6 ^ v4;
}

- (id)description
{
  v3 = objc_opt_class();
  transparencyStatus = [(IDSKeyTransparencyVerificationState *)self transparencyStatus];
  transparencyBlob = [(IDSKeyTransparencyVerificationState *)self transparencyBlob];
  v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<%@: %p transparencyStatus: %@, transparencyBlob.length: %lu>", v3, self, transparencyStatus, [transparencyBlob length]);

  return v6;
}

@end
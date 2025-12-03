@interface _CPError
- (BOOL)isEqual:(id)equal;
- (_CPError)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation _CPError

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  v4 = [(NSString *)self->_reason hash];
  code = self->_code;
  if (code < 0.0)
  {
    code = -code;
  }

  *v5.i64 = round(code);
  *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  return v4 ^ v3 ^ (2654435761u * self->_errorCode) ^ ((*vbslq_s8(vnegq_f64(v8), v6, v5).i64 * 2654435760.0) + vcvtd_n_u64_f64(code - *v5.i64, 0x40uLL));
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  domain = [(_CPError *)self domain];
  domain2 = [equalCopy domain];
  if ((domain != 0) == (domain2 == 0))
  {
    goto LABEL_11;
  }

  domain3 = [(_CPError *)self domain];
  if (domain3)
  {
    v8 = domain3;
    domain4 = [(_CPError *)self domain];
    domain5 = [equalCopy domain];
    v11 = [domain4 isEqual:domain5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  domain = [(_CPError *)self reason];
  domain2 = [equalCopy reason];
  if ((domain != 0) == (domain2 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  reason = [(_CPError *)self reason];
  if (reason)
  {
    v13 = reason;
    reason2 = [(_CPError *)self reason];
    reason3 = [equalCopy reason];
    v16 = [reason2 isEqual:reason3];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  code = self->_code;
  [equalCopy code];
  if (code == v20)
  {
    errorCode = self->_errorCode;
    v17 = errorCode == [equalCopy errorCode];
    goto LABEL_13;
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  to;
  domain = [(_CPError *)self domain];

  if (domain)
  {
    domain = self->_domain;
    PBDataWriterWriteStringField();
  }

  reason = [(_CPError *)self reason];

  if (reason)
  {
    reason = self->_reason;
    PBDataWriterWriteStringField();
  }

  [(_CPError *)self code];
  if (v8 != 0.0)
  {
    code = self->_code;
    PBDataWriterWriteDoubleField();
  }

  if ([(_CPError *)self errorCode])
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteUint64Field();
  }

  MEMORY[0x1EEE66BE0]();
}

- (_CPError)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPError *)self init];
  if (v5)
  {
    userInfo = [facadeCopy userInfo];
    v7 = [userInfo objectForKey:@"reason"];
    [(_CPError *)v5 setReason:v7];

    -[_CPError setCode:](v5, "setCode:", [facadeCopy code]);
    domain = [facadeCopy domain];
    [(_CPError *)v5 setDomain:domain];

    v9 = v5;
  }

  return v5;
}

@end
@interface _CPError
- (BOOL)isEqual:(id)a3;
- (_CPError)initWithFacade:(id)a3;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(_CPError *)self domain];
  v6 = [v4 domain];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_11;
  }

  v7 = [(_CPError *)self domain];
  if (v7)
  {
    v8 = v7;
    v9 = [(_CPError *)self domain];
    v10 = [v4 domain];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  v5 = [(_CPError *)self reason];
  v6 = [v4 reason];
  if ((v5 != 0) == (v6 == 0))
  {
LABEL_11:

    goto LABEL_12;
  }

  v12 = [(_CPError *)self reason];
  if (v12)
  {
    v13 = v12;
    v14 = [(_CPError *)self reason];
    v15 = [v4 reason];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  code = self->_code;
  [v4 code];
  if (code == v20)
  {
    errorCode = self->_errorCode;
    v17 = errorCode == [v4 errorCode];
    goto LABEL_13;
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)a3
{
  a3;
  v4 = [(_CPError *)self domain];

  if (v4)
  {
    domain = self->_domain;
    PBDataWriterWriteStringField();
  }

  v6 = [(_CPError *)self reason];

  if (v6)
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

- (_CPError)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_CPError *)self init];
  if (v5)
  {
    v6 = [v4 userInfo];
    v7 = [v6 objectForKey:@"reason"];
    [(_CPError *)v5 setReason:v7];

    -[_CPError setCode:](v5, "setCode:", [v4 code]);
    v8 = [v4 domain];
    [(_CPError *)v5 setDomain:v8];

    v9 = v5;
  }

  return v5;
}

@end
@interface _MRGroupSessionIdentityShareMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGroupSessionIdentityShareMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionIdentityShareMessageProtobuf;
  v4 = [(_MRGroupSessionIdentityShareMessageProtobuf *)&v8 description];
  v5 = [(_MRGroupSessionIdentityShareMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  identity = self->_identity;
  if (identity)
  {
    v5 = [(_MRUserIdentityProtobuf *)identity dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"identity"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_identity)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  identity = self->_identity;
  if (identity)
  {
    [a3 setIdentity:identity];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRUserIdentityProtobuf *)self->_identity copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    identity = self->_identity;
    if (identity | v4[1])
    {
      v6 = [(_MRUserIdentityProtobuf *)identity isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  identity = self->_identity;
  v6 = v4[1];
  if (identity)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRUserIdentityProtobuf *)identity mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRGroupSessionIdentityShareMessageProtobuf *)self setIdentity:?];
  }

  v4 = v7;
LABEL_7:
}

@end
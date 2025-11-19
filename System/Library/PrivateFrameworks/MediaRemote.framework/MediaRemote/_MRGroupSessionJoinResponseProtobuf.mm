@interface _MRGroupSessionJoinResponseProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRGroupSessionJoinResponseProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionJoinResponseProtobuf;
  v4 = [(_MRGroupSessionJoinResponseProtobuf *)&v8 description];
  v5 = [(_MRGroupSessionJoinResponseProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  publicSigningKeyData = self->_publicSigningKeyData;
  if (publicSigningKeyData)
  {
    [v3 setObject:publicSigningKeyData forKey:@"publicSigningKeyData"];
  }

  joinURL = self->_joinURL;
  if (joinURL)
  {
    [v4 setObject:joinURL forKey:@"joinURL"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_publicSigningKeyData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_joinURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_publicSigningKeyData)
  {
    [v4 setPublicSigningKeyData:?];
    v4 = v5;
  }

  if (self->_joinURL)
  {
    [v5 setJoinURL:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_publicSigningKeyData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_joinURL copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((publicSigningKeyData = self->_publicSigningKeyData, !(publicSigningKeyData | v4[2])) || -[NSData isEqual:](publicSigningKeyData, "isEqual:")))
  {
    joinURL = self->_joinURL;
    if (joinURL | v4[1])
    {
      v7 = [(NSString *)joinURL isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(_MRGroupSessionJoinResponseProtobuf *)self setPublicSigningKeyData:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(_MRGroupSessionJoinResponseProtobuf *)self setJoinURL:?];
    v4 = v5;
  }
}

@end
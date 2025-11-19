@interface NPKProtoStandalonePaymentCredential
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandalonePaymentCredential

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandalonePaymentCredential;
  v4 = [(NPKProtoStandalonePaymentCredential *)&v8 description];
  v5 = [(NPKProtoStandalonePaymentCredential *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  sanitizedPrimaryAccountNumber = self->_sanitizedPrimaryAccountNumber;
  if (sanitizedPrimaryAccountNumber)
  {
    [v3 setObject:sanitizedPrimaryAccountNumber forKey:@"sanitizedPrimaryAccountNumber"];
  }

  expiration = self->_expiration;
  if (expiration)
  {
    [v4 setObject:expiration forKey:@"expiration"];
  }

  longDescription = self->_longDescription;
  if (longDescription)
  {
    [v4 setObject:longDescription forKey:@"longDescription"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sanitizedPrimaryAccountNumber)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_expiration)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_longDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sanitizedPrimaryAccountNumber)
  {
    [v4 setSanitizedPrimaryAccountNumber:?];
    v4 = v5;
  }

  if (self->_expiration)
  {
    [v5 setExpiration:?];
    v4 = v5;
  }

  if (self->_longDescription)
  {
    [v5 setLongDescription:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_sanitizedPrimaryAccountNumber copyWithZone:a3];
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_expiration copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_longDescription copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((sanitizedPrimaryAccountNumber = self->_sanitizedPrimaryAccountNumber, !(sanitizedPrimaryAccountNumber | v4[3])) || -[NSString isEqual:](sanitizedPrimaryAccountNumber, "isEqual:")) && ((expiration = self->_expiration, !(expiration | v4[1])) || -[NSString isEqual:](expiration, "isEqual:")))
  {
    longDescription = self->_longDescription;
    if (longDescription | v4[2])
    {
      v8 = [(NSString *)longDescription isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_sanitizedPrimaryAccountNumber hash];
  v4 = [(NSString *)self->_expiration hash]^ v3;
  return v4 ^ [(NSString *)self->_longDescription hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[3])
  {
    [(NPKProtoStandalonePaymentCredential *)self setSanitizedPrimaryAccountNumber:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoStandalonePaymentCredential *)self setExpiration:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(NPKProtoStandalonePaymentCredential *)self setLongDescription:?];
    v4 = v5;
  }
}

@end
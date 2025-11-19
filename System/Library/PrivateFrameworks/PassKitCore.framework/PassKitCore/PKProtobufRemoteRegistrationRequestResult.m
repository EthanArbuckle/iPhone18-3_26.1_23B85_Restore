@interface PKProtobufRemoteRegistrationRequestResult
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufRemoteRegistrationRequestResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufRemoteRegistrationRequestResult;
  v4 = [(PKProtobufRemoteRegistrationRequestResult *)&v8 description];
  v5 = [(PKProtobufRemoteRegistrationRequestResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  if (*&self->_has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_result];
    [v3 setObject:v5 forKey:@"result"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 3) = self->_version;
  if (*&self->_has)
  {
    *(a3 + 2) = self->_result;
    *(a3 + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(result + 3) = self->_version;
  if (*&self->_has)
  {
    *(result + 2) = self->_result;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_version != *(v4 + 3))
  {
    goto LABEL_7;
  }

  v5 = (*(v4 + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 16) & 1) != 0 && self->_result == *(v4 + 2))
    {
      v5 = 1;
      goto LABEL_8;
    }

LABEL_7:
    v5 = 0;
  }

LABEL_8:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_result;
  }

  else
  {
    v2 = 0;
  }

  return v2 ^ (2654435761 * self->_version);
}

- (void)mergeFrom:(id)a3
{
  self->_version = *(a3 + 3);
  if (*(a3 + 16))
  {
    self->_result = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end
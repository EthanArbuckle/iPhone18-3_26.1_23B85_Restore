@interface PKProtobufRemoteRegistrationRequestResult
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufRemoteRegistrationRequestResult

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufRemoteRegistrationRequestResult;
  v4 = [(PKProtobufRemoteRegistrationRequestResult *)&v8 description];
  dictionaryRepresentation = [(PKProtobufRemoteRegistrationRequestResult *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  if (*&self->_has)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_result];
    [dictionary setObject:v5 forKey:@"result"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteUint32Field();
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  *(to + 3) = self->_version;
  if (*&self->_has)
  {
    *(to + 2) = self->_result;
    *(to + 16) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 3) = self->_version;
  if (*&self->_has)
  {
    *(result + 2) = self->_result;
    *(result + 16) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_version != *(equalCopy + 3))
  {
    goto LABEL_7;
  }

  v5 = (*(equalCopy + 16) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 16) & 1) != 0 && self->_result == *(equalCopy + 2))
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

- (void)mergeFrom:(id)from
{
  self->_version = *(from + 3);
  if (*(from + 16))
  {
    self->_result = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end
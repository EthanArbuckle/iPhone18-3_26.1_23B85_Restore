@interface PUProtoRequestCompleted
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PUProtoRequestCompleted

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUProtoRequestCompleted;
  v3 = [(PUProtoRequestCompleted *)&v7 description];
  dictionaryRepresentation = [(PUProtoRequestCompleted *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedInt:self->_messageID];
  [v3 setObject:v4 forKey:@"messageID"];

  v5 = [NSNumber numberWithBool:self->_success];
  [v3 setObject:v5 forKey:@"success"];

  errorData = self->_errorData;
  if (errorData)
  {
    [v3 setObject:errorData forKey:@"errorData"];
  }

  passcodeState = self->_passcodeState;
  if (passcodeState)
  {
    dictionaryRepresentation = [(PUProtoPasscodeState *)passcodeState dictionaryRepresentation];
    [v3 setObject:dictionaryRepresentation forKey:@"passcodeState"];
  }

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  messageID = self->_messageID;
  PBDataWriterWriteUint32Field();
  success = self->_success;
  PBDataWriterWriteBOOLField();
  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_passcodeState)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[4] = self->_messageID;
  *(toCopy + 32) = self->_success;
  v5 = toCopy;
  if (self->_errorData)
  {
    [toCopy setErrorData:?];
    toCopy = v5;
  }

  if (self->_passcodeState)
  {
    [v5 setPasscodeState:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[4] = self->_messageID;
  *(v5 + 32) = self->_success;
  v6 = [(NSData *)self->_errorData copyWithZone:zone];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  v8 = [(PUProtoPasscodeState *)self->_passcodeState copyWithZone:zone];
  v9 = *(v5 + 3);
  *(v5 + 3) = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()] || self->_messageID != *(equalCopy + 4))
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 32);
  if (self->_success)
  {
    if ((*(equalCopy + 32) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  errorData = self->_errorData;
  if (errorData | *(equalCopy + 1) && ![(NSData *)errorData isEqual:?])
  {
    goto LABEL_11;
  }

  passcodeState = self->_passcodeState;
  if (passcodeState | *(equalCopy + 3))
  {
    v8 = [(PUProtoPasscodeState *)passcodeState isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

  return v8;
}

- (unint64_t)hash
{
  v3 = (2654435761 * self->_success) ^ (2654435761 * self->_messageID);
  v4 = [(NSData *)self->_errorData hash];
  return v3 ^ v4 ^ [(PUProtoPasscodeState *)self->_passcodeState hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  self->_messageID = *(fromCopy + 4);
  self->_success = *(fromCopy + 32);
  v7 = fromCopy;
  if (*(fromCopy + 1))
  {
    [(PUProtoRequestCompleted *)self setErrorData:?];
    fromCopy = v7;
  }

  passcodeState = self->_passcodeState;
  v6 = *(fromCopy + 3);
  if (passcodeState)
  {
    if (v6)
    {
      [(PUProtoPasscodeState *)passcodeState mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PUProtoRequestCompleted *)self setPasscodeState:?];
  }

  _objc_release_x1();
}

@end
@interface PUProtoRequestCompleted
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PUProtoRequestCompleted

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUProtoRequestCompleted;
  v3 = [(PUProtoRequestCompleted *)&v7 description];
  v4 = [(PUProtoRequestCompleted *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
    v8 = [(PUProtoPasscodeState *)passcodeState dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"passcodeState"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  v4[4] = self->_messageID;
  *(v4 + 32) = self->_success;
  v5 = v4;
  if (self->_errorData)
  {
    [v4 setErrorData:?];
    v4 = v5;
  }

  if (self->_passcodeState)
  {
    [v5 setPasscodeState:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5[4] = self->_messageID;
  *(v5 + 32) = self->_success;
  v6 = [(NSData *)self->_errorData copyWithZone:a3];
  v7 = *(v5 + 1);
  *(v5 + 1) = v6;

  v8 = [(PUProtoPasscodeState *)self->_passcodeState copyWithZone:a3];
  v9 = *(v5 + 3);
  *(v5 + 3) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()] || self->_messageID != *(v4 + 4))
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 32);
  if (self->_success)
  {
    if ((*(v4 + 32) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  errorData = self->_errorData;
  if (errorData | *(v4 + 1) && ![(NSData *)errorData isEqual:?])
  {
    goto LABEL_11;
  }

  passcodeState = self->_passcodeState;
  if (passcodeState | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  self->_messageID = *(v4 + 4);
  self->_success = *(v4 + 32);
  v7 = v4;
  if (*(v4 + 1))
  {
    [(PUProtoRequestCompleted *)self setErrorData:?];
    v4 = v7;
  }

  passcodeState = self->_passcodeState;
  v6 = *(v4 + 3);
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
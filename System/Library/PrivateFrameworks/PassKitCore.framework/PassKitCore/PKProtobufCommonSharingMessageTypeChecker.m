@interface PKProtobufCommonSharingMessageTypeChecker
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufCommonSharingMessageTypeChecker

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufCommonSharingMessageTypeChecker;
  v4 = [(PKProtobufCommonSharingMessageTypeChecker *)&v8 description];
  v5 = [(PKProtobufCommonSharingMessageTypeChecker *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  messageType = self->_messageType;
  if (messageType)
  {
    [v3 setObject:messageType forKey:@"messageType"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_messageType)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  *(a3 + 4) = self->_version;
  messageType = self->_messageType;
  if (messageType)
  {
    [a3 setMessageType:messageType];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 16) = self->_version;
  v6 = [(NSString *)self->_messageType copyWithZone:a3];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_version == *(v4 + 4))
  {
    messageType = self->_messageType;
    if (messageType | v4[1])
    {
      v6 = [(NSString *)messageType isEqual:?];
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
  self->_version = *(a3 + 4);
  if (*(a3 + 1))
  {
    [(PKProtobufCommonSharingMessageTypeChecker *)self setMessageType:?];
  }
}

@end
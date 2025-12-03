@interface IDSQRProtoCallModeUpdateResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation IDSQRProtoCallModeUpdateResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoCallModeUpdateResponse;
  v4 = [(IDSQRProtoCallModeUpdateResponse *)&v8 description];
  dictionaryRepresentation = [(IDSQRProtoCallModeUpdateResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  callModeInfo = self->_callModeInfo;
  if (callModeInfo)
  {
    dictionaryRepresentation = [(IDSQRProtoCallModeUpdateInfo *)callModeInfo dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"call_mode_info"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_callModeInfo)
  {
    sub_1A7E1F7DC();
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(IDSQRProtoCallModeUpdateInfo *)self->_callModeInfo copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    callModeInfo = self->_callModeInfo;
    if (callModeInfo | equalCopy[1])
    {
      v6 = [(IDSQRProtoCallModeUpdateInfo *)callModeInfo isEqual:?];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  callModeInfo = self->_callModeInfo;
  v6 = fromCopy[1];
  if (callModeInfo)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(IDSQRProtoCallModeUpdateInfo *)callModeInfo mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(IDSQRProtoCallModeUpdateResponse *)self setCallModeInfo:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end
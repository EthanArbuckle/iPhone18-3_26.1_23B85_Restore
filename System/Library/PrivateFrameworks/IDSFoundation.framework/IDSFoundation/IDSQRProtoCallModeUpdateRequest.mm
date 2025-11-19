@interface IDSQRProtoCallModeUpdateRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IDSQRProtoCallModeUpdateRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = IDSQRProtoCallModeUpdateRequest;
  v4 = [(IDSQRProtoCallModeUpdateRequest *)&v8 description];
  v5 = [(IDSQRProtoCallModeUpdateRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  callModeInfo = self->_callModeInfo;
  if (callModeInfo)
  {
    v5 = [(IDSQRProtoCallModeUpdateInfo *)callModeInfo dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"call_mode_info"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_callModeInfo)
  {
    sub_1A7E1F808();
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(IDSQRProtoCallModeUpdateInfo *)self->_callModeInfo copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    callModeInfo = self->_callModeInfo;
    if (callModeInfo | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  callModeInfo = self->_callModeInfo;
  v6 = v4[1];
  if (callModeInfo)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(IDSQRProtoCallModeUpdateInfo *)callModeInfo mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(IDSQRProtoCallModeUpdateRequest *)self setCallModeInfo:?];
  }

  v4 = v7;
LABEL_7:
}

@end
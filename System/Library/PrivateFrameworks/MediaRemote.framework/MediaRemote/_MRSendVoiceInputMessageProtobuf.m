@interface _MRSendVoiceInputMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRSendVoiceInputMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendVoiceInputMessageProtobuf;
  v4 = [(_MRSendVoiceInputMessageProtobuf *)&v8 description];
  v5 = [(_MRSendVoiceInputMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  dataBlock = self->_dataBlock;
  if (dataBlock)
  {
    v5 = [(_MRAudioDataBlockProtobuf *)dataBlock dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"dataBlock"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_dataBlock)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  dataBlock = self->_dataBlock;
  if (dataBlock)
  {
    [a3 setDataBlock:dataBlock];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRAudioDataBlockProtobuf *)self->_dataBlock copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    dataBlock = self->_dataBlock;
    if (dataBlock | v4[1])
    {
      v6 = [(_MRAudioDataBlockProtobuf *)dataBlock isEqual:?];
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
  dataBlock = self->_dataBlock;
  v6 = v4[1];
  if (dataBlock)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRAudioDataBlockProtobuf *)dataBlock mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRSendVoiceInputMessageProtobuf *)self setDataBlock:?];
  }

  v4 = v7;
LABEL_7:
}

@end
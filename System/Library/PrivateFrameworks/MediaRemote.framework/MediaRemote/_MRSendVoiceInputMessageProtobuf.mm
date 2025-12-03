@interface _MRSendVoiceInputMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRSendVoiceInputMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRSendVoiceInputMessageProtobuf;
  v4 = [(_MRSendVoiceInputMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRSendVoiceInputMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dataBlock = self->_dataBlock;
  if (dataBlock)
  {
    dictionaryRepresentation = [(_MRAudioDataBlockProtobuf *)dataBlock dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"dataBlock"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_dataBlock)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  dataBlock = self->_dataBlock;
  if (dataBlock)
  {
    [to setDataBlock:dataBlock];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRAudioDataBlockProtobuf *)self->_dataBlock copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    dataBlock = self->_dataBlock;
    if (dataBlock | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  dataBlock = self->_dataBlock;
  v6 = fromCopy[1];
  if (dataBlock)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRAudioDataBlockProtobuf *)dataBlock mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = fromCopy;
    [(_MRSendVoiceInputMessageProtobuf *)self setDataBlock:?];
  }

  fromCopy = v7;
LABEL_7:
}

@end
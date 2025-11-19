@interface _MRApplicationConnectionMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRApplicationConnectionMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRApplicationConnectionMessageProtobuf;
  v4 = [(_MRApplicationConnectionMessageProtobuf *)&v8 description];
  v5 = [(_MRApplicationConnectionMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  header = self->_header;
  if (header)
  {
    v5 = [(_MRApplicationConnectionMessageHeaderProtobuf *)header dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"header"];
  }

  underlyingMessage = self->_underlyingMessage;
  if (underlyingMessage)
  {
    [v3 setObject:underlyingMessage forKey:@"underlyingMessage"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_underlyingMessage)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_header)
  {
    [v4 setHeader:?];
    v4 = v5;
  }

  if (self->_underlyingMessage)
  {
    [v5 setUnderlyingMessage:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRApplicationConnectionMessageHeaderProtobuf *)self->_header copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_underlyingMessage copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | v4[1])) || -[_MRApplicationConnectionMessageHeaderProtobuf isEqual:](header, "isEqual:")))
  {
    underlyingMessage = self->_underlyingMessage;
    if (underlyingMessage | v4[2])
    {
      v7 = [(NSData *)underlyingMessage isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = v4[1];
  v7 = v4;
  if (header)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRApplicationConnectionMessageHeaderProtobuf *)header mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(_MRApplicationConnectionMessageProtobuf *)self setHeader:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    [(_MRApplicationConnectionMessageProtobuf *)self setUnderlyingMessage:?];
    v4 = v7;
  }
}

@end
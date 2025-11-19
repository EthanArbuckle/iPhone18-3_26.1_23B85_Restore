@interface _MRRequestGroupSessionMessageProtobuf
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _MRRequestGroupSessionMessageProtobuf

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRRequestGroupSessionMessageProtobuf;
  v4 = [(_MRRequestGroupSessionMessageProtobuf *)&v8 description];
  v5 = [(_MRRequestGroupSessionMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  details = self->_details;
  if (details)
  {
    v5 = [(_MRRequestDetailsProtobuf *)details dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"details"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_details)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  details = self->_details;
  if (details)
  {
    [a3 setDetails:details];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(_MRRequestDetailsProtobuf *)self->_details copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    details = self->_details;
    if (details | v4[1])
    {
      v6 = [(_MRRequestDetailsProtobuf *)details isEqual:?];
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
  details = self->_details;
  v6 = v4[1];
  if (details)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRRequestDetailsProtobuf *)details mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(_MRRequestGroupSessionMessageProtobuf *)self setDetails:?];
  }

  v4 = v7;
LABEL_7:
}

@end
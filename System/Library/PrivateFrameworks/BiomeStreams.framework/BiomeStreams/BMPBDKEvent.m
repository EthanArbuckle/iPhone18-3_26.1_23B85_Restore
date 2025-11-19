@interface BMPBDKEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBDKEvent

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBDKEvent;
  v4 = [(BMPBDKEvent *)&v8 description];
  v5 = [(BMPBDKEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  dkEvent = self->_dkEvent;
  if (dkEvent)
  {
    [v3 setObject:dkEvent forKey:@"dkEvent"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  if (self->_dkEvent)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)a3
{
  dkEvent = self->_dkEvent;
  if (dkEvent)
  {
    [a3 setDkEvent:dkEvent];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_dkEvent copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    dkEvent = self->_dkEvent;
    if (dkEvent | v4[1])
    {
      v6 = [(NSData *)dkEvent isEqual:?];
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
  if (*(a3 + 1))
  {
    [(BMPBDKEvent *)self setDkEvent:?];
  }
}

@end
@interface BLTPBActionInformation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation BLTPBActionInformation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBActionInformation;
  v4 = [(BLTPBActionInformation *)&v8 description];
  v5 = [(BLTPBActionInformation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  context = self->_context;
  if (context)
  {
    [v3 setObject:context forKey:@"context"];
  }

  contextNulls = self->_contextNulls;
  if (contextNulls)
  {
    [v4 setObject:contextNulls forKey:@"contextNulls"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_context)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_contextNulls)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_context)
  {
    [v4 setContext:?];
    v4 = v5;
  }

  if (self->_contextNulls)
  {
    [v5 setContextNulls:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_context copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_contextNulls copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((context = self->_context, !(context | v4[1])) || -[NSData isEqual:](context, "isEqual:")))
  {
    contextNulls = self->_contextNulls;
    if (contextNulls | v4[2])
    {
      v7 = [(NSData *)contextNulls isEqual:?];
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
  v5 = v4;
  if (v4[1])
  {
    [(BLTPBActionInformation *)self setContext:?];
    v4 = v5;
  }

  if (v4[2])
  {
    [(BLTPBActionInformation *)self setContextNulls:?];
    v4 = v5;
  }
}

@end
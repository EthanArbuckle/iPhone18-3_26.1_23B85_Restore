@interface BLTPBActionInformation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BLTPBActionInformation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BLTPBActionInformation;
  v4 = [(BLTPBActionInformation *)&v8 description];
  dictionaryRepresentation = [(BLTPBActionInformation *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  context = self->_context;
  if (context)
  {
    [dictionary setObject:context forKey:@"context"];
  }

  contextNulls = self->_contextNulls;
  if (contextNulls)
  {
    [v4 setObject:contextNulls forKey:@"contextNulls"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_context)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_contextNulls)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_context)
  {
    [toCopy setContext:?];
    toCopy = v5;
  }

  if (self->_contextNulls)
  {
    [v5 setContextNulls:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_context copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_contextNulls copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((context = self->_context, !(context | equalCopy[1])) || -[NSData isEqual:](context, "isEqual:")))
  {
    contextNulls = self->_contextNulls;
    if (contextNulls | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[1])
  {
    [(BLTPBActionInformation *)self setContext:?];
    fromCopy = v5;
  }

  if (fromCopy[2])
  {
    [(BLTPBActionInformation *)self setContextNulls:?];
    fromCopy = v5;
  }
}

@end
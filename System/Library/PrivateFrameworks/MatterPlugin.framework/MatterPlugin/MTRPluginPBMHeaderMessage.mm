@interface MTRPluginPBMHeaderMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMHeaderMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMHeaderMessage;
  v4 = [(MTRPluginPBMHeaderMessage *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMHeaderMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(MTRPluginPBMHeader *)header dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"header"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  header = self->_header;
  if (header)
  {
    [to setHeader:header];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    header = self->_header;
    if (header | equalCopy[1])
    {
      v6 = [(MTRPluginPBMHeader *)header isEqual:?];
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
  header = self->_header;
  v6 = fromCopy[1];
  if (header)
  {
    if (v6)
    {
      [(MTRPluginPBMHeader *)header mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MTRPluginPBMHeaderMessage *)self setHeader:?];
  }

  MEMORY[0x2821F96F8]();
}

@end
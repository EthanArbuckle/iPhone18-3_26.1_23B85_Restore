@interface MTRPluginPBMHeaderMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation MTRPluginPBMHeaderMessage

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMHeaderMessage;
  v4 = [(MTRPluginPBMHeaderMessage *)&v8 description];
  v5 = [(MTRPluginPBMHeaderMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  header = self->_header;
  if (header)
  {
    v5 = [(MTRPluginPBMHeader *)header dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"header"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_header)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  header = self->_header;
  if (header)
  {
    [a3 setHeader:header];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(MTRPluginPBMHeader *)self->_header copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    header = self->_header;
    if (header | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = v4[1];
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
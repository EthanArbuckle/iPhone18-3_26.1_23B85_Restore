@interface MTRPluginPBMURL
- (BOOL)isEqual:(id)equal;
- (MTRPluginPBMURL)initWithURL:(id)l;
- (NSURL)url;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setUrl:(id)url;
- (void)writeTo:(id)to;
@end

@implementation MTRPluginPBMURL

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MTRPluginPBMURL;
  v4 = [(MTRPluginPBMURL *)&v8 description];
  dictionaryRepresentation = [(MTRPluginPBMURL *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  value = self->_value;
  if (value)
  {
    [dictionary setObject:value forKey:@"value"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  if (self->_value)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  value = self->_value;
  if (value)
  {
    [to setValue:value];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_value copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    value = self->_value;
    if (value | equalCopy[1])
    {
      v6 = [(NSString *)value isEqual:?];
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
  if (*(from + 1))
  {
    [(MTRPluginPBMURL *)self setValue:?];
  }
}

- (MTRPluginPBMURL)initWithURL:(id)l
{
  lCopy = l;
  if (lCopy && (self = [(MTRPluginPBMURL *)self init]) != 0)
  {
    absoluteString = [lCopy absoluteString];
    [(MTRPluginPBMURL *)self setValue:absoluteString];

    self = self;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setUrl:(id)url
{
  absoluteString = [url absoluteString];
  [(MTRPluginPBMURL *)self setValue:absoluteString];
}

- (NSURL)url
{
  v3 = objc_alloc(MEMORY[0x277CBEBC0]);
  value = [(MTRPluginPBMURL *)self value];
  v5 = [v3 initWithString:value];

  return v5;
}

@end
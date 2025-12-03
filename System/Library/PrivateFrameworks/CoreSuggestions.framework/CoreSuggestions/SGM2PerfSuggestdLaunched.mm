@interface SGM2PerfSuggestdLaunched
- (BOOL)isEqual:(id)equal;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SGM2PerfSuggestdLaunched

- (void)mergeFrom:(id)from
{
  if (*(from + 1))
  {
    [(SGM2PerfSuggestdLaunched *)self setKey:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    key = self->_key;
    if (key | equalCopy[1])
    {
      v6 = [(NSString *)key isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)to
{
  key = self->_key;
  if (key)
  {
    [to setKey:key];
  }
}

- (void)writeTo:(id)to
{
  if (self->_key)
  {
    _PBDataWriterWriteStringField(to);
  }
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = v3;
  key = self->_key;
  if (key)
  {
    [v3 setObject:key forKey:@"key"];
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = SGM2PerfSuggestdLaunched;
  v3 = [(SGM2PerfSuggestdLaunched *)&v7 description];
  dictionaryRepresentation = [(SGM2PerfSuggestdLaunched *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (NSString)key
{
  if (self->_key)
  {
    return self->_key;
  }

  else
  {
    return @"PerfSuggestdLaunched";
  }
}

@end
@interface SGM2PerfSuggestdLaunched
- (BOOL)isEqual:(id)a3;
- (NSString)key;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SGM2PerfSuggestdLaunched

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 1))
  {
    [(SGM2PerfSuggestdLaunched *)self setKey:?];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    key = self->_key;
    if (key | v4[1])
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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_key copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (void)copyTo:(id)a3
{
  key = self->_key;
  if (key)
  {
    [a3 setKey:key];
  }
}

- (void)writeTo:(id)a3
{
  if (self->_key)
  {
    _PBDataWriterWriteStringField(a3);
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
  v4 = [(SGM2PerfSuggestdLaunched *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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
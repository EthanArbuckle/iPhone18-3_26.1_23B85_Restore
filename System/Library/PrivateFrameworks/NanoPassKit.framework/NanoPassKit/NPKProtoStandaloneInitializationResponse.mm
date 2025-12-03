@interface NPKProtoStandaloneInitializationResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)supportedServerVersionsAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandaloneInitializationResponse

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NPKProtoStandaloneInitializationResponse;
  [(NPKProtoStandaloneInitializationResponse *)&v3 dealloc];
}

- (int)supportedServerVersionsAtIndex:(unint64_t)index
{
  p_supportedServerVersions = &self->_supportedServerVersions;
  count = self->_supportedServerVersions.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_supportedServerVersions->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandaloneInitializationResponse;
  v4 = [(NPKProtoStandaloneInitializationResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandaloneInitializationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  responseHeader = self->_responseHeader;
  if (responseHeader)
  {
    dictionaryRepresentation = [(NPKProtoStandaloneResponseHeader *)responseHeader dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"responseHeader"];
  }

  p_supportedServerVersions = &self->_supportedServerVersions;
  if (self->_supportedServerVersions.count)
  {
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:?];
    if (self->_supportedServerVersions.count)
    {
      v8 = 0;
      do
      {
        v9 = @"Version1";
        if (p_supportedServerVersions->list[v8] != 1)
        {
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", p_supportedServerVersions->list[v8]];
        }

        [v7 addObject:v9];

        ++v8;
      }

      while (v8 < self->_supportedServerVersions.count);
    }

    [dictionary setObject:v7 forKey:@"supportedServerVersions"];
  }

  clientInfoHTTPHeader = self->_clientInfoHTTPHeader;
  if (clientInfoHTTPHeader)
  {
    [dictionary setObject:clientInfoHTTPHeader forKey:@"clientInfoHTTPHeader"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(NPKProtoStandaloneError *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"error"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_responseHeader)
  {
    [NPKProtoStandaloneInitializationResponse writeTo:];
  }

  v8 = toCopy;
  PBDataWriterWriteSubmessage();
  if (self->_supportedServerVersions.count)
  {
    v5 = 0;
    do
    {
      v6 = self->_supportedServerVersions.list[v5];
      PBDataWriterWriteInt32Field();
      ++v5;
    }

    while (v5 < self->_supportedServerVersions.count);
  }

  if (self->_clientInfoHTTPHeader)
  {
    PBDataWriterWriteStringField();
  }

  v7 = v8;
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    v7 = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setResponseHeader:self->_responseHeader];
  if ([(NPKProtoStandaloneInitializationResponse *)self supportedServerVersionsCount])
  {
    [toCopy clearSupportedServerVersions];
    supportedServerVersionsCount = [(NPKProtoStandaloneInitializationResponse *)self supportedServerVersionsCount];
    if (supportedServerVersionsCount)
    {
      v5 = supportedServerVersionsCount;
      for (i = 0; i != v5; ++i)
      {
        [toCopy addSupportedServerVersions:{-[NPKProtoStandaloneInitializationResponse supportedServerVersionsAtIndex:](self, "supportedServerVersionsAtIndex:", i)}];
      }
    }
  }

  if (self->_clientInfoHTTPHeader)
  {
    [toCopy setClientInfoHTTPHeader:?];
  }

  v7 = toCopy;
  if (self->_error)
  {
    [toCopy setError:?];
    v7 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NPKProtoStandaloneResponseHeader *)self->_responseHeader copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  PBRepeatedInt32Copy();
  v8 = [(NSString *)self->_clientInfoHTTPHeader copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NPKProtoStandaloneError *)self->_error copyWithZone:zone];
  v11 = v5[5];
  v5[5] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((responseHeader = self->_responseHeader, !(responseHeader | equalCopy[6])) || -[NPKProtoStandaloneResponseHeader isEqual:](responseHeader, "isEqual:")) && PBRepeatedInt32IsEqual() && ((clientInfoHTTPHeader = self->_clientInfoHTTPHeader, !(clientInfoHTTPHeader | equalCopy[4])) || -[NSString isEqual:](clientInfoHTTPHeader, "isEqual:")))
  {
    error = self->_error;
    if (error | equalCopy[5])
    {
      v8 = [(NPKProtoStandaloneError *)error isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NPKProtoStandaloneResponseHeader *)self->_responseHeader hash];
  v4 = PBRepeatedInt32Hash() ^ v3;
  v5 = [(NSString *)self->_clientInfoHTTPHeader hash];
  return v4 ^ v5 ^ [(NPKProtoStandaloneError *)self->_error hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  responseHeader = self->_responseHeader;
  v6 = fromCopy[6];
  v13 = fromCopy;
  if (responseHeader)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandaloneResponseHeader *)responseHeader mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(NPKProtoStandaloneInitializationResponse *)self setResponseHeader:?];
  }

  fromCopy = v13;
LABEL_7:
  supportedServerVersionsCount = [fromCopy supportedServerVersionsCount];
  if (supportedServerVersionsCount)
  {
    v8 = supportedServerVersionsCount;
    for (i = 0; i != v8; ++i)
    {
      -[NPKProtoStandaloneInitializationResponse addSupportedServerVersions:](self, "addSupportedServerVersions:", [v13 supportedServerVersionsAtIndex:i]);
    }
  }

  v10 = v13;
  if (v13[4])
  {
    [(NPKProtoStandaloneInitializationResponse *)self setClientInfoHTTPHeader:?];
    v10 = v13;
  }

  error = self->_error;
  v12 = v10[5];
  if (error)
  {
    if (!v12)
    {
      goto LABEL_18;
    }

    [(NPKProtoStandaloneError *)error mergeFrom:?];
  }

  else
  {
    if (!v12)
    {
      goto LABEL_18;
    }

    [(NPKProtoStandaloneInitializationResponse *)self setError:?];
  }

  v10 = v13;
LABEL_18:
}

@end
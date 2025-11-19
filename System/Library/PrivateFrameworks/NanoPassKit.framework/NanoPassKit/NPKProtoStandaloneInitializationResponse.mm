@interface NPKProtoStandaloneInitializationResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)supportedServerVersionsAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoStandaloneInitializationResponse

- (void)dealloc
{
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = NPKProtoStandaloneInitializationResponse;
  [(NPKProtoStandaloneInitializationResponse *)&v3 dealloc];
}

- (int)supportedServerVersionsAtIndex:(unint64_t)a3
{
  p_supportedServerVersions = &self->_supportedServerVersions;
  count = self->_supportedServerVersions.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_supportedServerVersions->list[a3];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandaloneInitializationResponse;
  v4 = [(NPKProtoStandaloneInitializationResponse *)&v8 description];
  v5 = [(NPKProtoStandaloneInitializationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  responseHeader = self->_responseHeader;
  if (responseHeader)
  {
    v5 = [(NPKProtoStandaloneResponseHeader *)responseHeader dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"responseHeader"];
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

    [v3 setObject:v7 forKey:@"supportedServerVersions"];
  }

  clientInfoHTTPHeader = self->_clientInfoHTTPHeader;
  if (clientInfoHTTPHeader)
  {
    [v3 setObject:clientInfoHTTPHeader forKey:@"clientInfoHTTPHeader"];
  }

  error = self->_error;
  if (error)
  {
    v12 = [(NPKProtoStandaloneError *)error dictionaryRepresentation];
    [v3 setObject:v12 forKey:@"error"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_responseHeader)
  {
    [NPKProtoStandaloneInitializationResponse writeTo:];
  }

  v8 = v4;
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

- (void)copyTo:(id)a3
{
  v8 = a3;
  [v8 setResponseHeader:self->_responseHeader];
  if ([(NPKProtoStandaloneInitializationResponse *)self supportedServerVersionsCount])
  {
    [v8 clearSupportedServerVersions];
    v4 = [(NPKProtoStandaloneInitializationResponse *)self supportedServerVersionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        [v8 addSupportedServerVersions:{-[NPKProtoStandaloneInitializationResponse supportedServerVersionsAtIndex:](self, "supportedServerVersionsAtIndex:", i)}];
      }
    }
  }

  if (self->_clientInfoHTTPHeader)
  {
    [v8 setClientInfoHTTPHeader:?];
  }

  v7 = v8;
  if (self->_error)
  {
    [v8 setError:?];
    v7 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoStandaloneResponseHeader *)self->_responseHeader copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  PBRepeatedInt32Copy();
  v8 = [(NSString *)self->_clientInfoHTTPHeader copyWithZone:a3];
  v9 = v5[4];
  v5[4] = v8;

  v10 = [(NPKProtoStandaloneError *)self->_error copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((responseHeader = self->_responseHeader, !(responseHeader | v4[6])) || -[NPKProtoStandaloneResponseHeader isEqual:](responseHeader, "isEqual:")) && PBRepeatedInt32IsEqual() && ((clientInfoHTTPHeader = self->_clientInfoHTTPHeader, !(clientInfoHTTPHeader | v4[4])) || -[NSString isEqual:](clientInfoHTTPHeader, "isEqual:")))
  {
    error = self->_error;
    if (error | v4[5])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  responseHeader = self->_responseHeader;
  v6 = v4[6];
  v13 = v4;
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

  v4 = v13;
LABEL_7:
  v7 = [v4 supportedServerVersionsCount];
  if (v7)
  {
    v8 = v7;
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
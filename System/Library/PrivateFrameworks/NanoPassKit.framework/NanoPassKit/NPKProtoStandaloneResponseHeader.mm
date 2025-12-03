@interface NPKProtoStandaloneResponseHeader
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandaloneResponseHeader

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandaloneResponseHeader;
  v4 = [(NPKProtoStandaloneResponseHeader *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandaloneResponseHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self->_protocolVersion == 1)
  {
    v4 = @"Version1";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_protocolVersion];
  }

  [dictionary setObject:v4 forKey:@"protocolVersion"];

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [dictionary setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  protocolVersion = self->_protocolVersion;
  v6 = toCopy;
  PBDataWriterWriteInt32Field();
  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  *(to + 2) = self->_protocolVersion;
  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [to setSessionIdentifier:sessionIdentifier];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = self->_protocolVersion;
  v6 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_protocolVersion == *(equalCopy + 2))
  {
    sessionIdentifier = self->_sessionIdentifier;
    if (sessionIdentifier | equalCopy[2])
    {
      v6 = [(NSString *)sessionIdentifier isEqual:?];
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
  self->_protocolVersion = *(from + 2);
  if (*(from + 2))
  {
    [(NPKProtoStandaloneResponseHeader *)self setSessionIdentifier:?];
  }
}

@end
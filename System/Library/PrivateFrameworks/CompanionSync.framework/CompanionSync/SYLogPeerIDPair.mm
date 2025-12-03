@interface SYLogPeerIDPair
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYLogPeerIDPair

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYLogPeerIDPair;
  v4 = [(SYLogPeerIDPair *)&v8 description];
  dictionaryRepresentation = [(SYLogPeerIDPair *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  peerID = self->_peerID;
  if (peerID)
  {
    [dictionary setObject:peerID forKey:@"peerID"];
  }

  generationID = self->_generationID;
  if (generationID)
  {
    [v4 setObject:generationID forKey:@"generationID"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_peerID)
  {
    [SYLogPeerIDPair writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (self->_generationID)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setPeerID:self->_peerID];
  if (self->_generationID)
  {
    [toCopy setGenerationID:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_peerID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_generationID copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((peerID = self->_peerID, !(peerID | equalCopy[2])) || -[NSString isEqual:](peerID, "isEqual:")))
  {
    generationID = self->_generationID;
    if (generationID | equalCopy[1])
    {
      v7 = [(NSString *)generationID isEqual:?];
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
  if (fromCopy[2])
  {
    [(SYLogPeerIDPair *)self setPeerID:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(SYLogPeerIDPair *)self setGenerationID:?];
    fromCopy = v5;
  }
}

@end
@interface SYPeer
- (BOOL)isEqual:(id)equal;
- (SYPeer)initWithPeerID:(id)d generation:(id)generation;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYPeer

- (SYPeer)initWithPeerID:(id)d generation:(id)generation
{
  dCopy = d;
  generationCopy = generation;
  v12.receiver = self;
  v12.super_class = SYPeer;
  v8 = [(SYPeer *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(SYPeer *)v8 setPeerID:dCopy];
    [(SYPeer *)v9 setGenerationID:generationCopy];
    v10 = v9;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYPeer;
  v4 = [(SYPeer *)&v8 description];
  dictionaryRepresentation = [(SYPeer *)self dictionaryRepresentation];
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
    [SYPeer writeTo:];
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
    [(SYPeer *)self setPeerID:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(SYPeer *)self setGenerationID:?];
    fromCopy = v5;
  }
}

@end
@interface SYPeer
- (BOOL)isEqual:(id)a3;
- (SYPeer)initWithPeerID:(id)a3 generation:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYPeer

- (SYPeer)initWithPeerID:(id)a3 generation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SYPeer;
  v8 = [(SYPeer *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(SYPeer *)v8 setPeerID:v6];
    [(SYPeer *)v9 setGenerationID:v7];
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
  v5 = [(SYPeer *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  peerID = self->_peerID;
  if (peerID)
  {
    [v3 setObject:peerID forKey:@"peerID"];
  }

  generationID = self->_generationID;
  if (generationID)
  {
    [v4 setObject:generationID forKey:@"generationID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_peerID)
  {
    [SYPeer writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (self->_generationID)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setPeerID:self->_peerID];
  if (self->_generationID)
  {
    [v4 setGenerationID:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_peerID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_generationID copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((peerID = self->_peerID, !(peerID | v4[2])) || -[NSString isEqual:](peerID, "isEqual:")))
  {
    generationID = self->_generationID;
    if (generationID | v4[1])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(SYPeer *)self setPeerID:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(SYPeer *)self setGenerationID:?];
    v4 = v5;
  }
}

@end
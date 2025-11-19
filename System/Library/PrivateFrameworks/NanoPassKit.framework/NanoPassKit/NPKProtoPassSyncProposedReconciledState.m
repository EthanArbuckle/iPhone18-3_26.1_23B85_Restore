@interface NPKProtoPassSyncProposedReconciledState
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoPassSyncProposedReconciledState

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPassSyncProposedReconciledState;
  v4 = [(NPKProtoPassSyncProposedReconciledState *)&v8 description];
  v5 = [(NPKProtoPassSyncProposedReconciledState *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  proposedReconciledState = self->_proposedReconciledState;
  if (proposedReconciledState)
  {
    v5 = [(NPKProtoPassSyncState *)proposedReconciledState dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"proposedReconciledState"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  if (self->_proposedReconciledState)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  proposedReconciledState = self->_proposedReconciledState;
  if (proposedReconciledState)
  {
    [a3 setProposedReconciledState:proposedReconciledState];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NPKProtoPassSyncState *)self->_proposedReconciledState copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    proposedReconciledState = self->_proposedReconciledState;
    if (proposedReconciledState | v4[1])
    {
      v6 = [(NPKProtoPassSyncState *)proposedReconciledState isEqual:?];
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
  proposedReconciledState = self->_proposedReconciledState;
  v6 = v4[1];
  if (proposedReconciledState)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(NPKProtoPassSyncState *)proposedReconciledState mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    v7 = v4;
    [(NPKProtoPassSyncProposedReconciledState *)self setProposedReconciledState:?];
  }

  v4 = v7;
LABEL_7:
}

@end
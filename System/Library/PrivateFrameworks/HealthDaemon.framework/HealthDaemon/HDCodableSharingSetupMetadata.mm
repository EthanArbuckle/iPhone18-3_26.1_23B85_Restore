@interface HDCodableSharingSetupMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInvitationToken:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableSharingSetupMetadata

- (void)addInvitationToken:(id)a3
{
  v4 = a3;
  invitationTokens = self->_invitationTokens;
  v8 = v4;
  if (!invitationTokens)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_invitationTokens;
    self->_invitationTokens = v6;

    v4 = v8;
    invitationTokens = self->_invitationTokens;
  }

  [(NSMutableArray *)invitationTokens addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSharingSetupMetadata;
  v4 = [(HDCodableSharingSetupMetadata *)&v8 description];
  v5 = [(HDCodableSharingSetupMetadata *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  syncCircleIdentifier = self->_syncCircleIdentifier;
  if (syncCircleIdentifier)
  {
    [v3 setObject:syncCircleIdentifier forKey:@"syncCircleIdentifier"];
  }

  ownerParticipant = self->_ownerParticipant;
  if (ownerParticipant)
  {
    [v4 setObject:ownerParticipant forKey:@"ownerParticipant"];
  }

  sourceProfileIdentifier = self->_sourceProfileIdentifier;
  if (sourceProfileIdentifier)
  {
    [v4 setObject:sourceProfileIdentifier forKey:@"sourceProfileIdentifier"];
  }

  shareParticipant = self->_shareParticipant;
  if (shareParticipant)
  {
    [v4 setObject:shareParticipant forKey:@"shareParticipant"];
  }

  ownerCloudKitEmailAddress = self->_ownerCloudKitEmailAddress;
  if (ownerCloudKitEmailAddress)
  {
    [v4 setObject:ownerCloudKitEmailAddress forKey:@"ownerCloudKitEmailAddress"];
  }

  if ([(NSMutableArray *)self->_invitationTokens count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_invitationTokens, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = self->_invitationTokens;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:v16];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"invitationToken"];
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_syncCircleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_ownerParticipant)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_sourceProfileIdentifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_shareParticipant)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_ownerCloudKitEmailAddress)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_invitationTokens;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_syncCircleIdentifier)
  {
    [v8 setSyncCircleIdentifier:?];
  }

  if (self->_ownerParticipant)
  {
    [v8 setOwnerParticipant:?];
  }

  if (self->_sourceProfileIdentifier)
  {
    [v8 setSourceProfileIdentifier:?];
  }

  if (self->_shareParticipant)
  {
    [v8 setShareParticipant:?];
  }

  if (self->_ownerCloudKitEmailAddress)
  {
    [v8 setOwnerCloudKitEmailAddress:?];
  }

  if ([(HDCodableSharingSetupMetadata *)self invitationTokensCount])
  {
    [v8 clearInvitationTokens];
    v4 = [(HDCodableSharingSetupMetadata *)self invitationTokensCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableSharingSetupMetadata *)self invitationTokenAtIndex:i];
        [v8 addInvitationToken:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_syncCircleIdentifier copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSData *)self->_ownerParticipant copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSData *)self->_sourceProfileIdentifier copyWithZone:a3];
  v11 = v5[5];
  v5[5] = v10;

  v12 = [(NSData *)self->_shareParticipant copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSString *)self->_ownerCloudKitEmailAddress copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_invitationTokens;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      v20 = 0;
      do
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * v20) copyWithZone:{a3, v24}];
        [v5 addInvitationToken:v21];

        ++v20;
      }

      while (v18 != v20);
      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((syncCircleIdentifier = self->_syncCircleIdentifier, !(syncCircleIdentifier | v4[6])) || -[NSString isEqual:](syncCircleIdentifier, "isEqual:")) && ((ownerParticipant = self->_ownerParticipant, !(ownerParticipant | v4[3])) || -[NSData isEqual:](ownerParticipant, "isEqual:")) && ((sourceProfileIdentifier = self->_sourceProfileIdentifier, !(sourceProfileIdentifier | v4[5])) || -[NSData isEqual:](sourceProfileIdentifier, "isEqual:")) && ((shareParticipant = self->_shareParticipant, !(shareParticipant | v4[4])) || -[NSData isEqual:](shareParticipant, "isEqual:")) && ((ownerCloudKitEmailAddress = self->_ownerCloudKitEmailAddress, !(ownerCloudKitEmailAddress | v4[2])) || -[NSString isEqual:](ownerCloudKitEmailAddress, "isEqual:")))
  {
    invitationTokens = self->_invitationTokens;
    if (invitationTokens | v4[1])
    {
      v11 = [(NSMutableArray *)invitationTokens isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_syncCircleIdentifier hash];
  v4 = [(NSData *)self->_ownerParticipant hash]^ v3;
  v5 = [(NSData *)self->_sourceProfileIdentifier hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_shareParticipant hash];
  v7 = [(NSString *)self->_ownerCloudKitEmailAddress hash];
  return v6 ^ v7 ^ [(NSMutableArray *)self->_invitationTokens hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 6))
  {
    [(HDCodableSharingSetupMetadata *)self setSyncCircleIdentifier:?];
  }

  if (*(v4 + 3))
  {
    [(HDCodableSharingSetupMetadata *)self setOwnerParticipant:?];
  }

  if (*(v4 + 5))
  {
    [(HDCodableSharingSetupMetadata *)self setSourceProfileIdentifier:?];
  }

  if (*(v4 + 4))
  {
    [(HDCodableSharingSetupMetadata *)self setShareParticipant:?];
  }

  if (*(v4 + 2))
  {
    [(HDCodableSharingSetupMetadata *)self setOwnerCloudKitEmailAddress:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDCodableSharingSetupMetadata *)self addInvitationToken:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end
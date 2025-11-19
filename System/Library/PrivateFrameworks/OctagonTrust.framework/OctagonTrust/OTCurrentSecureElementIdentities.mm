@interface OTCurrentSecureElementIdentities
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTrustedPeerSecureElementIdentities:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation OTCurrentSecureElementIdentities

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  localPeerIdentity = self->_localPeerIdentity;
  v6 = *(v4 + 1);
  if (localPeerIdentity)
  {
    if (v6)
    {
      [(OTSecureElementPeerIdentity *)localPeerIdentity mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(OTCurrentSecureElementIdentities *)self setLocalPeerIdentity:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(v4 + 3);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(OTCurrentSecureElementIdentities *)self addTrustedPeerSecureElementIdentities:*(*(&v15 + 1) + 8 * i), v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  pendingLocalPeerIdentity = self->_pendingLocalPeerIdentity;
  v13 = *(v4 + 2);
  if (pendingLocalPeerIdentity)
  {
    if (v13)
    {
      [(OTSecureElementPeerIdentity *)pendingLocalPeerIdentity mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(OTCurrentSecureElementIdentities *)self setPendingLocalPeerIdentity:?];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (unint64_t)hash
{
  v3 = [(OTSecureElementPeerIdentity *)self->_localPeerIdentity hash];
  v4 = [(NSMutableArray *)self->_trustedPeerSecureElementIdentities hash]^ v3;
  return v4 ^ [(OTSecureElementPeerIdentity *)self->_pendingLocalPeerIdentity hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((localPeerIdentity = self->_localPeerIdentity, !(localPeerIdentity | v4[1])) || -[OTSecureElementPeerIdentity isEqual:](localPeerIdentity, "isEqual:")) && ((trustedPeerSecureElementIdentities = self->_trustedPeerSecureElementIdentities, !(trustedPeerSecureElementIdentities | v4[3])) || -[NSMutableArray isEqual:](trustedPeerSecureElementIdentities, "isEqual:")))
  {
    pendingLocalPeerIdentity = self->_pendingLocalPeerIdentity;
    if (pendingLocalPeerIdentity | v4[2])
    {
      v8 = [(OTSecureElementPeerIdentity *)pendingLocalPeerIdentity isEqual:?];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(OTSecureElementPeerIdentity *)self->_localPeerIdentity copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_trustedPeerSecureElementIdentities;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) copyWithZone:{a3, v18}];
        [v5 addTrustedPeerSecureElementIdentities:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [(OTSecureElementPeerIdentity *)self->_pendingLocalPeerIdentity copyWithZone:a3];
  v15 = v5[2];
  v5[2] = v14;

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_localPeerIdentity)
  {
    [v8 setLocalPeerIdentity:?];
  }

  if ([(OTCurrentSecureElementIdentities *)self trustedPeerSecureElementIdentitiesCount])
  {
    [v8 clearTrustedPeerSecureElementIdentities];
    v4 = [(OTCurrentSecureElementIdentities *)self trustedPeerSecureElementIdentitiesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(OTCurrentSecureElementIdentities *)self trustedPeerSecureElementIdentitiesAtIndex:i];
        [v8 addTrustedPeerSecureElementIdentities:v7];
      }
    }
  }

  if (self->_pendingLocalPeerIdentity)
  {
    [v8 setPendingLocalPeerIdentity:?];
  }
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_localPeerIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_trustedPeerSecureElementIdentities;
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

  if (self->_pendingLocalPeerIdentity)
  {
    PBDataWriterWriteSubmessage();
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  localPeerIdentity = self->_localPeerIdentity;
  if (localPeerIdentity)
  {
    v5 = [(OTSecureElementPeerIdentity *)localPeerIdentity dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"localPeerIdentity"];
  }

  if ([(NSMutableArray *)self->_trustedPeerSecureElementIdentities count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_trustedPeerSecureElementIdentities, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_trustedPeerSecureElementIdentities;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:v12];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [v3 setObject:v6 forKey:@"trustedPeerSecureElementIdentities"];
  }

  pendingLocalPeerIdentity = self->_pendingLocalPeerIdentity;
  if (pendingLocalPeerIdentity)
  {
    v14 = [(OTSecureElementPeerIdentity *)pendingLocalPeerIdentity dictionaryRepresentation];
    [v3 setObject:v14 forKey:@"pendingLocalPeerIdentity"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTCurrentSecureElementIdentities;
  v4 = [(OTCurrentSecureElementIdentities *)&v8 description];
  v5 = [(OTCurrentSecureElementIdentities *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)addTrustedPeerSecureElementIdentities:(id)a3
{
  v4 = a3;
  trustedPeerSecureElementIdentities = self->_trustedPeerSecureElementIdentities;
  v8 = v4;
  if (!trustedPeerSecureElementIdentities)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_trustedPeerSecureElementIdentities;
    self->_trustedPeerSecureElementIdentities = v6;

    v4 = v8;
    trustedPeerSecureElementIdentities = self->_trustedPeerSecureElementIdentities;
  }

  [(NSMutableArray *)trustedPeerSecureElementIdentities addObject:v4];
}

@end
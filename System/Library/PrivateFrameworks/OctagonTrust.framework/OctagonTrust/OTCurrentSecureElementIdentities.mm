@interface OTCurrentSecureElementIdentities
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTrustedPeerSecureElementIdentities:(id)identities;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation OTCurrentSecureElementIdentities

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  localPeerIdentity = self->_localPeerIdentity;
  v6 = *(fromCopy + 1);
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
  v7 = *(fromCopy + 3);
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
  v13 = *(fromCopy + 2);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((localPeerIdentity = self->_localPeerIdentity, !(localPeerIdentity | equalCopy[1])) || -[OTSecureElementPeerIdentity isEqual:](localPeerIdentity, "isEqual:")) && ((trustedPeerSecureElementIdentities = self->_trustedPeerSecureElementIdentities, !(trustedPeerSecureElementIdentities | equalCopy[3])) || -[NSMutableArray isEqual:](trustedPeerSecureElementIdentities, "isEqual:")))
  {
    pendingLocalPeerIdentity = self->_pendingLocalPeerIdentity;
    if (pendingLocalPeerIdentity | equalCopy[2])
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

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(OTSecureElementPeerIdentity *)self->_localPeerIdentity copyWithZone:zone];
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

        v13 = [*(*(&v18 + 1) + 8 * v12) copyWithZone:{zone, v18}];
        [v5 addTrustedPeerSecureElementIdentities:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [(OTSecureElementPeerIdentity *)self->_pendingLocalPeerIdentity copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  v16 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_localPeerIdentity)
  {
    [toCopy setLocalPeerIdentity:?];
  }

  if ([(OTCurrentSecureElementIdentities *)self trustedPeerSecureElementIdentitiesCount])
  {
    [toCopy clearTrustedPeerSecureElementIdentities];
    trustedPeerSecureElementIdentitiesCount = [(OTCurrentSecureElementIdentities *)self trustedPeerSecureElementIdentitiesCount];
    if (trustedPeerSecureElementIdentitiesCount)
    {
      v5 = trustedPeerSecureElementIdentitiesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(OTCurrentSecureElementIdentities *)self trustedPeerSecureElementIdentitiesAtIndex:i];
        [toCopy addTrustedPeerSecureElementIdentities:v7];
      }
    }
  }

  if (self->_pendingLocalPeerIdentity)
  {
    [toCopy setPendingLocalPeerIdentity:?];
  }
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x1E69E9840];
  toCopy = to;
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
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  localPeerIdentity = self->_localPeerIdentity;
  if (localPeerIdentity)
  {
    dictionaryRepresentation = [(OTSecureElementPeerIdentity *)localPeerIdentity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"localPeerIdentity"];
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

          dictionaryRepresentation2 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"trustedPeerSecureElementIdentities"];
  }

  pendingLocalPeerIdentity = self->_pendingLocalPeerIdentity;
  if (pendingLocalPeerIdentity)
  {
    dictionaryRepresentation3 = [(OTSecureElementPeerIdentity *)pendingLocalPeerIdentity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"pendingLocalPeerIdentity"];
  }

  v15 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = OTCurrentSecureElementIdentities;
  v4 = [(OTCurrentSecureElementIdentities *)&v8 description];
  dictionaryRepresentation = [(OTCurrentSecureElementIdentities *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addTrustedPeerSecureElementIdentities:(id)identities
{
  identitiesCopy = identities;
  trustedPeerSecureElementIdentities = self->_trustedPeerSecureElementIdentities;
  v8 = identitiesCopy;
  if (!trustedPeerSecureElementIdentities)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_trustedPeerSecureElementIdentities;
    self->_trustedPeerSecureElementIdentities = v6;

    identitiesCopy = v8;
    trustedPeerSecureElementIdentities = self->_trustedPeerSecureElementIdentities;
  }

  [(NSMutableArray *)trustedPeerSecureElementIdentities addObject:identitiesCopy];
}

@end
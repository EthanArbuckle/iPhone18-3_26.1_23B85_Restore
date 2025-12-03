@interface NSPPrivacyProxyTokenInfo
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTokenRequestList:(id)list;
- (void)addUnactivatedTokenList:(id)list;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyTokenInfo

- (void)addUnactivatedTokenList:(id)list
{
  listCopy = list;
  unactivatedTokenLists = self->_unactivatedTokenLists;
  v8 = listCopy;
  if (!unactivatedTokenLists)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_unactivatedTokenLists;
    self->_unactivatedTokenLists = v6;

    listCopy = v8;
    unactivatedTokenLists = self->_unactivatedTokenLists;
  }

  [(NSMutableArray *)unactivatedTokenLists addObject:listCopy];
}

- (void)addTokenRequestList:(id)list
{
  listCopy = list;
  tokenRequestLists = self->_tokenRequestLists;
  v8 = listCopy;
  if (!tokenRequestLists)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_tokenRequestLists;
    self->_tokenRequestLists = v6;

    listCopy = v8;
    tokenRequestLists = self->_tokenRequestLists;
  }

  [(NSMutableArray *)tokenRequestLists addObject:listCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyTokenInfo;
  v4 = [(NSPPrivacyProxyTokenInfo *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyTokenInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  proxyURL = self->_proxyURL;
  if (proxyURL)
  {
    [dictionary setObject:proxyURL forKey:@"proxyURL"];
  }

  tokenKeyID = self->_tokenKeyID;
  if (tokenKeyID)
  {
    [v4 setObject:tokenKeyID forKey:@"tokenKeyID"];
  }

  unactivatedTokenLists = self->_unactivatedTokenLists;
  if (unactivatedTokenLists)
  {
    [v4 setObject:unactivatedTokenLists forKey:@"unactivatedTokenList"];
  }

  vendor = self->_vendor;
  if (vendor)
  {
    [v4 setObject:vendor forKey:@"vendor"];
  }

  tokenRequestLists = self->_tokenRequestLists;
  if (tokenRequestLists)
  {
    [v4 setObject:tokenRequestLists forKey:@"tokenRequestList"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v29 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (!self->_proxyURL)
  {
    __assert_rtn("[NSPPrivacyProxyTokenInfo writeTo:]", "NSPPrivacyProxyTokenInfo.m", 187, "nil != self->_proxyURL");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_tokenKeyID)
  {
    __assert_rtn("[NSPPrivacyProxyTokenInfo writeTo:]", "NSPPrivacyProxyTokenInfo.m", 192, "nil != self->_tokenKeyID");
  }

  PBDataWriterWriteDataField();
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_unactivatedTokenLists;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteDataField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  if (self->_vendor)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_tokenRequestLists;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteDataField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setProxyURL:self->_proxyURL];
  [toCopy setTokenKeyID:self->_tokenKeyID];
  if ([(NSPPrivacyProxyTokenInfo *)self unactivatedTokenListsCount])
  {
    [toCopy clearUnactivatedTokenLists];
    unactivatedTokenListsCount = [(NSPPrivacyProxyTokenInfo *)self unactivatedTokenListsCount];
    if (unactivatedTokenListsCount)
    {
      v5 = unactivatedTokenListsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSPPrivacyProxyTokenInfo *)self unactivatedTokenListAtIndex:i];
        [toCopy addUnactivatedTokenList:v7];
      }
    }
  }

  if (self->_vendor)
  {
    [toCopy setVendor:?];
  }

  if ([(NSPPrivacyProxyTokenInfo *)self tokenRequestListsCount])
  {
    [toCopy clearTokenRequestLists];
    tokenRequestListsCount = [(NSPPrivacyProxyTokenInfo *)self tokenRequestListsCount];
    if (tokenRequestListsCount)
    {
      v9 = tokenRequestListsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NSPPrivacyProxyTokenInfo *)self tokenRequestListAtIndex:j];
        [toCopy addTokenRequestList:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_proxyURL copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_tokenKeyID copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = self->_unactivatedTokenLists;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v31;
    do
    {
      v14 = 0;
      do
      {
        if (*v31 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v30 + 1) + 8 * v14) copyWithZone:zone];
        [v5 addUnactivatedTokenList:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v12);
  }

  v16 = [(NSString *)self->_vendor copyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_tokenRequestLists;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * v22) copyWithZone:{zone, v26}];
        [v5 addTokenRequestList:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((proxyURL = self->_proxyURL, !(proxyURL | equalCopy[1])) || -[NSString isEqual:](proxyURL, "isEqual:")) && ((tokenKeyID = self->_tokenKeyID, !(tokenKeyID | equalCopy[2])) || -[NSData isEqual:](tokenKeyID, "isEqual:")) && ((unactivatedTokenLists = self->_unactivatedTokenLists, !(unactivatedTokenLists | equalCopy[4])) || -[NSMutableArray isEqual:](unactivatedTokenLists, "isEqual:")) && ((vendor = self->_vendor, !(vendor | equalCopy[5])) || -[NSString isEqual:](vendor, "isEqual:")))
  {
    tokenRequestLists = self->_tokenRequestLists;
    if (tokenRequestLists | equalCopy[3])
    {
      v10 = [(NSMutableArray *)tokenRequestLists isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_proxyURL hash];
  v4 = [(NSData *)self->_tokenKeyID hash]^ v3;
  v5 = [(NSMutableArray *)self->_unactivatedTokenLists hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_vendor hash];
  return v6 ^ [(NSMutableArray *)self->_tokenRequestLists hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(NSPPrivacyProxyTokenInfo *)self setProxyURL:?];
  }

  if (*(fromCopy + 2))
  {
    [(NSPPrivacyProxyTokenInfo *)self setTokenKeyID:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = *(fromCopy + 4);
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NSPPrivacyProxyTokenInfo *)self addUnactivatedTokenList:*(*(&v20 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 5))
  {
    [(NSPPrivacyProxyTokenInfo *)self setVendor:?];
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = *(fromCopy + 3);
  v11 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NSPPrivacyProxyTokenInfo *)self addTokenRequestList:*(*(&v16 + 1) + 8 * j), v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }

  v15 = *MEMORY[0x1E69E9840];
}

@end
@interface NSPPrivacyProxyAuxiliaryAuthInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsAuthType:(id)a3;
- (unint64_t)hash;
- (void)addContentList:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NSPPrivacyProxyAuxiliaryAuthInfo

- (int)StringAsAuthType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HPKE"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"ATHM_TOKEN"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"ATHM_TOKEN_REQUEST_RESPONSE"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"OAI_COST_JWT"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addContentList:(id)a3
{
  v4 = a3;
  contentLists = self->_contentLists;
  v8 = v4;
  if (!contentLists)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_contentLists;
    self->_contentLists = v6;

    v4 = v8;
    contentLists = self->_contentLists;
  }

  [(NSMutableArray *)contentLists addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyAuxiliaryAuthInfo;
  v4 = [(NSPPrivacyProxyAuxiliaryAuthInfo *)&v8 description];
  v5 = [(NSPPrivacyProxyAuxiliaryAuthInfo *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  authType = self->_authType;
  if (authType >= 4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_authType];
  }

  else
  {
    v5 = off_1E7A31258[authType];
  }

  [v3 setObject:v5 forKey:@"authType"];

  label = self->_label;
  if (label)
  {
    [v3 setObject:label forKey:@"label"];
  }

  contentLists = self->_contentLists;
  if (contentLists)
  {
    [v3 setObject:contentLists forKey:@"contentList"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  authType = self->_authType;
  PBDataWriterWriteInt32Field();
  if (self->_label)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_contentLists;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteDataField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  v8[2] = self->_authType;
  if (self->_label)
  {
    [v8 setLabel:?];
  }

  if ([(NSPPrivacyProxyAuxiliaryAuthInfo *)self contentListsCount])
  {
    [v8 clearContentLists];
    v4 = [(NSPPrivacyProxyAuxiliaryAuthInfo *)self contentListsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSPPrivacyProxyAuxiliaryAuthInfo *)self contentListAtIndex:i];
        [v8 addContentList:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 8) = self->_authType;
  v6 = [(NSString *)self->_label copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_contentLists;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{a3, v16}];
        [v5 addContentList:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_authType == *(v4 + 2) && ((label = self->_label, !(label | v4[3])) || -[NSString isEqual:](label, "isEqual:")))
  {
    contentLists = self->_contentLists;
    if (contentLists | v4[2])
    {
      v7 = [(NSMutableArray *)contentLists isEqual:?];
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

- (unint64_t)hash
{
  v3 = 2654435761 * self->_authType;
  v4 = [(NSString *)self->_label hash];
  return v4 ^ [(NSMutableArray *)self->_contentLists hash]^ v3;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_authType = *(v4 + 2);
  if (*(v4 + 3))
  {
    [(NSPPrivacyProxyAuxiliaryAuthInfo *)self setLabel:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 2);
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

        [(NSPPrivacyProxyAuxiliaryAuthInfo *)self addContentList:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end
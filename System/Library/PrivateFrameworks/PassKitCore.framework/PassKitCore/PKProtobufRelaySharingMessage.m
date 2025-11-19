@interface PKProtobufRelaySharingMessage
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMailboxURLs:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufRelaySharingMessage

- (void)addMailboxURLs:(id)a3
{
  v4 = a3;
  mailboxURLs = self->_mailboxURLs;
  v8 = v4;
  if (!mailboxURLs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_mailboxURLs;
    self->_mailboxURLs = v6;

    v4 = v8;
    mailboxURLs = self->_mailboxURLs;
  }

  [(NSMutableArray *)mailboxURLs addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufRelaySharingMessage;
  v4 = [(PKProtobufRelaySharingMessage *)&v8 description];
  v5 = [(PKProtobufRelaySharingMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [v3 setObject:v4 forKey:@"version"];

  title = self->_title;
  if (title)
  {
    [v3 setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [v3 setObject:subtitle forKey:@"subtitle"];
  }

  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage)
  {
    [v3 setObject:thumbnailImage forKey:@"thumbnailImage"];
  }

  status = self->_status;
  if (status)
  {
    [v3 setObject:status forKey:@"status"];
  }

  mailboxURLs = self->_mailboxURLs;
  if (mailboxURLs)
  {
    [v3 setObject:mailboxURLs forKey:@"mailboxURLs"];
  }

  localData = self->_localData;
  if (localData)
  {
    [v3 setObject:localData forKey:@"localData"];
  }

  provisioningCredentialHash = self->_provisioningCredentialHash;
  if (provisioningCredentialHash)
  {
    [v3 setObject:provisioningCredentialHash forKey:@"provisioningCredentialHash"];
  }

  carKeyReaderIdentifier = self->_carKeyReaderIdentifier;
  if (carKeyReaderIdentifier)
  {
    [v3 setObject:carKeyReaderIdentifier forKey:@"carKeyReaderIdentifier"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  PBDataWriterWriteUint32Field();
  if (self->_title)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_subtitle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_thumbnailImage)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_status)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_mailboxURLs;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (self->_localData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_provisioningCredentialHash)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_carKeyReaderIdentifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  v9[18] = self->_version;
  if (self->_title)
  {
    [v9 setTitle:?];
  }

  if (self->_subtitle)
  {
    [v9 setSubtitle:?];
  }

  if (self->_thumbnailImage)
  {
    [v9 setThumbnailImage:?];
  }

  if (self->_status)
  {
    [v9 setStatus:?];
  }

  if ([(PKProtobufRelaySharingMessage *)self mailboxURLsCount])
  {
    [v9 clearMailboxURLs];
    v4 = [(PKProtobufRelaySharingMessage *)self mailboxURLsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PKProtobufRelaySharingMessage *)self mailboxURLsAtIndex:i];
        [v9 addMailboxURLs:v7];
      }
    }
  }

  if (self->_localData)
  {
    [v9 setLocalData:?];
  }

  v8 = v9;
  if (self->_provisioningCredentialHash)
  {
    [v9 setProvisioningCredentialHash:?];
    v8 = v9;
  }

  if (self->_carKeyReaderIdentifier)
  {
    [v9 setCarKeyReaderIdentifier:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  *(v5 + 72) = self->_version;
  v6 = [(NSString *)self->_title copyWithZone:a3];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:a3];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSData *)self->_thumbnailImage copyWithZone:a3];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_status copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = self->_mailboxURLs;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      v18 = 0;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v27 + 1) + 8 * v18) copyWithZone:{a3, v27}];
        [v5 addMailboxURLs:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = [(NSData *)self->_localData copyWithZone:a3];
  v21 = *(v5 + 16);
  *(v5 + 16) = v20;

  v22 = [(NSString *)self->_provisioningCredentialHash copyWithZone:a3];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  v24 = [(NSString *)self->_carKeyReaderIdentifier copyWithZone:a3];
  v25 = *(v5 + 8);
  *(v5 + 8) = v24;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && self->_version == *(v4 + 18) && ((title = self->_title, !(title | v4[8])) || -[NSString isEqual:](title, "isEqual:")) && ((subtitle = self->_subtitle, !(subtitle | v4[6])) || -[NSString isEqual:](subtitle, "isEqual:")) && ((thumbnailImage = self->_thumbnailImage, !(thumbnailImage | v4[7])) || -[NSData isEqual:](thumbnailImage, "isEqual:")) && ((status = self->_status, !(status | v4[5])) || -[NSString isEqual:](status, "isEqual:")) && ((mailboxURLs = self->_mailboxURLs, !(mailboxURLs | v4[3])) || -[NSMutableArray isEqual:](mailboxURLs, "isEqual:")) && ((localData = self->_localData, !(localData | v4[2])) || -[NSData isEqual:](localData, "isEqual:")) && ((provisioningCredentialHash = self->_provisioningCredentialHash, !(provisioningCredentialHash | v4[4])) || -[NSString isEqual:](provisioningCredentialHash, "isEqual:")))
  {
    carKeyReaderIdentifier = self->_carKeyReaderIdentifier;
    if (carKeyReaderIdentifier | v4[1])
    {
      v13 = [(NSString *)carKeyReaderIdentifier isEqual:?];
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  v3 = 2654435761 * self->_version;
  v4 = [(NSString *)self->_title hash];
  v5 = v4 ^ [(NSString *)self->_subtitle hash];
  v6 = v5 ^ [(NSData *)self->_thumbnailImage hash];
  v7 = v6 ^ [(NSString *)self->_status hash]^ v3;
  v8 = [(NSMutableArray *)self->_mailboxURLs hash];
  v9 = v8 ^ [(NSData *)self->_localData hash];
  v10 = v9 ^ [(NSString *)self->_provisioningCredentialHash hash];
  return v7 ^ v10 ^ [(NSString *)self->_carKeyReaderIdentifier hash];
}

- (void)mergeFrom:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  self->_version = *(v4 + 18);
  if (*(v4 + 8))
  {
    [(PKProtobufRelaySharingMessage *)self setTitle:?];
  }

  if (*(v4 + 6))
  {
    [(PKProtobufRelaySharingMessage *)self setSubtitle:?];
  }

  if (*(v4 + 7))
  {
    [(PKProtobufRelaySharingMessage *)self setThumbnailImage:?];
  }

  if (*(v4 + 5))
  {
    [(PKProtobufRelaySharingMessage *)self setStatus:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(v4 + 3);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PKProtobufRelaySharingMessage *)self addMailboxURLs:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(v4 + 2))
  {
    [(PKProtobufRelaySharingMessage *)self setLocalData:?];
  }

  if (*(v4 + 4))
  {
    [(PKProtobufRelaySharingMessage *)self setProvisioningCredentialHash:?];
  }

  if (*(v4 + 1))
  {
    [(PKProtobufRelaySharingMessage *)self setCarKeyReaderIdentifier:?];
  }
}

@end
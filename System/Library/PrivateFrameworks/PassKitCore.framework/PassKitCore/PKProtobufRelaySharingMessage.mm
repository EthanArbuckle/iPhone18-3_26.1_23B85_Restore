@interface PKProtobufRelaySharingMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMailboxURLs:(id)ls;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufRelaySharingMessage

- (void)addMailboxURLs:(id)ls
{
  lsCopy = ls;
  mailboxURLs = self->_mailboxURLs;
  v8 = lsCopy;
  if (!mailboxURLs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_mailboxURLs;
    self->_mailboxURLs = v6;

    lsCopy = v8;
    mailboxURLs = self->_mailboxURLs;
  }

  [(NSMutableArray *)mailboxURLs addObject:lsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufRelaySharingMessage;
  v4 = [(PKProtobufRelaySharingMessage *)&v8 description];
  dictionaryRepresentation = [(PKProtobufRelaySharingMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
  [dictionary setObject:v4 forKey:@"version"];

  title = self->_title;
  if (title)
  {
    [dictionary setObject:title forKey:@"title"];
  }

  subtitle = self->_subtitle;
  if (subtitle)
  {
    [dictionary setObject:subtitle forKey:@"subtitle"];
  }

  thumbnailImage = self->_thumbnailImage;
  if (thumbnailImage)
  {
    [dictionary setObject:thumbnailImage forKey:@"thumbnailImage"];
  }

  status = self->_status;
  if (status)
  {
    [dictionary setObject:status forKey:@"status"];
  }

  mailboxURLs = self->_mailboxURLs;
  if (mailboxURLs)
  {
    [dictionary setObject:mailboxURLs forKey:@"mailboxURLs"];
  }

  localData = self->_localData;
  if (localData)
  {
    [dictionary setObject:localData forKey:@"localData"];
  }

  provisioningCredentialHash = self->_provisioningCredentialHash;
  if (provisioningCredentialHash)
  {
    [dictionary setObject:provisioningCredentialHash forKey:@"provisioningCredentialHash"];
  }

  carKeyReaderIdentifier = self->_carKeyReaderIdentifier;
  if (carKeyReaderIdentifier)
  {
    [dictionary setObject:carKeyReaderIdentifier forKey:@"carKeyReaderIdentifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[18] = self->_version;
  if (self->_title)
  {
    [toCopy setTitle:?];
  }

  if (self->_subtitle)
  {
    [toCopy setSubtitle:?];
  }

  if (self->_thumbnailImage)
  {
    [toCopy setThumbnailImage:?];
  }

  if (self->_status)
  {
    [toCopy setStatus:?];
  }

  if ([(PKProtobufRelaySharingMessage *)self mailboxURLsCount])
  {
    [toCopy clearMailboxURLs];
    mailboxURLsCount = [(PKProtobufRelaySharingMessage *)self mailboxURLsCount];
    if (mailboxURLsCount)
    {
      v5 = mailboxURLsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PKProtobufRelaySharingMessage *)self mailboxURLsAtIndex:i];
        [toCopy addMailboxURLs:v7];
      }
    }
  }

  if (self->_localData)
  {
    [toCopy setLocalData:?];
  }

  v8 = toCopy;
  if (self->_provisioningCredentialHash)
  {
    [toCopy setProvisioningCredentialHash:?];
    v8 = toCopy;
  }

  if (self->_carKeyReaderIdentifier)
  {
    [toCopy setCarKeyReaderIdentifier:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 72) = self->_version;
  v6 = [(NSString *)self->_title copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  v8 = [(NSString *)self->_subtitle copyWithZone:zone];
  v9 = *(v5 + 48);
  *(v5 + 48) = v8;

  v10 = [(NSData *)self->_thumbnailImage copyWithZone:zone];
  v11 = *(v5 + 56);
  *(v5 + 56) = v10;

  v12 = [(NSString *)self->_status copyWithZone:zone];
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

        v19 = [*(*(&v27 + 1) + 8 * v18) copyWithZone:{zone, v27}];
        [v5 addMailboxURLs:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = [(NSData *)self->_localData copyWithZone:zone];
  v21 = *(v5 + 16);
  *(v5 + 16) = v20;

  v22 = [(NSString *)self->_provisioningCredentialHash copyWithZone:zone];
  v23 = *(v5 + 32);
  *(v5 + 32) = v22;

  v24 = [(NSString *)self->_carKeyReaderIdentifier copyWithZone:zone];
  v25 = *(v5 + 8);
  *(v5 + 8) = v24;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_version == *(equalCopy + 18) && ((title = self->_title, !(title | equalCopy[8])) || -[NSString isEqual:](title, "isEqual:")) && ((subtitle = self->_subtitle, !(subtitle | equalCopy[6])) || -[NSString isEqual:](subtitle, "isEqual:")) && ((thumbnailImage = self->_thumbnailImage, !(thumbnailImage | equalCopy[7])) || -[NSData isEqual:](thumbnailImage, "isEqual:")) && ((status = self->_status, !(status | equalCopy[5])) || -[NSString isEqual:](status, "isEqual:")) && ((mailboxURLs = self->_mailboxURLs, !(mailboxURLs | equalCopy[3])) || -[NSMutableArray isEqual:](mailboxURLs, "isEqual:")) && ((localData = self->_localData, !(localData | equalCopy[2])) || -[NSData isEqual:](localData, "isEqual:")) && ((provisioningCredentialHash = self->_provisioningCredentialHash, !(provisioningCredentialHash | equalCopy[4])) || -[NSString isEqual:](provisioningCredentialHash, "isEqual:")))
  {
    carKeyReaderIdentifier = self->_carKeyReaderIdentifier;
    if (carKeyReaderIdentifier | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  self->_version = *(fromCopy + 18);
  if (*(fromCopy + 8))
  {
    [(PKProtobufRelaySharingMessage *)self setTitle:?];
  }

  if (*(fromCopy + 6))
  {
    [(PKProtobufRelaySharingMessage *)self setSubtitle:?];
  }

  if (*(fromCopy + 7))
  {
    [(PKProtobufRelaySharingMessage *)self setThumbnailImage:?];
  }

  if (*(fromCopy + 5))
  {
    [(PKProtobufRelaySharingMessage *)self setStatus:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 3);
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

  if (*(fromCopy + 2))
  {
    [(PKProtobufRelaySharingMessage *)self setLocalData:?];
  }

  if (*(fromCopy + 4))
  {
    [(PKProtobufRelaySharingMessage *)self setProvisioningCredentialHash:?];
  }

  if (*(fromCopy + 1))
  {
    [(PKProtobufRelaySharingMessage *)self setCarKeyReaderIdentifier:?];
  }
}

@end
@interface NPKProtoStandaloneRequestHeader
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCachedHeroImages:(id)images;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandaloneRequestHeader

- (void)addCachedHeroImages:(id)images
{
  imagesCopy = images;
  cachedHeroImages = self->_cachedHeroImages;
  v8 = imagesCopy;
  if (!cachedHeroImages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cachedHeroImages;
    self->_cachedHeroImages = v6;

    imagesCopy = v8;
    cachedHeroImages = self->_cachedHeroImages;
  }

  [(NSMutableArray *)cachedHeroImages addObject:imagesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandaloneRequestHeader;
  v4 = [(NPKProtoStandaloneRequestHeader *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandaloneRequestHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self->_protocolVersion == 1)
  {
    v4 = @"Version1";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_protocolVersion];
  }

  [dictionary setObject:v4 forKey:@"protocolVersion"];

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [dictionary setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  stepIdentifier = self->_stepIdentifier;
  if (stepIdentifier)
  {
    [dictionary setObject:stepIdentifier forKey:@"stepIdentifier"];
  }

  if ([(NSMutableArray *)self->_cachedHeroImages count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cachedHeroImages, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = self->_cachedHeroImages;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"cachedHeroImages"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  protocolVersion = self->_protocolVersion;
  PBDataWriterWriteInt32Field();
  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_stepIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_cachedHeroImages;
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
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[4] = self->_protocolVersion;
  if (self->_sessionIdentifier)
  {
    [toCopy setSessionIdentifier:?];
  }

  if (self->_stepIdentifier)
  {
    [toCopy setStepIdentifier:?];
  }

  if ([(NPKProtoStandaloneRequestHeader *)self cachedHeroImagesCount])
  {
    [toCopy clearCachedHeroImages];
    cachedHeroImagesCount = [(NPKProtoStandaloneRequestHeader *)self cachedHeroImagesCount];
    if (cachedHeroImagesCount)
    {
      v5 = cachedHeroImagesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStandaloneRequestHeader *)self cachedHeroImagesAtIndex:i];
        [toCopy addCachedHeroImages:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_protocolVersion;
  v6 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_stepIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = self->_cachedHeroImages;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      v14 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v18 + 1) + 8 * v14) copyWithZone:{zone, v18}];
        [v5 addCachedHeroImages:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_protocolVersion == *(equalCopy + 4) && ((sessionIdentifier = self->_sessionIdentifier, !(sessionIdentifier | equalCopy[3])) || -[NSString isEqual:](sessionIdentifier, "isEqual:")) && ((stepIdentifier = self->_stepIdentifier, !(stepIdentifier | equalCopy[4])) || -[NSString isEqual:](stepIdentifier, "isEqual:")))
  {
    cachedHeroImages = self->_cachedHeroImages;
    if (cachedHeroImages | equalCopy[1])
    {
      v8 = [(NSMutableArray *)cachedHeroImages isEqual:?];
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

- (unint64_t)hash
{
  v3 = 2654435761 * self->_protocolVersion;
  v4 = [(NSString *)self->_sessionIdentifier hash];
  v5 = v4 ^ [(NSString *)self->_stepIdentifier hash];
  return v5 ^ [(NSMutableArray *)self->_cachedHeroImages hash]^ v3;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  self->_protocolVersion = *(fromCopy + 4);
  if (*(fromCopy + 3))
  {
    [(NPKProtoStandaloneRequestHeader *)self setSessionIdentifier:?];
  }

  if (*(fromCopy + 4))
  {
    [(NPKProtoStandaloneRequestHeader *)self setStepIdentifier:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(fromCopy + 1);
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

        [(NPKProtoStandaloneRequestHeader *)self addCachedHeroImages:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end
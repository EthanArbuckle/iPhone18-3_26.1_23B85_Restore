@interface NSPPrivacyProxyObliviousHTTPConfig
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsObliviousHTTPType:(id)type;
- (int)obliviousHTTPType;
- (unint64_t)hash;
- (void)addObliviousTargets:(id)targets;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyObliviousHTTPConfig

- (void)addObliviousTargets:(id)targets
{
  targetsCopy = targets;
  obliviousTargets = self->_obliviousTargets;
  v8 = targetsCopy;
  if (!obliviousTargets)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_obliviousTargets;
    self->_obliviousTargets = v6;

    targetsCopy = v8;
    obliviousTargets = self->_obliviousTargets;
  }

  [(NSMutableArray *)obliviousTargets addObject:targetsCopy];
}

- (int)obliviousHTTPType
{
  if (*&self->_has)
  {
    return self->_obliviousHTTPType;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsObliviousHTTPType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"DEFAULT"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"CHUNKED"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CONTEXT"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyObliviousHTTPConfig;
  v4 = [(NSPPrivacyProxyObliviousHTTPConfig *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyObliviousHTTPConfig *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v24 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_obliviousTargets count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_obliviousTargets, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_obliviousTargets;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v19 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"obliviousTargets"];
  }

  obliviousHTTPConfig = self->_obliviousHTTPConfig;
  if (obliviousHTTPConfig)
  {
    [dictionary setObject:obliviousHTTPConfig forKey:@"obliviousHTTPConfig"];
  }

  if (*&self->_has)
  {
    obliviousHTTPType = self->_obliviousHTTPType;
    if (obliviousHTTPType >= 3)
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_obliviousHTTPType];
    }

    else
    {
      v13 = off_1E7A309F8[obliviousHTTPType];
    }

    [dictionary setObject:v13 forKey:@"obliviousHTTPType"];
  }

  transparencyKeyBundle = self->_transparencyKeyBundle;
  if (transparencyKeyBundle)
  {
    [dictionary setObject:transparencyKeyBundle forKey:@"transparencyKeyBundle"];
  }

  transparencyProof = self->_transparencyProof;
  if (transparencyProof)
  {
    [dictionary setObject:transparencyProof forKey:@"transparencyProof"];
  }

  transparencyInternalProof = self->_transparencyInternalProof;
  if (transparencyInternalProof)
  {
    [dictionary setObject:transparencyInternalProof forKey:@"transparencyInternalProof"];
  }

  v17 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_obliviousTargets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (!self->_obliviousHTTPConfig)
  {
    __assert_rtn("[NSPPrivacyProxyObliviousHTTPConfig writeTo:]", "NSPPrivacyProxyObliviousHTTPConfig.m", 227, "nil != self->_obliviousHTTPConfig");
  }

  PBDataWriterWriteDataField();
  if (*&self->_has)
  {
    obliviousHTTPType = self->_obliviousHTTPType;
    PBDataWriterWriteInt32Field();
  }

  if (self->_transparencyKeyBundle)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_transparencyProof)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_transparencyInternalProof)
  {
    PBDataWriterWriteDataField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NSPPrivacyProxyObliviousHTTPConfig *)self obliviousTargetsCount])
  {
    [toCopy clearObliviousTargets];
    obliviousTargetsCount = [(NSPPrivacyProxyObliviousHTTPConfig *)self obliviousTargetsCount];
    if (obliviousTargetsCount)
    {
      v5 = obliviousTargetsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NSPPrivacyProxyObliviousHTTPConfig *)self obliviousTargetsAtIndex:i];
        [toCopy addObliviousTargets:v7];
      }
    }
  }

  [toCopy setObliviousHTTPConfig:self->_obliviousHTTPConfig];
  v8 = toCopy;
  if (*&self->_has)
  {
    *(toCopy + 4) = self->_obliviousHTTPType;
    *(toCopy + 56) |= 1u;
  }

  if (self->_transparencyKeyBundle)
  {
    [toCopy setTransparencyKeyBundle:?];
    v8 = toCopy;
  }

  if (self->_transparencyProof)
  {
    [toCopy setTransparencyProof:?];
    v8 = toCopy;
  }

  if (self->_transparencyInternalProof)
  {
    [toCopy setTransparencyInternalProof:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = self->_obliviousTargets;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v22 + 1) + 8 * i) copyWithZone:{zone, v22}];
        [v5 addObliviousTargets:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v12 = [(NSData *)self->_obliviousHTTPConfig copyWithZone:zone];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_obliviousHTTPType;
    *(v5 + 56) |= 1u;
  }

  v14 = [(NSData *)self->_transparencyKeyBundle copyWithZone:zone, v22];
  v15 = *(v5 + 40);
  *(v5 + 40) = v14;

  v16 = [(NSData *)self->_transparencyProof copyWithZone:zone];
  v17 = *(v5 + 48);
  *(v5 + 48) = v16;

  v18 = [(NSData *)self->_transparencyInternalProof copyWithZone:zone];
  v19 = *(v5 + 32);
  *(v5 + 32) = v18;

  v20 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  obliviousTargets = self->_obliviousTargets;
  if (obliviousTargets | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)obliviousTargets isEqual:?])
    {
      goto LABEL_17;
    }
  }

  obliviousHTTPConfig = self->_obliviousHTTPConfig;
  if (obliviousHTTPConfig | *(equalCopy + 1))
  {
    if (![(NSData *)obliviousHTTPConfig isEqual:?])
    {
      goto LABEL_17;
    }
  }

  v7 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_obliviousHTTPType != *(equalCopy + 4))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  transparencyKeyBundle = self->_transparencyKeyBundle;
  if (transparencyKeyBundle | *(equalCopy + 5) && ![(NSData *)transparencyKeyBundle isEqual:?])
  {
    goto LABEL_17;
  }

  transparencyProof = self->_transparencyProof;
  if (transparencyProof | *(equalCopy + 6))
  {
    if (![(NSData *)transparencyProof isEqual:?])
    {
      goto LABEL_17;
    }
  }

  transparencyInternalProof = self->_transparencyInternalProof;
  if (transparencyInternalProof | *(equalCopy + 4))
  {
    v11 = [(NSData *)transparencyInternalProof isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_18:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_obliviousTargets hash];
  v4 = [(NSData *)self->_obliviousHTTPConfig hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_obliviousHTTPType;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSData *)self->_transparencyKeyBundle hash];
  v7 = [(NSData *)self->_transparencyProof hash];
  return v6 ^ v7 ^ [(NSData *)self->_transparencyInternalProof hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = *(fromCopy + 3);
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

        [(NSPPrivacyProxyObliviousHTTPConfig *)self addObliviousTargets:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 1))
  {
    [(NSPPrivacyProxyObliviousHTTPConfig *)self setObliviousHTTPConfig:?];
  }

  if (*(fromCopy + 56))
  {
    self->_obliviousHTTPType = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(NSPPrivacyProxyObliviousHTTPConfig *)self setTransparencyKeyBundle:?];
  }

  if (*(fromCopy + 6))
  {
    [(NSPPrivacyProxyObliviousHTTPConfig *)self setTransparencyProof:?];
  }

  if (*(fromCopy + 4))
  {
    [(NSPPrivacyProxyObliviousHTTPConfig *)self setTransparencyInternalProof:?];
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end
@interface _MRNowPlayingClientProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsNowPlayingVisibility:(id)visibility;
- (int)nowPlayingVisibility;
- (unint64_t)hash;
- (void)addExtendedBundleIdentifierHierarchy:(id)hierarchy;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIsEmptyDeprecated:(BOOL)deprecated;
- (void)setHasProcessIdentifier:(BOOL)identifier;
- (void)setHasProcessUserIdentifier:(BOOL)identifier;
- (void)writeTo:(id)to;
@end

@implementation _MRNowPlayingClientProtobuf

- (int)nowPlayingVisibility
{
  if (*&self->_has)
  {
    return self->_nowPlayingVisibility;
  }

  else
  {
    return 0;
  }
}

- (void)setHasProcessIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasProcessUserIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsNowPlayingVisibility:(id)visibility
{
  visibilityCopy = visibility;
  if ([visibilityCopy isEqualToString:@"Undefined"])
  {
    v4 = 0;
  }

  else if ([visibilityCopy isEqualToString:@"AlwaysVisible"])
  {
    v4 = 1;
  }

  else if ([visibilityCopy isEqualToString:@"VisibleWhenBackgrounded"])
  {
    v4 = 2;
  }

  else if ([visibilityCopy isEqualToString:@"NeverVisible"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addExtendedBundleIdentifierHierarchy:(id)hierarchy
{
  hierarchyCopy = hierarchy;
  extendedBundleIdentifierHierarchys = self->_extendedBundleIdentifierHierarchys;
  v8 = hierarchyCopy;
  if (!extendedBundleIdentifierHierarchys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_extendedBundleIdentifierHierarchys;
    self->_extendedBundleIdentifierHierarchys = v6;

    hierarchyCopy = v8;
    extendedBundleIdentifierHierarchys = self->_extendedBundleIdentifierHierarchys;
  }

  [(NSMutableArray *)extendedBundleIdentifierHierarchys addObject:hierarchyCopy];
}

- (void)setHasIsEmptyDeprecated:(BOOL)deprecated
{
  if (deprecated)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRNowPlayingClientProtobuf;
  v4 = [(_MRNowPlayingClientProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRNowPlayingClientProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:self->_processIdentifier];
    [dictionary setObject:v4 forKey:@"processIdentifier"];
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    [dictionary setObject:bundleIdentifier forKey:@"bundleIdentifier"];
  }

  parentApplicationBundleIdentifier = self->_parentApplicationBundleIdentifier;
  if (parentApplicationBundleIdentifier)
  {
    [dictionary setObject:parentApplicationBundleIdentifier forKey:@"parentApplicationBundleIdentifier"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:self->_processUserIdentifier];
    [dictionary setObject:v8 forKey:@"processUserIdentifier"];

    has = self->_has;
  }

  if (has)
  {
    nowPlayingVisibility = self->_nowPlayingVisibility;
    if (nowPlayingVisibility >= 4)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_nowPlayingVisibility];
    }

    else
    {
      v10 = off_1E76A1670[nowPlayingVisibility];
    }

    [dictionary setObject:v10 forKey:@"nowPlayingVisibility"];
  }

  tintColor = self->_tintColor;
  if (tintColor)
  {
    dictionaryRepresentation = [(_MRColorProtobuf *)tintColor dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"tintColor"];
  }

  displayName = self->_displayName;
  if (displayName)
  {
    [dictionary setObject:displayName forKey:@"displayName"];
  }

  extendedBundleIdentifierHierarchys = self->_extendedBundleIdentifierHierarchys;
  if (extendedBundleIdentifierHierarchys)
  {
    [dictionary setObject:extendedBundleIdentifierHierarchys forKey:@"extendedBundleIdentifierHierarchy"];
  }

  if ((*&self->_has & 8) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_isEmptyDeprecated];
    [dictionary setObject:v15 forKey:@"isEmptyDeprecated"];
  }

  iconURL = self->_iconURL;
  if (iconURL)
  {
    [dictionary setObject:iconURL forKey:@"iconURL"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    processIdentifier = self->_processIdentifier;
    PBDataWriterWriteInt32Field();
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_parentApplicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    processUserIdentifier = self->_processUserIdentifier;
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if (has)
  {
    nowPlayingVisibility = self->_nowPlayingVisibility;
    PBDataWriterWriteInt32Field();
  }

  if (self->_tintColor)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_displayName)
  {
    PBDataWriterWriteStringField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = self->_extendedBundleIdentifierHierarchys;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  if ((*&self->_has & 8) != 0)
  {
    isEmptyDeprecated = self->_isEmptyDeprecated;
    PBDataWriterWriteBOOLField();
  }

  if (self->_iconURL)
  {
    PBDataWriterWriteStringField();
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[14] = self->_processIdentifier;
    *(toCopy + 76) |= 2u;
  }

  v11 = toCopy;
  if (self->_bundleIdentifier)
  {
    [toCopy setBundleIdentifier:?];
    toCopy = v11;
  }

  if (self->_parentApplicationBundleIdentifier)
  {
    [v11 setParentApplicationBundleIdentifier:?];
    toCopy = v11;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[15] = self->_processUserIdentifier;
    *(toCopy + 76) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    toCopy[10] = self->_nowPlayingVisibility;
    *(toCopy + 76) |= 1u;
  }

  if (self->_tintColor)
  {
    [v11 setTintColor:?];
  }

  if (self->_displayName)
  {
    [v11 setDisplayName:?];
  }

  if ([(_MRNowPlayingClientProtobuf *)self extendedBundleIdentifierHierarchysCount])
  {
    [v11 clearExtendedBundleIdentifierHierarchys];
    extendedBundleIdentifierHierarchysCount = [(_MRNowPlayingClientProtobuf *)self extendedBundleIdentifierHierarchysCount];
    if (extendedBundleIdentifierHierarchysCount)
    {
      v7 = extendedBundleIdentifierHierarchysCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(_MRNowPlayingClientProtobuf *)self extendedBundleIdentifierHierarchyAtIndex:i];
        [v11 addExtendedBundleIdentifierHierarchy:v9];
      }
    }
  }

  v10 = v11;
  if ((*&self->_has & 8) != 0)
  {
    v11[72] = self->_isEmptyDeprecated;
    v11[76] |= 8u;
  }

  if (self->_iconURL)
  {
    [v11 setIconURL:?];
    v10 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 56) = self->_processIdentifier;
    *(v5 + 76) |= 2u;
  }

  v7 = [(NSString *)self->_bundleIdentifier copyWithZone:zone];
  v8 = *(v6 + 8);
  *(v6 + 8) = v7;

  v9 = [(NSString *)self->_parentApplicationBundleIdentifier copyWithZone:zone];
  v10 = *(v6 + 48);
  *(v6 + 48) = v9;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v6 + 60) = self->_processUserIdentifier;
    *(v6 + 76) |= 4u;
    has = self->_has;
  }

  if (has)
  {
    *(v6 + 40) = self->_nowPlayingVisibility;
    *(v6 + 76) |= 1u;
  }

  v12 = [(_MRColorProtobuf *)self->_tintColor copyWithZone:zone];
  v13 = *(v6 + 64);
  *(v6 + 64) = v12;

  v14 = [(NSString *)self->_displayName copyWithZone:zone];
  v15 = *(v6 + 16);
  *(v6 + 16) = v14;

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = self->_extendedBundleIdentifierHierarchys;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v27;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v26 + 1) + 8 * i) copyWithZone:{zone, v26}];
        [v6 addExtendedBundleIdentifierHierarchy:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v18);
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v6 + 72) = self->_isEmptyDeprecated;
    *(v6 + 76) |= 8u;
  }

  v22 = [(NSString *)self->_iconURL copyWithZone:zone, v26];
  v23 = *(v6 + 32);
  *(v6 + 32) = v22;

  v24 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_32;
  }

  v5 = *(equalCopy + 76);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 76) & 2) == 0 || self->_processIdentifier != *(equalCopy + 14))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 76) & 2) != 0)
  {
    goto LABEL_32;
  }

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier | *(equalCopy + 1) && ![(NSString *)bundleIdentifier isEqual:?])
  {
    goto LABEL_32;
  }

  parentApplicationBundleIdentifier = self->_parentApplicationBundleIdentifier;
  if (parentApplicationBundleIdentifier | *(equalCopy + 6))
  {
    if (![(NSString *)parentApplicationBundleIdentifier isEqual:?])
    {
      goto LABEL_32;
    }
  }

  v8 = *(equalCopy + 76);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 76) & 4) == 0 || self->_processUserIdentifier != *(equalCopy + 15))
    {
      goto LABEL_32;
    }
  }

  else if ((*(equalCopy + 76) & 4) != 0)
  {
    goto LABEL_32;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 76) & 1) == 0 || self->_nowPlayingVisibility != *(equalCopy + 10))
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 76))
  {
    goto LABEL_32;
  }

  tintColor = self->_tintColor;
  if (tintColor | *(equalCopy + 8) && ![(_MRColorProtobuf *)tintColor isEqual:?])
  {
    goto LABEL_32;
  }

  displayName = self->_displayName;
  if (displayName | *(equalCopy + 2))
  {
    if (![(NSString *)displayName isEqual:?])
    {
      goto LABEL_32;
    }
  }

  extendedBundleIdentifierHierarchys = self->_extendedBundleIdentifierHierarchys;
  if (extendedBundleIdentifierHierarchys | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)extendedBundleIdentifierHierarchys isEqual:?])
    {
      goto LABEL_32;
    }
  }

  v12 = *(equalCopy + 76);
  if ((*&self->_has & 8) == 0)
  {
    if ((*(equalCopy + 76) & 8) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    v14 = 0;
    goto LABEL_33;
  }

  if ((*(equalCopy + 76) & 8) == 0)
  {
    goto LABEL_32;
  }

  v16 = *(equalCopy + 72);
  if (self->_isEmptyDeprecated)
  {
    if ((*(equalCopy + 72) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if (*(equalCopy + 72))
  {
    goto LABEL_32;
  }

LABEL_29:
  iconURL = self->_iconURL;
  if (iconURL | *(equalCopy + 4))
  {
    v14 = [(NSString *)iconURL isEqual:?];
  }

  else
  {
    v14 = 1;
  }

LABEL_33:

  return v14;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_processIdentifier;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_bundleIdentifier hash];
  v5 = [(NSString *)self->_parentApplicationBundleIdentifier hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_processUserIdentifier;
    if (*&self->_has)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 0;
    if (*&self->_has)
    {
LABEL_6:
      v7 = 2654435761 * self->_nowPlayingVisibility;
      goto LABEL_9;
    }
  }

  v7 = 0;
LABEL_9:
  v8 = [(_MRColorProtobuf *)self->_tintColor hash];
  v9 = [(NSString *)self->_displayName hash];
  v10 = [(NSMutableArray *)self->_extendedBundleIdentifierHierarchys hash];
  if ((*&self->_has & 8) != 0)
  {
    v11 = 2654435761 * self->_isEmptyDeprecated;
  }

  else
  {
    v11 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9 ^ v10 ^ v11 ^ [(NSString *)self->_iconURL hash];
}

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[19] & 2) != 0)
  {
    self->_processIdentifier = fromCopy[14];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    [(_MRNowPlayingClientProtobuf *)self setBundleIdentifier:?];
  }

  if (*(v5 + 6))
  {
    [(_MRNowPlayingClientProtobuf *)self setParentApplicationBundleIdentifier:?];
  }

  v6 = *(v5 + 76);
  if ((v6 & 4) != 0)
  {
    self->_processUserIdentifier = *(v5 + 15);
    *&self->_has |= 4u;
    v6 = *(v5 + 76);
  }

  if (v6)
  {
    self->_nowPlayingVisibility = *(v5 + 10);
    *&self->_has |= 1u;
  }

  tintColor = self->_tintColor;
  v8 = *(v5 + 8);
  if (tintColor)
  {
    if (v8)
    {
      [(_MRColorProtobuf *)tintColor mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(_MRNowPlayingClientProtobuf *)self setTintColor:?];
  }

  if (*(v5 + 2))
  {
    [(_MRNowPlayingClientProtobuf *)self setDisplayName:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v5 + 3);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(_MRNowPlayingClientProtobuf *)self addExtendedBundleIdentifierHierarchy:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  if ((*(v5 + 76) & 8) != 0)
  {
    self->_isEmptyDeprecated = *(v5 + 72);
    *&self->_has |= 8u;
  }

  if (*(v5 + 4))
  {
    [(_MRNowPlayingClientProtobuf *)self setIconURL:?];
  }

  v14 = *MEMORY[0x1E69E9840];
}

@end
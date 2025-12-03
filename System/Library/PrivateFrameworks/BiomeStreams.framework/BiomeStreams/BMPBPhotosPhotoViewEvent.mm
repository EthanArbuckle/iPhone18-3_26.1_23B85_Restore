@interface BMPBPhotosPhotoViewEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLocations:(id)locations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBPhotosPhotoViewEvent

- (void)addLocations:(id)locations
{
  locationsCopy = locations;
  locations = self->_locations;
  v8 = locationsCopy;
  if (!locations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_locations;
    self->_locations = v6;

    locationsCopy = v8;
    locations = self->_locations;
  }

  [(NSMutableArray *)locations addObject:locationsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBPhotosPhotoViewEvent;
  v4 = [(BMPBPhotosPhotoViewEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBPhotosPhotoViewEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  locations = self->_locations;
  if (locations)
  {
    [dictionary setObject:locations forKey:@"locations"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v4 setObject:v6 forKey:@"absoluteTimestamp"];
  }

  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [v4 setObject:uniqueId forKey:@"uniqueId"];
  }

  contentProtection = self->_contentProtection;
  if (contentProtection)
  {
    [v4 setObject:contentProtection forKey:@"contentProtection"];
  }

  personaId = self->_personaId;
  if (personaId)
  {
    [v4 setObject:personaId forKey:@"personaId"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_locations;
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
        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(BMPBPhotosPhotoViewEvent *)self locationsCount])
  {
    [toCopy clearLocations];
    locationsCount = [(BMPBPhotosPhotoViewEvent *)self locationsCount];
    if (locationsCount)
    {
      v5 = locationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BMPBPhotosPhotoViewEvent *)self locationsAtIndex:i];
        [toCopy addLocations:v7];
      }
    }
  }

  v8 = toCopy;
  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_absoluteTimestamp;
    *(toCopy + 48) |= 1u;
  }

  if (self->_uniqueId)
  {
    [toCopy setUniqueId:?];
    v8 = toCopy;
  }

  if (self->_contentProtection)
  {
    [toCopy setContentProtection:?];
    v8 = toCopy;
  }

  if (self->_personaId)
  {
    [toCopy setPersonaId:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = self->_locations;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v20 + 1) + 8 * v10) copyWithZone:{zone, v20}];
        [v5 addLocations:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 48) |= 1u;
  }

  v12 = [(NSString *)self->_uniqueId copyWithZone:zone, v20];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [(NSString *)self->_contentProtection copyWithZone:zone];
  v15 = *(v5 + 16);
  *(v5 + 16) = v14;

  v16 = [(NSString *)self->_personaId copyWithZone:zone];
  v17 = *(v5 + 32);
  *(v5 + 32) = v16;

  v18 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  locations = self->_locations;
  if (locations | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)locations isEqual:?])
    {
      goto LABEL_15;
    }
  }

  v6 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v10 = 0;
    goto LABEL_16;
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(equalCopy + 5) && ![(NSString *)uniqueId isEqual:?])
  {
    goto LABEL_15;
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(equalCopy + 2))
  {
    if (![(NSString *)contentProtection isEqual:?])
    {
      goto LABEL_15;
    }
  }

  personaId = self->_personaId;
  if (personaId | *(equalCopy + 4))
  {
    v10 = [(NSString *)personaId isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_locations hash];
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v4.i64 = floor(absoluteTimestamp + 0.5);
    v8 = (absoluteTimestamp - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v6 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  v10 = v6 ^ v3;
  v11 = [(NSString *)self->_uniqueId hash];
  v12 = v10 ^ v11 ^ [(NSString *)self->_contentProtection hash];
  return v12 ^ [(NSString *)self->_personaId hash];
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

        [(BMPBPhotosPhotoViewEvent *)self addLocations:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 48))
  {
    self->_absoluteTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(BMPBPhotosPhotoViewEvent *)self setUniqueId:?];
  }

  if (*(fromCopy + 2))
  {
    [(BMPBPhotosPhotoViewEvent *)self setContentProtection:?];
  }

  if (*(fromCopy + 4))
  {
    [(BMPBPhotosPhotoViewEvent *)self setPersonaId:?];
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end
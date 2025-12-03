@interface BMPBDeviceMetadataEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPlatform:(id)platform;
- (int)platform;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasRapidSecurityResponsePreReboot:(BOOL)reboot;
- (void)writeTo:(id)to;
@end

@implementation BMPBDeviceMetadataEvent

- (int)platform
{
  if (*&self->_has)
  {
    return self->_platform;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsPlatform:(id)platform
{
  platformCopy = platform;
  if ([platformCopy isEqualToString:@"iPad"])
  {
    v4 = 0;
  }

  else if ([platformCopy isEqualToString:@"iPhone"])
  {
    v4 = 1;
  }

  else if ([platformCopy isEqualToString:@"MacDesktop"])
  {
    v4 = 2;
  }

  else if ([platformCopy isEqualToString:@"MacPortable"])
  {
    v4 = 3;
  }

  else if ([platformCopy isEqualToString:@"TV"])
  {
    v4 = 4;
  }

  else if ([platformCopy isEqualToString:@"Watch"])
  {
    v4 = 5;
  }

  else if ([platformCopy isEqualToString:@"HomePod"])
  {
    v4 = 6;
  }

  else if ([platformCopy isEqualToString:@"Unknown"])
  {
    v4 = 7;
  }

  else if ([platformCopy isEqualToString:@"Vision"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRapidSecurityResponsePreReboot:(BOOL)reboot
{
  if (reboot)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBDeviceMetadataEvent;
  v4 = [(BMPBDeviceMetadataEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBDeviceMetadataEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  build = self->_build;
  if (build)
  {
    [v4 setObject:build forKey:@"build"];
  }

  if (*&self->_has)
  {
    platform = self->_platform;
    if (platform >= 9)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_platform];
    }

    else
    {
      v8 = off_1E6E54468[platform];
    }

    [v4 setObject:v8 forKey:@"platform"];
  }

  supplementalBuild = self->_supplementalBuild;
  if (supplementalBuild)
  {
    [v4 setObject:supplementalBuild forKey:@"supplementalBuild"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_rapidSecurityResponsePreReboot];
    [v4 setObject:v10 forKey:@"rapidSecurityResponsePreReboot"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    platform = self->_platform;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }

  if (self->_supplementalBuild)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    rapidSecurityResponsePreReboot = self->_rapidSecurityResponsePreReboot;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    [toCopy setName:?];
    toCopy = v5;
  }

  if (self->_build)
  {
    [v5 setBuild:?];
    toCopy = v5;
  }

  if (*&self->_has)
  {
    *(toCopy + 6) = self->_platform;
    *(toCopy + 44) |= 1u;
  }

  if (self->_supplementalBuild)
  {
    [v5 setSupplementalBuild:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 40) = self->_rapidSecurityResponsePreReboot;
    *(toCopy + 44) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_build copyWithZone:zone];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_platform;
    *(v5 + 44) |= 1u;
  }

  v10 = [(NSString *)self->_supplementalBuild copyWithZone:zone];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_rapidSecurityResponsePreReboot;
    *(v5 + 44) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  name = self->_name;
  if (name | *(equalCopy + 2))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_16;
    }
  }

  build = self->_build;
  if (build | *(equalCopy + 1))
  {
    if (![(NSString *)build isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v8 = *(equalCopy + 44);
  if (has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_platform != *(equalCopy + 6))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_16;
  }

  supplementalBuild = self->_supplementalBuild;
  if (supplementalBuild | *(equalCopy + 4))
  {
    if (![(NSString *)supplementalBuild isEqual:?])
    {
      goto LABEL_16;
    }

    has = self->_has;
  }

  v10 = (*(equalCopy + 44) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) != 0)
    {
      if (self->_rapidSecurityResponsePreReboot)
      {
        if ((*(equalCopy + 40) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(equalCopy + 40))
      {
        goto LABEL_16;
      }

      v10 = 1;
      goto LABEL_17;
    }

LABEL_16:
    v10 = 0;
  }

LABEL_17:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_name hash];
  v4 = [(NSString *)self->_build hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_platform;
  }

  else
  {
    v5 = 0;
  }

  v6 = [(NSString *)self->_supplementalBuild hash];
  if ((*&self->_has & 2) != 0)
  {
    v7 = 2654435761 * self->_rapidSecurityResponsePreReboot;
  }

  else
  {
    v7 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(BMPBDeviceMetadataEvent *)self setName:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(BMPBDeviceMetadataEvent *)self setBuild:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 44))
  {
    self->_platform = *(fromCopy + 6);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(BMPBDeviceMetadataEvent *)self setSupplementalBuild:?];
    fromCopy = v5;
  }

  if ((*(fromCopy + 44) & 2) != 0)
  {
    self->_rapidSecurityResponsePreReboot = *(fromCopy + 40);
    *&self->_has |= 2u;
  }
}

@end
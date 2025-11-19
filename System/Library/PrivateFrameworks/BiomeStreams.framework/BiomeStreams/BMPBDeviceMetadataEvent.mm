@interface BMPBDeviceMetadataEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsPlatform:(id)a3;
- (int)platform;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasRapidSecurityResponsePreReboot:(BOOL)a3;
- (void)writeTo:(id)a3;
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

- (int)StringAsPlatform:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"iPad"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"iPhone"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MacDesktop"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"MacPortable"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"TV"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"Watch"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"HomePod"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 7;
  }

  else if ([v3 isEqualToString:@"Vision"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasRapidSecurityResponsePreReboot:(BOOL)a3
{
  if (a3)
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
  v5 = [(BMPBDeviceMetadataEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  name = self->_name;
  if (name)
  {
    [v3 setObject:name forKey:@"name"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (self->_build)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if (*&self->_has)
  {
    platform = self->_platform;
    PBDataWriterWriteInt32Field();
    v4 = v7;
  }

  if (self->_supplementalBuild)
  {
    PBDataWriterWriteStringField();
    v4 = v7;
  }

  if ((*&self->_has & 2) != 0)
  {
    rapidSecurityResponsePreReboot = self->_rapidSecurityResponsePreReboot;
    PBDataWriterWriteBOOLField();
    v4 = v7;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    [v4 setName:?];
    v4 = v5;
  }

  if (self->_build)
  {
    [v5 setBuild:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 6) = self->_platform;
    *(v4 + 44) |= 1u;
  }

  if (self->_supplementalBuild)
  {
    [v5 setSupplementalBuild:?];
    v4 = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v4 + 40) = self->_rapidSecurityResponsePreReboot;
    *(v4 + 44) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_name copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_build copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_platform;
    *(v5 + 44) |= 1u;
  }

  v10 = [(NSString *)self->_supplementalBuild copyWithZone:a3];
  v11 = *(v5 + 32);
  *(v5 + 32) = v10;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 40) = self->_rapidSecurityResponsePreReboot;
    *(v5 + 44) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  name = self->_name;
  if (name | *(v4 + 2))
  {
    if (![(NSString *)name isEqual:?])
    {
      goto LABEL_16;
    }
  }

  build = self->_build;
  if (build | *(v4 + 1))
  {
    if (![(NSString *)build isEqual:?])
    {
      goto LABEL_16;
    }
  }

  has = self->_has;
  v8 = *(v4 + 44);
  if (has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_platform != *(v4 + 6))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_16;
  }

  supplementalBuild = self->_supplementalBuild;
  if (supplementalBuild | *(v4 + 4))
  {
    if (![(NSString *)supplementalBuild isEqual:?])
    {
      goto LABEL_16;
    }

    has = self->_has;
  }

  v10 = (*(v4 + 44) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) != 0)
    {
      if (self->_rapidSecurityResponsePreReboot)
      {
        if ((*(v4 + 40) & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      else if (*(v4 + 40))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 2))
  {
    [(BMPBDeviceMetadataEvent *)self setName:?];
    v4 = v5;
  }

  if (*(v4 + 1))
  {
    [(BMPBDeviceMetadataEvent *)self setBuild:?];
    v4 = v5;
  }

  if (*(v4 + 44))
  {
    self->_platform = *(v4 + 6);
    *&self->_has |= 1u;
  }

  if (*(v4 + 4))
  {
    [(BMPBDeviceMetadataEvent *)self setSupplementalBuild:?];
    v4 = v5;
  }

  if ((*(v4 + 44) & 2) != 0)
  {
    self->_rapidSecurityResponsePreReboot = *(v4 + 40);
    *&self->_has |= 2u;
  }
}

@end
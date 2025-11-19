@interface BMPBAppLaunchEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsLaunchType:(id)a3;
- (int)launchType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasLaunchType:(BOOL)a3;
- (void)setHasStarting:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBAppLaunchEvent

- (int)launchType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_launchType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasLaunchType:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (int)StringAsLaunchType:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unused"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"App"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Extension"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"SystemUI"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setHasStarting:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDuration:(BOOL)a3
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
  v8.super_class = BMPBAppLaunchEvent;
  v4 = [(BMPBAppLaunchEvent *)&v8 description];
  v5 = [(BMPBAppLaunchEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v3;
  launchReason = self->_launchReason;
  if (launchReason)
  {
    [v3 setObject:launchReason forKey:@"launchReason"];
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    launchType = self->_launchType;
    if (launchType >= 4)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_launchType];
    }

    else
    {
      v8 = off_1E6E53790[launchType];
    }

    [v4 setObject:v8 forKey:@"launchType"];

    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithBool:self->_starting];
    [v4 setObject:v16 forKey:@"starting"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_10:
      if ((has & 2) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if ((has & 1) == 0)
  {
    goto LABEL_10;
  }

  v17 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
  [v4 setObject:v17 forKey:@"absoluteTimestamp"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_11:
    v9 = [MEMORY[0x1E696AD98] numberWithDouble:self->_duration];
    [v4 setObject:v9 forKey:@"duration"];
  }

LABEL_12:
  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v4 setObject:bundleID forKey:@"bundleID"];
  }

  parentBundleID = self->_parentBundleID;
  if (parentBundleID)
  {
    [v4 setObject:parentBundleID forKey:@"parentBundleID"];
  }

  extensionHostID = self->_extensionHostID;
  if (extensionHostID)
  {
    [v4 setObject:extensionHostID forKey:@"extensionHostID"];
  }

  shortVersionString = self->_shortVersionString;
  if (shortVersionString)
  {
    [v4 setObject:shortVersionString forKey:@"shortVersionString"];
  }

  exactVersionString = self->_exactVersionString;
  if (exactVersionString)
  {
    [v4 setObject:exactVersionString forKey:@"exactVersionString"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v10 = v4;
  if (self->_launchReason)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    launchType = self->_launchType;
    PBDataWriterWriteInt32Field();
    v4 = v10;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  starting = self->_starting;
  PBDataWriterWriteBOOLField();
  v4 = v10;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_23:
  absoluteTimestamp = self->_absoluteTimestamp;
  PBDataWriterWriteDoubleField();
  v4 = v10;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    duration = self->_duration;
    PBDataWriterWriteDoubleField();
    v4 = v10;
  }

LABEL_8:
  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_parentBundleID)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_extensionHostID)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_shortVersionString)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }

  if (self->_exactVersionString)
  {
    PBDataWriterWriteStringField();
    v4 = v10;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_launchReason)
  {
    [v4 setLaunchReason:?];
    v4 = v6;
  }

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v4 + 14) = self->_launchType;
    *(v4 + 84) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_5:
      if ((has & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_5;
  }

  *(v4 + 80) = self->_starting;
  *(v4 + 84) |= 8u;
  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_6:
    if ((has & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_23:
  *(v4 + 1) = *&self->_absoluteTimestamp;
  *(v4 + 84) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_7:
    *(v4 + 2) = *&self->_duration;
    *(v4 + 84) |= 2u;
  }

LABEL_8:
  if (self->_bundleID)
  {
    [v6 setBundleID:?];
    v4 = v6;
  }

  if (self->_parentBundleID)
  {
    [v6 setParentBundleID:?];
    v4 = v6;
  }

  if (self->_extensionHostID)
  {
    [v6 setExtensionHostID:?];
    v4 = v6;
  }

  if (self->_shortVersionString)
  {
    [v6 setShortVersionString:?];
    v4 = v6;
  }

  if (self->_exactVersionString)
  {
    [v6 setExactVersionString:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_launchReason copyWithZone:a3];
  v7 = *(v5 + 48);
  *(v5 + 48) = v6;

  has = self->_has;
  if ((has & 4) != 0)
  {
    *(v5 + 56) = self->_launchType;
    *(v5 + 84) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      *(v5 + 8) = self->_absoluteTimestamp;
      *(v5 + 84) |= 1u;
      if ((*&self->_has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 80) = self->_starting;
  *(v5 + 84) |= 8u;
  has = self->_has;
  if (has)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((has & 2) != 0)
  {
LABEL_5:
    *(v5 + 16) = self->_duration;
    *(v5 + 84) |= 2u;
  }

LABEL_6:
  v9 = [(NSString *)self->_bundleID copyWithZone:a3];
  v10 = *(v5 + 24);
  *(v5 + 24) = v9;

  v11 = [(NSString *)self->_parentBundleID copyWithZone:a3];
  v12 = *(v5 + 64);
  *(v5 + 64) = v11;

  v13 = [(NSString *)self->_extensionHostID copyWithZone:a3];
  v14 = *(v5 + 40);
  *(v5 + 40) = v13;

  v15 = [(NSString *)self->_shortVersionString copyWithZone:a3];
  v16 = *(v5 + 72);
  *(v5 + 72) = v15;

  v17 = [(NSString *)self->_exactVersionString copyWithZone:a3];
  v18 = *(v5 + 32);
  *(v5 + 32) = v17;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_37;
  }

  launchReason = self->_launchReason;
  if (launchReason | *(v4 + 6))
  {
    if (![(NSString *)launchReason isEqual:?])
    {
      goto LABEL_37;
    }
  }

  v6 = *(v4 + 84);
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 84) & 4) == 0 || self->_launchType != *(v4 + 14))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 84) & 4) != 0)
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 8) == 0)
  {
    if ((*(v4 + 84) & 8) == 0)
    {
      goto LABEL_11;
    }

LABEL_37:
    v13 = 0;
    goto LABEL_38;
  }

  if ((*(v4 + 84) & 8) == 0)
  {
    goto LABEL_37;
  }

  v7 = *(v4 + 80);
  if (self->_starting)
  {
    if ((*(v4 + 80) & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  else if (*(v4 + 80))
  {
    goto LABEL_37;
  }

LABEL_11:
  if (*&self->_has)
  {
    if ((*(v4 + 84) & 1) == 0 || self->_absoluteTimestamp != *(v4 + 1))
    {
      goto LABEL_37;
    }
  }

  else if (*(v4 + 84))
  {
    goto LABEL_37;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 84) & 2) == 0 || self->_duration != *(v4 + 2))
    {
      goto LABEL_37;
    }
  }

  else if ((*(v4 + 84) & 2) != 0)
  {
    goto LABEL_37;
  }

  bundleID = self->_bundleID;
  if (bundleID | *(v4 + 3) && ![(NSString *)bundleID isEqual:?])
  {
    goto LABEL_37;
  }

  parentBundleID = self->_parentBundleID;
  if (parentBundleID | *(v4 + 8))
  {
    if (![(NSString *)parentBundleID isEqual:?])
    {
      goto LABEL_37;
    }
  }

  extensionHostID = self->_extensionHostID;
  if (extensionHostID | *(v4 + 5))
  {
    if (![(NSString *)extensionHostID isEqual:?])
    {
      goto LABEL_37;
    }
  }

  shortVersionString = self->_shortVersionString;
  if (shortVersionString | *(v4 + 9))
  {
    if (![(NSString *)shortVersionString isEqual:?])
    {
      goto LABEL_37;
    }
  }

  exactVersionString = self->_exactVersionString;
  if (exactVersionString | *(v4 + 4))
  {
    v13 = [(NSString *)exactVersionString isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_38:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_launchReason hash];
  if ((*&self->_has & 4) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = 0;
    if (*&self->_has)
    {
      goto LABEL_4;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v6 = 2654435761 * self->_launchType;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = 2654435761 * self->_starting;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  absoluteTimestamp = self->_absoluteTimestamp;
  if (absoluteTimestamp < 0.0)
  {
    absoluteTimestamp = -absoluteTimestamp;
  }

  *v4.i64 = floor(absoluteTimestamp + 0.5);
  v9 = (absoluteTimestamp - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v4 = vbslq_s8(vnegq_f64(v10), v5, v4);
  v11 = 2654435761u * *v4.i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_11:
  if ((*&self->_has & 2) != 0)
  {
    duration = self->_duration;
    if (duration < 0.0)
    {
      duration = -duration;
    }

    *v4.i64 = floor(duration + 0.5);
    v14 = (duration - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v12 = 2654435761u * *vbslq_s8(vnegq_f64(v15), v5, v4).i64;
    if (v14 >= 0.0)
    {
      if (v14 > 0.0)
      {
        v12 += v14;
      }
    }

    else
    {
      v12 -= fabs(v14);
    }
  }

  else
  {
    v12 = 0;
  }

  v16 = v6 ^ v3 ^ v7 ^ v11 ^ v12 ^ [(NSString *)self->_bundleID hash];
  v17 = [(NSString *)self->_parentBundleID hash];
  v18 = v17 ^ [(NSString *)self->_extensionHostID hash];
  v19 = v16 ^ v18 ^ [(NSString *)self->_shortVersionString hash];
  return v19 ^ [(NSString *)self->_exactVersionString hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*(v4 + 6))
  {
    [(BMPBAppLaunchEvent *)self setLaunchReason:?];
    v4 = v6;
  }

  v5 = *(v4 + 84);
  if ((v5 & 4) != 0)
  {
    self->_launchType = *(v4 + 14);
    *&self->_has |= 4u;
    v5 = *(v4 + 84);
    if ((v5 & 8) == 0)
    {
LABEL_5:
      if ((v5 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_23;
    }
  }

  else if ((*(v4 + 84) & 8) == 0)
  {
    goto LABEL_5;
  }

  self->_starting = *(v4 + 80);
  *&self->_has |= 8u;
  v5 = *(v4 + 84);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    if ((v5 & 2) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_23:
  self->_absoluteTimestamp = *(v4 + 1);
  *&self->_has |= 1u;
  if ((*(v4 + 84) & 2) != 0)
  {
LABEL_7:
    self->_duration = *(v4 + 2);
    *&self->_has |= 2u;
  }

LABEL_8:
  if (*(v4 + 3))
  {
    [(BMPBAppLaunchEvent *)self setBundleID:?];
    v4 = v6;
  }

  if (*(v4 + 8))
  {
    [(BMPBAppLaunchEvent *)self setParentBundleID:?];
    v4 = v6;
  }

  if (*(v4 + 5))
  {
    [(BMPBAppLaunchEvent *)self setExtensionHostID:?];
    v4 = v6;
  }

  if (*(v4 + 9))
  {
    [(BMPBAppLaunchEvent *)self setShortVersionString:?];
    v4 = v6;
  }

  if (*(v4 + 4))
  {
    [(BMPBAppLaunchEvent *)self setExactVersionString:?];
    v4 = v6;
  }
}

@end
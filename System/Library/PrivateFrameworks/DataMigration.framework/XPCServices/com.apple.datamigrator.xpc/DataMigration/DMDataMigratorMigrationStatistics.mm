@interface DMDataMigratorMigrationStatistics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuration:(BOOL)duration;
- (void)setHasFastPluginDuration:(BOOL)duration;
- (void)setHasMigratedAfterUpgrade:(BOOL)upgrade;
- (void)setHasMigratedFromBackup:(BOOL)backup;
- (void)setHasMigratedFromBackupSourceDifferentDevice:(BOOL)device;
- (void)setHasMigratedFromBackupSourceiCloud:(BOOL)cloud;
- (void)setHasPluginCrashCount:(BOOL)count;
- (void)setHasPluginReturnedFalseCount:(BOOL)count;
- (void)setHasPluginWatchdogCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation DMDataMigratorMigrationStatistics

- (void)setHasDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasFastPluginDuration:(BOOL)duration
{
  if (duration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPluginCrashCount:(BOOL)count
{
  if (count)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasPluginWatchdogCount:(BOOL)count
{
  if (count)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPluginReturnedFalseCount:(BOOL)count
{
  if (count)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasMigratedAfterUpgrade:(BOOL)upgrade
{
  if (upgrade)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasMigratedFromBackup:(BOOL)backup
{
  if (backup)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasMigratedFromBackupSourceDifferentDevice:(BOOL)device
{
  if (device)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasMigratedFromBackupSourceiCloud:(BOOL)cloud
{
  if (cloud)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = DMDataMigratorMigrationStatistics;
  v3 = [(DMDataMigratorMigrationStatistics *)&v7 description];
  dictionaryRepresentation = [(DMDataMigratorMigrationStatistics *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  has = self->_has;
  if (has)
  {
    v10 = [NSNumber numberWithUnsignedLongLong:self->_timestamp];
    [v3 setObject:v10 forKey:@"timestamp"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  v11 = [NSNumber numberWithUnsignedInt:self->_duration];
  [v3 setObject:v11 forKey:@"duration"];

  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  v12 = [NSNumber numberWithUnsignedInt:self->_fastPluginDuration];
  [v3 setObject:v12 forKey:@"fastPluginDuration"];

  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  v13 = [NSNumber numberWithUnsignedInt:self->_pluginCrashCount];
  [v3 setObject:v13 forKey:@"pluginCrashCount"];

  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_22:
  v14 = [NSNumber numberWithUnsignedInt:self->_pluginWatchdogCount];
  [v3 setObject:v14 forKey:@"pluginWatchdogCount"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    v5 = [NSNumber numberWithUnsignedInt:self->_pluginReturnedFalseCount];
    [v3 setObject:v5 forKey:@"pluginReturnedFalseCount"];
  }

LABEL_8:
  buildMigratedFrom = self->_buildMigratedFrom;
  if (buildMigratedFrom)
  {
    [v3 setObject:buildMigratedFrom forKey:@"buildMigratedFrom"];
  }

  v7 = self->_has;
  if ((v7 & 0x40) != 0)
  {
    v15 = [NSNumber numberWithBool:self->_migratedAfterUpgrade];
    [v3 setObject:v15 forKey:@"migratedAfterUpgrade"];

    v7 = self->_has;
    if ((v7 & 0x80) == 0)
    {
LABEL_12:
      if ((v7 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v7 & 0x80) == 0)
  {
    goto LABEL_12;
  }

  v16 = [NSNumber numberWithBool:self->_migratedFromBackup];
  [v3 setObject:v16 forKey:@"migratedFromBackup"];

  v7 = self->_has;
  if ((v7 & 0x100) == 0)
  {
LABEL_13:
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_26:
  v17 = [NSNumber numberWithBool:self->_migratedFromBackupSourceDifferentDevice];
  [v3 setObject:v17 forKey:@"migratedFromBackupSourceDifferentDevice"];

  if ((*&self->_has & 0x200) != 0)
  {
LABEL_14:
    v8 = [NSNumber numberWithBool:self->_migratedFromBackupSourceiCloud];
    [v3 setObject:v8 forKey:@"migratedFromBackupSourceiCloud"];
  }

LABEL_15:

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  fastPluginDuration = self->_fastPluginDuration;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  pluginCrashCount = self->_pluginCrashCount;
  PBDataWriterWriteUint32Field();
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_22:
  pluginWatchdogCount = self->_pluginWatchdogCount;
  PBDataWriterWriteUint32Field();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    pluginReturnedFalseCount = self->_pluginReturnedFalseCount;
    PBDataWriterWriteUint32Field();
  }

LABEL_8:
  if (self->_buildMigratedFrom)
  {
    PBDataWriterWriteStringField();
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    migratedAfterUpgrade = self->_migratedAfterUpgrade;
    PBDataWriterWriteBOOLField();
    v6 = self->_has;
    if ((v6 & 0x80) == 0)
    {
LABEL_12:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_12;
  }

  migratedFromBackup = self->_migratedFromBackup;
  PBDataWriterWriteBOOLField();
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_13:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_26:
  migratedFromBackupSourceDifferentDevice = self->_migratedFromBackupSourceDifferentDevice;
  PBDataWriterWriteBOOLField();
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_14:
    migratedFromBackupSourceiCloud = self->_migratedFromBackupSourceiCloud;
    PBDataWriterWriteBOOLField();
  }

LABEL_15:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 6) = self->_duration;
  *(toCopy + 24) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  *(toCopy + 7) = self->_fastPluginDuration;
  *(toCopy + 24) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  *(toCopy + 8) = self->_pluginCrashCount;
  *(toCopy + 24) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_22:
  *(toCopy + 10) = self->_pluginWatchdogCount;
  *(toCopy + 24) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    *(toCopy + 9) = self->_pluginReturnedFalseCount;
    *(toCopy + 24) |= 0x10u;
  }

LABEL_8:
  if (self->_buildMigratedFrom)
  {
    v7 = toCopy;
    [toCopy setBuildMigratedFrom:?];
    toCopy = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(toCopy + 44) = self->_migratedAfterUpgrade;
    *(toCopy + 24) |= 0x40u;
    v6 = self->_has;
    if ((v6 & 0x80) == 0)
    {
LABEL_12:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_12;
  }

  *(toCopy + 45) = self->_migratedFromBackup;
  *(toCopy + 24) |= 0x80u;
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_13:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_26:
  *(toCopy + 46) = self->_migratedFromBackupSourceDifferentDevice;
  *(toCopy + 24) |= 0x100u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_14:
    *(toCopy + 47) = self->_migratedFromBackupSourceiCloud;
    *(toCopy + 24) |= 0x200u;
  }

LABEL_15:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[1] = self->_timestamp;
    *(v5 + 24) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 6) = self->_duration;
  *(v5 + 24) |= 2u;
  has = self->_has;
  if ((has & 4) == 0)
  {
LABEL_4:
    if ((has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  *(v5 + 7) = self->_fastPluginDuration;
  *(v5 + 24) |= 4u;
  has = self->_has;
  if ((has & 8) == 0)
  {
LABEL_5:
    if ((has & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_18;
  }

LABEL_17:
  *(v5 + 8) = self->_pluginCrashCount;
  *(v5 + 24) |= 8u;
  has = self->_has;
  if ((has & 0x20) == 0)
  {
LABEL_6:
    if ((has & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_18:
  *(v5 + 10) = self->_pluginWatchdogCount;
  *(v5 + 24) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    *(v5 + 9) = self->_pluginReturnedFalseCount;
    *(v5 + 24) |= 0x10u;
  }

LABEL_8:
  v8 = [(NSString *)self->_buildMigratedFrom copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  v10 = self->_has;
  if ((v10 & 0x40) != 0)
  {
    *(v6 + 44) = self->_migratedAfterUpgrade;
    *(v6 + 24) |= 0x40u;
    v10 = self->_has;
    if ((v10 & 0x80) == 0)
    {
LABEL_10:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_11;
      }

LABEL_22:
      *(v6 + 46) = self->_migratedFromBackupSourceDifferentDevice;
      *(v6 + 24) |= 0x100u;
      if ((*&self->_has & 0x200) == 0)
      {
        return v6;
      }

      goto LABEL_12;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_10;
  }

  *(v6 + 45) = self->_migratedFromBackup;
  *(v6 + 24) |= 0x80u;
  v10 = self->_has;
  if ((v10 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((v10 & 0x200) != 0)
  {
LABEL_12:
    *(v6 + 47) = self->_migratedFromBackupSourceiCloud;
    *(v6 + 24) |= 0x200u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  has = self->_has;
  v6 = *(equalCopy + 24);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_66;
    }
  }

  else if (v6)
  {
    goto LABEL_66;
  }

  if ((has & 2) != 0)
  {
    if ((v6 & 2) == 0 || self->_duration != *(equalCopy + 6))
    {
      goto LABEL_66;
    }
  }

  else if ((v6 & 2) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 4) != 0)
  {
    if ((v6 & 4) == 0 || self->_fastPluginDuration != *(equalCopy + 7))
    {
      goto LABEL_66;
    }
  }

  else if ((v6 & 4) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 8) != 0)
  {
    if ((v6 & 8) == 0 || self->_pluginCrashCount != *(equalCopy + 8))
    {
      goto LABEL_66;
    }
  }

  else if ((v6 & 8) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 0x20) != 0)
  {
    if ((v6 & 0x20) == 0 || self->_pluginWatchdogCount != *(equalCopy + 10))
    {
      goto LABEL_66;
    }
  }

  else if ((v6 & 0x20) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 0x10) != 0)
  {
    if ((v6 & 0x10) == 0 || self->_pluginReturnedFalseCount != *(equalCopy + 9))
    {
      goto LABEL_66;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_66;
  }

  buildMigratedFrom = self->_buildMigratedFrom;
  if (buildMigratedFrom | *(equalCopy + 2))
  {
    if (![(NSString *)buildMigratedFrom isEqual:?])
    {
      goto LABEL_66;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 24);
  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_66;
    }

    v10 = *(equalCopy + 44);
    if (self->_migratedAfterUpgrade)
    {
      if ((*(equalCopy + 44) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 44))
    {
      goto LABEL_66;
    }
  }

  else if ((v8 & 0x40) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 0x80) != 0)
  {
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_66;
    }

    v11 = *(equalCopy + 45);
    if (self->_migratedFromBackup)
    {
      if ((*(equalCopy + 45) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 45))
    {
      goto LABEL_66;
    }
  }

  else if ((v8 & 0x80) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 0x100) != 0)
  {
    if ((*(equalCopy + 24) & 0x100) == 0)
    {
      goto LABEL_66;
    }

    v12 = *(equalCopy + 46);
    if (self->_migratedFromBackupSourceDifferentDevice)
    {
      if ((*(equalCopy + 46) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(equalCopy + 46))
    {
      goto LABEL_66;
    }
  }

  else if ((*(equalCopy + 24) & 0x100) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 0x200) != 0)
  {
    if ((*(equalCopy + 24) & 0x200) != 0)
    {
      if (self->_migratedFromBackupSourceiCloud)
      {
        if (*(equalCopy + 47))
        {
          goto LABEL_68;
        }
      }

      else if (!*(equalCopy + 47))
      {
LABEL_68:
        v9 = 1;
        goto LABEL_67;
      }
    }

LABEL_66:
    v9 = 0;
    goto LABEL_67;
  }

  v9 = (v8 & 0x200) == 0;
LABEL_67:

  return v9;
}

- (unint64_t)hash
{
  has = self->_has;
  if (has)
  {
    v4 = 2654435761u * self->_timestamp;
    if ((has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_duration;
      if ((has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = 0;
    if ((has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
  if ((has & 4) != 0)
  {
LABEL_4:
    v6 = 2654435761 * self->_fastPluginDuration;
    if ((has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v6 = 0;
  if ((has & 8) != 0)
  {
LABEL_5:
    v7 = 2654435761 * self->_pluginCrashCount;
    if ((has & 0x20) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v8 = 0;
    if ((has & 0x10) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_11:
  v7 = 0;
  if ((has & 0x20) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v8 = 2654435761 * self->_pluginWatchdogCount;
  if ((has & 0x10) != 0)
  {
LABEL_7:
    v9 = 2654435761 * self->_pluginReturnedFalseCount;
    goto LABEL_14;
  }

LABEL_13:
  v9 = 0;
LABEL_14:
  v10 = [(NSString *)self->_buildMigratedFrom hash];
  v11 = self->_has;
  if ((v11 & 0x40) != 0)
  {
    v12 = 2654435761 * self->_migratedAfterUpgrade;
    if ((v11 & 0x80) != 0)
    {
LABEL_16:
      v13 = 2654435761 * self->_migratedFromBackup;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_17;
      }

LABEL_21:
      v14 = 0;
      if ((*&self->_has & 0x200) != 0)
      {
        goto LABEL_18;
      }

LABEL_22:
      v15 = 0;
      return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v12 ^ v13 ^ v14 ^ v15 ^ v10;
    }
  }

  else
  {
    v12 = 0;
    if ((v11 & 0x80) != 0)
    {
      goto LABEL_16;
    }
  }

  v13 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  v14 = 2654435761 * self->_migratedFromBackupSourceDifferentDevice;
  if ((*&self->_has & 0x200) == 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  v15 = 2654435761 * self->_migratedFromBackupSourceiCloud;
  return v5 ^ v4 ^ v6 ^ v7 ^ v8 ^ v9 ^ v12 ^ v13 ^ v14 ^ v15 ^ v10;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if (v5)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 24);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_20;
    }
  }

  else if ((v5 & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(fromCopy + 6);
  *&self->_has |= 2u;
  v5 = *(fromCopy + 24);
  if ((v5 & 4) == 0)
  {
LABEL_4:
    if ((v5 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

LABEL_20:
  self->_fastPluginDuration = *(fromCopy + 7);
  *&self->_has |= 4u;
  v5 = *(fromCopy + 24);
  if ((v5 & 8) == 0)
  {
LABEL_5:
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_22;
  }

LABEL_21:
  self->_pluginCrashCount = *(fromCopy + 8);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 24);
  if ((v5 & 0x20) == 0)
  {
LABEL_6:
    if ((v5 & 0x10) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_22:
  self->_pluginWatchdogCount = *(fromCopy + 10);
  *&self->_has |= 0x20u;
  if ((*(fromCopy + 24) & 0x10) != 0)
  {
LABEL_7:
    self->_pluginReturnedFalseCount = *(fromCopy + 9);
    *&self->_has |= 0x10u;
  }

LABEL_8:
  if (*(fromCopy + 2))
  {
    v7 = fromCopy;
    [(DMDataMigratorMigrationStatistics *)self setBuildMigratedFrom:?];
    fromCopy = v7;
  }

  v6 = *(fromCopy + 24);
  if ((v6 & 0x40) != 0)
  {
    self->_migratedAfterUpgrade = *(fromCopy + 44);
    *&self->_has |= 0x40u;
    v6 = *(fromCopy + 24);
    if ((v6 & 0x80) == 0)
    {
LABEL_12:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_26;
    }
  }

  else if ((v6 & 0x80) == 0)
  {
    goto LABEL_12;
  }

  self->_migratedFromBackup = *(fromCopy + 45);
  *&self->_has |= 0x80u;
  v6 = *(fromCopy + 24);
  if ((v6 & 0x100) == 0)
  {
LABEL_13:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

LABEL_26:
  self->_migratedFromBackupSourceDifferentDevice = *(fromCopy + 46);
  *&self->_has |= 0x100u;
  if ((*(fromCopy + 24) & 0x200) != 0)
  {
LABEL_14:
    self->_migratedFromBackupSourceiCloud = *(fromCopy + 47);
    *&self->_has |= 0x200u;
  }

LABEL_15:
}

@end
@interface DMDataMigratorMigrationStatistics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuration:(BOOL)a3;
- (void)setHasFastPluginDuration:(BOOL)a3;
- (void)setHasMigratedAfterUpgrade:(BOOL)a3;
- (void)setHasMigratedFromBackup:(BOOL)a3;
- (void)setHasMigratedFromBackupSourceDifferentDevice:(BOOL)a3;
- (void)setHasMigratedFromBackupSourceiCloud:(BOOL)a3;
- (void)setHasPluginCrashCount:(BOOL)a3;
- (void)setHasPluginReturnedFalseCount:(BOOL)a3;
- (void)setHasPluginWatchdogCount:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation DMDataMigratorMigrationStatistics

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

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasFastPluginDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasPluginCrashCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasPluginWatchdogCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (void)setHasPluginReturnedFalseCount:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)setHasMigratedAfterUpgrade:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasMigratedFromBackup:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasMigratedFromBackupSourceDifferentDevice:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasMigratedFromBackupSourceiCloud:(BOOL)a3
{
  if (a3)
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
  v4 = [(DMDataMigratorMigrationStatistics *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, v4];

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

- (void)writeTo:(id)a3
{
  v16 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if (has)
  {
    v4[1] = self->_timestamp;
    *(v4 + 24) |= 1u;
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

  *(v4 + 6) = self->_duration;
  *(v4 + 24) |= 2u;
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
  *(v4 + 7) = self->_fastPluginDuration;
  *(v4 + 24) |= 4u;
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
  *(v4 + 8) = self->_pluginCrashCount;
  *(v4 + 24) |= 8u;
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
  *(v4 + 10) = self->_pluginWatchdogCount;
  *(v4 + 24) |= 0x20u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_7:
    *(v4 + 9) = self->_pluginReturnedFalseCount;
    *(v4 + 24) |= 0x10u;
  }

LABEL_8:
  if (self->_buildMigratedFrom)
  {
    v7 = v4;
    [v4 setBuildMigratedFrom:?];
    v4 = v7;
  }

  v6 = self->_has;
  if ((v6 & 0x40) != 0)
  {
    *(v4 + 44) = self->_migratedAfterUpgrade;
    *(v4 + 24) |= 0x40u;
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

  *(v4 + 45) = self->_migratedFromBackup;
  *(v4 + 24) |= 0x80u;
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
  *(v4 + 46) = self->_migratedFromBackupSourceDifferentDevice;
  *(v4 + 24) |= 0x100u;
  if ((*&self->_has & 0x200) != 0)
  {
LABEL_14:
    *(v4 + 47) = self->_migratedFromBackupSourceiCloud;
    *(v4 + 24) |= 0x200u;
  }

LABEL_15:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
  v8 = [(NSString *)self->_buildMigratedFrom copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if (has)
  {
    if ((v6 & 1) == 0 || self->_timestamp != *(v4 + 1))
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
    if ((v6 & 2) == 0 || self->_duration != *(v4 + 6))
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
    if ((v6 & 4) == 0 || self->_fastPluginDuration != *(v4 + 7))
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
    if ((v6 & 8) == 0 || self->_pluginCrashCount != *(v4 + 8))
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
    if ((v6 & 0x20) == 0 || self->_pluginWatchdogCount != *(v4 + 10))
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
    if ((v6 & 0x10) == 0 || self->_pluginReturnedFalseCount != *(v4 + 9))
    {
      goto LABEL_66;
    }
  }

  else if ((v6 & 0x10) != 0)
  {
    goto LABEL_66;
  }

  buildMigratedFrom = self->_buildMigratedFrom;
  if (buildMigratedFrom | *(v4 + 2))
  {
    if (![(NSString *)buildMigratedFrom isEqual:?])
    {
      goto LABEL_66;
    }

    has = self->_has;
  }

  v8 = *(v4 + 24);
  if ((has & 0x40) != 0)
  {
    if ((v8 & 0x40) == 0)
    {
      goto LABEL_66;
    }

    v10 = *(v4 + 44);
    if (self->_migratedAfterUpgrade)
    {
      if ((*(v4 + 44) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(v4 + 44))
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

    v11 = *(v4 + 45);
    if (self->_migratedFromBackup)
    {
      if ((*(v4 + 45) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(v4 + 45))
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
    if ((*(v4 + 24) & 0x100) == 0)
    {
      goto LABEL_66;
    }

    v12 = *(v4 + 46);
    if (self->_migratedFromBackupSourceDifferentDevice)
    {
      if ((*(v4 + 46) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(v4 + 46))
    {
      goto LABEL_66;
    }
  }

  else if ((*(v4 + 24) & 0x100) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 0x200) != 0)
  {
    if ((*(v4 + 24) & 0x200) != 0)
    {
      if (self->_migratedFromBackupSourceiCloud)
      {
        if (*(v4 + 47))
        {
          goto LABEL_68;
        }
      }

      else if (!*(v4 + 47))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 24);
  if (v5)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v5 = *(v4 + 24);
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

  self->_duration = *(v4 + 6);
  *&self->_has |= 2u;
  v5 = *(v4 + 24);
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
  self->_fastPluginDuration = *(v4 + 7);
  *&self->_has |= 4u;
  v5 = *(v4 + 24);
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
  self->_pluginCrashCount = *(v4 + 8);
  *&self->_has |= 8u;
  v5 = *(v4 + 24);
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
  self->_pluginWatchdogCount = *(v4 + 10);
  *&self->_has |= 0x20u;
  if ((*(v4 + 24) & 0x10) != 0)
  {
LABEL_7:
    self->_pluginReturnedFalseCount = *(v4 + 9);
    *&self->_has |= 0x10u;
  }

LABEL_8:
  if (*(v4 + 2))
  {
    v7 = v4;
    [(DMDataMigratorMigrationStatistics *)self setBuildMigratedFrom:?];
    v4 = v7;
  }

  v6 = *(v4 + 24);
  if ((v6 & 0x40) != 0)
  {
    self->_migratedAfterUpgrade = *(v4 + 44);
    *&self->_has |= 0x40u;
    v6 = *(v4 + 24);
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

  self->_migratedFromBackup = *(v4 + 45);
  *&self->_has |= 0x80u;
  v6 = *(v4 + 24);
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
  self->_migratedFromBackupSourceDifferentDevice = *(v4 + 46);
  *&self->_has |= 0x100u;
  if ((*(v4 + 24) & 0x200) != 0)
  {
LABEL_14:
    self->_migratedFromBackupSourceiCloud = *(v4 + 47);
    *&self->_has |= 0x200u;
  }

LABEL_15:
}

@end
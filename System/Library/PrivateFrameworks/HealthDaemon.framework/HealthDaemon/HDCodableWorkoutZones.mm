@interface HDCodableWorkoutZones
- (BOOL)applyToObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableWorkoutZones

- (BOOL)applyToObject:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HDCodableWorkoutZones sample](self, "sample"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 applyToObject:v4], v5, v6))
  {
    v7 = MEMORY[0x277CCAAC8];
    v8 = objc_opt_class();
    v9 = [(HDCodableWorkoutZones *)self zones];
    v16 = 0;
    v10 = [v7 unarchivedArrayOfObjectsOfClass:v8 fromData:v9 error:&v16];
    v11 = v16;

    v12 = v10 != 0;
    if (v10)
    {
      [v4 _setZones:v10];
    }

    else
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC330];
      if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v18 = v11;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "Error unarchiving zones: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v12;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableWorkoutZones;
  v4 = [(HDCodableWorkoutZones *)&v8 description];
  v5 = [(HDCodableWorkoutZones *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    v5 = [(HDCodableSample *)sample dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sample"];
  }

  zones = self->_zones;
  if (zones)
  {
    [v3 setObject:zones forKey:@"zones"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zones)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sample)
  {
    [v4 setSample:?];
    v4 = v5;
  }

  if (self->_zones)
  {
    [v5 setZones:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_zones copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((sample = self->_sample, !(sample | v4[1])) || -[HDCodableSample isEqual:](sample, "isEqual:")))
  {
    zones = self->_zones;
    if (zones | v4[2])
    {
      v7 = [(NSData *)zones isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  sample = self->_sample;
  v6 = v4[1];
  v7 = v4;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    sample = [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    sample = [(HDCodableWorkoutZones *)self setSample:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    sample = [(HDCodableWorkoutZones *)self setZones:?];
    v4 = v7;
  }

  MEMORY[0x2821F96F8](sample, v4);
}

@end
@interface HDCodableWorkoutZones
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCodableWorkoutZones

- (BOOL)applyToObject:(id)object
{
  v19 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (-[HDCodableWorkoutZones sample](self, "sample"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 applyToObject:objectCopy], v5, v6))
  {
    v7 = MEMORY[0x277CCAAC8];
    v8 = objc_opt_class();
    zones = [(HDCodableWorkoutZones *)self zones];
    v16 = 0;
    v10 = [v7 unarchivedArrayOfObjectsOfClass:v8 fromData:zones error:&v16];
    v11 = v16;

    v12 = v10 != 0;
    if (v10)
    {
      [objectCopy _setZones:v10];
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
  dictionaryRepresentation = [(HDCodableWorkoutZones *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(HDCodableSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
  }

  zones = self->_zones;
  if (zones)
  {
    [dictionary setObject:zones forKey:@"zones"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_zones)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v5;
  }

  if (self->_zones)
  {
    [v5 setZones:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSData *)self->_zones copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((sample = self->_sample, !(sample | equalCopy[1])) || -[HDCodableSample isEqual:](sample, "isEqual:")))
  {
    zones = self->_zones;
    if (zones | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = fromCopy[1];
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    sample = [(HDCodableWorkoutZones *)self setZones:?];
    fromCopy = v7;
  }

  MEMORY[0x2821F96F8](sample, fromCopy);
}

@end
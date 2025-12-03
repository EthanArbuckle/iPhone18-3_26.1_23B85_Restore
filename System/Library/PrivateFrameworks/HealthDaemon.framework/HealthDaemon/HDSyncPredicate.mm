@interface HDSyncPredicate
- (BOOL)isEqual:(id)equal;
- (HDSyncPredicate)initWithCoder:(id)coder;
- (HDSyncPredicate)initWithExcludedSyncProvenances:(id)provenances dateInterval:(id)interval shouldIncludeDatelessObjects:(BOOL)objects includedObjectTypes:(id)types defaultMaximumObjectAge:(id)age defaultMaximumTombstoneAge:(id)tombstoneAge maximumObjectAgeByType:(id)type;
- (id)maximumObjectAgeForType:(id)type;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDSyncPredicate

- (HDSyncPredicate)initWithExcludedSyncProvenances:(id)provenances dateInterval:(id)interval shouldIncludeDatelessObjects:(BOOL)objects includedObjectTypes:(id)types defaultMaximumObjectAge:(id)age defaultMaximumTombstoneAge:(id)tombstoneAge maximumObjectAgeByType:(id)type
{
  provenancesCopy = provenances;
  intervalCopy = interval;
  typesCopy = types;
  ageCopy = age;
  tombstoneAgeCopy = tombstoneAge;
  typeCopy = type;
  v35.receiver = self;
  v35.super_class = HDSyncPredicate;
  v21 = [(HDSyncPredicate *)&v35 init];
  if (v21)
  {
    v22 = [provenancesCopy copy];
    excludedSyncProvenances = v21->_excludedSyncProvenances;
    v21->_excludedSyncProvenances = v22;

    v24 = [intervalCopy copy];
    dateInterval = v21->_dateInterval;
    v21->_dateInterval = v24;

    v21->_shouldIncludeDatelessObjects = objects;
    v26 = [typesCopy copy];
    includedObjectTypes = v21->_includedObjectTypes;
    v21->_includedObjectTypes = v26;

    v28 = [ageCopy copy];
    defaultMaximumObjectAge = v21->_defaultMaximumObjectAge;
    v21->_defaultMaximumObjectAge = v28;

    v30 = [tombstoneAgeCopy copy];
    defaultMaximumTombstoneAge = v21->_defaultMaximumTombstoneAge;
    v21->_defaultMaximumTombstoneAge = v30;

    v32 = [typeCopy copy];
    maximumObjectAgeByType = v21->_maximumObjectAgeByType;
    v21->_maximumObjectAgeByType = v32;
  }

  return v21;
}

- (id)maximumObjectAgeForType:(id)type
{
  v4 = [(NSDictionary *)self->_maximumObjectAgeByType objectForKeyedSubscript:type];
  defaultMaximumObjectAge = v4;
  if (!v4)
  {
    defaultMaximumObjectAge = self->_defaultMaximumObjectAge;
  }

  v6 = defaultMaximumObjectAge;

  return defaultMaximumObjectAge;
}

- (unint64_t)hash
{
  v3 = [(NSSet *)self->_excludedSyncProvenances hash];
  v4 = [(NSDateInterval *)self->_dateInterval hash]^ v3;
  v5 = [(NSSet *)self->_includedObjectTypes hash];
  v6 = v4 ^ v5 ^ [(NSNumber *)self->_defaultMaximumObjectAge hash];
  v7 = [(NSNumber *)self->_defaultMaximumTombstoneAge hash];
  return v6 ^ v7 ^ [(NSDictionary *)self->_maximumObjectAgeByType hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  excludedSyncProvenances = self->_excludedSyncProvenances;
  v6 = equalCopy[2];
  if (excludedSyncProvenances != v6 && (!v6 || ![(NSSet *)excludedSyncProvenances isEqual:?]))
  {
    goto LABEL_21;
  }

  dateInterval = self->_dateInterval;
  v8 = equalCopy[3];
  if (dateInterval != v8 && (!v8 || ![(NSDateInterval *)dateInterval isEqual:?]))
  {
    goto LABEL_21;
  }

  if (self->_shouldIncludeDatelessObjects != *(equalCopy + 8))
  {
    goto LABEL_21;
  }

  includedObjectTypes = self->_includedObjectTypes;
  v10 = equalCopy[4];
  if (includedObjectTypes != v10 && (!v10 || ![(NSSet *)includedObjectTypes isEqual:?]))
  {
    goto LABEL_21;
  }

  defaultMaximumObjectAge = self->_defaultMaximumObjectAge;
  v12 = equalCopy[5];
  if (defaultMaximumObjectAge != v12 && (!v12 || ![(NSNumber *)defaultMaximumObjectAge isEqual:?]))
  {
    goto LABEL_21;
  }

  defaultMaximumTombstoneAge = self->_defaultMaximumTombstoneAge;
  v14 = equalCopy[6];
  if (defaultMaximumTombstoneAge != v14 && (!v14 || ![(NSNumber *)defaultMaximumTombstoneAge isEqual:?]))
  {
    goto LABEL_21;
  }

  maximumObjectAgeByType = self->_maximumObjectAgeByType;
  v16 = equalCopy[7];
  if (maximumObjectAgeByType == v16)
  {
    v17 = 1;
    goto LABEL_22;
  }

  if (v16)
  {
    v17 = [(NSDictionary *)maximumObjectAgeByType isEqual:?];
  }

  else
  {
LABEL_21:
    v17 = 0;
  }

LABEL_22:

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  excludedSyncProvenances = self->_excludedSyncProvenances;
  coderCopy = coder;
  [coderCopy encodeObject:excludedSyncProvenances forKey:@"hdsp_esp"];
  [coderCopy encodeObject:self->_dateInterval forKey:@"hdsp_interval"];
  [coderCopy encodeBool:self->_shouldIncludeDatelessObjects forKey:@"hdsp_datelessobjects"];
  [coderCopy encodeObject:self->_includedObjectTypes forKey:@"hdsp_types"];
  [coderCopy encodeObject:self->_defaultMaximumObjectAge forKey:@"hdsp_oage"];
  [coderCopy encodeObject:self->_defaultMaximumTombstoneAge forKey:@"hdsp_tage"];
  [coderCopy encodeObject:self->_maximumObjectAgeByType forKey:@"hdsp_ages"];
}

- (HDSyncPredicate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"hdsp_esp"];

  if (v6)
  {
    v19 = [HDSyncPredicate alloc];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hdsp_interval"];
    v18 = [coderCopy decodeBoolForKey:@"hdsp_datelessobjects"];
    selfCopy = self;
    v8 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"hdsp_types"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hdsp_oage"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"hdsp_tage"];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 hk_typesForDictionaryMapping:v13 to:objc_opt_class()];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"hdsp_ages"];
    v16 = [(HDSyncPredicate *)v19 initWithExcludedSyncProvenances:v6 dateInterval:v7 shouldIncludeDatelessObjects:v18 includedObjectTypes:v9 defaultMaximumObjectAge:v10 defaultMaximumTombstoneAge:v11 maximumObjectAgeByType:v15];

    self = selfCopy;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end
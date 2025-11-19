@interface HDSyncPredicate
- (BOOL)isEqual:(id)a3;
- (HDSyncPredicate)initWithCoder:(id)a3;
- (HDSyncPredicate)initWithExcludedSyncProvenances:(id)a3 dateInterval:(id)a4 shouldIncludeDatelessObjects:(BOOL)a5 includedObjectTypes:(id)a6 defaultMaximumObjectAge:(id)a7 defaultMaximumTombstoneAge:(id)a8 maximumObjectAgeByType:(id)a9;
- (id)maximumObjectAgeForType:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDSyncPredicate

- (HDSyncPredicate)initWithExcludedSyncProvenances:(id)a3 dateInterval:(id)a4 shouldIncludeDatelessObjects:(BOOL)a5 includedObjectTypes:(id)a6 defaultMaximumObjectAge:(id)a7 defaultMaximumTombstoneAge:(id)a8 maximumObjectAgeByType:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v35.receiver = self;
  v35.super_class = HDSyncPredicate;
  v21 = [(HDSyncPredicate *)&v35 init];
  if (v21)
  {
    v22 = [v15 copy];
    excludedSyncProvenances = v21->_excludedSyncProvenances;
    v21->_excludedSyncProvenances = v22;

    v24 = [v16 copy];
    dateInterval = v21->_dateInterval;
    v21->_dateInterval = v24;

    v21->_shouldIncludeDatelessObjects = a5;
    v26 = [v17 copy];
    includedObjectTypes = v21->_includedObjectTypes;
    v21->_includedObjectTypes = v26;

    v28 = [v18 copy];
    defaultMaximumObjectAge = v21->_defaultMaximumObjectAge;
    v21->_defaultMaximumObjectAge = v28;

    v30 = [v19 copy];
    defaultMaximumTombstoneAge = v21->_defaultMaximumTombstoneAge;
    v21->_defaultMaximumTombstoneAge = v30;

    v32 = [v20 copy];
    maximumObjectAgeByType = v21->_maximumObjectAgeByType;
    v21->_maximumObjectAgeByType = v32;
  }

  return v21;
}

- (id)maximumObjectAgeForType:(id)a3
{
  v4 = [(NSDictionary *)self->_maximumObjectAgeByType objectForKeyedSubscript:a3];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_21;
  }

  excludedSyncProvenances = self->_excludedSyncProvenances;
  v6 = v4[2];
  if (excludedSyncProvenances != v6 && (!v6 || ![(NSSet *)excludedSyncProvenances isEqual:?]))
  {
    goto LABEL_21;
  }

  dateInterval = self->_dateInterval;
  v8 = v4[3];
  if (dateInterval != v8 && (!v8 || ![(NSDateInterval *)dateInterval isEqual:?]))
  {
    goto LABEL_21;
  }

  if (self->_shouldIncludeDatelessObjects != *(v4 + 8))
  {
    goto LABEL_21;
  }

  includedObjectTypes = self->_includedObjectTypes;
  v10 = v4[4];
  if (includedObjectTypes != v10 && (!v10 || ![(NSSet *)includedObjectTypes isEqual:?]))
  {
    goto LABEL_21;
  }

  defaultMaximumObjectAge = self->_defaultMaximumObjectAge;
  v12 = v4[5];
  if (defaultMaximumObjectAge != v12 && (!v12 || ![(NSNumber *)defaultMaximumObjectAge isEqual:?]))
  {
    goto LABEL_21;
  }

  defaultMaximumTombstoneAge = self->_defaultMaximumTombstoneAge;
  v14 = v4[6];
  if (defaultMaximumTombstoneAge != v14 && (!v14 || ![(NSNumber *)defaultMaximumTombstoneAge isEqual:?]))
  {
    goto LABEL_21;
  }

  maximumObjectAgeByType = self->_maximumObjectAgeByType;
  v16 = v4[7];
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

- (void)encodeWithCoder:(id)a3
{
  excludedSyncProvenances = self->_excludedSyncProvenances;
  v5 = a3;
  [v5 encodeObject:excludedSyncProvenances forKey:@"hdsp_esp"];
  [v5 encodeObject:self->_dateInterval forKey:@"hdsp_interval"];
  [v5 encodeBool:self->_shouldIncludeDatelessObjects forKey:@"hdsp_datelessobjects"];
  [v5 encodeObject:self->_includedObjectTypes forKey:@"hdsp_types"];
  [v5 encodeObject:self->_defaultMaximumObjectAge forKey:@"hdsp_oage"];
  [v5 encodeObject:self->_defaultMaximumTombstoneAge forKey:@"hdsp_tage"];
  [v5 encodeObject:self->_maximumObjectAgeByType forKey:@"hdsp_ages"];
}

- (HDSyncPredicate)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClasses:v5 forKey:@"hdsp_esp"];

  if (v6)
  {
    v19 = [HDSyncPredicate alloc];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hdsp_interval"];
    v18 = [v4 decodeBoolForKey:@"hdsp_datelessobjects"];
    v20 = self;
    v8 = [MEMORY[0x277CBEB98] hk_typesForSetOf:objc_opt_class()];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"hdsp_types"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hdsp_oage"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"hdsp_tage"];
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = [v12 hk_typesForDictionaryMapping:v13 to:objc_opt_class()];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"hdsp_ages"];
    v16 = [(HDSyncPredicate *)v19 initWithExcludedSyncProvenances:v6 dateInterval:v7 shouldIncludeDatelessObjects:v18 includedObjectTypes:v9 defaultMaximumObjectAge:v10 defaultMaximumTombstoneAge:v11 maximumObjectAgeByType:v15];

    self = v20;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end
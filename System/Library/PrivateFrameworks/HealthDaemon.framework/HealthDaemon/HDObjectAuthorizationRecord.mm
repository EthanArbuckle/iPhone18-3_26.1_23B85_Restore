@interface HDObjectAuthorizationRecord
- (BOOL)isEqual:(id)a3;
- (HDObjectAuthorizationRecord)init;
- (HDObjectAuthorizationRecord)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDObjectAuthorizationRecord

- (HDObjectAuthorizationRecord)init
{
  v3.receiver = self;
  v3.super_class = HDObjectAuthorizationRecord;
  result = [(HDObjectAuthorizationRecord *)&v3 init];
  if (result)
  {
    result->_status = 0;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSUUID *)self->_objectUUID UUIDString];
  v5 = [(NSUUID *)self->_sourceUUID UUIDString];
  v6 = [(NSUUID *)self->_sessionUUID UUIDString];
  status = self->_status;
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_modificationDate];
  v9 = [v3 stringWithFormat:@"<Object: %@ Source: %@ Session: %@ Status: %ld Mod: %@>", v4, v5, v6, status, v8];

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_sourceUUID hash];
  v4 = [(NSUUID *)self->_objectUUID hash]^ v3;
  return v4 ^ [(NSUUID *)self->_sessionUUID hash]^ self->_status ^ self->_modificationDate;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v11 = (objc_opt_isKindOfClass() & 1) != 0 && ((sourceUUID = self->_sourceUUID, v6 = *(v4 + 2), sourceUUID == v6) || v6 && [(NSUUID *)sourceUUID isEqual:?]) && ((objectUUID = self->_objectUUID, v8 = *(v4 + 1), objectUUID == v8) || v8 && [(NSUUID *)objectUUID isEqual:?]) && ((sessionUUID = self->_sessionUUID, v10 = *(v4 + 3), sessionUUID == v10) || v10 && [(NSUUID *)sessionUUID isEqual:?]) && self->_status == *(v4 + 4) && self->_modificationDate == v4[5];

  return v11;
}

- (HDObjectAuthorizationRecord)initWithCoder:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v29.receiver = self;
  v29.super_class = HDObjectAuthorizationRecord;
  v5 = [(HDObjectAuthorizationRecord *)&v29 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  [v4 decodeDoubleForKey:@"mod"];
  v5->_modificationDate = v6;
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
  sourceUUID = v5->_sourceUUID;
  v5->_sourceUUID = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"oid"];
  objectUUID = v5->_objectUUID;
  v5->_objectUUID = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionid"];
  sessionUUID = v5->_sessionUUID;
  v5->_sessionUUID = v11;

  if (!v5->_sourceUUID || !v5->_objectUUID)
  {
    _HKInitializeLogging();
    v15 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v16 = v15;
      v17 = objc_opt_class();
      v19 = v5->_objectUUID;
      v18 = v5->_sourceUUID;
      *buf = 138543874;
      v31 = v17;
      v32 = 2114;
      v33 = v18;
      v34 = 2114;
      v35 = v19;
      v20 = v17;
      v21 = "Decoded %{public}@ has incomplete source and object IDs: %{public}@, %{public}@";
      v22 = v16;
      v23 = 32;
LABEL_10:
      _os_log_error_impl(&dword_228986000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  v13 = [v4 decodeIntegerForKey:@"stat"];
  v5->_status = v13;
  if (v13 >= 3)
  {
    _HKInitializeLogging();
    v24 = *MEMORY[0x277CCC2A0];
    if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_ERROR))
    {
      v16 = v24;
      v25 = objc_opt_class();
      status = v5->_status;
      *buf = 138543618;
      v31 = v25;
      v32 = 2048;
      v33 = status;
      v20 = v25;
      v21 = "Decoded %{public}@ has invalid authorization status: %ld";
      v22 = v16;
      v23 = 22;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

LABEL_5:
  v14 = v5;
LABEL_12:

  v27 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  sourceUUID = self->_sourceUUID;
  v5 = a3;
  [v5 encodeObject:sourceUUID forKey:@"sid"];
  [v5 encodeObject:self->_objectUUID forKey:@"oid"];
  [v5 encodeObject:self->_sessionUUID forKey:@"sessionid"];
  [v5 encodeInteger:self->_status forKey:@"stat"];
  [v5 encodeDouble:@"mod" forKey:self->_modificationDate];
}

@end
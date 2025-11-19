@interface HDAssociatableObjectReference
- (BOOL)isEqual:(id)a3;
- (HDAssociatableObjectReference)initWithCoder:(id)a3;
- (HDAssociatableObjectReference)initWithUUID:(id)a3 objectClass:(Class)a4;
- (id)persistentIDInTransaction:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDAssociatableObjectReference

- (HDAssociatableObjectReference)initWithUUID:(id)a3 objectClass:(Class)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v16.receiver = self;
  v16.super_class = HDAssociatableObjectReference;
  v7 = [(HDAssociatableObjectReference *)&v16 init];
  if (v7)
  {
    v8 = [v6 copy];
    UUID = v7->_UUID;
    v7->_UUID = v8;

    objc_storeStrong(&v7->_objectClass, a4);
    if (([(objc_class *)v7->_objectClass isEqual:objc_opt_class()]& 1) == 0)
    {
      _HKInitializeLogging();
      v10 = *MEMORY[0x277CCC2A0];
      if (os_log_type_enabled(*MEMORY[0x277CCC2A0], OS_LOG_TYPE_FAULT))
      {
        objectClass = v7->_objectClass;
        v14 = v10;
        v15 = NSStringFromClass(objectClass);
        *buf = 138543362;
        v18 = v15;
        _os_log_fault_impl(&dword_228986000, v14, OS_LOG_TYPE_FAULT, "Attempting to create associatable object for invalid class %{public}@", buf, 0xCu);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)persistentIDInTransaction:(id)a3 error:(id *)a4
{
  v6 = a3;
  if ([(objc_class *)self->_objectClass isEqual:objc_opt_class()]&& ([HDWorkoutActivityEntity activityEntityWithUUID:self->_UUID transaction:v6 error:a4], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v7, "persistentID")}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v4[1];
  UUID = self->_UUID;
  if (v5 != UUID && (!UUID || ![(NSUUID *)v5 isEqual:?]))
  {
    goto LABEL_8;
  }

  v7 = v4[2];
  objectClass = self->_objectClass;
  if (v7 == objectClass)
  {
    v9 = 1;
    goto LABEL_9;
  }

  if (objectClass)
  {
    v9 = [(objc_class *)v7 isEqual:?];
  }

  else
  {
LABEL_8:
    v9 = 0;
  }

LABEL_9:

  return v9;
}

- (HDAssociatableObjectReference)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"class"];

  v7 = NSClassFromString(v6);
  if (!v7)
  {
    v7 = objc_opt_class();
  }

  v8 = [(HDAssociatableObjectReference *)self initWithUUID:v5 objectClass:v7];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  UUID = self->_UUID;
  v5 = a3;
  [v5 encodeObject:UUID forKey:@"UUID"];
  v6 = NSStringFromClass(self->_objectClass);
  [v5 encodeObject:v6 forKey:@"class"];
}

@end
@interface HDAssociatableObjectReference
- (BOOL)isEqual:(id)equal;
- (HDAssociatableObjectReference)initWithCoder:(id)coder;
- (HDAssociatableObjectReference)initWithUUID:(id)d objectClass:(Class)class;
- (id)persistentIDInTransaction:(id)transaction error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDAssociatableObjectReference

- (HDAssociatableObjectReference)initWithUUID:(id)d objectClass:(Class)class
{
  v19 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v16.receiver = self;
  v16.super_class = HDAssociatableObjectReference;
  v7 = [(HDAssociatableObjectReference *)&v16 init];
  if (v7)
  {
    v8 = [dCopy copy];
    UUID = v7->_UUID;
    v7->_UUID = v8;

    objc_storeStrong(&v7->_objectClass, class);
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

- (id)persistentIDInTransaction:(id)transaction error:(id *)error
{
  transactionCopy = transaction;
  if ([(objc_class *)self->_objectClass isEqual:objc_opt_class()]&& ([HDWorkoutActivityEntity activityEntityWithUUID:self->_UUID transaction:transactionCopy error:error], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = equalCopy[1];
  UUID = self->_UUID;
  if (v5 != UUID && (!UUID || ![(NSUUID *)v5 isEqual:?]))
  {
    goto LABEL_8;
  }

  v7 = equalCopy[2];
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

- (HDAssociatableObjectReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"class"];

  v7 = NSClassFromString(v6);
  if (!v7)
  {
    v7 = objc_opt_class();
  }

  v8 = [(HDAssociatableObjectReference *)self initWithUUID:v5 objectClass:v7];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  UUID = self->_UUID;
  coderCopy = coder;
  [coderCopy encodeObject:UUID forKey:@"UUID"];
  v6 = NSStringFromClass(self->_objectClass);
  [coderCopy encodeObject:v6 forKey:@"class"];
}

@end
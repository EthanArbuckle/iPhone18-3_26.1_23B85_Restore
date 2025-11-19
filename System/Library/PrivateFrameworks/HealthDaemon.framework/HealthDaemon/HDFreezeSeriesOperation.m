@interface HDFreezeSeriesOperation
- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5;
- (HDFreezeSeriesOperation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDFreezeSeriesOperation

- (BOOL)performWithProfile:(id)a3 transaction:(id)a4 error:(id *)a5
{
  v6 = [(objc_class *)self->_entityClass freezeSeriesWithIdentifier:self->_identifier metadata:self->_metadata profile:a3 error:a5];
  frozenIdentifier = self->_frozenIdentifier;
  self->_frozenIdentifier = v6;

  return v6 != 0;
}

- (HDFreezeSeriesOperation)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HDFreezeSeriesOperation;
  v5 = [(HDFreezeSeriesOperation *)&v19 init];
  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  identifier = v5->_identifier;
  v5->_identifier = v6;

  v8 = [MEMORY[0x277CBEAC0] hk_secureCodingClasses];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"metadata"];
  metadata = v5->_metadata;
  v5->_metadata = v9;

  v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"entity_class"];
  v12 = v11;
  if (!v11 || (NSClassFromString(v11), v13 = objc_claimAutoreleasedReturnValue(), entityClass = v5->_entityClass, v5->_entityClass = v13, entityClass, v5->_entityClass))
  {

LABEL_5:
    v15 = v5;
    goto LABEL_6;
  }

  v17 = *MEMORY[0x277CCC330];
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_FAULT))
  {
    *v18 = 0;
    _os_log_fault_impl(&dword_228986000, v17, OS_LOG_TYPE_FAULT, "_entityClass != Nil", v18, 2u);
  }

  v15 = 0;
LABEL_6:

  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_metadata forKey:@"metadata"];
  v6 = NSStringFromClass(self->_entityClass);
  [v5 encodeObject:v6 forKey:@"entity_class"];
}

@end
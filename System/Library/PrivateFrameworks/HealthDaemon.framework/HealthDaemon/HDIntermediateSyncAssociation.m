@interface HDIntermediateSyncAssociation
+ (id)new;
- (HDIntermediateSyncAssociation)init;
- (HDIntermediateSyncAssociation)initWithAssociationUUID:(id)a3 type:(unint64_t)a4 behavior:(unint64_t)a5 creationDate:(id)a6 deleted:(BOOL)a7 destinationSubObjectUUID:(id)a8;
- (HDIntermediateSyncAssociation)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDIntermediateSyncAssociation

- (HDIntermediateSyncAssociation)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

+ (id)new
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE660];
  v4 = NSStringFromSelector(a2);
  [v2 raise:v3 format:{@"The -%@ method is not available on %@", v4, objc_opt_class()}];

  return 0;
}

- (HDIntermediateSyncAssociation)initWithAssociationUUID:(id)a3 type:(unint64_t)a4 behavior:(unint64_t)a5 creationDate:(id)a6 deleted:(BOOL)a7 destinationSubObjectUUID:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v25.receiver = self;
  v25.super_class = HDIntermediateSyncAssociation;
  v17 = [(HDIntermediateSyncAssociation *)&v25 init];
  if (v17)
  {
    v18 = [v14 copy];
    associationUUID = v17->_associationUUID;
    v17->_associationUUID = v18;

    v17->_type = a4;
    v17->_behavior = a5;
    v17->_deleted = a7;
    v20 = [v15 copy];
    creationDate = v17->_creationDate;
    v17->_creationDate = v20;

    v22 = [v16 copy];
    destinationSubObjectUUID = v17->_destinationSubObjectUUID;
    v17->_destinationSubObjectUUID = v22;
  }

  return v17;
}

- (void)encodeWithCoder:(id)a3
{
  associationUUID = self->_associationUUID;
  v5 = a3;
  [v5 encodeObject:associationUUID forKey:@"UUID"];
  [v5 encodeObject:self->_creationDate forKey:@"CreationDate"];
  [v5 encodeInteger:self->_type forKey:@"Type"];
  [v5 encodeInteger:self->_behavior forKey:@"Behavior"];
  [v5 encodeBool:self->_deleted forKey:@"Deleted"];
  [v5 encodeObject:self->_destinationSubObjectUUID forKey:@"SubObjectUUID"];
}

- (HDIntermediateSyncAssociation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  v7 = [v4 decodeIntegerForKey:@"Type"];
  v8 = [v4 decodeIntegerForKey:@"Behavior"];
  v9 = [v4 decodeBoolForKey:@"Deleted"];
  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SubObjectUUID"];

  v11 = [(HDIntermediateSyncAssociation *)self initWithAssociationUUID:v5 type:v7 behavior:v8 creationDate:v6 deleted:v9 destinationSubObjectUUID:v10];
  return v11;
}

@end
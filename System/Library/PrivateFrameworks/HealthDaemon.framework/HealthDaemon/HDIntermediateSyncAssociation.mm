@interface HDIntermediateSyncAssociation
+ (id)new;
- (HDIntermediateSyncAssociation)init;
- (HDIntermediateSyncAssociation)initWithAssociationUUID:(id)d type:(unint64_t)type behavior:(unint64_t)behavior creationDate:(id)date deleted:(BOOL)deleted destinationSubObjectUUID:(id)iD;
- (HDIntermediateSyncAssociation)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
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

- (HDIntermediateSyncAssociation)initWithAssociationUUID:(id)d type:(unint64_t)type behavior:(unint64_t)behavior creationDate:(id)date deleted:(BOOL)deleted destinationSubObjectUUID:(id)iD
{
  dCopy = d;
  dateCopy = date;
  iDCopy = iD;
  v25.receiver = self;
  v25.super_class = HDIntermediateSyncAssociation;
  v17 = [(HDIntermediateSyncAssociation *)&v25 init];
  if (v17)
  {
    v18 = [dCopy copy];
    associationUUID = v17->_associationUUID;
    v17->_associationUUID = v18;

    v17->_type = type;
    v17->_behavior = behavior;
    v17->_deleted = deleted;
    v20 = [dateCopy copy];
    creationDate = v17->_creationDate;
    v17->_creationDate = v20;

    v22 = [iDCopy copy];
    destinationSubObjectUUID = v17->_destinationSubObjectUUID;
    v17->_destinationSubObjectUUID = v22;
  }

  return v17;
}

- (void)encodeWithCoder:(id)coder
{
  associationUUID = self->_associationUUID;
  coderCopy = coder;
  [coderCopy encodeObject:associationUUID forKey:@"UUID"];
  [coderCopy encodeObject:self->_creationDate forKey:@"CreationDate"];
  [coderCopy encodeInteger:self->_type forKey:@"Type"];
  [coderCopy encodeInteger:self->_behavior forKey:@"Behavior"];
  [coderCopy encodeBool:self->_deleted forKey:@"Deleted"];
  [coderCopy encodeObject:self->_destinationSubObjectUUID forKey:@"SubObjectUUID"];
}

- (HDIntermediateSyncAssociation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UUID"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CreationDate"];
  v7 = [coderCopy decodeIntegerForKey:@"Type"];
  v8 = [coderCopy decodeIntegerForKey:@"Behavior"];
  v9 = [coderCopy decodeBoolForKey:@"Deleted"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SubObjectUUID"];

  v11 = [(HDIntermediateSyncAssociation *)self initWithAssociationUUID:v5 type:v7 behavior:v8 creationDate:v6 deleted:v9 destinationSubObjectUUID:v10];
  return v11;
}

@end
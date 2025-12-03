@interface HDConcreteSyncIdentity
+ (id)new;
- (BOOL)isEqual:(id)equal;
- (HDConcreteSyncIdentity)init;
- (id)description;
- (id)initWithIdentity:(void *)identity entity:(char)entity isChild:;
@end

@implementation HDConcreteSyncIdentity

- (id)initWithIdentity:(void *)identity entity:(char)entity isChild:
{
  v7 = a2;
  identityCopy = identity;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = HDConcreteSyncIdentity;
    self = objc_msgSendSuper2(&v14, sel_init);
    if (self)
    {
      v9 = [v7 copy];
      v10 = *(self + 2);
      *(self + 2) = v9;

      v11 = [identityCopy copy];
      v12 = *(self + 3);
      *(self + 3) = v11;

      *(self + 8) = entity;
    }
  }

  return self;
}

- (HDConcreteSyncIdentity)init
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HDSyncIdentity *)self->_identity isEqual:equalCopy[2]]&& [(HDSQLiteEntity *)self->_entity isEqual:equalCopy[3]];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ [%lld] %@>", v5, -[HDSQLiteEntity persistentID](self->_entity, "persistentID"), self->_identity];

  return v6;
}

@end
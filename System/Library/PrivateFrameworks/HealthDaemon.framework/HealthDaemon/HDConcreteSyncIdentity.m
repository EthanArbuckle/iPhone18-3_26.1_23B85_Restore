@interface HDConcreteSyncIdentity
+ (id)new;
- (BOOL)isEqual:(id)a3;
- (HDConcreteSyncIdentity)init;
- (id)description;
- (id)initWithIdentity:(void *)a3 entity:(char)a4 isChild:;
@end

@implementation HDConcreteSyncIdentity

- (id)initWithIdentity:(void *)a3 entity:(char)a4 isChild:
{
  v7 = a2;
  v8 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = HDConcreteSyncIdentity;
    a1 = objc_msgSendSuper2(&v14, sel_init);
    if (a1)
    {
      v9 = [v7 copy];
      v10 = *(a1 + 2);
      *(a1 + 2) = v9;

      v11 = [v8 copy];
      v12 = *(a1 + 3);
      *(a1 + 3) = v11;

      *(a1 + 8) = a4;
    }
  }

  return a1;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(HDSyncIdentity *)self->_identity isEqual:v4[2]]&& [(HDSQLiteEntity *)self->_entity isEqual:v4[3]];

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
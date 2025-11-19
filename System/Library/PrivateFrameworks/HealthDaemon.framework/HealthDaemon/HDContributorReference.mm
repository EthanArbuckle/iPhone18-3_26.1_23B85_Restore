@interface HDContributorReference
+ (id)contributorReferenceForNoContributor;
+ (id)contributorReferenceForOtherUserWithUUID:(id)a3;
+ (id)contributorReferenceForPersistentID:(id)a3;
+ (id)contributorReferenceForPrimaryUser;
- (BOOL)isEqual:(id)a3;
- (HDContributorReference)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)_initWithContributorType:(void *)a3 persistentID:(void *)a4 uuid:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HDContributorReference

- (void)_initWithContributorType:(void *)a3 persistentID:(void *)a4 uuid:
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (a1)
  {
    if (v7 && v8)
    {
      v16 = [MEMORY[0x277CCA890] currentHandler];
      [v16 handleFailureInMethod:sel__initWithContributorType_persistentID_uuid_ object:a1 file:@"HDContributorReference.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"persistentID == nil || uuid == nil"}];
    }

    v17.receiver = a1;
    v17.super_class = HDContributorReference;
    v10 = objc_msgSendSuper2(&v17, sel_init);
    a1 = v10;
    if (v10)
    {
      v10[1] = a2;
      v11 = [v7 copy];
      v12 = a1[2];
      a1[2] = v11;

      v13 = [v9 copy];
      v14 = a1[3];
      a1[3] = v13;
    }
  }

  return a1;
}

+ (id)contributorReferenceForPersistentID:(id)a3
{
  v3 = a3;
  v4 = [[HDContributorReference alloc] _initWithContributorType:v3 persistentID:0 uuid:?];

  return v4;
}

+ (id)contributorReferenceForNoContributor
{
  v2 = [[HDContributorReference alloc] _initWithContributorType:0 persistentID:0 uuid:?];

  return v2;
}

+ (id)contributorReferenceForPrimaryUser
{
  v2 = [[HDContributorReference alloc] _initWithContributorType:0 persistentID:0 uuid:?];

  return v2;
}

+ (id)contributorReferenceForOtherUserWithUUID:(id)a3
{
  v3 = a3;
  v4 = [[HDContributorReference alloc] _initWithContributorType:0 persistentID:v3 uuid:?];

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = self->_contributorType - 2;
  if (v5 > 2)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_278623388[v5];
  }

  return [v3 stringWithFormat:@"<%@:%p %@, %@, %@>", v4, self, v6, self->_persistentID, self->_UUID];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (self->_contributorType != v4[1])
  {
    goto LABEL_9;
  }

  persistentID = self->_persistentID;
  v6 = v4[2];
  if (persistentID != v6 && (!v6 || ![(NSNumber *)persistentID isEqual:?]))
  {
    goto LABEL_9;
  }

  UUID = self->_UUID;
  v8 = v4[3];
  if (UUID == v8)
  {
    v9 = 1;
    goto LABEL_10;
  }

  if (v8)
  {
    v9 = [(NSUUID *)UUID isEqual:?];
  }

  else
  {
LABEL_9:
    v9 = 0;
  }

LABEL_10:

  return v9;
}

- (HDContributorReference)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HDContributorReference;
  v5 = [(HDContributorReference *)&v11 init];
  if (v5)
  {
    v5->_contributorType = [v4 decodeIntForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    UUID = v5->_UUID;
    v5->_UUID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  contributorType = self->_contributorType;
  v5 = a3;
  [v5 encodeInteger:contributorType forKey:@"type"];
  [v5 encodeObject:self->_persistentID forKey:@"persistentID"];
  [v5 encodeObject:self->_UUID forKey:@"uuid"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HDContributorReference allocWithZone:a3];
  contributorType = self->_contributorType;
  persistentID = self->_persistentID;
  UUID = self->_UUID;

  return [(HDContributorReference *)v4 _initWithContributorType:persistentID persistentID:UUID uuid:?];
}

@end
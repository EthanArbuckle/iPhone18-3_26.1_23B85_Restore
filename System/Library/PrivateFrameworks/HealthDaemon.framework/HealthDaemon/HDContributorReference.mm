@interface HDContributorReference
+ (id)contributorReferenceForNoContributor;
+ (id)contributorReferenceForOtherUserWithUUID:(id)d;
+ (id)contributorReferenceForPersistentID:(id)d;
+ (id)contributorReferenceForPrimaryUser;
- (BOOL)isEqual:(id)equal;
- (HDContributorReference)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)_initWithContributorType:(void *)type persistentID:(void *)d uuid:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDContributorReference

- (void)_initWithContributorType:(void *)type persistentID:(void *)d uuid:
{
  typeCopy = type;
  dCopy = d;
  v9 = dCopy;
  if (self)
  {
    if (typeCopy && dCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel__initWithContributorType_persistentID_uuid_ object:self file:@"HDContributorReference.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"persistentID == nil || uuid == nil"}];
    }

    v17.receiver = self;
    v17.super_class = HDContributorReference;
    v10 = objc_msgSendSuper2(&v17, sel_init);
    self = v10;
    if (v10)
    {
      v10[1] = a2;
      v11 = [typeCopy copy];
      v12 = self[2];
      self[2] = v11;

      v13 = [v9 copy];
      v14 = self[3];
      self[3] = v13;
    }
  }

  return self;
}

+ (id)contributorReferenceForPersistentID:(id)d
{
  dCopy = d;
  v4 = [[HDContributorReference alloc] _initWithContributorType:dCopy persistentID:0 uuid:?];

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

+ (id)contributorReferenceForOtherUserWithUUID:(id)d
{
  dCopy = d;
  v4 = [[HDContributorReference alloc] _initWithContributorType:0 persistentID:dCopy uuid:?];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  if (self->_contributorType != equalCopy[1])
  {
    goto LABEL_9;
  }

  persistentID = self->_persistentID;
  v6 = equalCopy[2];
  if (persistentID != v6 && (!v6 || ![(NSNumber *)persistentID isEqual:?]))
  {
    goto LABEL_9;
  }

  UUID = self->_UUID;
  v8 = equalCopy[3];
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

- (HDContributorReference)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HDContributorReference;
  v5 = [(HDContributorReference *)&v11 init];
  if (v5)
  {
    v5->_contributorType = [coderCopy decodeIntForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"persistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    UUID = v5->_UUID;
    v5->_UUID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  contributorType = self->_contributorType;
  coderCopy = coder;
  [coderCopy encodeInteger:contributorType forKey:@"type"];
  [coderCopy encodeObject:self->_persistentID forKey:@"persistentID"];
  [coderCopy encodeObject:self->_UUID forKey:@"uuid"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HDContributorReference allocWithZone:zone];
  contributorType = self->_contributorType;
  persistentID = self->_persistentID;
  UUID = self->_UUID;

  return [(HDContributorReference *)v4 _initWithContributorType:persistentID persistentID:UUID uuid:?];
}

@end
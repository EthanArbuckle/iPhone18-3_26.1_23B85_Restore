@interface MRApplicationActivity
- (BOOL)isEqual:(id)equal;
- (MRApplicationActivity)initWithCoder:(id)coder;
- (MRApplicationActivity)initWithPrimaryAppDisplayID:(id)d secondaryAppDisplayID:(id)iD;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (uint64_t)_copyWithZone:(Class)zone usingConcreteClass:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MRApplicationActivity

- (MRApplicationActivity)initWithPrimaryAppDisplayID:(id)d secondaryAppDisplayID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v16.receiver = self;
  v16.super_class = MRApplicationActivity;
  v8 = [(MRApplicationActivity *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v9;

    v11 = [dCopy copy];
    primaryApplicationDisplayID = v8->_primaryApplicationDisplayID;
    v8->_primaryApplicationDisplayID = v11;

    v13 = [iDCopy copy];
    secondaryApplicationDisplayID = v8->_secondaryApplicationDisplayID;
    v8->_secondaryApplicationDisplayID = v13;

    v8->_status = 0;
    v8->_creatorProcessID = getpid();
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    uniqueIdentifier = [equalCopy uniqueIdentifier];
    v6 = [uniqueIdentifier isEqual:self->_uniqueIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)description
{
  v3 = self->_status - 1;
  if (v3 > 3)
  {
    v4 = @"Unknown";
  }

  else
  {
    v4 = off_1E76A4D58[v3];
  }

  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  uUIDString = [(NSUUID *)self->_uniqueIdentifier UUIDString];
  v8 = [v5 stringWithFormat:@"<%@ %p id=%@, primary=%@, secondary=%@, status=%@, creatorPID=%d>", v6, self, uUIDString, self->_primaryApplicationDisplayID, self->_secondaryApplicationDisplayID, v4, self->_creatorProcessID];

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy allowsKeyedCoding])
  {
    [coderCopy encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
    [coderCopy encodeObject:self->_primaryApplicationDisplayID forKey:@"primaryApplicationDisplayID"];
    [coderCopy encodeObject:self->_secondaryApplicationDisplayID forKey:@"secondaryApplicationDisplayID"];
    [coderCopy encodeInt32:self->_status forKey:@"status"];
    [coderCopy encodeInt:self->_creatorProcessID forKey:@"creatorProcessID"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"coder must support key-value coding"];
  }
}

- (MRApplicationActivity)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = MRApplicationActivity;
  v5 = [(MRApplicationActivity *)&v16 init];
  if (v5)
  {
    if ([coderCopy allowsKeyedCoding])
    {
      v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
      v7 = [v6 copy];
      uniqueIdentifier = v5->_uniqueIdentifier;
      v5->_uniqueIdentifier = v7;

      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"primaryApplicationDisplayID"];
      v10 = [v9 copy];
      primaryApplicationDisplayID = v5->_primaryApplicationDisplayID;
      v5->_primaryApplicationDisplayID = v10;

      v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"secondaryApplicationDisplayID"];
      v13 = [v12 copy];
      secondaryApplicationDisplayID = v5->_secondaryApplicationDisplayID;
      v5->_secondaryApplicationDisplayID = v13;

      v5->_status = [coderCopy decodeInt32ForKey:@"status"];
      v5->_creatorProcessID = [coderCopy decodeIntForKey:@"creatorProcessID"];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"coder must support key-value coding"];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MRApplicationActivity *)self _copyWithZone:v4 usingConcreteClass:v5];
}

- (uint64_t)_copyWithZone:(Class)zone usingConcreteClass:
{
  if (!self)
  {
    return 0;
  }

  v4 = [[zone alloc] initWithPrimaryAppDisplayID:*(self + 16) secondaryAppDisplayID:*(self + 24)];
  v5 = [*(self + 8) copy];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  *(v4 + 36) = *(self + 36);
  *(v4 + 32) = *(self + 32);
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();

  return [(MRApplicationActivity *)self _copyWithZone:v4 usingConcreteClass:v5];
}

@end
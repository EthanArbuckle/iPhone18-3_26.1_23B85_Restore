@interface MRApplicationActivity
- (BOOL)isEqual:(id)a3;
- (MRApplicationActivity)initWithCoder:(id)a3;
- (MRApplicationActivity)initWithPrimaryAppDisplayID:(id)a3 secondaryAppDisplayID:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (uint64_t)_copyWithZone:(Class)a3 usingConcreteClass:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MRApplicationActivity

- (MRApplicationActivity)initWithPrimaryAppDisplayID:(id)a3 secondaryAppDisplayID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = MRApplicationActivity;
  v8 = [(MRApplicationActivity *)&v16 init];
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v9;

    v11 = [v6 copy];
    primaryApplicationDisplayID = v8->_primaryApplicationDisplayID;
    v8->_primaryApplicationDisplayID = v11;

    v13 = [v7 copy];
    secondaryApplicationDisplayID = v8->_secondaryApplicationDisplayID;
    v8->_secondaryApplicationDisplayID = v13;

    v8->_status = 0;
    v8->_creatorProcessID = getpid();
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 uniqueIdentifier];
    v6 = [v5 isEqual:self->_uniqueIdentifier];
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
  v7 = [(NSUUID *)self->_uniqueIdentifier UUIDString];
  v8 = [v5 stringWithFormat:@"<%@ %p id=%@, primary=%@, secondary=%@, status=%@, creatorPID=%d>", v6, self, v7, self->_primaryApplicationDisplayID, self->_secondaryApplicationDisplayID, v4, self->_creatorProcessID];

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 allowsKeyedCoding])
  {
    [v4 encodeObject:self->_uniqueIdentifier forKey:@"uniqueIdentifier"];
    [v4 encodeObject:self->_primaryApplicationDisplayID forKey:@"primaryApplicationDisplayID"];
    [v4 encodeObject:self->_secondaryApplicationDisplayID forKey:@"secondaryApplicationDisplayID"];
    [v4 encodeInt32:self->_status forKey:@"status"];
    [v4 encodeInt:self->_creatorProcessID forKey:@"creatorProcessID"];
  }

  else
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"coder must support key-value coding"];
  }
}

- (MRApplicationActivity)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = MRApplicationActivity;
  v5 = [(MRApplicationActivity *)&v16 init];
  if (v5)
  {
    if ([v4 allowsKeyedCoding])
    {
      v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
      v7 = [v6 copy];
      uniqueIdentifier = v5->_uniqueIdentifier;
      v5->_uniqueIdentifier = v7;

      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"primaryApplicationDisplayID"];
      v10 = [v9 copy];
      primaryApplicationDisplayID = v5->_primaryApplicationDisplayID;
      v5->_primaryApplicationDisplayID = v10;

      v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"secondaryApplicationDisplayID"];
      v13 = [v12 copy];
      secondaryApplicationDisplayID = v5->_secondaryApplicationDisplayID;
      v5->_secondaryApplicationDisplayID = v13;

      v5->_status = [v4 decodeInt32ForKey:@"status"];
      v5->_creatorProcessID = [v4 decodeIntForKey:@"creatorProcessID"];
    }

    else
    {
      [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"coder must support key-value coding"];
    }
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MRApplicationActivity *)self _copyWithZone:v4 usingConcreteClass:v5];
}

- (uint64_t)_copyWithZone:(Class)a3 usingConcreteClass:
{
  if (!a1)
  {
    return 0;
  }

  v4 = [[a3 alloc] initWithPrimaryAppDisplayID:*(a1 + 16) secondaryAppDisplayID:*(a1 + 24)];
  v5 = [*(a1 + 8) copy];
  v6 = *(v4 + 8);
  *(v4 + 8) = v5;

  *(v4 + 36) = *(a1 + 36);
  *(v4 + 32) = *(a1 + 32);
  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(MRApplicationActivity *)self _copyWithZone:v4 usingConcreteClass:v5];
}

@end
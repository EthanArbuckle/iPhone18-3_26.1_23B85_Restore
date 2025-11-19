@interface PSYSyncOptions
- (PSYSyncOptions)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PSYSyncOptions

- (PSYSyncOptions)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PSYSyncOptions;
  v5 = [(PSYSyncOptions *)&v13 init];
  if (v5)
  {
    v5->_dryRun = [v4 decodeBoolForKey:@"dryRun"];
    v5->_terminateDuringDryRun = [v4 decodeBoolForKey:@"terminateDuringDryRun"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"testInput"];
    testInput = v5->_testInput;
    v5->_testInput = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingIdentifier"];
    pairingIdentifier = v5->_pairingIdentifier;
    v5->_pairingIdentifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v10;

    v5->_syncSessionType = [v4 decodeIntegerForKey:@"syncSessionType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  dryRun = self->_dryRun;
  v5 = a3;
  [v5 encodeBool:dryRun forKey:@"dryRun"];
  [v5 encodeBool:self->_terminateDuringDryRun forKey:@"terminateDuringDryRun"];
  [v5 encodeObject:self->_testInput forKey:@"testInput"];
  [v5 encodeObject:self->_pairingIdentifier forKey:@"pairingIdentifier"];
  [v5 encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
  [v5 encodeInteger:self->_syncSessionType forKey:@"syncSessionType"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(NSUUID *)self->_pairingIdentifier UUIDString];
  v5 = [(NSUUID *)self->_sessionIdentifier UUIDString];
  v6 = NSStringfromPSYSyncSessionType(self->_syncSessionType);
  v7 = [v3 stringWithFormat:@"pairingIdentifier=%@ sessionIdentifier=%@ syncSessionType=%@", v4, v5, v6];

  return v7;
}

@end
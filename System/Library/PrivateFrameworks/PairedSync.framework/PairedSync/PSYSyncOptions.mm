@interface PSYSyncOptions
- (PSYSyncOptions)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PSYSyncOptions

- (PSYSyncOptions)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = PSYSyncOptions;
  v5 = [(PSYSyncOptions *)&v13 init];
  if (v5)
  {
    v5->_dryRun = [coderCopy decodeBoolForKey:@"dryRun"];
    v5->_terminateDuringDryRun = [coderCopy decodeBoolForKey:@"terminateDuringDryRun"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"testInput"];
    testInput = v5->_testInput;
    v5->_testInput = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingIdentifier"];
    pairingIdentifier = v5->_pairingIdentifier;
    v5->_pairingIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionIdentifier"];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = v10;

    v5->_syncSessionType = [coderCopy decodeIntegerForKey:@"syncSessionType"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  dryRun = self->_dryRun;
  coderCopy = coder;
  [coderCopy encodeBool:dryRun forKey:@"dryRun"];
  [coderCopy encodeBool:self->_terminateDuringDryRun forKey:@"terminateDuringDryRun"];
  [coderCopy encodeObject:self->_testInput forKey:@"testInput"];
  [coderCopy encodeObject:self->_pairingIdentifier forKey:@"pairingIdentifier"];
  [coderCopy encodeObject:self->_sessionIdentifier forKey:@"sessionIdentifier"];
  [coderCopy encodeInteger:self->_syncSessionType forKey:@"syncSessionType"];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  uUIDString = [(NSUUID *)self->_pairingIdentifier UUIDString];
  uUIDString2 = [(NSUUID *)self->_sessionIdentifier UUIDString];
  v6 = NSStringfromPSYSyncSessionType(self->_syncSessionType);
  v7 = [v3 stringWithFormat:@"pairingIdentifier=%@ sessionIdentifier=%@ syncSessionType=%@", uUIDString, uUIDString2, v6];

  return v7;
}

@end
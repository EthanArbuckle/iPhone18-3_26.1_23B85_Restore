@interface CHSReaperRequest
- (CHSReaperRequest)initWithBSXPCCoder:(id)a3;
- (CHSReaperRequest)initWithCoder:(id)a3;
- (CHSReaperRequest)initWithDryRun:(BOOL)a3 scenario:(unint64_t)a4;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CHSReaperRequest

- (CHSReaperRequest)initWithDryRun:(BOOL)a3 scenario:(unint64_t)a4
{
  self->_dryRun = a3;
  self->_scenario = a4;
  return self;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->_dryRun forKey:@"_dryRun"];
  [v4 encodeInteger:self->_scenario forKey:@"_scenario"];
}

- (CHSReaperRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = -[CHSReaperRequest initWithDryRun:scenario:](self, "initWithDryRun:scenario:", [v4 decodeBoolForKey:@"_dryRun"], objc_msgSend(v4, "decodeIntegerForKey:", @"_scenario"));

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  [v4 encodeBool:self->_dryRun forKey:@"_dryRun"];
  [v4 encodeUInt64:self->_scenario forKey:@"_scenario"];
}

- (CHSReaperRequest)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = -[CHSReaperRequest initWithDryRun:scenario:](self, "initWithDryRun:scenario:", [v4 decodeBoolForKey:@"_dryRun"], objc_msgSend(v4, "decodeUInt64ForKey:", @"_scenario"));

  return v5;
}

@end
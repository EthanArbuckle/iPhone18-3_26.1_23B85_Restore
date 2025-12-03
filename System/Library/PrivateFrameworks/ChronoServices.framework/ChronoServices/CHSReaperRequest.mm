@interface CHSReaperRequest
- (CHSReaperRequest)initWithBSXPCCoder:(id)coder;
- (CHSReaperRequest)initWithCoder:(id)coder;
- (CHSReaperRequest)initWithDryRun:(BOOL)run scenario:(unint64_t)scenario;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CHSReaperRequest

- (CHSReaperRequest)initWithDryRun:(BOOL)run scenario:(unint64_t)scenario
{
  self->_dryRun = run;
  self->_scenario = scenario;
  return self;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_dryRun forKey:@"_dryRun"];
  [coderCopy encodeInteger:self->_scenario forKey:@"_scenario"];
}

- (CHSReaperRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[CHSReaperRequest initWithDryRun:scenario:](self, "initWithDryRun:scenario:", [coderCopy decodeBoolForKey:@"_dryRun"], objc_msgSend(coderCopy, "decodeIntegerForKey:", @"_scenario"));

  return v5;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeBool:self->_dryRun forKey:@"_dryRun"];
  [coderCopy encodeUInt64:self->_scenario forKey:@"_scenario"];
}

- (CHSReaperRequest)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = -[CHSReaperRequest initWithDryRun:scenario:](self, "initWithDryRun:scenario:", [coderCopy decodeBoolForKey:@"_dryRun"], objc_msgSend(coderCopy, "decodeUInt64ForKey:", @"_scenario"));

  return v5;
}

@end
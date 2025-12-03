@interface CDPRecoveryFlowContext
- (CDPRecoveryFlowContext)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CDPRecoveryFlowContext

- (CDPRecoveryFlowContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CDPRecoveryFlowContext *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = v5->_context;
    v5->_context = v6;

    v5->_hasPeersForRemoteApproval = [coderCopy decodeBoolForKey:@"_hasPeersForRemoteApproval"];
    v5->_isWalrusEnabled = [coderCopy decodeBoolForKey:@"_isWalrusEnabled"];
    [coderCopy decodeDoubleForKey:@"_rpdProbationDuration"];
    v5->_rpdProbationDuration = v8;
    v5->_hasViableICSC = [coderCopy decodeBoolForKey:@"_hasViableICSC"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  context = self->_context;
  coderCopy = coder;
  [coderCopy encodeObject:context forKey:@"_context"];
  [coderCopy encodeBool:self->_hasPeersForRemoteApproval forKey:@"_hasPeersForRemoteApproval"];
  [coderCopy encodeBool:self->_isWalrusEnabled forKey:@"_isWalrusEnabled"];
  [coderCopy encodeDouble:@"_rpdProbationDuration" forKey:self->_rpdProbationDuration];
  [coderCopy encodeBool:self->_hasViableICSC forKey:@"_hasViableICSC"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(CDPRecoveryFlowContext);
  v5 = [(CDPContext *)self->_context copy];
  context = v4->_context;
  v4->_context = v5;

  v4->_hasPeersForRemoteApproval = self->_hasPeersForRemoteApproval;
  v4->_isWalrusEnabled = self->_isWalrusEnabled;
  v4->_rpdProbationDuration = self->_rpdProbationDuration;
  v4->_hasViableICSC = self->_hasViableICSC;
  return v4;
}

@end
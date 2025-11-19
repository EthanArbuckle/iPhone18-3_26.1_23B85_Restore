@interface CDPRecoveryFlowContext
- (CDPRecoveryFlowContext)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CDPRecoveryFlowContext

- (CDPRecoveryFlowContext)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CDPRecoveryFlowContext *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_context"];
    context = v5->_context;
    v5->_context = v6;

    v5->_hasPeersForRemoteApproval = [v4 decodeBoolForKey:@"_hasPeersForRemoteApproval"];
    v5->_isWalrusEnabled = [v4 decodeBoolForKey:@"_isWalrusEnabled"];
    [v4 decodeDoubleForKey:@"_rpdProbationDuration"];
    v5->_rpdProbationDuration = v8;
    v5->_hasViableICSC = [v4 decodeBoolForKey:@"_hasViableICSC"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  context = self->_context;
  v5 = a3;
  [v5 encodeObject:context forKey:@"_context"];
  [v5 encodeBool:self->_hasPeersForRemoteApproval forKey:@"_hasPeersForRemoteApproval"];
  [v5 encodeBool:self->_isWalrusEnabled forKey:@"_isWalrusEnabled"];
  [v5 encodeDouble:@"_rpdProbationDuration" forKey:self->_rpdProbationDuration];
  [v5 encodeBool:self->_hasViableICSC forKey:@"_hasViableICSC"];
}

- (id)copyWithZone:(_NSZone *)a3
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
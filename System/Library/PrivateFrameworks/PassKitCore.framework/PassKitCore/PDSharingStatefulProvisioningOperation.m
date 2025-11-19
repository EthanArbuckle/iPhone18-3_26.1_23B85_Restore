@interface PDSharingStatefulProvisioningOperation
- (id)copyWithoutCompletion;
- (id)description;
@end

@implementation PDSharingStatefulProvisioningOperation

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"<%@: %p ", v4, self];;

  [v5 appendFormat:@"shareIdentifier: '%@'; ", self->_shareIdentifier];
  v6 = PKSharingLoggableMailboxAddress();
  [v5 appendFormat:@"transportIdentifier: '%@'; ", v6];

  if (self->_isForegroundOperation)
  {
    v7 = @"Yes";
  }

  else
  {
    v7 = @"No";
  }

  [v5 appendFormat:@"foreground: '%@'; ", v7];
  if (self->_isWaitingOnUserAction)
  {
    v8 = @"Yes";
  }

  else
  {
    v8 = @"No";
  }

  [v5 appendFormat:@"isWaitingOnUserAction: '%@'; ", v8];
  if (self->_requiresSenderActivationVerification)
  {
    v9 = @"Yes";
  }

  else
  {
    v9 = @"No";
  }

  [v5 appendFormat:@"requiresSenderActivationVerification: '%@'; ", v9];
  [v5 appendFormat:@">"];
  v10 = [NSString stringWithString:v5];

  return v10;
}

- (id)copyWithoutCompletion
{
  v3 = objc_alloc_init(PDSharingStatefulProvisioningOperation);
  v4 = [(NSString *)self->_shareIdentifier copy];
  shareIdentifier = v3->_shareIdentifier;
  v3->_shareIdentifier = v4;

  v6 = [(NSString *)self->_transportIdentifier copy];
  transportIdentifier = v3->_transportIdentifier;
  v3->_transportIdentifier = v6;

  v3->_isForegroundOperation = self->_isForegroundOperation;
  v3->_isWaitingOnUserAction = self->_isWaitingOnUserAction;
  v3->_requiresSenderActivationVerification = self->_requiresSenderActivationVerification;
  return v3;
}

@end
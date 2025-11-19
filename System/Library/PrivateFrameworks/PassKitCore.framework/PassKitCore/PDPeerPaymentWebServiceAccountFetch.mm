@interface PDPeerPaymentWebServiceAccountFetch
- (id)diagnosticReasonString;
@end

@implementation PDPeerPaymentWebServiceAccountFetch

- (id)diagnosticReasonString
{
  if ([(NSMutableSet *)self->_diagnosticReasons count])
  {
    v3 = [(NSMutableSet *)self->_diagnosticReasons allObjects];
    v4 = [v3 sortedArrayUsingSelector:"compare:"];
    v5 = [v4 componentsJoinedByString:{@", "}];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end
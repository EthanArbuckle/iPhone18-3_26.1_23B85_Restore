@interface DRSessionDestination
- (id)description;
@end

@implementation DRSessionDestination

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSString stringWithFormat:@"<%@ %p clientSession=%@ pid=%d policyDriven=%i>", v4, self, self->_clientSession, [(NSXPCConnection *)self->_connection processIdentifier], self->_policyDriven];

  return v5;
}

@end
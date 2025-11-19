@interface DADeviceResolveOperation
- (void)invalidate;
@end

@implementation DADeviceResolveOperation

- (void)invalidate
{
  addrInfoQuery = self->_addrInfoQuery;
  if (addrInfoQuery)
  {
    DNSServiceRefDeallocate(addrInfoQuery);
    self->_addrInfoQuery = 0;
  }

  srvQuery = self->_srvQuery;
  if (srvQuery)
  {
    DNSServiceRefDeallocate(srvQuery);
    self->_srvQuery = 0;
  }
}

@end
@interface MRAVRoutingDiscoverySessionOperationReport
- (id)description;
@end

@implementation MRAVRoutingDiscoverySessionOperationReport

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"\n%@\n", objc_opt_class()];
  [v3 appendFormat:@"_________________________\n"];
  if ([(NSArray *)self->_discoveredOutputDeviceUIDs count])
  {
    [v3 appendFormat:@"Discovered %lu device(s)s: %@\n", -[NSArray count](self->_discoveredOutputDeviceUIDs, "count"), self->_discoveredOutputDeviceUIDs];
  }

  if ([(NSArray *)self->_undiscoveredOutputDeviceUIDs count])
  {
    [v3 appendFormat:@"Undiscovered %lu device(s): %@", -[NSArray count](self->_undiscoveredOutputDeviceUIDs, "count"), self->_undiscoveredOutputDeviceUIDs];
  }

  return v3;
}

@end
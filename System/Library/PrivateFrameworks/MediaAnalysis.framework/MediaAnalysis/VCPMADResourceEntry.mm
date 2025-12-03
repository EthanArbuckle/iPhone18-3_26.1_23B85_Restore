@interface VCPMADResourceEntry
- (VCPMADResourceEntry)initWithResource:(id)resource;
@end

@implementation VCPMADResourceEntry

- (VCPMADResourceEntry)initWithResource:(id)resource
{
  resourceCopy = resource;
  v9.receiver = self;
  v9.super_class = VCPMADResourceEntry;
  v6 = [(VCPMADResourceEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resource, resource);
  }

  return v7;
}

@end
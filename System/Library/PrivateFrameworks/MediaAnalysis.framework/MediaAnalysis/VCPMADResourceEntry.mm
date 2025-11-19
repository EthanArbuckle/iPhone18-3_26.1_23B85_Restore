@interface VCPMADResourceEntry
- (VCPMADResourceEntry)initWithResource:(id)a3;
@end

@implementation VCPMADResourceEntry

- (VCPMADResourceEntry)initWithResource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VCPMADResourceEntry;
  v6 = [(VCPMADResourceEntry *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_resource, a3);
  }

  return v7;
}

@end
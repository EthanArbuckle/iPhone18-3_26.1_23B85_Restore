@interface CoreDAVSRVResourceRecord
- (id)description;
@end

@implementation CoreDAVSRVResourceRecord

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v9.receiver = self;
  v9.super_class = CoreDAVSRVResourceRecord;
  v4 = [(CoreDAVSRVResourceRecord *)&v9 description];
  [v3 appendFormat:@"[%@]", v4];

  serviceString = [(CoreDAVSRVResourceRecord *)self serviceString];
  [v3 appendFormat:@"\n  Service string: [%@]", serviceString];

  port = [(CoreDAVSRVResourceRecord *)self port];
  [v3 appendFormat:@"\n  Port: [%@]", port];

  target = [(CoreDAVSRVResourceRecord *)self target];
  [v3 appendFormat:@"\n  Target: [%@]", target];

  return v3;
}

@end
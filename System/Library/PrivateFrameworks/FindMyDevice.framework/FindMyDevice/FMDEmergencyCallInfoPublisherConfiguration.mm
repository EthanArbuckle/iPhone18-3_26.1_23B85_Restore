@interface FMDEmergencyCallInfoPublisherConfiguration
- (FMDEmergencyCallInfoPublisherConfiguration)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FMDEmergencyCallInfoPublisherConfiguration

- (FMDEmergencyCallInfoPublisherConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = FMDEmergencyCallInfoPublisherConfiguration;
  v5 = [(FMDEmergencyCallInfoPublisherConfiguration *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serverHost"];
    [(FMDEmergencyCallInfoPublisherConfiguration *)v5 setServerHost:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  serverHost = [(FMDEmergencyCallInfoPublisherConfiguration *)self serverHost];
  [coderCopy encodeObject:serverHost forKey:@"serverHost"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  serverHost = [(FMDEmergencyCallInfoPublisherConfiguration *)self serverHost];
  v6 = [v3 stringWithFormat:@"%@(0x%lx) %@", v4, self, serverHost];

  return v6;
}

@end
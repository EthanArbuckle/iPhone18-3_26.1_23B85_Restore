@interface FMDEmergencyCallInfoPublisherConfiguration
- (FMDEmergencyCallInfoPublisherConfiguration)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FMDEmergencyCallInfoPublisherConfiguration

- (FMDEmergencyCallInfoPublisherConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FMDEmergencyCallInfoPublisherConfiguration;
  v5 = [(FMDEmergencyCallInfoPublisherConfiguration *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"serverHost"];
    [(FMDEmergencyCallInfoPublisherConfiguration *)v5 setServerHost:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FMDEmergencyCallInfoPublisherConfiguration *)self serverHost];
  [v4 encodeObject:v5 forKey:@"serverHost"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(FMDEmergencyCallInfoPublisherConfiguration *)self serverHost];
  v6 = [v3 stringWithFormat:@"%@(0x%lx) %@", v4, self, v5];

  return v6;
}

@end
@interface CRKSetAdHocConfigurationRequest
- (CRKSetAdHocConfigurationRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKSetAdHocConfigurationRequest

- (CRKSetAdHocConfigurationRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CRKSetAdHocConfigurationRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodePropertyListForKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"merge"];
    v5->_merge = [v8 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKSetAdHocConfigurationRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(CRKSetAdHocConfigurationRequest *)self configuration:v7.receiver];
  [v4 encodeObject:v5 forKey:@"configuration"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKSetAdHocConfigurationRequest merge](self, "merge")}];
  [v4 encodeObject:v6 forKey:@"merge"];
}

@end
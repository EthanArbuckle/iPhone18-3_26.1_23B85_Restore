@interface CRKSetAdHocConfigurationRequest
- (CRKSetAdHocConfigurationRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSetAdHocConfigurationRequest

- (CRKSetAdHocConfigurationRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CRKSetAdHocConfigurationRequest;
  v5 = [(CATTaskRequest *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodePropertyListForKey:@"configuration"];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"merge"];
    v5->_merge = [v8 BOOLValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKSetAdHocConfigurationRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKSetAdHocConfigurationRequest *)self configuration:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"configuration"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CRKSetAdHocConfigurationRequest merge](self, "merge")}];
  [coderCopy encodeObject:v6 forKey:@"merge"];
}

@end
@interface CRKFetchInstructorEndpointRequest
- (CRKFetchInstructorEndpointRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchInstructorEndpointRequest

- (CRKFetchInstructorEndpointRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKFetchInstructorEndpointRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"classroomAppBundleURL"];
    classroomAppBundleURL = v5->_classroomAppBundleURL;
    v5->_classroomAppBundleURL = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"instructordBundleIdentifier"];
    instructordBundleIdentifier = v5->_instructordBundleIdentifier;
    v5->_instructordBundleIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKFetchInstructorEndpointRequest;
  v4 = a3;
  [(CATTaskRequest *)&v7 encodeWithCoder:v4];
  v5 = [(CRKFetchInstructorEndpointRequest *)self classroomAppBundleURL:v7.receiver];
  [v4 encodeObject:v5 forKey:@"classroomAppBundleURL"];

  v6 = [(CRKFetchInstructorEndpointRequest *)self instructordBundleIdentifier];
  [v4 encodeObject:v6 forKey:@"instructordBundleIdentifier"];
}

@end
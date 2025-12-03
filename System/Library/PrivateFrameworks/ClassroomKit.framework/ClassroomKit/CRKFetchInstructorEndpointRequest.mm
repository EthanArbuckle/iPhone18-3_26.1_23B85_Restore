@interface CRKFetchInstructorEndpointRequest
- (CRKFetchInstructorEndpointRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchInstructorEndpointRequest

- (CRKFetchInstructorEndpointRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CRKFetchInstructorEndpointRequest;
  v5 = [(CATTaskRequest *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"classroomAppBundleURL"];
    classroomAppBundleURL = v5->_classroomAppBundleURL;
    v5->_classroomAppBundleURL = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"instructordBundleIdentifier"];
    instructordBundleIdentifier = v5->_instructordBundleIdentifier;
    v5->_instructordBundleIdentifier = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKFetchInstructorEndpointRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchInstructorEndpointRequest *)self classroomAppBundleURL:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"classroomAppBundleURL"];

  instructordBundleIdentifier = [(CRKFetchInstructorEndpointRequest *)self instructordBundleIdentifier];
  [coderCopy encodeObject:instructordBundleIdentifier forKey:@"instructordBundleIdentifier"];
}

@end
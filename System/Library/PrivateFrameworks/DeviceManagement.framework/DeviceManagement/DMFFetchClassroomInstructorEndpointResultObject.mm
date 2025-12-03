@interface DMFFetchClassroomInstructorEndpointResultObject
- (DMFFetchClassroomInstructorEndpointResultObject)initWithCoder:(id)coder;
- (DMFFetchClassroomInstructorEndpointResultObject)initWithEndpoint:(id)endpoint;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFFetchClassroomInstructorEndpointResultObject

- (DMFFetchClassroomInstructorEndpointResultObject)initWithEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v9.receiver = self;
  v9.super_class = DMFFetchClassroomInstructorEndpointResultObject;
  v6 = [(CATTaskResultObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, endpoint);
  }

  return v7;
}

- (DMFFetchClassroomInstructorEndpointResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = DMFFetchClassroomInstructorEndpointResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"endpoint"];
    endpoint = v5->_endpoint;
    v5->_endpoint = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFFetchClassroomInstructorEndpointResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(DMFFetchClassroomInstructorEndpointResultObject *)self endpoint:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"endpoint"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  endpoint = [(DMFFetchClassroomInstructorEndpointResultObject *)self endpoint];
  v6 = [v3 stringWithFormat:@"<%@: %p {\n\tEndpoint: %@\n}>", v4, self, endpoint];

  return v6;
}

@end
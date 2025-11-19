@interface DMFFetchClassroomInstructorEndpointResultObject
- (DMFFetchClassroomInstructorEndpointResultObject)initWithCoder:(id)a3;
- (DMFFetchClassroomInstructorEndpointResultObject)initWithEndpoint:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFFetchClassroomInstructorEndpointResultObject

- (DMFFetchClassroomInstructorEndpointResultObject)initWithEndpoint:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = DMFFetchClassroomInstructorEndpointResultObject;
  v6 = [(CATTaskResultObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_endpoint, a3);
  }

  return v7;
}

- (DMFFetchClassroomInstructorEndpointResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DMFFetchClassroomInstructorEndpointResultObject;
  v5 = [(CATTaskResultObject *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"endpoint"];
    endpoint = v5->_endpoint;
    v5->_endpoint = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFFetchClassroomInstructorEndpointResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(DMFFetchClassroomInstructorEndpointResultObject *)self endpoint:v6.receiver];
  [v4 encodeObject:v5 forKey:@"endpoint"];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(DMFFetchClassroomInstructorEndpointResultObject *)self endpoint];
  v6 = [v3 stringWithFormat:@"<%@: %p {\n\tEndpoint: %@\n}>", v4, self, v5];

  return v6;
}

@end
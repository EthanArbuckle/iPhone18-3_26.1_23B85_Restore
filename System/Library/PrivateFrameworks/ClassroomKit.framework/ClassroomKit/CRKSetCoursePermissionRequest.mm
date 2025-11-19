@interface CRKSetCoursePermissionRequest
- (CRKSetCoursePermissionRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKSetCoursePermissionRequest

- (CRKSetCoursePermissionRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = CRKSetCoursePermissionRequest;
  v5 = [(CATTaskRequest *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"feature"];
    feature = v5->_feature;
    v5->_feature = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"permission"];
    permission = v5->_permission;
    v5->_permission = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CRKSetCoursePermissionRequest;
  v4 = a3;
  [(CATTaskRequest *)&v8 encodeWithCoder:v4];
  v5 = [(CRKSetCoursePermissionRequest *)self courseIdentifier:v8.receiver];
  [v4 encodeObject:v5 forKey:@"courseIdentifier"];

  v6 = [(CRKSetCoursePermissionRequest *)self feature];
  [v4 encodeObject:v6 forKey:@"feature"];

  v7 = [(CRKSetCoursePermissionRequest *)self permission];
  [v4 encodeObject:v7 forKey:@"permission"];
}

@end
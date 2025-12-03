@interface CRKSetCoursePermissionRequest
- (CRKSetCoursePermissionRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSetCoursePermissionRequest

- (CRKSetCoursePermissionRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = CRKSetCoursePermissionRequest;
  v5 = [(CATTaskRequest *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"feature"];
    feature = v5->_feature;
    v5->_feature = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"permission"];
    permission = v5->_permission;
    v5->_permission = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CRKSetCoursePermissionRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CRKSetCoursePermissionRequest *)self courseIdentifier:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"courseIdentifier"];

  feature = [(CRKSetCoursePermissionRequest *)self feature];
  [coderCopy encodeObject:feature forKey:@"feature"];

  permission = [(CRKSetCoursePermissionRequest *)self permission];
  [coderCopy encodeObject:permission forKey:@"permission"];
}

@end
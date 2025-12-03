@interface CRKFetchCoursePermissionsResultObject
- (CRKFetchCoursePermissionsResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchCoursePermissionsResultObject

- (CRKFetchCoursePermissionsResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = CRKFetchCoursePermissionsResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"permissionsByFeature"];
    permissionsByFeature = v5->_permissionsByFeature;
    v5->_permissionsByFeature = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKFetchCoursePermissionsResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchCoursePermissionsResultObject *)self permissionsByFeature:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"permissionsByFeature"];
}

@end
@interface CRKFetchCoursePermissionsResultObject
- (CRKFetchCoursePermissionsResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchCoursePermissionsResultObject

- (CRKFetchCoursePermissionsResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CRKFetchCoursePermissionsResultObject;
  v5 = [(CATTaskResultObject *)&v13 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"permissionsByFeature"];
    permissionsByFeature = v5->_permissionsByFeature;
    v5->_permissionsByFeature = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKFetchCoursePermissionsResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(CRKFetchCoursePermissionsResultObject *)self permissionsByFeature:v6.receiver];
  [v4 encodeObject:v5 forKey:@"permissionsByFeature"];
}

@end
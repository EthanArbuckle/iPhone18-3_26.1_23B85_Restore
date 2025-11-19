@interface CRKSetCoursePropertiesRequest
- (CRKSetCoursePropertiesRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKSetCoursePropertiesRequest

- (CRKSetCoursePropertiesRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CRKSetCoursePropertiesRequest;
  v5 = [(CATTaskRequest *)&v21 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [v4 decodeObjectOfClasses:v9 forKey:@"courseName"];
    courseName = v5->_courseName;
    v5->_courseName = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"courseDescription"];
    courseDescription = v5->_courseDescription;
    v5->_courseDescription = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [v4 decodeObjectOfClasses:v17 forKey:@"anchorCertificates"];
    anchorCertificates = v5->_anchorCertificates;
    v5->_anchorCertificates = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CRKSetCoursePropertiesRequest;
  v4 = a3;
  [(CATTaskRequest *)&v9 encodeWithCoder:v4];
  v5 = [(CRKSetCoursePropertiesRequest *)self courseIdentifier:v9.receiver];
  [v4 encodeObject:v5 forKey:@"courseIdentifier"];

  v6 = [(CRKSetCoursePropertiesRequest *)self courseName];
  [v4 encodeObject:v6 forKey:@"courseName"];

  v7 = [(CRKSetCoursePropertiesRequest *)self courseDescription];
  [v4 encodeObject:v7 forKey:@"courseDescription"];

  v8 = [(CRKSetCoursePropertiesRequest *)self anchorCertificates];
  [v4 encodeObject:v8 forKey:@"anchorCertificates"];
}

@end
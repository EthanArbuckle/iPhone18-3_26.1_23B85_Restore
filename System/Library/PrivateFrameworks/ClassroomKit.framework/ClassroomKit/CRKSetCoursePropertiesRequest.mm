@interface CRKSetCoursePropertiesRequest
- (CRKSetCoursePropertiesRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSetCoursePropertiesRequest

- (CRKSetCoursePropertiesRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = CRKSetCoursePropertiesRequest;
  v5 = [(CATTaskRequest *)&v21 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"courseName"];
    courseName = v5->_courseName;
    v5->_courseName = v10;

    v12 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"courseDescription"];
    courseDescription = v5->_courseDescription;
    v5->_courseDescription = v13;

    v15 = MEMORY[0x277CBEB98];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"anchorCertificates"];
    anchorCertificates = v5->_anchorCertificates;
    v5->_anchorCertificates = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CRKSetCoursePropertiesRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v9 encodeWithCoder:coderCopy];
  v5 = [(CRKSetCoursePropertiesRequest *)self courseIdentifier:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"courseIdentifier"];

  courseName = [(CRKSetCoursePropertiesRequest *)self courseName];
  [coderCopy encodeObject:courseName forKey:@"courseName"];

  courseDescription = [(CRKSetCoursePropertiesRequest *)self courseDescription];
  [coderCopy encodeObject:courseDescription forKey:@"courseDescription"];

  anchorCertificates = [(CRKSetCoursePropertiesRequest *)self anchorCertificates];
  [coderCopy encodeObject:anchorCertificates forKey:@"anchorCertificates"];
}

@end
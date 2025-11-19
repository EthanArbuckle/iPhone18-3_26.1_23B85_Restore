@interface CRKFetchActiveStudentCourseIdentifiersResultObject
- (CRKFetchActiveStudentCourseIdentifiersResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchActiveStudentCourseIdentifiersResultObject

- (CRKFetchActiveStudentCourseIdentifiersResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CRKFetchActiveStudentCourseIdentifiersResultObject;
  v5 = [(CATTaskResultObject *)&v17 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"activeCourseIdentifiers"];
    activeCourseIdentifiers = v5->_activeCourseIdentifiers;
    v5->_activeCourseIdentifiers = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"activeInstructorIdentifiers"];
    activeInstructorIdentifiers = v5->_activeInstructorIdentifiers;
    v5->_activeInstructorIdentifiers = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CRKFetchActiveStudentCourseIdentifiersResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v7 encodeWithCoder:v4];
  v5 = [(CRKFetchActiveStudentCourseIdentifiersResultObject *)self activeCourseIdentifiers:v7.receiver];
  [v4 encodeObject:v5 forKey:@"activeCourseIdentifiers"];

  v6 = [(CRKFetchActiveStudentCourseIdentifiersResultObject *)self activeInstructorIdentifiers];
  [v4 encodeObject:v6 forKey:@"activeInstructorIdentifiers"];
}

@end
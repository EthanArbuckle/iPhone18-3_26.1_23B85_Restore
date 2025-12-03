@interface CRKFetchActiveStudentCourseIdentifiersResultObject
- (CRKFetchActiveStudentCourseIdentifiersResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchActiveStudentCourseIdentifiersResultObject

- (CRKFetchActiveStudentCourseIdentifiersResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CRKFetchActiveStudentCourseIdentifiersResultObject;
  v5 = [(CATTaskResultObject *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"activeCourseIdentifiers"];
    activeCourseIdentifiers = v5->_activeCourseIdentifiers;
    v5->_activeCourseIdentifiers = v9;

    v11 = MEMORY[0x277CBEB98];
    v12 = objc_opt_class();
    v13 = [v11 setWithObjects:{v12, objc_opt_class(), 0}];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"activeInstructorIdentifiers"];
    activeInstructorIdentifiers = v5->_activeInstructorIdentifiers;
    v5->_activeInstructorIdentifiers = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CRKFetchActiveStudentCourseIdentifiersResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchActiveStudentCourseIdentifiersResultObject *)self activeCourseIdentifiers:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"activeCourseIdentifiers"];

  activeInstructorIdentifiers = [(CRKFetchActiveStudentCourseIdentifiersResultObject *)self activeInstructorIdentifiers];
  [coderCopy encodeObject:activeInstructorIdentifiers forKey:@"activeInstructorIdentifiers"];
}

@end
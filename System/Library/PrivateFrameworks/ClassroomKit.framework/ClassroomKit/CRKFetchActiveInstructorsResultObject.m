@interface CRKFetchActiveInstructorsResultObject
- (CRKFetchActiveInstructorsResultObject)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKFetchActiveInstructorsResultObject

- (CRKFetchActiveInstructorsResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CRKFetchActiveInstructorsResultObject;
  v5 = [(CATTaskResultObject *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"instructors"];
    instructors = v5->_instructors;
    v5->_instructors = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CRKFetchActiveInstructorsResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [(CRKFetchActiveInstructorsResultObject *)self instructors:v6.receiver];
  [v4 encodeObject:v5 forKey:@"instructors"];
}

@end
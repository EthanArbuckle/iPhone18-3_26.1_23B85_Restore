@interface CRKFetchActiveInstructorsResultObject
- (CRKFetchActiveInstructorsResultObject)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKFetchActiveInstructorsResultObject

- (CRKFetchActiveInstructorsResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CRKFetchActiveInstructorsResultObject;
  v5 = [(CATTaskResultObject *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"instructors"];
    instructors = v5->_instructors;
    v5->_instructors = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CRKFetchActiveInstructorsResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CRKFetchActiveInstructorsResultObject *)self instructors:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"instructors"];
}

@end
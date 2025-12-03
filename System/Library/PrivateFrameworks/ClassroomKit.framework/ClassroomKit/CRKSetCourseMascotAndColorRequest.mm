@interface CRKSetCourseMascotAndColorRequest
- (CRKSetCourseMascotAndColorRequest)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRKSetCourseMascotAndColorRequest

- (CRKSetCourseMascotAndColorRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CRKSetCourseMascotAndColorRequest;
  v5 = [(CATTaskRequest *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mascotType"];
    v5->_mascotType = [v9 unsignedIntegerValue];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorType"];
    v5->_colorType = [v10 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CRKSetCourseMascotAndColorRequest;
  coderCopy = coder;
  [(CATTaskRequest *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CRKSetCourseMascotAndColorRequest *)self courseIdentifier:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"courseIdentifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKSetCourseMascotAndColorRequest mascotType](self, "mascotType")}];
  [coderCopy encodeObject:v6 forKey:@"mascotType"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKSetCourseMascotAndColorRequest colorType](self, "colorType")}];
  [coderCopy encodeObject:v7 forKey:@"colorType"];
}

@end
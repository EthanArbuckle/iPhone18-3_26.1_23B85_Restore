@interface CRKSetCourseMascotAndColorRequest
- (CRKSetCourseMascotAndColorRequest)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CRKSetCourseMascotAndColorRequest

- (CRKSetCourseMascotAndColorRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CRKSetCourseMascotAndColorRequest;
  v5 = [(CATTaskRequest *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"courseIdentifier"];
    courseIdentifier = v5->_courseIdentifier;
    v5->_courseIdentifier = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mascotType"];
    v5->_mascotType = [v9 unsignedIntegerValue];

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorType"];
    v5->_colorType = [v10 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v8.receiver = self;
  v8.super_class = CRKSetCourseMascotAndColorRequest;
  v4 = a3;
  [(CATTaskRequest *)&v8 encodeWithCoder:v4];
  v5 = [(CRKSetCourseMascotAndColorRequest *)self courseIdentifier:v8.receiver];
  [v4 encodeObject:v5 forKey:@"courseIdentifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKSetCourseMascotAndColorRequest mascotType](self, "mascotType")}];
  [v4 encodeObject:v6 forKey:@"mascotType"];

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[CRKSetCourseMascotAndColorRequest colorType](self, "colorType")}];
  [v4 encodeObject:v7 forKey:@"colorType"];
}

@end
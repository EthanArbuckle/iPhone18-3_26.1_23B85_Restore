@interface MADSceneClassificationResult
+ (id)resultWithClassifications:(id)a3;
- (MADSceneClassificationResult)initWithClassifications:(id)a3;
- (MADSceneClassificationResult)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADSceneClassificationResult

- (MADSceneClassificationResult)initWithClassifications:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADSceneClassificationResult;
  v6 = [(MADResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classifications, a3);
  }

  return v7;
}

+ (id)resultWithClassifications:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithClassifications:v4];

  return v5;
}

- (MADSceneClassificationResult)initWithCoder:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MADSceneClassificationResult;
  v5 = [(MADResult *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"Classifications"];
    classifications = v5->_classifications;
    v5->_classifications = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MADSceneClassificationResult;
  [(MADResult *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_classifications forKey:@"Classifications"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"%@: %lu count>", @"Classifications", -[NSSet count](self->_classifications, "count")];

  return v3;
}

@end
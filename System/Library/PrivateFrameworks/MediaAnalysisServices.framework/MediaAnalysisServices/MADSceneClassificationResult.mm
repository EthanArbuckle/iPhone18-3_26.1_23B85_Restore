@interface MADSceneClassificationResult
+ (id)resultWithClassifications:(id)classifications;
- (MADSceneClassificationResult)initWithClassifications:(id)classifications;
- (MADSceneClassificationResult)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADSceneClassificationResult

- (MADSceneClassificationResult)initWithClassifications:(id)classifications
{
  classificationsCopy = classifications;
  v9.receiver = self;
  v9.super_class = MADSceneClassificationResult;
  v6 = [(MADResult *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_classifications, classifications);
  }

  return v7;
}

+ (id)resultWithClassifications:(id)classifications
{
  classificationsCopy = classifications;
  v5 = [[self alloc] initWithClassifications:classificationsCopy];

  return v5;
}

- (MADSceneClassificationResult)initWithCoder:(id)coder
{
  v13[3] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MADSceneClassificationResult;
  v5 = [(MADResult *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v13[2] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"Classifications"];
    classifications = v5->_classifications;
    v5->_classifications = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MADSceneClassificationResult;
  [(MADResult *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_classifications forKey:@"Classifications"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"%@: %lu count>", @"Classifications", -[NSSet count](self->_classifications, "count")];

  return string;
}

@end
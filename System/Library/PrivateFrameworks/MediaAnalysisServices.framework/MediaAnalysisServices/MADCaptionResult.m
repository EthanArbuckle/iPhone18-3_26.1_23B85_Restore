@interface MADCaptionResult
- (MADCaptionResult)initWithCaption:(id)a3 score:(float)a4 containsUnsafeContent:(BOOL)a5 isLowConfidence:(BOOL)a6 classificationIdentifiers:(id)a7;
- (MADCaptionResult)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADCaptionResult

- (MADCaptionResult)initWithCaption:(id)a3 score:(float)a4 containsUnsafeContent:(BOOL)a5 isLowConfidence:(BOOL)a6 classificationIdentifiers:(id)a7
{
  v13 = a3;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = MADCaptionResult;
  v15 = [(MADResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_caption, a3);
    v16->_score = a4;
    v16->_containsUnsafeContent = a5;
    v16->_isLowConfidence = a6;
    objc_storeStrong(&v16->_classificationIdentifiers, a7);
  }

  return v16;
}

- (MADCaptionResult)initWithCoder:(id)a3
{
  v16[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MADCaptionResult;
  v5 = [(MADResult *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Caption"];
    caption = v5->_caption;
    v5->_caption = v6;

    [v4 decodeFloatForKey:@"Score"];
    v5->_score = v8;
    v5->_containsUnsafeContent = [v4 decodeBoolForKey:@"ContainsUnsafeContent"];
    v5->_isLowConfidence = [v4 decodeBoolForKey:@"IsLowConfidence"];
    v9 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v11 = [v9 setWithArray:v10];

    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"ClassificationIdentifiers"];
    classificationIdentifiers = v5->_classificationIdentifiers;
    v5->_classificationIdentifiers = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = MADCaptionResult;
  v4 = a3;
  [(MADResult *)&v6 encodeWithCoder:v4];
  [v4 encodeObject:self->_caption forKey:{@"Caption", v6.receiver, v6.super_class}];
  *&v5 = self->_score;
  [v4 encodeFloat:@"Score" forKey:v5];
  [v4 encodeBool:self->_containsUnsafeContent forKey:@"ContainsUnsafeContent"];
  [v4 encodeBool:self->_isLowConfidence forKey:@"IsLowConfidence"];
  [v4 encodeObject:self->_classificationIdentifiers forKey:@"ClassificationIdentifiers"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"Caption: %@>", self->_caption];
  [v3 appendFormat:@"Score: %f>", self->_score];
  if (self->_containsUnsafeContent)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v3 appendFormat:@"ContainsUnsafeContent: %@>", v6];
  if (self->_isLowConfidence)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [v3 appendFormat:@"IsLowConfidence: %@>", v7];
  [v3 appendFormat:@"ClassificationIdentifiers: %@>", self->_classificationIdentifiers];

  return v3;
}

@end
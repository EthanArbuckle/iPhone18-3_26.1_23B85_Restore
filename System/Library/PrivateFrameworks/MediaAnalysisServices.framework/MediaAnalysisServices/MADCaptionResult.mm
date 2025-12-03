@interface MADCaptionResult
- (MADCaptionResult)initWithCaption:(id)caption score:(float)score containsUnsafeContent:(BOOL)content isLowConfidence:(BOOL)confidence classificationIdentifiers:(id)identifiers;
- (MADCaptionResult)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADCaptionResult

- (MADCaptionResult)initWithCaption:(id)caption score:(float)score containsUnsafeContent:(BOOL)content isLowConfidence:(BOOL)confidence classificationIdentifiers:(id)identifiers
{
  captionCopy = caption;
  identifiersCopy = identifiers;
  v18.receiver = self;
  v18.super_class = MADCaptionResult;
  v15 = [(MADResult *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_caption, caption);
    v16->_score = score;
    v16->_containsUnsafeContent = content;
    v16->_isLowConfidence = confidence;
    objc_storeStrong(&v16->_classificationIdentifiers, identifiers);
  }

  return v16;
}

- (MADCaptionResult)initWithCoder:(id)coder
{
  v16[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MADCaptionResult;
  v5 = [(MADResult *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Caption"];
    caption = v5->_caption;
    v5->_caption = v6;

    [coderCopy decodeFloatForKey:@"Score"];
    v5->_score = v8;
    v5->_containsUnsafeContent = [coderCopy decodeBoolForKey:@"ContainsUnsafeContent"];
    v5->_isLowConfidence = [coderCopy decodeBoolForKey:@"IsLowConfidence"];
    v9 = MEMORY[0x1E695DFD8];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    v11 = [v9 setWithArray:v10];

    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"ClassificationIdentifiers"];
    classificationIdentifiers = v5->_classificationIdentifiers;
    v5->_classificationIdentifiers = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = MADCaptionResult;
  coderCopy = coder;
  [(MADResult *)&v6 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_caption forKey:{@"Caption", v6.receiver, v6.super_class}];
  *&v5 = self->_score;
  [coderCopy encodeFloat:@"Score" forKey:v5];
  [coderCopy encodeBool:self->_containsUnsafeContent forKey:@"ContainsUnsafeContent"];
  [coderCopy encodeBool:self->_isLowConfidence forKey:@"IsLowConfidence"];
  [coderCopy encodeObject:self->_classificationIdentifiers forKey:@"ClassificationIdentifiers"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"Caption: %@>", self->_caption];
  [string appendFormat:@"Score: %f>", self->_score];
  if (self->_containsUnsafeContent)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [string appendFormat:@"ContainsUnsafeContent: %@>", v6];
  if (self->_isLowConfidence)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  [string appendFormat:@"IsLowConfidence: %@>", v7];
  [string appendFormat:@"ClassificationIdentifiers: %@>", self->_classificationIdentifiers];

  return string;
}

@end
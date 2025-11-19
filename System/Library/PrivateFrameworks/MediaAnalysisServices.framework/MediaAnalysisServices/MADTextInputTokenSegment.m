@interface MADTextInputTokenSegment
- (MADTextInputTokenSegment)initWithCoder:(id)a3;
- (MADTextInputTokenSegment)initWithTokenIDs:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADTextInputTokenSegment

- (MADTextInputTokenSegment)initWithTokenIDs:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADTextInputTokenSegment;
  v5 = [(MADTextInputTokenSegment *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    tokenIDs = v5->_tokenIDs;
    v5->_tokenIDs = v6;
  }

  return v5;
}

- (MADTextInputTokenSegment)initWithCoder:(id)a3
{
  v13[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MADTextInputTokenSegment;
  v5 = [(MADTextInputSegment *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClasses:v8 forKey:@"TokenIDs"];
    tokenIDs = v5->_tokenIDs;
    v5->_tokenIDs = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADTextInputTokenSegment;
  v4 = a3;
  [(MADTextInputSegment *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_tokenIDs forKey:{@"TokenIDs", v5.receiver, v5.super_class}];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"tokenIDs: %@>", self->_tokenIDs];

  return v3;
}

@end
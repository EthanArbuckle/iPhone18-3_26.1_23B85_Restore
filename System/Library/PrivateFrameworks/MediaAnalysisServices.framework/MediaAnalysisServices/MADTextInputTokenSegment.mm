@interface MADTextInputTokenSegment
- (MADTextInputTokenSegment)initWithCoder:(id)coder;
- (MADTextInputTokenSegment)initWithTokenIDs:(id)ds;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADTextInputTokenSegment

- (MADTextInputTokenSegment)initWithTokenIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = MADTextInputTokenSegment;
  v5 = [(MADTextInputTokenSegment *)&v9 init];
  if (v5)
  {
    v6 = [dsCopy copy];
    tokenIDs = v5->_tokenIDs;
    v5->_tokenIDs = v6;
  }

  return v5;
}

- (MADTextInputTokenSegment)initWithCoder:(id)coder
{
  v13[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = MADTextInputTokenSegment;
  v5 = [(MADTextInputSegment *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v13[0] = objc_opt_class();
    v13[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"TokenIDs"];
    tokenIDs = v5->_tokenIDs;
    v5->_tokenIDs = v9;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADTextInputTokenSegment;
  coderCopy = coder;
  [(MADTextInputSegment *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_tokenIDs forKey:{@"TokenIDs", v5.receiver, v5.super_class}];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"tokenIDs: %@>", self->_tokenIDs];

  return string;
}

@end
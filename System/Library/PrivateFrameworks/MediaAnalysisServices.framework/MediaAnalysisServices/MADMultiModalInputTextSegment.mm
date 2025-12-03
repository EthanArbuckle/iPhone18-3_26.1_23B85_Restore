@interface MADMultiModalInputTextSegment
- (MADMultiModalInputTextSegment)initWithCoder:(id)coder;
- (MADMultiModalInputTextSegment)initWithText:(id)text;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADMultiModalInputTextSegment

- (MADMultiModalInputTextSegment)initWithText:(id)text
{
  textCopy = text;
  v9.receiver = self;
  v9.super_class = MADMultiModalInputTextSegment;
  v6 = [(MADMultiModalInputTextSegment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_text, text);
  }

  return v7;
}

- (MADMultiModalInputTextSegment)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = MADMultiModalInputTextSegment;
  v5 = [(MADMultiModalInputSegment *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Text"];
    text = v5->_text;
    v5->_text = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = MADMultiModalInputTextSegment;
  coderCopy = coder;
  [(MADMultiModalInputSegment *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_text forKey:{@"Text", v5.receiver, v5.super_class}];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"text: %@>", self->_text];

  return string;
}

@end
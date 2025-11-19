@interface MADTextInputTextSegment
- (MADTextInputTextSegment)initWithCoder:(id)a3;
- (MADTextInputTextSegment)initWithText:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADTextInputTextSegment

- (MADTextInputTextSegment)initWithText:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MADTextInputTextSegment;
  v6 = [(MADTextInputTextSegment *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_text, a3);
  }

  return v7;
}

- (MADTextInputTextSegment)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MADTextInputTextSegment;
  v5 = [(MADTextInputSegment *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Text"];
    text = v5->_text;
    v5->_text = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = MADTextInputTextSegment;
  v4 = a3;
  [(MADTextInputSegment *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_text forKey:{@"Text", v5.receiver, v5.super_class}];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"text: %@>", self->_text];

  return v3;
}

@end
@interface GTCallstackFrame
- (GTCallstackFrame)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GTCallstackFrame

- (GTCallstackFrame)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GTCallstackFrame;
  v5 = [(GTCallstackFrame *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"file"];
    file = v5->_file;
    v5->_file = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"functionName"];
    functionName = v5->_functionName;
    v5->_functionName = v8;

    v5->_line = [coderCopy decodeInt32ForKey:@"line"];
    v5->_column = [coderCopy decodeInt32ForKey:@"column"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  file = self->_file;
  coderCopy = coder;
  [coderCopy encodeObject:file forKey:@"file"];
  [coderCopy encodeObject:self->_functionName forKey:@"functionName"];
  [coderCopy encodeInt32:self->_line forKey:@"line"];
  [coderCopy encodeInt32:self->_column forKey:@"column"];
}

@end
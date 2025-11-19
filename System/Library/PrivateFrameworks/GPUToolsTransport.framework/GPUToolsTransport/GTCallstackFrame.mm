@interface GTCallstackFrame
- (GTCallstackFrame)initWithCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GTCallstackFrame

- (GTCallstackFrame)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GTCallstackFrame;
  v5 = [(GTCallstackFrame *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"file"];
    file = v5->_file;
    v5->_file = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"functionName"];
    functionName = v5->_functionName;
    v5->_functionName = v8;

    v5->_line = [v4 decodeInt32ForKey:@"line"];
    v5->_column = [v4 decodeInt32ForKey:@"column"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  file = self->_file;
  v5 = a3;
  [v5 encodeObject:file forKey:@"file"];
  [v5 encodeObject:self->_functionName forKey:@"functionName"];
  [v5 encodeInt32:self->_line forKey:@"line"];
  [v5 encodeInt32:self->_column forKey:@"column"];
}

@end
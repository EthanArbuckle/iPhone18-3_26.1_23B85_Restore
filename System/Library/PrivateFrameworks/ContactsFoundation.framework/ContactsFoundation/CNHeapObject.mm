@interface CNHeapObject
- (id)classAndBinaryKey;
- (id)description;
@end

@implementation CNHeapObject

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = CNHeapObject;
  v4 = [(CNHeapObject *)&v11 description];
  v5 = [(CNHeapObject *)self count];
  bytes = [(CNHeapObject *)self bytes];
  className = [(CNHeapObject *)self className];
  binary = [(CNHeapObject *)self binary];
  v9 = [v3 stringWithFormat:@"%@, %ld objects \t %ld bytes \t %@ \t %@", v4, v5, bytes, className, binary];

  return v9;
}

- (id)classAndBinaryKey
{
  className = [(CNHeapObject *)self className];
  if (className)
  {
    v4 = className;
    binary = [(CNHeapObject *)self binary];

    if (binary)
    {
      className2 = [(CNHeapObject *)self className];
      binary2 = [(CNHeapObject *)self binary];
      v8 = [className2 stringByAppendingString:binary2];

      goto LABEL_9;
    }
  }

  className3 = [(CNHeapObject *)self className];

  if (className3)
  {
    className4 = [(CNHeapObject *)self className];
LABEL_8:
    v8 = className4;
    goto LABEL_9;
  }

  binary3 = [(CNHeapObject *)self binary];

  if (binary3)
  {
    className4 = [(CNHeapObject *)self binary];
    goto LABEL_8;
  }

  v8 = @"NoClassNameOrBinaryKey";
LABEL_9:

  return v8;
}

@end
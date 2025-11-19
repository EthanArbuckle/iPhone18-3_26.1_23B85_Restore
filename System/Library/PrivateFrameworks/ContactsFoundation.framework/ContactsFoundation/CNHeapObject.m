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
  v6 = [(CNHeapObject *)self bytes];
  v7 = [(CNHeapObject *)self className];
  v8 = [(CNHeapObject *)self binary];
  v9 = [v3 stringWithFormat:@"%@, %ld objects \t %ld bytes \t %@ \t %@", v4, v5, v6, v7, v8];

  return v9;
}

- (id)classAndBinaryKey
{
  v3 = [(CNHeapObject *)self className];
  if (v3)
  {
    v4 = v3;
    v5 = [(CNHeapObject *)self binary];

    if (v5)
    {
      v6 = [(CNHeapObject *)self className];
      v7 = [(CNHeapObject *)self binary];
      v8 = [v6 stringByAppendingString:v7];

      goto LABEL_9;
    }
  }

  v9 = [(CNHeapObject *)self className];

  if (v9)
  {
    v10 = [(CNHeapObject *)self className];
LABEL_8:
    v8 = v10;
    goto LABEL_9;
  }

  v11 = [(CNHeapObject *)self binary];

  if (v11)
  {
    v10 = [(CNHeapObject *)self binary];
    goto LABEL_8;
  }

  v8 = @"NoClassNameOrBinaryKey";
LABEL_9:

  return v8;
}

@end
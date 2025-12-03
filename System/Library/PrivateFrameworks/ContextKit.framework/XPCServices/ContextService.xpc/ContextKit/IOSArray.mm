@interface IOSArray
+ (id)arrayWithDimensions:(unint64_t)dimensions lengths:(const int *)lengths;
- (id)clone;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)getClass;
@end

@implementation IOSArray

+ (id)arrayWithDimensions:(unint64_t)dimensions lengths:(const int *)lengths
{
  v4 = IOSArray_NewArrayWithDimensions(self, dimensions, lengths);

  return v4;
}

- (id)description
{
  size = self->size_;
  if (!size)
  {
    return @"[]";
  }

  if (size < 1)
  {
    return @"[";
  }

  v4 = 0;
  v5 = @"[";
  do
  {
    if (v4 >= size - 1)
    {
      v6 = @"]";
    }

    else
    {
      v6 = @", ";
    }

    v5 = [(__CFString *)v5 stringByAppendingFormat:@"%@%@", [(IOSArray *)self descriptionOfElementAtIndex:v4], v6];
    v4 = (v4 + 1);
    size = self->size_;
  }

  while (v4 < size);
  return v5;
}

- (id)getClass
{
  elementType = [(IOSArray *)self elementType];

  return IOSClass_arrayOf(elementType);
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 2) = self->size_;
  return result;
}

- (id)clone
{
  v2 = [(IOSArray *)self copyWithZone:0];
  v3 = v2;
  return v2;
}

@end
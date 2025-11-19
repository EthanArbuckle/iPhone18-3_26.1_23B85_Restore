@interface IOSArray
+ (id)arrayWithDimensions:(unint64_t)a3 lengths:(const int *)a4;
- (id)clone;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)getClass;
@end

@implementation IOSArray

+ (id)arrayWithDimensions:(unint64_t)a3 lengths:(const int *)a4
{
  v4 = IOSArray_NewArrayWithDimensions(a1, a3, a4);

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
  v2 = [(IOSArray *)self elementType];

  return IOSClass_arrayOf(v2);
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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
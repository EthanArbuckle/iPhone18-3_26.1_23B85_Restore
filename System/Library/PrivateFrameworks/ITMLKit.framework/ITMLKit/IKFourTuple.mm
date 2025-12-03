@interface IKFourTuple
- (IKCornerRadii)cornerRadiiValue;
- (IKFourTuple)initWithCornerRadii:(IKCornerRadii)radii;
- (IKFourTuple)initWithStyleString:(id)string;
- (UIEdgeInsets)edgeInsetsValue;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation IKFourTuple

- (IKFourTuple)initWithStyleString:(id)string
{
  stringCopy = string;
  v21.receiver = self;
  v21.super_class = IKFourTuple;
  v5 = [(IKFourTuple *)&v21 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = [stringCopy componentsSeparatedByString:@" "];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __35__IKFourTuple_initWithStyleString___block_invoke;
    v19[3] = &unk_27979B260;
    v8 = v6;
    v20 = v8;
    [v7 enumerateObjectsUsingBlock:v19];

    v9 = [v8 count];
    v5->_specifiedValueCount = v9;
    if (v9 < 2)
    {
      if (v9 == 1)
      {
        v14 = [v8 objectAtIndex:0];
        v15 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:v14];
        v18 = 0.0;
        if ([v15 scanFloat:&v18])
        {
          v16 = v18;
          v5->_values[2] = v18;
          v5->_values[3] = v16;
          v5->_values[0] = v16;
          v5->_values[1] = v16;
        }

        else
        {
          objc_storeStrong(&v5->_namedStyle, v14);
        }
      }
    }

    else
    {
      v10 = 0;
      values = v5->_values;
      do
      {
        if (v10 >= v5->_specifiedValueCount)
        {
          values[v10] = 0.0;
        }

        else
        {
          v12 = [v8 objectAtIndex:v10];
          [v12 floatValue];
          values[v10] = v13;
        }

        ++v10;
      }

      while (v10 != 4);
    }
  }

  return v5;
}

void __35__IKFourTuple_initWithStyleString___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (IKFourTuple)initWithCornerRadii:(IKCornerRadii)radii
{
  var3 = radii.var3;
  var2 = radii.var2;
  var1 = radii.var1;
  var0 = radii.var0;
  v8.receiver = self;
  v8.super_class = IKFourTuple;
  result = [(IKFourTuple *)&v8 init];
  if (result)
  {
    result->_specifiedValueCount = 4;
    result->_values[0] = var2;
    result->_values[1] = var3;
    result->_values[2] = var1;
    result->_values[3] = var0;
  }

  return result;
}

- (IKCornerRadii)cornerRadiiValue
{
  specifiedValueCount = self->_specifiedValueCount;
  v3 = 0.0;
  if (specifiedValueCount > 2)
  {
    if (specifiedValueCount == 3)
    {
      v3 = self->_values[0];
      v4 = self->_values[1];
      v5 = self->_values[2];
      goto LABEL_11;
    }

    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    if (specifiedValueCount == 4)
    {
      v3 = self->_values[0];
      v4 = self->_values[1];
      v5 = self->_values[2];
      v6 = self->_values[3];
    }
  }

  else
  {
    if (specifiedValueCount == 1)
    {
      v3 = self->_values[0];
      v4 = v3;
      v5 = v3;
      v6 = v3;
      goto LABEL_12;
    }

    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    if (specifiedValueCount == 2)
    {
      v3 = self->_values[0];
      v4 = self->_values[1];
      v5 = v3;
LABEL_11:
      v6 = v4;
    }
  }

LABEL_12:
  result.var3 = v4;
  result.var2 = v3;
  result.var1 = v5;
  result.var0 = v6;
  return result;
}

- (UIEdgeInsets)edgeInsetsValue
{
  specifiedValueCount = self->_specifiedValueCount;
  v3 = 0.0;
  if (specifiedValueCount > 2)
  {
    if (specifiedValueCount == 3)
    {
      v6 = self->_values[0];
      v4 = self->_values[1];
      v3 = self->_values[2];
      v5 = v4;
    }

    else
    {
      v4 = 0.0;
      v5 = 0.0;
      v6 = 0.0;
      if (specifiedValueCount == 4)
      {
        v6 = self->_values[0];
        v4 = self->_values[1];
        v3 = self->_values[2];
        v5 = self->_values[3];
      }
    }
  }

  else
  {
    if (specifiedValueCount == 1)
    {
      v3 = self->_values[1];
      v4 = v3;
      v5 = v3;
      goto LABEL_9;
    }

    v4 = 0.0;
    v5 = 0.0;
    v6 = 0.0;
    if (specifiedValueCount == 2)
    {
      v3 = self->_values[0];
      v4 = self->_values[1];
      v5 = v4;
LABEL_9:
      v6 = v3;
    }
  }

  result.right = v4;
  result.bottom = v3;
  result.left = v5;
  result.top = v6;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_namedStyle copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  *(v5 + 16) = self->_specifiedValueCount;
  v8 = *self->_values;
  *(v5 + 40) = *&self->_values[2];
  *(v5 + 24) = v8;
  return v5;
}

@end
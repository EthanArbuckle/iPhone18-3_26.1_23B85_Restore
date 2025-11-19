@interface BWRenderListParameters
- (BWRenderListParameters)initWithParameterList:(BWRenderListParameterList *)a3;
- (NSString)description;
- (void)dealloc;
@end

@implementation BWRenderListParameters

- (BWRenderListParameters)initWithParameterList:(BWRenderListParameterList *)a3
{
  v13.receiver = self;
  v13.super_class = BWRenderListParameters;
  v4 = [(BWRenderListParameters *)&v13 init];
  v5 = v4;
  if (v4)
  {
    v4->_parameterList.slh_first = 0;
    if (a3)
    {
      slh_first = a3->slh_first;
      if (a3->slh_first)
      {
        v7 = 0;
        do
        {
          v8 = *(slh_first + 1);
          v9 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
          v10 = [v8 copyWithZone:0];
          if (v7)
          {
            p_parameterList = v7;
          }

          else
          {
            p_parameterList = &v5->_parameterList;
          }

          *v9 = p_parameterList->slh_first;
          *(v9 + 1) = v10;
          p_parameterList->slh_first = v9;
          slh_first = *slh_first;
          v7 = v9;
        }

        while (slh_first);
      }
    }
  }

  return v5;
}

- (void)dealloc
{
  p_parameterList = &self->_parameterList;
  slh_first = self->_parameterList.slh_first;
  if (slh_first)
  {
    do
    {
      v5 = *slh_first;

      v6 = p_parameterList->slh_first;
      if (p_parameterList->slh_first == slh_first)
      {
        v7 = p_parameterList;
      }

      else
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6 != slh_first);
      }

      v7->slh_first = *v6;
      free(slh_first);
      slh_first = v5;
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = BWRenderListParameters;
  [(BWRenderListParameters *)&v8 dealloc];
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p>: ", objc_opt_class(), self];
  v4 = v3;
  if (self)
  {
    slh_first = self->_parameterList.slh_first;
    if (slh_first)
    {
      v6 = @", Parameters: ";
    }

    else
    {
      v6 = @", No Parameters";
    }

    [v3 appendString:v6];
    if (slh_first)
    {
      v7 = 0;
      do
      {
        v8 = objc_opt_class();
        [v4 appendFormat:@"[%u] %@ ", v7, NSStringFromClass(v8)];
        slh_first = *slh_first;
        v7 = (v7 + 1);
      }

      while (slh_first);
    }
  }

  else
  {
    [v3 appendString:{@", No Parameters"}];
  }

  return v4;
}

@end
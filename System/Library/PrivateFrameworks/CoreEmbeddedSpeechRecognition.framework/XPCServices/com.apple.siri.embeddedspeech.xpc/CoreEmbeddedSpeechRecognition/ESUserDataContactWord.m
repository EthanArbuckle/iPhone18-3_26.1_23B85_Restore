@interface ESUserDataContactWord
- (BOOL)isEqual:(id)a3;
- (ESUserDataContactWord)initWithComponents:(id)a3 frequency:(int)a4;
- (id)description;
- (unint64_t)hash;
- (unint64_t)numComponents;
@end

@implementation ESUserDataContactWord

- (unint64_t)numComponents
{
  v2 = [(ESUserDataContactWord *)self components];
  v3 = [v2 count];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(ESUserDataContactWord *)self components];
  v6 = [NSString stringWithFormat:@"<%@: %p components: %@; frequency: %d>", v4, self, v5, [(ESUserDataContactWord *)self frequency]];;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(ESUserDataContactWord *)self frequency];
      if (v6 == [(ESUserDataContactWord *)v5 frequency])
      {
        v7 = [(ESUserDataContactWord *)self components];
        v8 = [(ESUserDataContactWord *)v5 components];
        v9 = [v7 isEqual:v8];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(ESUserDataContactWord *)self components];
  v4 = [v3 hash];
  v5 = [(ESUserDataContactWord *)self frequency];

  return v4 ^ v5;
}

- (ESUserDataContactWord)initWithComponents:(id)a3 frequency:(int)a4
{
  v10.receiver = self;
  v10.super_class = ESUserDataContactWord;
  v5 = a3;
  v6 = [(ESUserDataContactWord *)&v10 init];
  v7 = [v5 copy];

  components = v6->_components;
  v6->_components = v7;

  v6->_frequency = a4;
  return v6;
}

@end
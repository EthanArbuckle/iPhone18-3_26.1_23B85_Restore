@interface ESUserDataContactWord
- (BOOL)isEqual:(id)equal;
- (ESUserDataContactWord)initWithComponents:(id)components frequency:(int)frequency;
- (id)description;
- (unint64_t)hash;
- (unint64_t)numComponents;
@end

@implementation ESUserDataContactWord

- (unint64_t)numComponents
{
  components = [(ESUserDataContactWord *)self components];
  v3 = [components count];

  return v3;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  components = [(ESUserDataContactWord *)self components];
  v6 = [NSString stringWithFormat:@"<%@: %p components: %@; frequency: %d>", v4, self, components, [(ESUserDataContactWord *)self frequency]];;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      frequency = [(ESUserDataContactWord *)self frequency];
      if (frequency == [(ESUserDataContactWord *)v5 frequency])
      {
        components = [(ESUserDataContactWord *)self components];
        components2 = [(ESUserDataContactWord *)v5 components];
        v9 = [components isEqual:components2];
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
  components = [(ESUserDataContactWord *)self components];
  v4 = [components hash];
  frequency = [(ESUserDataContactWord *)self frequency];

  return v4 ^ frequency;
}

- (ESUserDataContactWord)initWithComponents:(id)components frequency:(int)frequency
{
  v10.receiver = self;
  v10.super_class = ESUserDataContactWord;
  componentsCopy = components;
  v6 = [(ESUserDataContactWord *)&v10 init];
  v7 = [componentsCopy copy];

  components = v6->_components;
  v6->_components = v7;

  v6->_frequency = frequency;
  return v6;
}

@end
@interface HMCRedirectorStrongTuple
- (BOOL)isEqual:(id)a3;
- (id)attributeDescriptions;
- (id)description;
- (unint64_t)hash;
@end

@implementation HMCRedirectorStrongTuple

- (id)description
{
  if (self)
  {
    target = self->_target;
  }

  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  if (self)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  v7 = NSStringFromSelector(selector);
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"<HMCRedirectorStrongTuple -[%@ %@]>", v5, v7];

  return v8;
}

- (id)attributeDescriptions
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  if (self)
  {
    target = self->_target;
  }

  else
  {
    target = 0;
  }

  v5 = target;
  v6 = [v3 initWithName:@"Target" value:v5];
  v14[0] = v6;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  if (self)
  {
    selector = self->_selector;
  }

  else
  {
    selector = 0;
  }

  v9 = NSStringFromSelector(selector);
  v10 = [v7 initWithName:@"Selector" value:v9];
  v14[1] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  v7 = v6;
  if (v6)
  {
    if (self)
    {
      tuple = self->_tuple;
    }

    else
    {
      tuple = 0;
    }

    v9 = v6[1];
    v10 = tuple;
    v11 = [(HMCRedirectorTuple *)v10 isEqual:v9];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  if (self)
  {
    self = self->_tuple;
  }

  return [(HMCRedirectorStrongTuple *)self hash];
}

@end
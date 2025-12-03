@interface EQKitSelection
- (BOOL)isEqual:(id)equal;
- (EQKitSelection)initWithBox:(id)box;
- (EQKitSelection)initWithInspectable:(id)inspectable;
- (id)inspectables;
@end

@implementation EQKitSelection

- (EQKitSelection)initWithBox:(id)box
{
  v5.receiver = self;
  v5.super_class = EQKitSelection;
  result = [(EQKitSelection *)&v5 init];
  if (result)
  {
    result->_box = box;
  }

  return result;
}

- (EQKitSelection)initWithInspectable:(id)inspectable
{
  v6.receiver = self;
  v6.super_class = EQKitSelection;
  v4 = [(EQKitSelection *)&v6 init];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4->_box = [inspectable box];
    }
  }

  return v4;
}

- (id)inspectables
{
  v3[1] = *MEMORY[0x277D85DE8];
  if (!self->_box)
  {
    return MEMORY[0x277CBEBF8];
  }

  v3[0] = [[_EQKitInspectableBox alloc] initWithBox:self->_box];
  return [MEMORY[0x277CBEA60] arrayWithObjects:v3 count:1];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = [(EQKitSelection *)self box];
  v6 = [equal box];

  return [(EQKitBox *)v5 isEqual:v6];
}

@end
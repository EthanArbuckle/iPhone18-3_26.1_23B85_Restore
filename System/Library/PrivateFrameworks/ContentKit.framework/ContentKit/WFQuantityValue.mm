@interface WFQuantityValue
- (WFQuantityValue)initWithCoder:(id)coder;
- (WFQuantityValue)initWithMagnitude:(id)magnitude unitString:(id)string;
- (id)debugDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WFQuantityValue

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  magnitude = [(WFQuantityValue *)self magnitude];
  unitString = [(WFQuantityValue *)self unitString];
  v6 = [v3 stringWithFormat:@"%@ %@", magnitude, unitString];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  magnitude = [(WFQuantityValue *)self magnitude];
  [coderCopy encodeObject:magnitude forKey:@"Magnitude"];

  unitString = [(WFQuantityValue *)self unitString];
  [coderCopy encodeObject:unitString forKey:@"Unit"];
}

- (WFQuantityValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Magnitude"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Unit"];

  if (v5)
  {
    self = [(WFQuantityValue *)self initWithMagnitude:v5 unitString:v6];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  v8 = selfCopy;

  return v8;
}

- (WFQuantityValue)initWithMagnitude:(id)magnitude unitString:(id)string
{
  magnitudeCopy = magnitude;
  stringCopy = string;
  if (!magnitudeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFQuantityValue.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"magnitude"}];
  }

  v17.receiver = self;
  v17.super_class = WFQuantityValue;
  v10 = [(WFQuantityValue *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_magnitude, magnitude);
    v12 = [stringCopy copy];
    unitString = v11->_unitString;
    v11->_unitString = v12;

    v14 = v11;
  }

  return v11;
}

@end
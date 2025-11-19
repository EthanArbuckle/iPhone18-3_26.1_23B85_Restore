@interface WFQuantityValue
- (WFQuantityValue)initWithCoder:(id)a3;
- (WFQuantityValue)initWithMagnitude:(id)a3 unitString:(id)a4;
- (id)debugDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WFQuantityValue

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(WFQuantityValue *)self magnitude];
  v5 = [(WFQuantityValue *)self unitString];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(WFQuantityValue *)self magnitude];
  [v4 encodeObject:v5 forKey:@"Magnitude"];

  v6 = [(WFQuantityValue *)self unitString];
  [v4 encodeObject:v6 forKey:@"Unit"];
}

- (WFQuantityValue)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Magnitude"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Unit"];

  if (v5)
  {
    self = [(WFQuantityValue *)self initWithMagnitude:v5 unitString:v6];
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  return v8;
}

- (WFQuantityValue)initWithMagnitude:(id)a3 unitString:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"WFQuantityValue.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"magnitude"}];
  }

  v17.receiver = self;
  v17.super_class = WFQuantityValue;
  v10 = [(WFQuantityValue *)&v17 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_magnitude, a3);
    v12 = [v9 copy];
    unitString = v11->_unitString;
    v11->_unitString = v12;

    v14 = v11;
  }

  return v11;
}

@end
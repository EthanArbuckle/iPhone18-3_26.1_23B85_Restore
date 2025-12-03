@interface CMLengthProperty
+ (double)convertToPoints:(double)result unit:(int)unit;
+ (id)cssStringValue:(double)value unit:(int)unit;
- (CMLengthProperty)initWithNumber:(double)number unit:(int)unit;
- (id)cssString;
- (id)cssStringForName:(id)name;
- (id)description;
- (int)compareValue:(id)value;
- (void)addNumber:(double)number unit:(int)unit;
@end

@implementation CMLengthProperty

- (id)cssString
{
  unitType = self->unitType;
  if (unitType > 7)
  {
    if ((unitType - 8) < 2)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"%f;", *&self->value];
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  if (unitType == 2)
  {
    v3 = (self->value / 20.0);
    goto LABEL_16;
  }

  if (unitType == 3)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"%dpt;", (self->value / 20.0)];
    goto LABEL_17;
  }

  if (unitType != 6)
  {
LABEL_10:
    value = self->value;
    v5 = value > 1.0 || value <= 0.5;
    LODWORD(v3) = value;
    if (v5)
    {
      v3 = v3;
    }

    else
    {
      v3 = 1;
    }

    goto LABEL_16;
  }

  v3 = (self->value / 2);
LABEL_16:
  [MEMORY[0x277CCACA8] stringWithFormat:@"%d;", v3];
  v6 = LABEL_17:;

  return v6;
}

+ (id)cssStringValue:(double)value unit:(int)unit
{
  if (unit <= 7)
  {
    if (unit == 2)
    {
      valueCopy = (value / 20.0);
      goto LABEL_16;
    }

    if (unit == 6)
    {
      valueCopy = (value / 2);
LABEL_16:
      v7 = [MEMORY[0x277CCABB0] numberWithInt:valueCopy];
      v8 = +[CMGlobalCache lengthPropertyCache];
      v9 = [v8 objectForKey:v7];
      v10 = v9;
      if (v9)
      {
        valueCopy = v9;
      }

      else
      {
        valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@":%dpx", valueCopy];;
        [v8 setObject:valueCopy forKey:v7];
      }

      goto LABEL_20;
    }

LABEL_10:
    if (value > 1.0 || value <= 0.5)
    {
      valueCopy = value;
    }

    else
    {
      valueCopy = 1;
    }

    goto LABEL_16;
  }

  if ((unit - 8) >= 2)
  {
    if (unit == 10)
    {
      valueCopy = (value / 8);
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  valueCopy = [MEMORY[0x277CCACA8] stringWithFormat:@":%f", *&value];;
LABEL_20:

  return valueCopy;
}

- (CMLengthProperty)initWithNumber:(double)number unit:(int)unit
{
  v7.receiver = self;
  v7.super_class = CMLengthProperty;
  result = [(CMLengthProperty *)&v7 init];
  if (result)
  {
    result->value = number;
    result->unitType = unit;
  }

  return result;
}

- (int)compareValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = valueCopy;
    value = self->value;
    [v5 value];
    if (value == v7)
    {
      unitType = self->unitType;
      if (unitType == [v5 unitType])
      {
        v8 = 0;
      }

      else
      {
        v8 = -1;
      }
    }

    else
    {
      v8 = -1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

- (id)cssStringForName:(id)name
{
  nameCopy = name;
  unitType = self->unitType;
  if (unitType > 7)
  {
    if ((unitType - 8) < 2)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%f", nameCopy, *&self->value];;
      goto LABEL_18;
    }

    goto LABEL_10;
  }

  if (unitType == 2)
  {
    v6 = (self->value / 20.0);
    goto LABEL_16;
  }

  if (unitType != 3)
  {
    if (unitType == 6)
    {
      v6 = (self->value / 2);
LABEL_16:
      v8 = @"%@:%d;";
      goto LABEL_17;
    }

LABEL_10:
    value = self->value;
    v10 = value > 1.0 || value <= 0.5;
    LODWORD(v6) = value;
    if (v10)
    {
      v6 = v6;
    }

    else
    {
      v6 = 1;
    }

    goto LABEL_16;
  }

  v6 = (self->value / 20.0);
  v8 = @"%@:%dpt;";
LABEL_17:
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:v8, nameCopy, v6];
LABEL_18:
  v11 = v7;

  return v11;
}

+ (double)convertToPoints:(double)result unit:(int)unit
{
  if ((unit - 2) < 2)
  {
    return result / 20.0;
  }

  if (unit == 6)
  {
    return result * 0.5;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  cssString = [(CMLengthProperty *)self cssString];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, cssString];

  return v6;
}

- (void)addNumber:(double)number unit:(int)unit
{
  if (self->unitType == unit)
  {
    self->value = self->value + number;
  }

  else
  {
    v6 = *&unit;
    [objc_opt_class() convertToPoints:self->unitType unit:self->value];
    v8 = v7;
    [objc_opt_class() convertToPoints:v6 unit:number];
    self->value = v8 + v9;
    self->unitType = 1;
  }
}

@end
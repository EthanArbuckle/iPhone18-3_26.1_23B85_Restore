@interface CMLengthProperty
+ (double)convertToPoints:(double)result unit:(int)a4;
+ (id)cssStringValue:(double)a3 unit:(int)a4;
- (CMLengthProperty)initWithNumber:(double)a3 unit:(int)a4;
- (id)cssString;
- (id)cssStringForName:(id)a3;
- (id)description;
- (int)compareValue:(id)a3;
- (void)addNumber:(double)a3 unit:(int)a4;
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

+ (id)cssStringValue:(double)a3 unit:(int)a4
{
  if (a4 <= 7)
  {
    if (a4 == 2)
    {
      v5 = (a3 / 20.0);
      goto LABEL_16;
    }

    if (a4 == 6)
    {
      v5 = (a3 / 2);
LABEL_16:
      v7 = [MEMORY[0x277CCABB0] numberWithInt:v5];
      v8 = +[CMGlobalCache lengthPropertyCache];
      v9 = [v8 objectForKey:v7];
      v10 = v9;
      if (v9)
      {
        v4 = v9;
      }

      else
      {
        v4 = [MEMORY[0x277CCACA8] stringWithFormat:@":%dpx", v5];;
        [v8 setObject:v4 forKey:v7];
      }

      goto LABEL_20;
    }

LABEL_10:
    if (a3 > 1.0 || a3 <= 0.5)
    {
      v5 = a3;
    }

    else
    {
      v5 = 1;
    }

    goto LABEL_16;
  }

  if ((a4 - 8) >= 2)
  {
    if (a4 == 10)
    {
      v5 = (a3 / 8);
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@":%f", *&a3];;
LABEL_20:

  return v4;
}

- (CMLengthProperty)initWithNumber:(double)a3 unit:(int)a4
{
  v7.receiver = self;
  v7.super_class = CMLengthProperty;
  result = [(CMLengthProperty *)&v7 init];
  if (result)
  {
    result->value = a3;
    result->unitType = a4;
  }

  return result;
}

- (int)compareValue:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
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

- (id)cssStringForName:(id)a3
{
  v4 = a3;
  unitType = self->unitType;
  if (unitType > 7)
  {
    if ((unitType - 8) < 2)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%f", v4, *&self->value];;
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
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:v8, v4, v6];
LABEL_18:
  v11 = v7;

  return v11;
}

+ (double)convertToPoints:(double)result unit:(int)a4
{
  if ((a4 - 2) < 2)
  {
    return result / 20.0;
  }

  if (a4 == 6)
  {
    return result * 0.5;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(CMLengthProperty *)self cssString];
  v6 = [v3 stringWithFormat:@"<%@: %p %@>", v4, self, v5];

  return v6;
}

- (void)addNumber:(double)a3 unit:(int)a4
{
  if (self->unitType == a4)
  {
    self->value = self->value + a3;
  }

  else
  {
    v6 = *&a4;
    [objc_opt_class() convertToPoints:self->unitType unit:self->value];
    v8 = v7;
    [objc_opt_class() convertToPoints:v6 unit:a3];
    self->value = v8 + v9;
    self->unitType = 1;
  }
}

@end
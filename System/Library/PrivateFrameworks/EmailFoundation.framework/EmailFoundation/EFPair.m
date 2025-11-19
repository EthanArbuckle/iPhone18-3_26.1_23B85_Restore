@interface EFPair
+ (id)pairWithFirst:(id)a3 second:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPair:(id)a3;
- (EFPair)initWithCoder:(id)a3;
- (EFPair)initWithFirst:(id)a3 second:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation EFPair

+ (id)pairWithFirst:(id)a3 second:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[a1 alloc] initWithFirst:v6 second:v7];

  return v8;
}

- (EFPair)initWithFirst:(id)a3 second:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = EFPair;
  v9 = [(EFPair *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_first, a3);
    objc_storeStrong(&v10->_second, a4);
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(EFPair *)self isEqualToPair:v4];
  }

  return v5;
}

- (BOOL)isEqualToPair:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self == v5)
  {
    v14 = 1;
    goto LABEL_18;
  }

  if (!v5)
  {
    goto LABEL_15;
  }

  first = self->_first;
  v8 = first;
  if (first)
  {
LABEL_6:
    v9 = [(EFPair *)v6 first];
    v10 = [v8 isEqual:v9];

    if (first)
    {
      if (v10)
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (v10)
      {
        goto LABEL_8;
      }
    }

LABEL_15:
    v14 = 0;
    goto LABEL_18;
  }

  v3 = [(EFPair *)v5 first];
  if (v3)
  {
    v8 = self->_first;
    goto LABEL_6;
  }

LABEL_8:
  second = self->_second;
  v12 = second;
  if (!second)
  {
    v3 = [(EFPair *)v6 second];
    if (!v3)
    {
      v14 = 1;
LABEL_17:

      goto LABEL_18;
    }

    v12 = self->_second;
  }

  v13 = [(EFPair *)v6 second];
  v14 = [v12 isEqual:v13];

  if (!second)
  {
    goto LABEL_17;
  }

LABEL_18:

  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = [(EFPair *)self first];
  [v6 encodeObject:v4 forKey:@"EFPropertyKey_first"];

  v5 = [(EFPair *)self second];
  [v6 encodeObject:v5 forKey:@"EFPropertyKey_second"];
}

- (EFPair)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = EFPair;
  v5 = [(EFPair *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_first"];
    first = v5->_first;
    v5->_first = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EFPropertyKey_second"];
    second = v5->_second;
    v5->_second = v8;
  }

  return v5;
}

@end
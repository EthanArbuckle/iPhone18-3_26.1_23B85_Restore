@interface ASKAtomicBox
- (ASKAtomicBox)initWithValue:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASKAtomicBox

- (ASKAtomicBox)initWithValue:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ASKAtomicBox;
  v5 = [(ASKAtomicBox *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASKAtomicBox *)v5 setValue:v4];
  }

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(ASKAtomicBox *)self value];
  v4 = [v2 stringWithFormat:@"AtomicBox(%@)", v3];

  return v4;
}

- (unint64_t)hash
{
  v2 = [(ASKAtomicBox *)self value];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (self == v4)
    {
      v8 = 1;
    }

    else
    {
      v5 = v4;
      v6 = [(ASKAtomicBox *)self value];
      v7 = [(ASKAtomicBox *)v5 value];

      v8 = [v6 isEqual:v7];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end
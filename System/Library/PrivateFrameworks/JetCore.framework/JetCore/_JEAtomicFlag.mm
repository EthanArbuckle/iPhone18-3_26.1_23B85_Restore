@interface _JEAtomicFlag
- (BOOL)compareWithValue:(BOOL)a3 andExchangeWithValue:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (_JEAtomicFlag)init;
- (_JEAtomicFlag)initWithInitialValue:(BOOL)a3;
- (id)description;
- (unint64_t)hash;
@end

@implementation _JEAtomicFlag

- (_JEAtomicFlag)initWithInitialValue:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = _JEAtomicFlag;
  result = [(_JEAtomicFlag *)&v5 init];
  if (result)
  {
    result->_value = a3;
  }

  return result;
}

- (_JEAtomicFlag)init
{
  [(_JEAtomicFlag *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)compareWithValue:(BOOL)a3 andExchangeWithValue:(BOOL)a4
{
  v4 = a3;
  atomic_compare_exchange_strong(&self->_value, &v4, a4);
  return v4 == a3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self)
    {
      v5 = atomic_load(&self->_value);
    }

    else
    {
      v5 = 0;
    }

    v6 = atomic_load(v4 + 8);
    v7 = v5 ^ v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (unint64_t)hash
{
  if (self)
  {
    v2 = atomic_load((self + 8));
    return v2 & 1;
  }

  return self;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = @"NO";
  if (self)
  {
    v8 = atomic_load(&self->_value);
    if (v8)
    {
      v7 = @"YES";
    }
  }

  v9 = [v3 initWithFormat:@"<%@:%p; %@>", v5, self, v7];

  return v9;
}

@end
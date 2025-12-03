@interface _JEAtomicFlag
- (BOOL)compareWithValue:(BOOL)value andExchangeWithValue:(BOOL)withValue;
- (BOOL)isEqual:(id)equal;
- (_JEAtomicFlag)init;
- (_JEAtomicFlag)initWithInitialValue:(BOOL)value;
- (id)description;
- (uint64_t)currentValue;
- (uint64_t)setCurrentValue:(uint64_t)result;
- (unint64_t)hash;
@end

@implementation _JEAtomicFlag

- (_JEAtomicFlag)initWithInitialValue:(BOOL)value
{
  v5.receiver = self;
  v5.super_class = _JEAtomicFlag;
  result = [(_JEAtomicFlag *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

- (_JEAtomicFlag)init
{
  [(_JEAtomicFlag *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (BOOL)compareWithValue:(BOOL)value andExchangeWithValue:(BOOL)withValue
{
  valueCopy = value;
  atomic_compare_exchange_strong(&self->_value, &valueCopy, withValue);
  return valueCopy == value;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (self)
    {
      v5 = atomic_load(&self->_value);
    }

    else
    {
      v5 = 0;
    }

    v6 = atomic_load(equalCopy + 8);
    v7 = v5 ^ v6 ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (uint64_t)currentValue
{
  if (self)
  {
    v1 = atomic_load((self + 8));
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (uint64_t)setCurrentValue:(uint64_t)result
{
  if (result)
  {
    atomic_store(a2, (result + 8));
  }

  return result;
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
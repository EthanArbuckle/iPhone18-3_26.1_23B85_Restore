@interface _JEAtomicCounter
- (BOOL)isEqual:(id)equal;
- (_JEAtomicCounter)init;
- (_JEAtomicCounter)initWithInitialValue:(int64_t)value;
- (id)description;
- (unint64_t)currentValue;
- (unint64_t)hash;
@end

@implementation _JEAtomicCounter

- (unint64_t)currentValue
{
  if (result)
  {
    return atomic_load((result + 8));
  }

  return result;
}

- (_JEAtomicCounter)initWithInitialValue:(int64_t)value
{
  v5.receiver = self;
  v5.super_class = _JEAtomicCounter;
  result = [(_JEAtomicCounter *)&v5 init];
  if (result)
  {
    result->_value = value;
  }

  return result;
}

- (_JEAtomicCounter)init
{
  [(_JEAtomicCounter *)self doesNotRecognizeSelector:a2];

  return 0;
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

    v6 = atomic_load(equalCopy + 1);
    v7 = v5 == v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  if (self)
  {
    return atomic_load((self + 8));
  }

  return self;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x1E696AEC0]);
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  if (self)
  {
    v7 = atomic_load(&self->_value);
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 initWithFormat:@"<%@:%p; %ld>", v5, self, v7];

  return v8;
}

@end
@interface HMDValueTransformer
+ (Class)valueClass;
+ (id)decodeValue:(id)value withTransformerNamed:(id)named error:(id *)error;
+ (id)encodeValue:(id)value withTransformerNamed:(id)named error:(id *)error;
+ (id)requiredTransformerForName:(uint64_t)name;
+ (id)reverseTransformedValue:(id)value error:(id *)error;
+ (id)sharedTransformer;
+ (id)transformedValue:(id)value error:(id *)error;
+ (id)valueTransformerForName:(id)name;
- (HMDValueTransformer)init;
- (id)description;
- (id)reverseTransformedValue:(id)value;
- (id)reverseTransformedValue:(id)value error:(id *)error;
- (id)transformedValue:(id)value;
- (id)transformedValue:(id)value error:(id *)error;
@end

@implementation HMDValueTransformer

- (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = objc_opt_class();
  if (checkValueOfClass(valueCopy, [v6 transformedValueClass], error))
  {
    v7 = [v6 reverseTransformedValue:valueCopy error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)transformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = objc_opt_class();
  if (checkValueOfClass(valueCopy, [v6 valueClass], error))
  {
    v7 = [v6 transformedValue:valueCopy error:error];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)reverseTransformedValue:(id)value
{
  v17[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (valueCopy)
  {
    v15 = 0;
    v5 = [(HMDValueTransformer *)self reverseTransformedValue:valueCopy error:&v15];
    v6 = v15;
    if (!v5)
    {
      if (v6)
      {
        v16 = *MEMORY[0x277CCA7E8];
        v17[0] = v6;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      }

      else
      {
        v9 = 0;
      }

      v10 = MEMORY[0x277CCACA8];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v10 stringWithFormat:@"%@ reverseTransformedValue failed", v12];

      v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v13 userInfo:v9];
      objc_exception_throw(v14);
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)transformedValue:(id)value
{
  v17[1] = *MEMORY[0x277D85DE8];
  valueCopy = value;
  if (valueCopy)
  {
    v15 = 0;
    v5 = [(HMDValueTransformer *)self transformedValue:valueCopy error:&v15];
    v6 = v15;
    if (!v5)
    {
      if (v6)
      {
        v16 = *MEMORY[0x277CCA7E8];
        v17[0] = v6;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
      }

      else
      {
        v9 = 0;
      }

      v10 = MEMORY[0x277CCACA8];
      v11 = objc_opt_class();
      v12 = NSStringFromClass(v11);
      v13 = [v10 stringWithFormat:@"%@ transformedValue failed", v12];

      v14 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:v13 userInfo:v9];
      objc_exception_throw(v14);
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)description
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (HMDValueTransformer)init
{
  v4 = objc_opt_class();
  if (v4 == objc_opt_class())
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE658];
    v8 = MEMORY[0x277CCACA8];
    v9 = NSStringFromSelector(a2);
    v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
    v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
    v12 = v11;

    objc_exception_throw(v11);
  }

  v13.receiver = self;
  v13.super_class = HMDValueTransformer;
  return [(HMDValueTransformer *)&v13 init];
}

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

+ (id)transformedValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

+ (Class)valueClass
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)valueTransformerForName:(id)name
{
  nameCopy = name;
  v4 = [MEMORY[0x277CCAE68] valueTransformerForName:nameCopy];
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      if (valueTransformerForName__once != -1)
      {
        dispatch_once(&valueTransformerForName__once, &__block_literal_global_276656);
      }

      v5 = [valueTransformerForName__adaptersByName objectForKey:nameCopy];
      if (!v5)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = off_278666378;
        }

        else
        {
          v7 = off_278666378;
          if (([nameCopy isEqualToString:*MEMORY[0x277CCA310]] & 1) == 0 && !objc_msgSend(nameCopy, "isEqualToString:", *MEMORY[0x277CCA7D0]))
          {
            v7 = off_278666370;
          }
        }

        v8 = *v7;
        v5 = [objc_alloc(objc_opt_class()) initWithTransformer:v4];
        v9 = valueTransformerForName__adaptersByName;
        v10 = [nameCopy copy];
        [v9 setObject:v5 forKey:v10];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void __47__HMDValueTransformer_valueTransformerForName___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v1 = valueTransformerForName__adaptersByName;
  valueTransformerForName__adaptersByName = v0;

  v2 = objc_opt_class();
  v4 = NSStringFromClass(v2);
  v3 = [v4 stringByAppendingString:@".adaptersByName"];
  [valueTransformerForName__adaptersByName setName:v3];
}

+ (id)sharedTransformer
{
  v2 = MEMORY[0x277CCAE68];
  v3 = NSStringFromClass(self);
  v4 = [v2 valueTransformerForName:v3];

  return v4;
}

+ (id)decodeValue:(id)value withTransformerNamed:(id)named error:(id *)error
{
  if (named)
  {
    namedCopy = named;
  }

  else
  {
    namedCopy = *MEMORY[0x277CCA310];
  }

  valueCopy = value;
  v9 = [(HMDValueTransformer *)self requiredTransformerForName:namedCopy];
  v10 = [v9 reverseTransformedValue:valueCopy error:error];

  return v10;
}

+ (id)requiredTransformerForName:(uint64_t)name
{
  v2 = a2;
  v3 = [objc_opt_self() valueTransformerForName:v2];
  if (v3)
  {
    v4 = v3;

    return v4;
  }

  else
  {
    v6 = _HMFPreconditionFailureWithFormat();
    return [(HMDValueTransformer *)v6 encodeValue:v7 withTransformerNamed:v8 error:v9, v10];
  }
}

+ (id)encodeValue:(id)value withTransformerNamed:(id)named error:(id *)error
{
  if (named)
  {
    namedCopy = named;
  }

  else
  {
    namedCopy = *MEMORY[0x277CCA310];
  }

  valueCopy = value;
  v9 = [(HMDValueTransformer *)self requiredTransformerForName:namedCopy];
  v10 = [v9 transformedValue:valueCopy error:error];

  return v10;
}

@end
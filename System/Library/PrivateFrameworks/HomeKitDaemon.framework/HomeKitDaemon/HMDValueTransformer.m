@interface HMDValueTransformer
+ (Class)valueClass;
+ (id)decodeValue:(id)a3 withTransformerNamed:(id)a4 error:(id *)a5;
+ (id)encodeValue:(id)a3 withTransformerNamed:(id)a4 error:(id *)a5;
+ (id)requiredTransformerForName:(uint64_t)a1;
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
+ (id)sharedTransformer;
+ (id)transformedValue:(id)a3 error:(id *)a4;
+ (id)valueTransformerForName:(id)a3;
- (HMDValueTransformer)init;
- (id)description;
- (id)reverseTransformedValue:(id)a3;
- (id)reverseTransformedValue:(id)a3 error:(id *)a4;
- (id)transformedValue:(id)a3;
- (id)transformedValue:(id)a3 error:(id *)a4;
@end

@implementation HMDValueTransformer

- (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  if (checkValueOfClass(v5, [v6 transformedValueClass], a4))
  {
    v7 = [v6 reverseTransformedValue:v5 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)transformedValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  if (checkValueOfClass(v5, [v6 valueClass], a4))
  {
    v7 = [v6 transformedValue:v5 error:a4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)reverseTransformedValue:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v15 = 0;
    v5 = [(HMDValueTransformer *)self reverseTransformedValue:v4 error:&v15];
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

- (id)transformedValue:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v15 = 0;
    v5 = [(HMDValueTransformer *)self transformedValue:v4 error:&v15];
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

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

+ (id)transformedValue:(id)a3 error:(id *)a4
{
  v5 = a3;
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

+ (id)valueTransformerForName:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CCAE68] valueTransformerForName:v3];
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

      v5 = [valueTransformerForName__adaptersByName objectForKey:v3];
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
          if (([v3 isEqualToString:*MEMORY[0x277CCA310]] & 1) == 0 && !objc_msgSend(v3, "isEqualToString:", *MEMORY[0x277CCA7D0]))
          {
            v7 = off_278666370;
          }
        }

        v8 = *v7;
        v5 = [objc_alloc(objc_opt_class()) initWithTransformer:v4];
        v9 = valueTransformerForName__adaptersByName;
        v10 = [v3 copy];
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
  v3 = NSStringFromClass(a1);
  v4 = [v2 valueTransformerForName:v3];

  return v4;
}

+ (id)decodeValue:(id)a3 withTransformerNamed:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = *MEMORY[0x277CCA310];
  }

  v8 = a3;
  v9 = [(HMDValueTransformer *)a1 requiredTransformerForName:v7];
  v10 = [v9 reverseTransformedValue:v8 error:a5];

  return v10;
}

+ (id)requiredTransformerForName:(uint64_t)a1
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

+ (id)encodeValue:(id)a3 withTransformerNamed:(id)a4 error:(id *)a5
{
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = *MEMORY[0x277CCA310];
  }

  v8 = a3;
  v9 = [(HMDValueTransformer *)a1 requiredTransformerForName:v7];
  v10 = [v9 transformedValue:v8 error:a5];

  return v10;
}

@end
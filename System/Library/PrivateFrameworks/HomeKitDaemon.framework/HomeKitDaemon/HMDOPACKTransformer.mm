@interface HMDOPACKTransformer
+ (Class)valueClass;
+ (id)OPACKFromValue:(id)value error:(id *)error;
+ (id)allocWithZone:(_NSZone *)zone;
+ (id)reverseTransformedValue:(id)value error:(id *)error;
+ (id)transformedValue:(id)value error:(id *)error;
+ (id)valueFromOPACK:(id)k error:(id *)error;
- (id)OPACKFromValue:(id)value error:(id *)error;
- (id)valueFromOPACK:(id)k error:(id *)error;
@end

@implementation HMDOPACKTransformer

- (id)valueFromOPACK:(id)k error:(id *)error
{
  kCopy = k;
  if (!kCopy)
  {
    goto LABEL_13;
  }

  if (HMDIsOPACKValue_once != -1)
  {
    dispatch_once(&HMDIsOPACKValue_once, &__block_literal_global_157086);
  }

  v6 = CFGetTypeID(kCopy);
  if (v6 == HMDIsOPACKValue_arrayTypeID || v6 == HMDIsOPACKValue_dictionaryTypeID || v6 == HMDIsOPACKValue_nullTypeID || v6 == HMDIsOPACKValue_BOOLeanTypeID || v6 == HMDIsOPACKValue_stringTypeID || v6 == HMDIsOPACKValue_numberTypeID || v6 == HMDIsOPACKValue_dataTypeID || v6 == HMDIsOPACKValue_dateTypeID)
  {

    goto LABEL_16;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_16:
    v8 = [objc_opt_class() valueFromOPACK:kCopy error:error];
    goto LABEL_18;
  }

LABEL_13:
  if (error)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 reason:@"Expected OPACK-compatible value"];
    *error = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_18:

  return v8;
}

- (id)OPACKFromValue:(id)value error:(id *)error
{
  valueCopy = value;
  v6 = objc_opt_class();
  valueClass = [v6 valueClass];
  if (objc_opt_isKindOfClass())
  {
    error = [v6 OPACKFromValue:valueCopy error:error];
  }

  else if (error)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected %@", valueClass];
    *error = [v8 hmfErrorWithCode:3 reason:v9];

    error = 0;
  }

  return error;
}

+ (id)valueFromOPACK:(id)k error:(id *)error
{
  kCopy = k;
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

+ (id)OPACKFromValue:(id)value error:(id *)error
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

+ (id)reverseTransformedValue:(id)value error:(id *)error
{
  v5 = OPACKDecodeData();
  if (error)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6705 userInfo:0];
    *error = v6;

    error = 0;
  }

  return error;
}

+ (id)transformedValue:(id)value error:(id *)error
{
  v5 = [self OPACKFromValue:value error:?];
  v6 = v5;
  if (!v5)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v12 = -6700;
  v7 = MEMORY[0x22AAD2E60](v5, 8, &v12);
  v8 = v7;
  if (!v7 || v12)
  {
    if (error)
    {
      if (!v12)
      {
        v9 = 0;
        *error = 0;
        goto LABEL_11;
      }

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:? userInfo:?];
      *error = v10;
    }

    v9 = 0;
  }

  else
  {
    v9 = v7;
  }

LABEL_11:

LABEL_12:

  return v9;
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

+ (id)allocWithZone:(_NSZone *)zone
{
  if (objc_opt_class() == self)
  {

    return [(HMDOPACKTransformer *)HMDDefaultOPACKTransformer allocWithZone:zone];
  }

  else
  {
    v6.receiver = self;
    v6.super_class = &OBJC_METACLASS___HMDOPACKTransformer;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, zone);
  }
}

@end
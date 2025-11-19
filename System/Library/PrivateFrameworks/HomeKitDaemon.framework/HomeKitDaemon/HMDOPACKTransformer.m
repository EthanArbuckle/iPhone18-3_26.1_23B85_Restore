@interface HMDOPACKTransformer
+ (Class)valueClass;
+ (id)OPACKFromValue:(id)a3 error:(id *)a4;
+ (id)allocWithZone:(_NSZone *)a3;
+ (id)reverseTransformedValue:(id)a3 error:(id *)a4;
+ (id)transformedValue:(id)a3 error:(id *)a4;
+ (id)valueFromOPACK:(id)a3 error:(id *)a4;
- (id)OPACKFromValue:(id)a3 error:(id *)a4;
- (id)valueFromOPACK:(id)a3 error:(id *)a4;
@end

@implementation HMDOPACKTransformer

- (id)valueFromOPACK:(id)a3 error:(id *)a4
{
  v5 = a3;
  if (!v5)
  {
    goto LABEL_13;
  }

  if (HMDIsOPACKValue_once != -1)
  {
    dispatch_once(&HMDIsOPACKValue_once, &__block_literal_global_157086);
  }

  v6 = CFGetTypeID(v5);
  if (v6 == HMDIsOPACKValue_arrayTypeID || v6 == HMDIsOPACKValue_dictionaryTypeID || v6 == HMDIsOPACKValue_nullTypeID || v6 == HMDIsOPACKValue_BOOLeanTypeID || v6 == HMDIsOPACKValue_stringTypeID || v6 == HMDIsOPACKValue_numberTypeID || v6 == HMDIsOPACKValue_dataTypeID || v6 == HMDIsOPACKValue_dateTypeID)
  {

    goto LABEL_16;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
LABEL_16:
    v8 = [objc_opt_class() valueFromOPACK:v5 error:a4];
    goto LABEL_18;
  }

LABEL_13:
  if (a4)
  {
    [MEMORY[0x277CCA9B8] hmfErrorWithCode:3 reason:@"Expected OPACK-compatible value"];
    *a4 = v8 = 0;
  }

  else
  {
    v8 = 0;
  }

LABEL_18:

  return v8;
}

- (id)OPACKFromValue:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_opt_class();
  v7 = [v6 valueClass];
  if (objc_opt_isKindOfClass())
  {
    a4 = [v6 OPACKFromValue:v5 error:a4];
  }

  else if (a4)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expected %@", v7];
    *a4 = [v8 hmfErrorWithCode:3 reason:v9];

    a4 = 0;
  }

  return a4;
}

+ (id)valueFromOPACK:(id)a3 error:(id *)a4
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

+ (id)OPACKFromValue:(id)a3 error:(id *)a4
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

+ (id)reverseTransformedValue:(id)a3 error:(id *)a4
{
  v5 = OPACKDecodeData();
  if (a4)
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:-6705 userInfo:0];
    *a4 = v6;

    a4 = 0;
  }

  return a4;
}

+ (id)transformedValue:(id)a3 error:(id *)a4
{
  v5 = [a1 OPACKFromValue:a3 error:?];
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
    if (a4)
    {
      if (!v12)
      {
        v9 = 0;
        *a4 = 0;
        goto LABEL_11;
      }

      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:? userInfo:?];
      *a4 = v10;
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

+ (id)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {

    return [(HMDOPACKTransformer *)HMDDefaultOPACKTransformer allocWithZone:a3];
  }

  else
  {
    v6.receiver = a1;
    v6.super_class = &OBJC_METACLASS___HMDOPACKTransformer;
    return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
  }
}

@end
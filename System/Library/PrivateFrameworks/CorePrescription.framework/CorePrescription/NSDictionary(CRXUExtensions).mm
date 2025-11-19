@interface NSDictionary(CRXUExtensions)
- (BOOL)crxu_containsKey:()CRXUExtensions;
- (double)crxu_doubleForKey:()CRXUExtensions;
- (id)crxu_dataForKey:()CRXUExtensions;
- (id)crxu_dateForKey:()CRXUExtensions;
- (id)crxu_objectOfClass:()CRXUExtensions forKey:;
- (id)crxu_stringForKey:()CRXUExtensions;
- (uint64_t)crxu_BOOLForKey:()CRXUExtensions;
- (uint64_t)crxu_integerForKey:()CRXUExtensions;
- (uint64_t)crxu_uintegerForKey:()CRXUExtensions;
@end

@implementation NSDictionary(CRXUExtensions)

- (uint64_t)crxu_BOOLForKey:()CRXUExtensions
{
  v1 = [a1 objectForKey:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 BOOLValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)crxu_integerForKey:()CRXUExtensions
{
  v1 = [a1 objectForKey:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)crxu_uintegerForKey:()CRXUExtensions
{
  v1 = [a1 objectForKey:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = [v1 unsignedIntegerValue];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (double)crxu_doubleForKey:()CRXUExtensions
{
  v1 = [a1 objectForKey:?];
  v2 = 0.0;
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v1 doubleValue];
      v2 = v3;
    }
  }

  return v2;
}

- (id)crxu_stringForKey:()CRXUExtensions
{
  v1 = [a1 objectForKey:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)crxu_dataForKey:()CRXUExtensions
{
  v1 = [a1 objectForKey:?];
  if (v1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v2 = v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)crxu_dateForKey:()CRXUExtensions
{
  v1 = [a1 objectForKey:?];
  if (v1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = v1;
LABEL_6:
      v3 = v2;
      goto LABEL_8;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v1 doubleValue];
      v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:?];
      goto LABEL_6;
    }
  }

  v3 = 0;
LABEL_8:

  return v3;
}

- (id)crxu_objectOfClass:()CRXUExtensions forKey:
{
  v4 = [a1 objectForKey:a4];
  if (v4 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)crxu_containsKey:()CRXUExtensions
{
  v1 = [a1 objectForKey:?];
  v2 = v1 != 0;

  return v2;
}

@end
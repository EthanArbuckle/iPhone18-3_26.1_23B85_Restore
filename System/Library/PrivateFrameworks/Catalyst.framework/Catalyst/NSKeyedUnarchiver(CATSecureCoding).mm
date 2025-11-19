@interface NSKeyedUnarchiver(CATSecureCoding)
+ (id)cat_unarchiveObjectOfClass:()CATSecureCoding withData:;
+ (id)cat_unarchiveObjectOfClass:()CATSecureCoding withData:error:;
+ (id)cat_unarchiveObjectOfClasses:()CATSecureCoding withData:error:;
+ (id)cat_unarchivePropertyListObjectWithData:()CATSecureCoding error:;
@end

@implementation NSKeyedUnarchiver(CATSecureCoding)

+ (id)cat_unarchiveObjectOfClass:()CATSecureCoding withData:
{
  v7 = a4;
  if (!a3)
  {
    [NSKeyedUnarchiver(CATSecureCoding) cat_unarchiveObjectOfClass:a2 withData:a1];
  }

  v8 = [MEMORY[0x277CBEB98] setWithObject:a3];
  v9 = [a1 cat_unarchiveObjectOfClasses:v8 withData:v7];

  return v9;
}

+ (id)cat_unarchiveObjectOfClass:()CATSecureCoding withData:error:
{
  v9 = a4;
  if (!a3)
  {
    [NSKeyedUnarchiver(CATSecureCoding) cat_unarchiveObjectOfClass:a2 withData:a1 error:?];
  }

  v10 = [MEMORY[0x277CBEB98] setWithObject:a3];
  v11 = [a1 cat_unarchiveObjectOfClasses:v10 withData:v9 error:a5];

  return v11;
}

+ (id)cat_unarchiveObjectOfClasses:()CATSecureCoding withData:error:
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
LABEL_3:
      v12 = [a1 unarchivedObjectOfClasses:v9 fromData:v11 error:a5];
      goto LABEL_6;
    }
  }

  else
  {
    [NSKeyedUnarchiver(CATSecureCoding) cat_unarchiveObjectOfClasses:a2 withData:a1 error:?];
    if (v11)
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
LABEL_6:

  return v12;
}

+ (id)cat_unarchivePropertyListObjectWithData:()CATSecureCoding error:
{
  if (a3)
  {
    v6 = a3;
    v7 = [[a1 alloc] initForReadingFromData:v6 error:a4];

    v8 = [v7 decodePropertyListForKey:*MEMORY[0x277CCA308]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (void)cat_unarchiveObjectOfClass:()CATSecureCoding withData:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSKeyedUnarchiver+SecureCoding.m" lineNumber:32 description:{@"Invalid parameter not satisfying: %@", @"aClass"}];
}

+ (void)cat_unarchiveObjectOfClass:()CATSecureCoding withData:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSKeyedUnarchiver+SecureCoding.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"aClass"}];
}

+ (void)cat_unarchiveObjectOfClasses:()CATSecureCoding withData:error:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSKeyedUnarchiver+SecureCoding.m" lineNumber:52 description:{@"Invalid parameter not satisfying: %@", @"classes"}];
}

@end
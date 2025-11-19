@interface CKOperationGroup(PKAdditions)
+ (id)pk_operationGroupWithName:()PKAdditions;
+ (id)pk_operationGroupWithName:()PKAdditions suffix:;
@end

@implementation CKOperationGroup(PKAdditions)

+ (id)pk_operationGroupWithName:()PKAdditions
{
  v3 = MEMORY[0x1E695BA08];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setName:v4];

  return v5;
}

+ (id)pk_operationGroupWithName:()PKAdditions suffix:
{
  v5 = a3;
  v6 = a4;
  if ([v6 length])
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v5, v6];
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;
  v9 = [objc_opt_class() pk_operationGroupWithName:v7];

  return v9;
}

@end
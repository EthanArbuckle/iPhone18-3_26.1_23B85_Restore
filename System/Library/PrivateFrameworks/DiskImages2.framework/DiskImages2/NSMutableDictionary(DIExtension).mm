@interface NSMutableDictionary(DIExtension)
- (id)popObjectForKey:()DIExtension;
- (uint64_t)validateAndPopObjectForKey:()DIExtension className:isOptional:error:;
- (uint64_t)validateObjWithKey:()DIExtension className:isOptional:error:;
@end

@implementation NSMutableDictionary(DIExtension)

- (id)popObjectForKey:()DIExtension
{
  v4 = a3;
  v5 = [self objectForKey:v4];
  [self removeObjectForKey:v4];

  return v5;
}

- (uint64_t)validateAndPopObjectForKey:()DIExtension className:isOptional:error:
{
  v10 = a3;
  v11 = [self validateObjWithKey:v10 className:a4 isOptional:a5 error:a6];
  v12 = [self popObjectForKey:v10];

  return v11;
}

- (uint64_t)validateObjWithKey:()DIExtension className:isOptional:error:
{
  v9 = a3;
  v10 = [self objectForKey:v9];
  if (v10)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (a6 && (isKindOfClass & 1) == 0)
  {
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Validation failed for dictionary key %@.", v9];
    *a6 = [DIError errorWithPOSIXCode:22 verboseInfo:v11];
  }

  return isKindOfClass & 1;
}

@end
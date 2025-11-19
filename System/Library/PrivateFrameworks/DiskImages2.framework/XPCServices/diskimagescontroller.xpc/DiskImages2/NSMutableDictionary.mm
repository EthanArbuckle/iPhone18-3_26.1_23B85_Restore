@interface NSMutableDictionary
- (BOOL)validateObjWithKey:(id)a3 className:(Class)a4 isOptional:(BOOL)isKindOfClass error:(id *)a6;
- (id)popObjectForKey:(id)a3;
@end

@implementation NSMutableDictionary

- (id)popObjectForKey:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self objectForKey:v4];
  [(NSMutableDictionary *)self removeObjectForKey:v4];

  return v5;
}

- (BOOL)validateObjWithKey:(id)a3 className:(Class)a4 isOptional:(BOOL)isKindOfClass error:(id *)a6
{
  v9 = a3;
  v10 = [(NSMutableDictionary *)self objectForKey:v9];
  if (v10)
  {
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (a6 && !isKindOfClass)
  {
    v11 = [NSString stringWithFormat:@"Validation failed for dictionary key %@.", v9];
    *a6 = [DIError errorWithPOSIXCode:22 verboseInfo:v11];
  }

  return isKindOfClass;
}

@end
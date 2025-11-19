@interface NSError(UsefulConstructors)
+ (id)errorWithDomain:()UsefulConstructors code:description:underlying:;
@end

@implementation NSError(UsefulConstructors)

+ (id)errorWithDomain:()UsefulConstructors code:description:underlying:
{
  v9 = MEMORY[0x1E695DF90];
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = objc_alloc_init(v9);
  [v13 setObject:v11 forKeyedSubscript:*MEMORY[0x1E696A578]];

  [v13 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696AA08]];
  v14 = [MEMORY[0x1E696ABC0] errorWithDomain:v12 code:a4 userInfo:v13];

  return v14;
}

@end
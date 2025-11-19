@interface NSError(FamilyCircle)
+ (id)fa_familyErrorWithCode:()FamilyCircle exception:;
+ (id)fa_familyErrorWithCode:()FamilyCircle underlyingError:;
@end

@implementation NSError(FamilyCircle)

+ (id)fa_familyErrorWithCode:()FamilyCircle underlyingError:
{
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = v5;
  if (v5)
  {
    v11 = *MEMORY[0x1E696AA08];
    v12[0] = v5;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v7 = 0;
  }

  v8 = [MEMORY[0x1E696ABC0] fa_familyErrorWithCode:a3 userInfo:v7];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)fa_familyErrorWithCode:()FamilyCircle exception:
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a4;
  v7 = objc_alloc_init(v5);
  v8 = [v6 reason];

  [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696A578]];
  v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.family.error" code:a3 userInfo:v7];

  return v9;
}

@end
@interface NSKeyedArchiver(CalClassAdditions)
+ (id)CalArchivedDataWithRootObject:()CalClassAdditions ofClasses:strict:error:;
@end

@implementation NSKeyedArchiver(CalClassAdditions)

+ (id)CalArchivedDataWithRootObject:()CalClassAdditions ofClasses:strict:error:
{
  v22[5] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:a6];
  if (a5)
  {
    v22[0] = 0;
    v12 = [MEMORY[0x1E696ACD0] _strictlyUnarchivedObjectOfClasses:v10 fromData:v11 error:v22];
    v13 = v22[0];
  }

  else
  {
    v21 = 0;
    v14 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v10 fromData:v11 error:&v21];
    v13 = v21;
  }

  v15 = v13;
  v16 = v15;
  if (a6)
  {
    v17 = v15;
    *a6 = v16;
  }

  if (v16)
  {
    v18 = 0;
  }

  else
  {
    v18 = v11;
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end
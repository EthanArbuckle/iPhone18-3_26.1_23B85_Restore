@interface CPError
+ (id)errorWithCode:(int64_t)a3;
+ (id)errorWithCode:(int64_t)a3 description:(id)a4 underlyingError:(id)a5;
@end

@implementation CPError

+ (id)errorWithCode:(int64_t)a3
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((a3 + 1) > 0x19)
  {
    v4 = @"Unknown error";
  }

  else
  {
    v4 = off_1E7A45CF0[a3 + 1];
  }

  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.copresence.CPServiceErrorDomain" code:a3 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)errorWithCode:(int64_t)a3 description:(id)a4 underlyingError:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (v7 | v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    if (v7)
    {
      v10 = [v7 copy];
      [v9 setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A278]];
    }

    if (v8)
    {
      [v9 setObject:v8 forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }
  }

  else
  {
    v9 = 0;
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.copresence.CPServiceErrorDomain" code:a3 userInfo:v9];

  return v11;
}

@end
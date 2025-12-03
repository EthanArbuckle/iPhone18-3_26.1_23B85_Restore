@interface CPError
+ (id)errorWithCode:(int64_t)code;
+ (id)errorWithCode:(int64_t)code description:(id)description underlyingError:(id)error;
@end

@implementation CPError

+ (id)errorWithCode:(int64_t)code
{
  v11[1] = *MEMORY[0x1E69E9840];
  if ((code + 1) > 0x19)
  {
    v4 = @"Unknown error";
  }

  else
  {
    v4 = off_1E7A45CF0[code + 1];
  }

  v5 = MEMORY[0x1E696ABC0];
  v10 = *MEMORY[0x1E696A578];
  v11[0] = v4;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v5 errorWithDomain:@"com.apple.copresence.CPServiceErrorDomain" code:code userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)errorWithCode:(int64_t)code description:(id)description underlyingError:(id)error
{
  descriptionCopy = description;
  errorCopy = error;
  if (descriptionCopy | errorCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (descriptionCopy)
    {
      v10 = [descriptionCopy copy];
      [dictionary setObject:v10 forKeyedSubscript:*MEMORY[0x1E696A278]];
    }

    if (errorCopy)
    {
      [dictionary setObject:errorCopy forKeyedSubscript:*MEMORY[0x1E696AA08]];
    }
  }

  else
  {
    dictionary = 0;
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.copresence.CPServiceErrorDomain" code:code userInfo:dictionary];

  return v11;
}

@end
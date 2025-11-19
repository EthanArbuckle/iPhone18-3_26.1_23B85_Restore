@interface NSError(DMFAdditions)
- (id)serializableError;
@end

@implementation NSError(DMFAdditions)

- (id)serializableError
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E696ABC0]);
  v3 = [a1 domain];
  v4 = [a1 code];
  v10 = *MEMORY[0x1E696A578];
  v5 = [a1 localizedDescription];
  v11[0] = v5;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v2 initWithDomain:v3 code:v4 userInfo:v6];

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end
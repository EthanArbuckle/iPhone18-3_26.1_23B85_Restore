@interface LACBackgroundTaskErrorBuilder
+ (id)errorWithCode:(int64_t)code debugDescription:(id)description;
@end

@implementation LACBackgroundTaskErrorBuilder

+ (id)errorWithCode:(int64_t)code debugDescription:(id)description
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = *MEMORY[0x1E696A278];
  v13[0] = description;
  v6 = MEMORY[0x1E695DF20];
  descriptionCopy = description;
  v8 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v9 = [self _errorWithCode:code userInfo:v8];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

@end
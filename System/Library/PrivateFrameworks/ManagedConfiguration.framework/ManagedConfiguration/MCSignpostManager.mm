@interface MCSignpostManager
+ (id)signpostsForTypeFilter:(unint64_t)filter featureFilter:(id)featureFilter duration:(double)duration error:(id *)error;
@end

@implementation MCSignpostManager

+ (id)signpostsForTypeFilter:(unint64_t)filter featureFilter:(id)featureFilter duration:(double)duration error:(id *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (error)
  {
    v7 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A578];
    v12[0] = @"signpost manager disabled";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:{1, duration}];
    *error = [v7 errorWithDomain:@"MCSignpostManager" code:-1 userInfo:v8];
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

@end
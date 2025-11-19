@interface NSPropertyListSerialization(DMCSafeSerialization)
+ (id)DMCSafePropertyListWithData:()DMCSafeSerialization options:format:error:;
@end

@implementation NSPropertyListSerialization(DMCSafeSerialization)

+ (id)DMCSafePropertyListWithData:()DMCSafeSerialization options:format:error:
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (v10)
  {
    v11 = [a1 propertyListWithData:v10 options:a4 format:a5 error:a6];
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end
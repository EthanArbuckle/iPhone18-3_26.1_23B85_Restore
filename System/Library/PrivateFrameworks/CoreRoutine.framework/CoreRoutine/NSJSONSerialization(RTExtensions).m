@interface NSJSONSerialization(RTExtensions)
+ (id)JSONStringFromNSDictionary:()RTExtensions error:;
@end

@implementation NSJSONSerialization(RTExtensions)

+ (id)JSONStringFromNSDictionary:()RTExtensions error:
{
  v22[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v5])
  {
    v18 = 0;
    v6 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v5 options:8 error:&v18];
    v7 = v18;
    if (v7)
    {
      v19[0] = *MEMORY[0x1E696A578];
      v8 = [MEMORY[0x1E696AAE8] mainBundle];
      v9 = [v8 localizedStringForKey:@"NSJSONSerialization failed" value:&stru_1F3DD00E8 table:0];
      v19[1] = *MEMORY[0x1E696AA08];
      v20[0] = v9;
      v20[1] = v7;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2];

      if (a4)
      {
        *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.routined.NSJSONSerializationRTExtensions" code:0 userInfo:v10];
      }

      v11 = [MEMORY[0x1E696AEC0] string];
    }

    else
    {
      v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v6 encoding:4];
    }
  }

  else
  {
    v21[0] = *MEMORY[0x1E696A578];
    v12 = [MEMORY[0x1E696AAE8] mainBundle];
    v13 = [v12 localizedStringForKey:@"Invalid dictionary for JSON serialization" value:&stru_1F3DD00E8 table:0];
    v22[0] = v13;
    v21[1] = *MEMORY[0x1E696A598];
    v14 = [MEMORY[0x1E696AAE8] mainBundle];
    v15 = [v14 localizedStringForKey:@"Refer to NSJSONSerialization spec for valid dictionaries" value:&stru_1F3DD00E8 table:0];
    v22[1] = v15;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:2];

    if (a4)
    {
      *a4 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.routined.NSJSONSerializationRTExtensions" code:0 userInfo:v7];
    }

    v11 = [MEMORY[0x1E696AEC0] string];
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

@end
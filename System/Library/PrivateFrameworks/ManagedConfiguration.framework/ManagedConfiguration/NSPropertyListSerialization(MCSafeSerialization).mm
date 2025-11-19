@interface NSPropertyListSerialization(MCSafeSerialization)
+ (id)MCSafePropertyListWithData:()MCSafeSerialization options:format:error:;
@end

@implementation NSPropertyListSerialization(MCSafeSerialization)

+ (id)MCSafePropertyListWithData:()MCSafeSerialization options:format:error:
{
  v10 = a3;
  if (v10)
  {
    v11 = [a1 propertyListWithData:v10 options:a4 format:a5 error:a6];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)MCSafePropertyListWithData:()MCSafeSerialization options:format:error:.cold.1(void *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = objc_begin_catch(a1);
  v2 = _MCLogObjects;
  if (os_log_type_enabled(_MCLogObjects, OS_LOG_TYPE_ERROR))
  {
    v4 = 138543362;
    v5 = v1;
    _os_log_impl(&dword_1A795B000, v2, OS_LOG_TYPE_ERROR, "Ignoring exception thrown when encoding plist: %{public}@", &v4, 0xCu);
  }

  objc_end_catch();
  v3 = *MEMORY[0x1E69E9840];
}

@end
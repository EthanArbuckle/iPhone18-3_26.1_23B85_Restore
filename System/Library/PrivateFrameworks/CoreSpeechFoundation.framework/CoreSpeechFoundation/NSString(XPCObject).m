@interface NSString(XPCObject)
- (char)_cs_xpcObject;
- (id)_cs_initWithXPCObject:()XPCObject;
@end

@implementation NSString(XPCObject)

- (char)_cs_xpcObject
{
  v1 = [a1 UTF8String];
  if (v1)
  {
    v1 = xpc_string_create(v1);
  }

  return v1;
}

- (id)_cs_initWithXPCObject:()XPCObject
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_4;
  }

  if (MEMORY[0x1E12BAC70](v4) != MEMORY[0x1E69E9F10])
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
LABEL_4:
      v7 = 0;
      goto LABEL_5;
    }

    v12 = 136315138;
    v13 = "[NSString(XPCObject) _cs_initWithXPCObject:]";
    v11 = "%s xpc object should be XPC_TYPE_STRING";
LABEL_13:
    _os_log_error_impl(&dword_1DDA4B000, v6, OS_LOG_TYPE_ERROR, v11, &v12, 0xCu);
    goto LABEL_4;
  }

  string_ptr = xpc_string_get_string_ptr(v5);
  if (!string_ptr)
  {
    v6 = CSLogContextFacilityCoreSpeech;
    if (!os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_4;
    }

    v12 = 136315138;
    v13 = "[NSString(XPCObject) _cs_initWithXPCObject:]";
    v11 = "%s xpc object string return nil";
    goto LABEL_13;
  }

  v7 = [a1 initWithUTF8String:string_ptr];
LABEL_5:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

@end